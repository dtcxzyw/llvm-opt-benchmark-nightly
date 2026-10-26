Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  %i.uh = shufflevector <4 x float> %i.tv, <4 x float> %i.ud, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ui = shufflevector <4 x float> %i.tw, <4 x float> %i.ue, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uj = shufflevector <4 x float> %i.tx, <4 x float> %i.uf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.sink3997.i = phi i64 [ 64, %bb.av ], [ 16, %bb.aw ], [ 128, %bb.au ]
  %.03255.i = phi nsz <8 x float> [ %i.ta, %bb.av ], [ %i.uj, %bb.aw ], [ %i.sp, %bb.au ] ; 2 uses
  %.03254.i = phi nsz <8 x float> [ %i.sz, %bb.av ], [ %i.ui, %bb.aw ], [ %i.sn, %bb.au ] ; 2 uses
  %.03226.i = phi nsz <8 x float> [ %i.sy, %bb.av ], [ %i.uh, %bb.aw ], [ %i.sl, %bb.au ] ; 2 uses
  %.83051.i = phi nsz <8 x float> [ %i.sx, %bb.av ], [ %i.ug, %bb.aw ], [ %i.sj, %bb.au ] ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.818923708.i, i64 %.sink3997.i ; 2 uses
  br i1 %i.ao, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ul = fadd fast <8 x float> %.83051.i, %i.rx
  %i.um = fadd fast <8 x float> %.03226.i, %i.ry
  %i.un = fadd fast <8 x float> %.03254.i, %i.rz
  %i.uo = fadd fast <8 x float> %.03255.i, %i.sa
  br label %.thread3406.i

bb.az:                                            ; preds = %bb.ax
  %i.up = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.83051.i, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.rx)
  %i.uq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.03226.i, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.ry)
  %i.ur = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.03254.i, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.rz)
  %i.us = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.03255.i, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.sa)
  br label %.thread3406.i

bb.ba:                                            ; preds = %bb.as
  %i.ut = load <4 x float>, ptr %.818923708.i, align 4, !tbaa !68
  %i.uu = fmul fast <4 x float> %i.ut, %i.az      ; 4 uses
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.uw = shufflevector <4 x float> %i.uu, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ux = shufflevector <4 x float> %i.uu, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.uy = shufflevector <4 x float> %i.uu, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.uz = fadd fast <8 x float> %i.uv, %i.rx
  %i.va = fadd fast <8 x float> %i.uw, %i.ry
  %i.vb = fadd fast <8 x float> %i.ux, %i.rz
  %i.vc = fadd fast <8 x float> %i.uy, %i.sa
  %i.vd = getelementptr inbounds nuw i8, ptr %.818923708.i, i64 16
  br label %.thread3406.i

.thread3406.i:                                    ; preds = %bb.ba, %bb.az, %bb.ay, %bb.as, %bb.ar, %.thread3393.i, %.lr.ph3709.i
  %.43211.i = phi nsz <8 x float> [ %i.sa, %.lr.ph3709.i ], [ %i.vc, %bb.ba ], [ %i.sa, %bb.as ], [ %i.us, %bb.az ], [ %i.uo, %bb.ay ], [ %i.se, %.thread3393.i ], [ %i.si, %bb.ar ] ; 2 uses
  %.43205.i = phi nsz <8 x float> [ %i.rz, %.lr.ph3709.i ], [ %i.vb, %bb.ba ], [ %i.rz, %bb.as ], [ %i.ur, %bb.az ], [ %i.un, %bb.ay ], [ %i.sd, %.thread3393.i ], [ %i.sh, %bb.ar ] ; 2 uses
  %.43199.i = phi nsz <8 x float> [ %i.ry, %.lr.ph3709.i ], [ %i.va, %bb.ba ], [ %i.ry, %bb.as ], [ %i.uq, %bb.az ], [ %i.um, %bb.ay ], [ %i.sc, %.thread3393.i ], [ %i.sg, %bb.ar ] ; 2 uses
  %.43189.i = phi nsz <8 x float> [ %i.rx, %.lr.ph3709.i ], [ %i.uz, %bb.ba ], [ %i.rx, %bb.as ], [ %i.up, %bb.az ], [ %i.ul, %bb.ay ], [ %i.sb, %.thread3393.i ], [ %i.sf, %bb.ar ] ; 2 uses
  %.103053.i = phi nsz <8 x float> [ %.730503703.i, %.lr.ph3709.i ], [ %i.uv, %bb.ba ], [ %.730503703.i, %bb.as ], [ %.83051.i, %bb.az ], [ %.83051.i, %bb.ay ], [ %.730503703.i, %.thread3393.i ], [ %.730503703.i, %bb.ar ] ; 2 uses
  %.11.i = phi ptr [ null, %.lr.ph3709.i ], [ %i.vd, %bb.ba ], [ %.818923708.i, %bb.as ], [ %i.uk, %bb.az ], [ %i.uk, %bb.ay ], [ %.818923708.i, %.thread3393.i ], [ %.818923708.i, %bb.ar ] ; 2 uses
  br i1 %i.ap, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.thread3406.i
  %i.ve = fmul fast <8 x float> %.43189.i, %i.ar
  %i.vf = fmul fast <8 x float> %.43199.i, %i.ar
  %i.vg = fmul fast <8 x float> %.43205.i, %i.ar
  %i.vh = fmul fast <8 x float> %.43211.i, %i.ar
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread3406.i
  %.53212.i = phi nsz <8 x float> [ %i.vh, %bb.bb ], [ %.43211.i, %.thread3406.i ] ; 8 uses
  %.53206.i = phi nsz <8 x float> [ %i.vg, %bb.bb ], [ %.43205.i, %.thread3406.i ] ; 8 uses
  %.53200.i = phi nsz <8 x float> [ %i.vf, %bb.bb ], [ %.43199.i, %.thread3406.i ] ; 8 uses
  %.53190.i = phi nsz <8 x float> [ %i.ve, %bb.bb ], [ %.43189.i, %.thread3406.i ] ; 8 uses
  br i1 %.not2061.i, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  switch i32 %i.c, label %bb.bg [
    i32 4, label %bb.be
    i32 1, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %i.vi = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.vj = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.vk = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.vl = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.vm = shufflevector <8 x float> %i.vi, <8 x float> %i.vk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.vn = shufflevector <8 x float> %i.vj, <8 x float> %i.vl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.vo = shufflevector <8 x float> %i.vi, <8 x float> %i.vk, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.vp = shufflevector <8 x float> %i.vj, <8 x float> %i.vl, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.vm, ptr %.519273705.i, align 1, !tbaa !89
  %i.vq = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 32
  store <8 x float> %i.vn, ptr %i.vq, align 1, !tbaa !89
  br label %.sink.split.i

bb.bf:                                            ; preds = %bb.bd
  store <8 x float> %.53190.i, ptr %.519273705.i, align 1, !tbaa !89
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %.519273705.i, i64 %i.l
  store <8 x float> %.53200.i, ptr %i.vr, align 1, !tbaa !89
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bf, %bb.be
  %.sink4003.i = phi i64 [ 64, %bb.be ], [ %.idx2116.i, %bb.bf ]
  %.sink4001.i = phi <8 x float> [ %i.vo, %bb.be ], [ %.53206.i, %bb.bf ]
  %.sink4000.i = phi i64 [ 96, %bb.be ], [ %.idx2117.i, %bb.bf ]
  %.sink3998.i = phi <8 x float> [ %i.vp, %bb.be ], [ %.53212.i, %bb.bf ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.sink4003.i
  store <8 x float> %.sink4001.i, ptr %i.vs, align 1, !tbaa !89
  %i.vt = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.sink4000.i
  store <8 x float> %.sink3998.i, ptr %i.vt, align 1, !tbaa !89
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split.i, %bb.bd
  %i.vu = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2118.i
  br label %.thread3416.i

bb.bh:                                            ; preds = %bb.bc
  switch i32 %i.c, label %.thread3416.i [
    i32 8, label %.thread3413.i
    i32 4, label %bb.bi
    i32 1, label %bb.bj
  ]

.thread3413.i:                                    ; preds = %bb.bh
  store <8 x float> %.53190.i, ptr %.519273705.i, align 32, !tbaa !89
  %i.vv = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 32
  store <8 x float> %.53200.i, ptr %i.vv, align 32, !tbaa !89
  %i.vw = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 64
  store <8 x float> %.53206.i, ptr %i.vw, align 32, !tbaa !89
  %i.vx = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 96
  store <8 x float> %.53212.i, ptr %i.vx, align 32, !tbaa !89
  %i.vy = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 128
  br label %.thread3416.i

bb.bi:                                            ; preds = %bb.bh
  %i.vz = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.wa = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.wb = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.wc = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.vz, ptr %.519273705.i, align 1, !tbaa !89
  %i.wd = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 32
  store <8 x float> %i.wa, ptr %i.wd, align 1, !tbaa !89
  %i.we = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2118.i ; 2 uses
  store <8 x float> %i.wb, ptr %i.we, align 1, !tbaa !89
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 32
  store <8 x float> %i.wc, ptr %i.wf, align 1, !tbaa !89
  %i.wg = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 64
  br label %.thread3416.i

bb.bj:                                            ; preds = %bb.bh
  %i.wh = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 3 uses
  %i.wi = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.wj = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 3 uses
  %i.wk = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.wl = shufflevector <8 x float> %i.wh, <8 x float> %i.wj, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.wm = shufflevector <8 x float> %i.wi, <8 x float> %i.wk, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.wn = shufflevector <8 x float> %i.wh, <8 x float> %i.wj, <4 x i32> <i32 0, i32 1, i32 8, i32 9>
  store <4 x float> %i.wn, ptr %.519273705.i, align 1, !tbaa !89
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.519273705.i, i64 %i.l
  %i.wp = shufflevector <8 x float> %i.wh, <8 x float> %i.wj, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  store <4 x float> %i.wp, ptr %i.wo, align 1, !tbaa !89
  %i.wq = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2116.i
  %i.wr = shufflevector <8 x float> %i.wi, <8 x float> %i.wk, <4 x i32> <i32 0, i32 1, i32 8, i32 9>
  store <4 x float> %i.wr, ptr %i.wq, align 1, !tbaa !89
  %i.ws = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2117.i
  %i.wt = shufflevector <8 x float> %i.wi, <8 x float> %i.wk, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  store <4 x float> %i.wt, ptr %i.ws, align 1, !tbaa !89
  %i.wu = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2118.i
  %i.wv = shufflevector <8 x float> %i.wl, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.wv, ptr %i.wu, align 1, !tbaa !89
  %i.ww = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2119.i
  %i.wx = shufflevector <8 x float> %i.wl, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.wx, ptr %i.ww, align 1, !tbaa !89
  %i.wy = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2120.i
  %i.wz = shufflevector <8 x float> %i.wm, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.wz, ptr %i.wy, align 1, !tbaa !89
  %i.xa = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2121.i
  %i.xb = shufflevector <8 x float> %i.wm, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.xb, ptr %i.xa, align 1, !tbaa !89
  %i.xc = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 16
  br label %.thread3416.i

.thread3416.i:                                    ; preds = %bb.bj, %bb.bi, %.thread3413.i, %bb.bh, %bb.bg
  %.81930.i = phi ptr [ %i.vu, %bb.bg ], [ %i.xc, %bb.bj ], [ %.519273705.i, %bb.bh ], [ %i.vy, %.thread3413.i ], [ %i.wg, %bb.bi ] ; 2 uses
  %i.xd = add nuw nsw i32 %.119403704.i, 4        ; 3 uses
  %i.xe = or disjoint i32 %i.xd, 3
  %i.xf = icmp slt i32 %i.xe, %7
  br i1 %i.xf, label %.lr.ph3709.i, label %.preheader3690.i, !llvm.loop !734

.preheader3689.i:                                 ; preds = %.thread3435.i, %.preheader3690.i
  %.113054.lcssa.i = phi <8 x float> [ %.73050.lcssa.i, %.preheader3690.i ], [ %.143057.i, %.thread3435.i ]
  %.21941.lcssa.i = phi i32 [ %.11940.lcssa.i, %.preheader3690.i ], [ %i.abg, %.thread3435.i ] ; 2 uses
  %.91931.lcssa.i = phi ptr [ %.51927.lcssa.i, %.preheader3690.i ], [ %.121934.i, %.thread3435.i ]
  %.31920.lcssa.i = phi ptr [ %.21919.lcssa.i, %.preheader3690.i ], [ %i.xm, %.thread3435.i ] ; 2 uses
  %.31896.lcssa.i = phi ptr [ %.21895.lcssa.i, %.preheader3690.i ], [ %i.xl, %.thread3435.i ]
  %.12.lcssa.i = phi ptr [ %.81892.lcssa.i, %.preheader3690.i ], [ %.15.i, %.thread3435.i ] ; 2 uses
  %i.xg = icmp slt i32 %.21941.lcssa.i, %7
  br i1 %i.xg, label %.lr.ph3735.i, label %._crit_edge.i

.lr.ph3722.i:                                     ; preds = %.preheader3690.i, %.thread3435.i
  %.123721.i = phi ptr [ %.15.i, %.thread3435.i ], [ %.81892.lcssa.i, %.preheader3690.i ] ; 20 uses
  %.318963720.i = phi ptr [ %i.xl, %.thread3435.i ], [ %.21895.lcssa.i, %.preheader3690.i ] ; 2 uses
  %.319203719.i = phi ptr [ %i.xm, %.thread3435.i ], [ %.21919.lcssa.i, %.preheader3690.i ] ; 2 uses
  %.919313718.i = phi ptr [ %.121934.i, %.thread3435.i ], [ %.51927.lcssa.i, %.preheader3690.i ] ; 20 uses
  %.219413717.i = phi i32 [ %i.abg, %.thread3435.i ], [ %.11940.lcssa.i, %.preheader3690.i ]
  %.1130543716.i = phi <8 x float> [ %.143057.i, %.thread3435.i ], [ %.73050.lcssa.i, %.preheader3690.i ] ; 8 uses
  %i.xh = load <8 x i32>, ptr %.318963720.i, align 1, !tbaa !89
  %i.xi = sitofp fast <8 x i32> %i.xh to <8 x float> ; 2 uses
  %i.xj = load <8 x i32>, ptr %.319203719.i, align 1, !tbaa !89
  %i.xk = sitofp fast <8 x i32> %i.xj to <8 x float> ; 2 uses
  %12 = shufflevector <8 x float> %i.xi, <8 x float> %i.xk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.xl = getelementptr inbounds nuw i8, ptr %.318963720.i, i64 32 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.319203719.i, i64 32 ; 2 uses
  %13 = shufflevector <8 x float> %12, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7> ; 2 uses
  %14 = shufflevector <8 x float> %i.xi, <8 x float> %i.xk, <8 x i32> <i32 5, i32 7, i32 6, i32 4, i32 13, i32 15, i32 14, i32 12> ; 2 uses
  %15 = shufflevector <8 x float> %13, <8 x float> %14, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %16 = shufflevector <8 x float> %14, <8 x float> %13, <8 x i32> <i32 3, i32 10, i32 2, i32 11, i32 7, i32 14, i32 6, i32 15>
  %i.xn = fmul fast <8 x float> %15, %i.ct        ; 7 uses
  %i.xo = fmul fast <8 x float> %16, %i.ct        ; 7 uses
  %.not2078.i = icmp eq ptr %.123721.i, null
  br i1 %.not2078.i, label %.thread3427.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph3722.i
  br i1 %i.ah, label %.thread3418.i, label %bb.bl

.thread3418.i:                                    ; preds = %bb.bk
  %i.xp = fadd fast <8 x float> %i.xn, %.1130543716.i
  %i.xq = fadd fast <8 x float> %i.xo, %.1130543716.i
  br label %.thread3427.i

bb.bl:                                            ; preds = %bb.bk
  br i1 %or.cond.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.xr = fadd fast <8 x float> %i.xn, %.1130543716.i
  %i.xs = fadd fast <8 x float> %i.xo, %.1130543716.i
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
  %i.xt = load <8 x float>, ptr %.123721.i, align 1, !tbaa !89
  %i.xu = getelementptr inbounds nuw i8, ptr %.123721.i, i64 32
  %i.xv = load <8 x float>, ptr %i.xu, align 1, !tbaa !89
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.xw = load <8 x float>, ptr %.123721.i, align 1, !tbaa !89 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2107.i
  %i.xy = load <8 x float>, ptr %i.xx, align 1, !tbaa !89 ; 2 uses
  %i.xz = shufflevector <8 x float> %i.xw, <8 x float> %i.xy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ya = shufflevector <8 x float> %i.xw, <8 x float> %i.xy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  br label %bb.bs

bb.br:                                            ; preds = %bb.bo
  %i.yb = load float, ptr %.123721.i, align 4, !tbaa !68
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %.123721.i, i64 %i.u ; 2 uses
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !68
  %i.ye = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2101.i ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !68
  %i.yg = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2102.i ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !68
  %i.yi = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2107.i ; 2 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !68
  %i.yk = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2104.i ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !68
  %i.ym = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2105.i ; 2 uses
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !68
  %i.yo = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2106.i ; 2 uses
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !68
  %i.yq = insertelement <8 x float> poison, float %i.yb, i64 0
  %i.yr = insertelement <8 x float> %i.yq, float %i.yd, i64 1
  %i.ys = insertelement <8 x float> %i.yr, float %i.yf, i64 2
  %i.yt = insertelement <8 x float> %i.ys, float %i.yh, i64 3
  %i.yu = insertelement <8 x float> %i.yt, float %i.yj, i64 4
  %i.yv = insertelement <8 x float> %i.yu, float %i.yl, i64 5
  %i.yw = insertelement <8 x float> %i.yv, float %i.yn, i64 6
  %i.yx = insertelement <8 x float> %i.yw, float %i.yp, i64 7
  %i.yy = getelementptr inbounds nuw i8, ptr %.123721.i, i64 4
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !68
  %i.za = getelementptr i8, ptr %i.yc, i64 4
  %i.zb = load float, ptr %i.za, align 4, !tbaa !68
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !68
  %i.ze = getelementptr i8, ptr %i.yg, i64 4
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !68
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !68
  %i.zi = getelementptr i8, ptr %i.yk, i64 4
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !68
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ym, i64 4
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !68
  %i.zm = getelementptr i8, ptr %i.yo, i64 4
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !68
  %i.zo = insertelement <8 x float> poison, float %i.yz, i64 0
  %i.zp = insertelement <8 x float> %i.zo, float %i.zb, i64 1
  %i.zq = insertelement <8 x float> %i.zp, float %i.zd, i64 2
  %i.zr = insertelement <8 x float> %i.zq, float %i.zf, i64 3
  %i.zs = insertelement <8 x float> %i.zr, float %i.zh, i64 4
  %i.zt = insertelement <8 x float> %i.zs, float %i.zj, i64 5
  %i.zu = insertelement <8 x float> %i.zt, float %i.zl, i64 6
  %i.zv = insertelement <8 x float> %i.zu, float %i.zn, i64 7
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.sink4004.i = phi i64 [ 32, %bb.bq ], [ 8, %bb.br ], [ 64, %bb.bp ]
  %.03341.i = phi nsz <8 x float> [ %i.ya, %bb.bq ], [ %i.zv, %bb.br ], [ %i.xv, %bb.bp ] ; 2 uses
  %.123055.i = phi nsz <8 x float> [ %i.xz, %bb.bq ], [ %i.yx, %bb.br ], [ %i.xt, %bb.bp ] ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.sink4004.i ; 2 uses
  br i1 %i.ao, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.zx = fadd fast <8 x float> %.123055.i, %i.xn
  %i.zy = fadd fast <8 x float> %.03341.i, %i.xo
  br label %.thread3427.i

bb.bu:                                            ; preds = %bb.bs
  %i.zz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.123055.i, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.xn)
  %i.aaa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.03341.i, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.xo)
  br label %.thread3427.i

bb.bv:                                            ; preds = %bb.bn
  %i.aab = load <2 x float>, ptr %.123721.i, align 4, !tbaa !68
  %i.aac = fmul fast <2 x float> %i.aab, %i.bb    ; 2 uses
  %i.aad = shufflevector <2 x float> %i.aac, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aae = shufflevector <2 x float> %i.aac, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aaf = fadd fast <8 x float> %i.aad, %i.xn
  %i.aag = fadd fast <8 x float> %i.aae, %i.xo
  %i.aah = getelementptr inbounds nuw i8, ptr %.123721.i, i64 8
  br label %.thread3427.i

.thread3427.i:                                    ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bn, %bb.bm, %.thread3418.i, %.lr.ph3722.i
  %.43339.i = phi nsz <8 x float> [ %i.xo, %.lr.ph3722.i ], [ %i.aag, %bb.bv ], [ %i.xo, %bb.bn ], [ %i.aaa, %bb.bu ], [ %i.zy, %bb.bt ], [ %i.xq, %.thread3418.i ], [ %i.xs, %bb.bm ]
  %.43333.i = phi nsz <8 x float> [ %i.xn, %.lr.ph3722.i ], [ %i.aaf, %bb.bv ], [ %i.xn, %bb.bn ], [ %i.zz, %bb.bu ], [ %i.zx, %bb.bt ], [ %i.xp, %.thread3418.i ], [ %i.xr, %bb.bm ]
  %.143057.i = phi nsz <8 x float> [ %.1130543716.i, %.lr.ph3722.i ], [ %i.aad, %bb.bv ], [ %.1130543716.i, %bb.bn ], [ %.123055.i, %bb.bu ], [ %.123055.i, %bb.bt ], [ %.1130543716.i, %.thread3418.i ], [ %.1130543716.i, %bb.bm ] ; 2 uses
  %.15.i = phi ptr [ null, %.lr.ph3722.i ], [ %i.aah, %bb.bv ], [ %.123721.i, %bb.bn ], [ %i.zw, %bb.bu ], [ %i.zw, %bb.bt ], [ %.123721.i, %.thread3418.i ], [ %.123721.i, %bb.bm ] ; 2 uses
  %.53340.i = fmul reassoc nsz arcp contract afn <8 x float> %.43339.i, %i.av ; 12 uses
  %.53334.i = fmul reassoc nsz arcp contract afn <8 x float> %.43333.i, %i.av ; 12 uses
  br i1 %.not2061.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.thread3427.i
  store <8 x float> %.53334.i, ptr %.919313718.i, align 1, !tbaa !89
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %.919313718.i, i64 %i.l
  store <8 x float> %.53340.i, ptr %i.aai, align 1, !tbaa !89
  %i.aaj = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2116.i
  br label %.thread3435.i

bb.bx:                                            ; preds = %.thread3427.i
  switch i32 %i.c, label %.thread3435.i [
    i32 8, label %.thread3432.i
    i32 4, label %bb.by
    i32 1, label %bb.bz
  ]

.thread3432.i:                                    ; preds = %bb.bx
  store <8 x float> %.53334.i, ptr %.919313718.i, align 1, !tbaa !89
  %i.aak = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 32
  store <8 x float> %.53340.i, ptr %i.aak, align 1, !tbaa !89
  %i.aal = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 64
  br label %.thread3435.i

bb.by:                                            ; preds = %bb.bx
  %i.aam = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aan = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.aam, ptr %.919313718.i, align 1, !tbaa !89
  %i.aao = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2118.i
  store <8 x float> %i.aan, ptr %i.aao, align 1, !tbaa !89
  %i.aap = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 32
  br label %.thread3435.i

bb.bz:                                            ; preds = %bb.bx
  %.sroa.02648.0.vec.extract.i = extractelement <8 x float> %.53334.i, i64 0
  store float %.sroa.02648.0.vec.extract.i, ptr %.919313718.i, align 4, !tbaa !68
  %.sroa.11.32.vec.extract.i = extractelement <8 x float> %.53340.i, i64 0
  %i.aaq = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 4
  store float %.sroa.11.32.vec.extract.i, ptr %i.aaq, align 4, !tbaa !68
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.919313718.i, i64 %i.l
  %i.aas = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 1, i32 9>
  store <2 x float> %i.aas, ptr %i.aar, align 4, !tbaa !68
  %i.aat = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2116.i
  %i.aau = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 2, i32 10>
  store <2 x float> %i.aau, ptr %i.aat, align 4, !tbaa !68
  %i.aav = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2117.i
  %i.aaw = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 3, i32 11>
  store <2 x float> %i.aaw, ptr %i.aav, align 4, !tbaa !68
  %.sroa.02648.16.vec.extract.i = extractelement <8 x float> %.53334.i, i64 4
  %i.aax = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2118.i ; 2 uses
  store float %.sroa.02648.16.vec.extract.i, ptr %i.aax, align 4, !tbaa !68
  %.sroa.11.48.vec.extract.i = extractelement <8 x float> %.53340.i, i64 4
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  store float %.sroa.11.48.vec.extract.i, ptr %i.aay, align 4, !tbaa !68
  %i.aaz = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2119.i
  %i.aba = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 5, i32 13>
  store <2 x float> %i.aba, ptr %i.aaz, align 4, !tbaa !68
  %i.abb = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2120.i
  %i.abc = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 6, i32 14>
  store <2 x float> %i.abc, ptr %i.abb, align 4, !tbaa !68
  %i.abd = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2121.i
  %i.abe = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 7, i32 15>
  store <2 x float> %i.abe, ptr %i.abd, align 4, !tbaa !68
  %i.abf = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 8
  br label %.thread3435.i

.thread3435.i:                                    ; preds = %bb.bz, %bb.by, %.thread3432.i, %bb.bx, %bb.bw
  %.121934.i = phi ptr [ %i.aaj, %bb.bw ], [ %i.abf, %bb.bz ], [ %.919313718.i, %bb.bx ], [ %i.aal, %.thread3432.i ], [ %i.aap, %bb.by ] ; 2 uses
  %i.abg = add nuw nsw i32 %.219413717.i, 2       ; 3 uses
  %i.abh = or disjoint i32 %i.abg, 1
  %i.abi = icmp slt i32 %i.abh, %7
  br i1 %i.abi, label %.lr.ph3722.i, label %.preheader3689.i, !llvm.loop !735
end_hunk_0
begin_hunk_1_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  switch i32 %i.c, label %bb.fu [
    i32 4, label %.thread3548.i
    i32 1, label %bb.ft
  ]

.thread3548.i:                                    ; preds = %bb.fs
  store <4 x float> %i.ayd, ptr %.1019713783.i, align 16, !tbaa !89
  %i.ayf = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 16
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %.sroa.02268.0.vec.extract.i = extractelement <4 x float> %i.ayd, i64 0
  store float %.sroa.02268.0.vec.extract.i, ptr %.1019713783.i, align 4, !tbaa !68
  %.sroa.02268.4.vec.extract.i = extractelement <4 x float> %i.ayd, i64 1
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %.1019713783.i, i64 %i.l
  store float %.sroa.02268.4.vec.extract.i, ptr %i.ayg, align 4, !tbaa !68
  %.sroa.02268.8.vec.extract.i = extractelement <4 x float> %i.ayd, i64 2
  %i.ayh = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2054.i
  store float %.sroa.02268.8.vec.extract.i, ptr %i.ayh, align 4, !tbaa !68
  %.sroa.02268.12.vec.extract.i = extractelement <4 x float> %i.ayd, i64 3
  %i.ayi = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2055.i
  store float %.sroa.02268.12.vec.extract.i, ptr %i.ayi, align 4, !tbaa !68
  %i.ayj = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 4
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.thread3548.i, %bb.fs, %bb.fr
  %.121973.i = phi ptr [ %i.aye, %bb.fr ], [ %i.ayj, %bb.ft ], [ %.1019713783.i, %bb.fs ], [ %i.ayf, %.thread3548.i ]
  %i.ayk = getelementptr inbounds nuw i8, ptr %.919023784.i, i64 16 ; 2 uses
  %i.ayl = add nuw nsw i32 %.319773782.i, 1       ; 2 uses
  %exitcond3922.not.i = icmp eq i32 %i.ayl, %7
  br i1 %exitcond3922.not.i, label %._crit_edge3787.i, label %.lr.ph3786.i, !llvm.loop !741

._crit_edge3787.i:                                ; preds = %bb.fu, %.preheader3685.i
  %.91902.lcssa.i = phi ptr [ %.81901.lcssa.i, %.preheader3685.i ], [ %i.ayk, %bb.fu ] ; 2 uses
  %.36.lcssa.i = phi ptr [ %.32.lcssa.i, %.preheader3685.i ], [ %.39.i, %bb.fu ] ; 2 uses
  %indvars.iv.next3924.i = add nuw nsw i64 %indvars.iv3923.i, 4 ; 3 uses
  %i.aym = icmp slt i64 %indvars.iv.next3924.i, %invariant.op3995.i
  br i1 %i.aym, label %bb.co, label %.preheader3684.loopexit.i, !llvm.loop !742

.preheader3680.loopexit.i:                        ; preds = %._crit_edge3835.i
  %i.ayn = trunc nuw nsw i64 %indvars.iv.next3928.i to i32
  br label %.preheader3680.i

.preheader3680.i:                                 ; preds = %.preheader3680.loopexit.i, %.preheader3684.i
  %.21915.lcssa.i = phi i32 [ %.11914.lcssa.i, %.preheader3684.i ], [ %i.ayn, %.preheader3680.loopexit.i ] ; 2 uses
  %.101903.lcssa.i = phi ptr [ %.51898.lcssa.i, %.preheader3684.i ], [ %.141907.lcssa.i, %.preheader3680.loopexit.i ]
  %.40.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader3684.i ], [ %.53.lcssa.i, %.preheader3680.loopexit.i ]
  %i.ayo = icmp slt i32 %.21915.lcssa.i, %5
  br i1 %i.ayo, label %.lr.ph3887.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph3887.i:                                     ; preds = %.preheader3680.i
  %.not2002.i = icmp eq i32 %11, 0                ; 5 uses
  %i.ayp = sext i32 %6 to i64                     ; 4 uses
  %i.ayq = mul i64 %i.l, %i.ayp
  %i.ayr = icmp eq i32 %3, 0
  %i.ays = add i32 %3, -1
  %or.cond31.i = icmp ult i32 %i.ays, 2
  %i.ayt = sext i32 %4 to i64                     ; 3 uses
  %i.ayu = icmp sgt i32 %7, 7
  %or.cond35.i = icmp ult i32 %3, 3               ; 4 uses
  %i.ayv = add i32 %3, -3
  %or.cond37.i = icmp ult i32 %i.ayv, 2           ; 4 uses
  %i.ayw = insertelement <4 x float> poison, float %10, i64 0
  %i.ayx = shufflevector <4 x float> %i.ayw, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ayy = fcmp fast une float %9, 1.000000e+00
  %i.ayz = insertelement <4 x float> poison, float %9, i64 0
  %i.aza = shufflevector <4 x float> %i.ayz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azb = select ninf nsz i1 %i.ayy, <4 x float> %i.aza, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.azc = icmp eq i64 %i.l, 1                    ; 2 uses
  %.idx2012.i = shl i64 %i.l, 3                   ; 3 uses
  %.idx2013.i = mul i64 %i.l, 12                  ; 2 uses
  %.idx2014.i = shl i64 %i.l, 4                   ; 5 uses
  %.idx2015.i = mul i64 %i.l, 20
  %.idx2016.i = mul i64 %i.l, 24
  %.idx2017.i = mul i64 %i.l, 28
  %.idx2018.i = shl i64 %i.l, 5                   ; 4 uses
  %i.azd = and i32 %7, -8
  %i.aze = sext i32 %.21915.lcssa.i to i64
  %i.azf = sext i32 %i.c to i64
  %wide.trip.count.i = sext i32 %5 to i64
  %i.azg = insertelement <2 x float> poison, float %10, i64 0
  %i.azh = shufflevector <2 x float> %i.azg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hu

bb.fv:                                            ; preds = %._crit_edge3835.i, %.lr.ph3842.i
  %indvars.iv3927.i = phi i64 [ %i.aem, %.lr.ph3842.i ], [ %indvars.iv.next3928.i, %._crit_edge3835.i ] ; 4 uses
  %.403841.i = phi ptr [ %.20.lcssa.i, %.lr.ph3842.i ], [ %.53.lcssa.i, %._crit_edge3835.i ] ; 4 uses
  %.1019033840.i = phi ptr [ %.51898.lcssa.i, %.lr.ph3842.i ], [ %.141907.lcssa.i, %._crit_edge3835.i ] ; 2 uses
  %i.azi = load ptr, ptr %2, align 8, !tbaa !24   ; 2 uses
  br i1 %.not2019.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %i.ady
  %i.azk = add nsw i64 %indvars.iv3927.i, %i.aed  ; 2 uses
  %i.azl = mul nsw i64 %i.azk, %i.aeo
  %i.azm = getelementptr inbounds [4 x i8], ptr %i.azj, i64 %i.azl
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  %i.azn = add nsw i64 %indvars.iv3927.i, %i.aed  ; 2 uses
  %i.azo = mul i64 %i.azn, %i.l
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %i.azo
  %i.azq = getelementptr inbounds [4 x i8], ptr %i.azp, i64 %i.adx
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pre-phi.i = phi i64 [ %i.azn, %bb.fx ], [ %i.azk, %bb.fw ] ; 2 uses
  %.01952.i = phi ptr [ %i.azq, %bb.fx ], [ %i.azm, %bb.fw ] ; 2 uses
  %i.azr = load ptr, ptr %8, align 8, !tbaa !24
  %i.azs = getelementptr [4 x i8], ptr %i.azr, i64 %.pre-phi.i
  %i.azt = load <2 x float>, ptr %i.azs, align 4, !tbaa !68 ; 4 uses
  %i.azu = shufflevector <2 x float> %i.azt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.azv = shufflevector <2 x float> %i.azt, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.azw = shufflevector <2 x float> %i.azt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not2020.i = icmp eq ptr %.403841.i, null
  br i1 %.not2020.i, label %.thread3566.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  br i1 %i.aes, label %.thread3550.i, label %bb.ga

.thread3550.i:                                    ; preds = %bb.fz
  %i.azx = load float, ptr %.403841.i, align 4, !tbaa !68
  %i.azy = fmul fast float %i.azx, %10            ; 3 uses
  %i.azz = insertelement <4 x float> poison, float %i.azy, i64 0
  %i.baa = shufflevector <4 x float> %i.azz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bab = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.azy, i64 0
  br label %.thread3566.i

bb.ga:                                            ; preds = %bb.fz
  br i1 %i.aet, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bac = load ptr, ptr %1, align 8, !tbaa !24
  %i.bad = getelementptr inbounds [4 x i8], ptr %i.bac, i64 %i.aed
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %i.bad, i64 %indvars.iv3927.i ; 2 uses
  %i.baf = load <2 x float>, ptr %i.bae, align 4, !tbaa !68
  %i.bag = fmul fast <2 x float> %i.baf, %i.aer   ; 4 uses
  %i.bah = extractelement <2 x float> %i.bag, i64 0
  %i.bai = shufflevector <2 x float> %i.bag, <2 x float> poison, <4 x i32> zeroinitializer
  %i.baj = shufflevector <2 x float> %i.bag, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread3566.i

bb.gc:                                            ; preds = %bb.ga
  switch i32 %3, label %.thread3566.i [
    i32 3, label %bb.gd
    i32 4, label %bb.ge
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.bak = load ptr, ptr %1, align 8, !tbaa !24
  %i.bal = mul i64 %.pre-phi.i, %i.u
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %i.bak, i64 %i.bal
  %i.ban = getelementptr inbounds [4 x i8], ptr %i.bam, i64 %i.adx
  br label %.thread3566.i

bb.ge:                                            ; preds = %bb.gc
  %i.bao = load ptr, ptr %1, align 8, !tbaa !24
  %i.bap = getelementptr inbounds [4 x i8], ptr %i.bao, i64 %i.adx
  br label %.thread3566.i

.thread3566.i:                                    ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.gb, %.thread3550.i, %bb.fy
  %.23177.i = phi nsz <4 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ %i.baa, %.thread3550.i ], [ %i.bai, %bb.gb ] ; 2 uses
  %.13168.i = phi nsz <4 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ zeroinitializer, %.thread3550.i ], [ %i.baj, %bb.gb ] ; 2 uses
  %.21951.i = phi nsz float [ 0.000000e+00, %bb.fy ], [ 0.000000e+00, %bb.ge ], [ 0.000000e+00, %bb.gc ], [ 0.000000e+00, %bb.gd ], [ %i.azy, %.thread3550.i ], [ %i.bah, %bb.gb ]
  %.43.i = phi ptr [ null, %bb.fy ], [ %i.bap, %bb.ge ], [ %.403841.i, %bb.gc ], [ %i.ban, %bb.gd ], [ %.403841.i, %.thread3550.i ], [ %i.bae, %bb.gb ] ; 2 uses
  %i.baq = phi <2 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ %i.bab, %.thread3550.i ], [ %i.bag, %bb.gb ] ; 3 uses
  %i.bar = shufflevector <2 x float> %i.baq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.aee, label %.lr.ph3803.i, label %.preheader3683.i

.preheader3683.i:                                 ; preds = %bb.gv, %.thread3566.i
  %.33178.lcssa.i = phi <4 x float> [ %.23177.i, %.thread3566.i ], [ %.53180.i, %bb.gv ]
  %.23169.lcssa.i = phi <4 x float> [ %.13168.i, %.thread3566.i ], [ %.43171.i, %bb.gv ]
  %.11953.lcssa.i = phi ptr [ %.01952.i, %.thread3566.i ], [ %i.bdx, %bb.gv ] ; 2 uses
  %.01943.lcssa.i = phi i32 [ 0, %.thread3566.i ], [ %i.ael, %bb.gv ] ; 3 uses
  %.111904.lcssa.i = phi ptr [ %.1019033840.i, %.thread3566.i ], [ %i.bdy, %bb.gv ] ; 2 uses
  %.44.lcssa.i = phi ptr [ %.43.i, %.thread3566.i ], [ %.46.i, %bb.gv ] ; 2 uses
  %i.bas = or disjoint i32 %.01943.lcssa.i, 3
  %i.bat = icmp slt i32 %i.bas, %7
  br i1 %i.bat, label %.lr.ph3816.i, label %.preheader3682.i

.lr.ph3803.i:                                     ; preds = %.thread3566.i, %bb.gv
  %.443802.i = phi ptr [ %.46.i, %bb.gv ], [ %.43.i, %.thread3566.i ] ; 11 uses
  %.1119043801.i = phi ptr [ %i.bdy, %bb.gv ], [ %.1019033840.i, %.thread3566.i ] ; 5 uses
  %.019433800.i = phi i32 [ %i.bdz, %bb.gv ], [ 0, %.thread3566.i ]
  %.119533799.i = phi ptr [ %i.bdx, %bb.gv ], [ %.01952.i, %.thread3566.i ] ; 20 uses
  %.231693798.i = phi <4 x float> [ %.43171.i, %bb.gv ], [ %.13168.i, %.thread3566.i ] ; 6 uses
  %.331783797.i = phi <4 x float> [ %.53180.i, %bb.gv ], [ %.23177.i, %.thread3566.i ] ; 10 uses
  %i.bau = load <4 x i32>, ptr %.1119043801.i, align 16, !tbaa !89
  %i.bav = sitofp fast <4 x i32> %i.bau to <4 x float> ; 2 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 16
  %i.bax = load <4 x i32>, ptr %i.baw, align 16, !tbaa !89
  %i.bay = sitofp fast <4 x i32> %i.bax to <4 x float> ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 32
  %i.bba = load <4 x i32>, ptr %i.baz, align 16, !tbaa !89
  %i.bbb = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 48
  %i.bbc = load <4 x i32>, ptr %i.bbb, align 16, !tbaa !89
  %i.bbd = sitofp <4 x i32> %i.bba to <4 x float>
  %i.bbe = shufflevector <4 x float> %i.bbd, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bbf = sitofp <4 x i32> %i.bbc to <4 x float>
  %i.bbg = shufflevector <4 x float> %i.bbf, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %17 = shufflevector <4 x float> %i.bav, <4 x float> %i.bbe, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %18 = shufflevector <4 x float> %i.bav, <4 x float> %i.bbe, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %19 = shufflevector <4 x float> %i.bay, <4 x float> %i.bbg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %20 = shufflevector <4 x float> %i.bay, <4 x float> %i.bbg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %21 = shufflevector <4 x float> %17, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %22 = shufflevector <4 x float> %19, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %23 = shufflevector <4 x float> %17, <4 x float> %18, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %24 = shufflevector <4 x float> %19, <4 x float> %20, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bbh = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bbi = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bbj = fmul fast <4 x float> %i.azv, %21      ; 7 uses
  %i.bbk = fmul fast <4 x float> %i.azv, %22      ; 7 uses
  %i.bbl = fmul fast <4 x float> %i.bbh, %i.azw   ; 7 uses
  %i.bbm = fmul fast <4 x float> %i.bbi, %i.azw   ; 7 uses
  %.not2026.i = icmp eq ptr %.443802.i, null
  br i1 %.not2026.i, label %.thread3585.i, label %bb.gf

bb.gf:                                            ; preds = %.lr.ph3803.i
  br i1 %i.aes, label %.thread3572.i, label %bb.gg

.thread3572.i:                                    ; preds = %bb.gf
  %i.bbn = fadd fast <4 x float> %i.bbj, %.331783797.i
  %i.bbo = fadd fast <4 x float> %i.bbk, %.331783797.i
  %i.bbp = fadd fast <4 x float> %i.bbl, %.331783797.i
  %i.bbq = fadd fast <4 x float> %i.bbm, %.331783797.i
  br label %.thread3585.i

bb.gg:                                            ; preds = %bb.gf
  br i1 %i.aet, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.bbr = fadd fast <4 x float> %i.bbj, %.331783797.i
  %i.bbs = fadd fast <4 x float> %i.bbk, %.331783797.i
  %i.bbt = fadd fast <4 x float> %i.bbl, %.231693798.i
  %i.bbu = fadd fast <4 x float> %i.bbm, %.231693798.i
  br label %.thread3585.i

bb.gi:                                            ; preds = %bb.gg
  switch i32 %3, label %.thread3585.i [
    i32 3, label %bb.gj
    i32 4, label %bb.gn
  ]

bb.gj:                                            ; preds = %bb.gi
  %i.bbv = load <4 x float>, ptr %.443802.i, align 1, !tbaa !89 ; 3 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %.443802.i, i64 16
  %i.bbx = load <4 x float>, ptr %i.bbw, align 1, !tbaa !89 ; 3 uses
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %.443802.i, i64 %i.u ; 2 uses
  %i.bbz = load <4 x float>, ptr %i.bby, align 1, !tbaa !89 ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bby, i64 16
  %i.bcb = load <4 x float>, ptr %i.bca, align 1, !tbaa !89 ; 2 uses
  br i1 %i.aeh, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.bcc = fadd fast <4 x float> %i.bbv, %i.bbj
  %i.bcd = fadd fast <4 x float> %i.bbx, %i.bbk
  %i.bce = fadd fast <4 x float> %i.bbz, %i.bbl
  %i.bcf = fadd fast <4 x float> %i.bcb, %i.bbm
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  %i.bcg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbv, <4 x float> nofpclass(nan inf) %i.aeg, <4 x float> nofpclass(nan inf) %i.bbj)
  %i.bch = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbx, <4 x float> nofpclass(nan inf) %i.aeg, <4 x float> nofpclass(nan inf) %i.bbk)
  %i.bci = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbz, <4 x float> nofpclass(nan inf) %i.aeg, <4 x float> nofpclass(nan inf) %i.bbl)
  %i.bcj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bcb, <4 x float> nofpclass(nan inf) %i.aeg, <4 x float> nofpclass(nan inf) %i.bbm)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.23163.i = phi nsz <4 x float> [ %i.bcc, %bb.gk ], [ %i.bcg, %bb.gl ]
  %.23157.i = phi nsz <4 x float> [ %i.bcd, %bb.gk ], [ %i.bch, %bb.gl ]
  %.23151.i = phi nsz <4 x float> [ %i.bce, %bb.gk ], [ %i.bci, %bb.gl ]
  %.23145.i = phi nsz <4 x float> [ %i.bcf, %bb.gk ], [ %i.bcj, %bb.gl ]
  %i.bck = getelementptr inbounds nuw i8, ptr %.443802.i, i64 32
  br label %.thread3585.i

bb.gn:                                            ; preds = %bb.gi
  %i.bcl = load <4 x float>, ptr %.443802.i, align 1, !tbaa !89
  %i.bcm = getelementptr inbounds nuw i8, ptr %.443802.i, i64 16
  %i.bcn = load <4 x float>, ptr %i.bcm, align 1, !tbaa !89
  %i.bco = fmul fast <4 x float> %i.bcl, %i.aeg   ; 3 uses
  %i.bcp = fmul fast <4 x float> %i.bcn, %i.aeg   ; 3 uses
  %i.bcq = fadd fast <4 x float> %i.bco, %i.bbj
  %i.bcr = fadd fast <4 x float> %i.bcp, %i.bbk
  %i.bcs = fadd fast <4 x float> %i.bco, %i.bbl
  %i.bct = fadd fast <4 x float> %i.bcp, %i.bbm
  %i.bcu = getelementptr inbounds nuw i8, ptr %.443802.i, i64 32
  br label %.thread3585.i

.thread3585.i:                                    ; preds = %bb.gn, %bb.gm, %bb.gi, %bb.gh, %.thread3572.i, %.lr.ph3803.i
  %.53180.i = phi nsz <4 x float> [ %.331783797.i, %.lr.ph3803.i ], [ %i.bco, %bb.gn ], [ %.331783797.i, %bb.gi ], [ %i.bbv, %bb.gm ], [ %.331783797.i, %.thread3572.i ], [ %.331783797.i, %bb.gh ] ; 2 uses
  %.43171.i = phi nsz <4 x float> [ %.231693798.i, %.lr.ph3803.i ], [ %i.bcp, %bb.gn ], [ %.231693798.i, %bb.gi ], [ %i.bbx, %bb.gm ], [ %.231693798.i, %.thread3572.i ], [ %.231693798.i, %bb.gh ] ; 2 uses
  %.43165.i = phi nsz <4 x float> [ %i.bbj, %.lr.ph3803.i ], [ %i.bcq, %bb.gn ], [ %i.bbj, %bb.gi ], [ %.23163.i, %bb.gm ], [ %i.bbn, %.thread3572.i ], [ %i.bbr, %bb.gh ] ; 2 uses
  %.43159.i = phi nsz <4 x float> [ %i.bbk, %.lr.ph3803.i ], [ %i.bcr, %bb.gn ], [ %i.bbk, %bb.gi ], [ %.23157.i, %bb.gm ], [ %i.bbo, %.thread3572.i ], [ %i.bbs, %bb.gh ] ; 2 uses
  %.43153.i = phi nsz <4 x float> [ %i.bbl, %.lr.ph3803.i ], [ %i.bcs, %bb.gn ], [ %i.bbl, %bb.gi ], [ %.23151.i, %bb.gm ], [ %i.bbp, %.thread3572.i ], [ %i.bbt, %bb.gh ] ; 2 uses
  %.43147.i = phi nsz <4 x float> [ %i.bbm, %.lr.ph3803.i ], [ %i.bct, %bb.gn ], [ %i.bbm, %bb.gi ], [ %.23145.i, %bb.gm ], [ %i.bbq, %.thread3572.i ], [ %i.bbu, %bb.gh ] ; 2 uses
  %.46.i = phi ptr [ null, %.lr.ph3803.i ], [ %i.bcu, %bb.gn ], [ %.443802.i, %bb.gi ], [ %i.bck, %bb.gm ], [ %.443802.i, %.thread3572.i ], [ %.443802.i, %bb.gh ] ; 2 uses
  br i1 %i.aei, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.thread3585.i
  %i.bcv = fmul fast <4 x float> %.43165.i, %i.aek
  %i.bcw = fmul fast <4 x float> %.43159.i, %i.aek
  %i.bcx = fmul fast <4 x float> %.43153.i, %i.aek
  %i.bcy = fmul fast <4 x float> %.43147.i, %i.aek
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.thread3585.i
  %.53166.i = phi nsz <4 x float> [ %i.bcv, %bb.go ], [ %.43165.i, %.thread3585.i ] ; 7 uses
  %.53160.i = phi nsz <4 x float> [ %i.bcw, %bb.go ], [ %.43159.i, %.thread3585.i ] ; 7 uses
  %.53154.i = phi nsz <4 x float> [ %i.bcx, %bb.go ], [ %.43153.i, %.thread3585.i ] ; 7 uses
  %.53148.i = phi nsz <4 x float> [ %i.bcy, %bb.go ], [ %.43147.i, %.thread3585.i ] ; 7 uses
  br i1 %.not2019.i, label %bb.gu, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  switch i32 %i.c, label %bb.gv [
    i32 8, label %bb.gr
    i32 4, label %bb.gs
    i32 1, label %bb.gt
  ]

bb.gr:                                            ; preds = %bb.gq
  store <4 x float> %.53166.i, ptr %.119533799.i, align 16, !tbaa !89
  %i.bcz = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53160.i, ptr %i.bcz, align 16, !tbaa !89
  %i.bda = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 32
  store <4 x float> %.53154.i, ptr %i.bda, align 16, !tbaa !89
  %i.bdb = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 48
  store <4 x float> %.53148.i, ptr %i.bdb, align 16, !tbaa !89
  br label %bb.gv

bb.gs:                                            ; preds = %bb.gq
  store <4 x float> %.53166.i, ptr %.119533799.i, align 16, !tbaa !89
  %i.bdc = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53154.i, ptr %i.bdc, align 16, !tbaa !89
  %i.bdd = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3658.i ; 2 uses
  store <4 x float> %.53160.i, ptr %i.bdd, align 16, !tbaa !89
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 16
  store <4 x float> %.53148.i, ptr %i.bde, align 16, !tbaa !89
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gq
  %.sroa.02178.0.vec.extract.i = extractelement <4 x float> %.53166.i, i64 0
  store float %.sroa.02178.0.vec.extract.i, ptr %.119533799.i, align 4, !tbaa !68
  %.sroa.12.32.vec.extract.i = extractelement <4 x float> %.53154.i, i64 0
  %i.bdf = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 4
  store float %.sroa.12.32.vec.extract.i, ptr %i.bdf, align 4, !tbaa !68
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %.119533799.i, i64 %i.l
  %i.bdh = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bdh, ptr %i.bdg, align 4, !tbaa !68
  %i.bdi = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3656.i
  %i.bdj = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bdj, ptr %i.bdi, align 4, !tbaa !68
  %i.bdk = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3657.i
  %i.bdl = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bdl, ptr %i.bdk, align 4, !tbaa !68
  %.sroa.72179.16.vec.extract.i = extractelement <4 x float> %.53160.i, i64 0
  %i.bdm = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3658.i ; 2 uses
  store float %.sroa.72179.16.vec.extract.i, ptr %i.bdm, align 4, !tbaa !68
  %.sroa.17.48.vec.extract.i = extractelement <4 x float> %.53148.i, i64 0
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 4
  store float %.sroa.17.48.vec.extract.i, ptr %i.bdn, align 4, !tbaa !68
  %i.bdo = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3659.i
  %i.bdp = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bdp, ptr %i.bdo, align 4, !tbaa !68
  %i.bdq = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3660.i
  %i.bdr = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bdr, ptr %i.bdq, align 4, !tbaa !68
  %i.bds = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3661.i
  %i.bdt = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bdt, ptr %i.bds, align 4, !tbaa !68
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gp
  store <4 x float> %.53166.i, ptr %.119533799.i, align 1, !tbaa !89
  %i.bdu = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53160.i, ptr %i.bdu, align 1, !tbaa !89
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %.119533799.i, i64 %i.l ; 2 uses
  store <4 x float> %.53154.i, ptr %i.bdv, align 1, !tbaa !89
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 16
  store <4 x float> %.53148.i, ptr %i.bdw, align 1, !tbaa !89
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq
  %.sink4010.i = phi i64 [ 32, %bb.gu ], [ %.idx2028.i, %bb.gs ], [ %.idx2028.i, %bb.gr ], [ %.idx2028.i, %bb.gq ], [ %.idx2028.i, %bb.gt ]
  %i.bdx = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.sink4010.i ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 64 ; 2 uses
  %i.bdz = add nuw nsw i32 %.019433800.i, 8       ; 2 uses
  %i.bea = or disjoint i32 %i.bdz, 7
  %i.beb = icmp slt i32 %i.bea, %7
  br i1 %i.beb, label %.lr.ph3803.i, label %.preheader3683.i, !llvm.loop !743

.preheader3682.i:                                 ; preds = %bb.hg, %.preheader3683.i
  %.31955.lcssa.i = phi ptr [ %.11953.lcssa.i, %.preheader3683.i ], [ %i.bfn, %bb.hg ] ; 2 uses
  %.11944.lcssa.i = phi i32 [ %.01943.lcssa.i, %.preheader3683.i ], [ %i.bfp, %bb.hg ] ; 3 uses
  %.121905.lcssa.i = phi ptr [ %.111904.lcssa.i, %.preheader3683.i ], [ %i.bfo, %bb.hg ] ; 2 uses
  %.47.lcssa.i = phi ptr [ %.44.lcssa.i, %.preheader3683.i ], [ %.49.i, %bb.hg ] ; 2 uses
  %i.bec = or disjoint i32 %.11944.lcssa.i, 1
  %i.bed = icmp slt i32 %i.bec, %7
  br i1 %i.bed, label %.lr.ph3825.i.preheader, label %.preheader3681.i

.lr.ph3825.i.preheader:                           ; preds = %.preheader3682.i
  %i.bee = shufflevector <2 x float> %i.baq, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph3825.i

.lr.ph3816.i:                                     ; preds = %.preheader3683.i, %bb.hg
  %.473815.i = phi ptr [ %.49.i, %bb.hg ], [ %.44.lcssa.i, %.preheader3683.i ] ; 9 uses
  %.1219053814.i = phi ptr [ %i.bfo, %bb.hg ], [ %.111904.lcssa.i, %.preheader3683.i ] ; 3 uses
  %.119443813.i = phi i32 [ %i.bfp, %bb.hg ], [ %.01943.lcssa.i, %.preheader3683.i ]
  %.319553812.i = phi ptr [ %i.bfn, %bb.hg ], [ %.11953.lcssa.i, %.preheader3683.i ] ; 10 uses
  %.531723811.i = phi <4 x float> [ %.73174.i, %bb.hg ], [ %.23169.lcssa.i, %.preheader3683.i ] ; 6 uses
  %.631813810.i = phi <4 x float> [ %.83183.i, %bb.hg ], [ %.33178.lcssa.i, %.preheader3683.i ] ; 7 uses
  %i.bef = load <4 x i32>, ptr %.1219053814.i, align 16, !tbaa !89
  %i.beg = sitofp fast <4 x i32> %i.bef to <4 x float> ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %.1219053814.i, i64 16
  %i.bei = load <4 x i32>, ptr %i.beh, align 16, !tbaa !89
  %i.bej = sitofp fast <4 x i32> %i.bei to <4 x float> ; 2 uses
  %25 = shufflevector <4 x float> %i.beg, <4 x float> %i.bej, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %26 = shufflevector <4 x float> %i.beg, <4 x float> %i.bej, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %27 = shufflevector <4 x float> %25, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %28 = shufflevector <4 x float> %26, <4 x float> %25, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bek = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bel = fmul fast <4 x float> %i.azv, %27      ; 7 uses
  %i.bem = fmul fast <4 x float> %i.bek, %i.azw   ; 7 uses
  %.not2024.i = icmp eq ptr %.473815.i, null
  br i1 %.not2024.i, label %.thread3602.i, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph3816.i
  br i1 %i.aes, label %.thread3593.i, label %bb.gx

.thread3593.i:                                    ; preds = %bb.gw
  %i.ben = fadd fast <4 x float> %i.bel, %.631813810.i
  %i.beo = fadd fast <4 x float> %i.bem, %.631813810.i
  br label %.thread3602.i

bb.gx:                                            ; preds = %bb.gw
  br i1 %i.aet, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.bep = fadd fast <4 x float> %i.bel, %.631813810.i
  %i.beq = fadd fast <4 x float> %i.bem, %.531723811.i
  br label %.thread3602.i

bb.gz:                                            ; preds = %bb.gx
  switch i32 %3, label %.thread3602.i [
    i32 3, label %bb.ha
    i32 4, label %bb.hb
  ]

bb.ha:                                            ; preds = %bb.gz
  %i.ber = load <4 x float>, ptr %.473815.i, align 1, !tbaa !89 ; 3 uses
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %.473815.i, i64 %i.u
  %i.bet = load <4 x float>, ptr %i.bes, align 1, !tbaa !89 ; 3 uses
  %i.beu = fadd fast <4 x float> %i.ber, %i.bel
  %i.bev = fadd fast <4 x float> %i.bet, %i.bem
  %i.bew = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ber, <4 x float> nofpclass(nan inf) %i.aeg, <4 x float> nofpclass(nan inf) %i.bel)
  %i.bex = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bet, <4 x float> nofpclass(nan inf) %i.aeg, <4 x float> nofpclass(nan inf) %i.bem)
  %.23134.i = select nsz i1 %i.aeh, <4 x float> %i.beu, <4 x float> %i.bew
  %.23128.i = select nsz i1 %i.aeh, <4 x float> %i.bev, <4 x float> %i.bex
  %i.bey = getelementptr inbounds nuw i8, ptr %.473815.i, i64 16
  br label %.thread3602.i

bb.hb:                                            ; preds = %bb.gz
  %i.bez = load <4 x float>, ptr %.473815.i, align 1, !tbaa !89
  %i.bfa = fmul fast <4 x float> %i.bez, %i.aeg   ; 3 uses
  %i.bfb = fadd fast <4 x float> %i.bfa, %i.bel
  %i.bfc = fadd fast <4 x float> %i.bfa, %i.bem
  %i.bfd = getelementptr inbounds nuw i8, ptr %.473815.i, i64 16
  br label %.thread3602.i

.thread3602.i:                                    ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gy, %.thread3593.i, %.lr.ph3816.i
  %.83183.i = phi nsz <4 x float> [ %.631813810.i, %.lr.ph3816.i ], [ %i.bfa, %bb.hb ], [ %.631813810.i, %bb.gz ], [ %i.ber, %bb.ha ], [ %.631813810.i, %.thread3593.i ], [ %.631813810.i, %bb.gy ]
  %.73174.i = phi nsz <4 x float> [ %.531723811.i, %.lr.ph3816.i ], [ %.531723811.i, %bb.hb ], [ %.531723811.i, %bb.gz ], [ %i.bet, %bb.ha ], [ %.531723811.i, %.thread3593.i ], [ %.531723811.i, %bb.gy ]
  %.43136.i = phi nsz <4 x float> [ %i.bel, %.lr.ph3816.i ], [ %i.bfb, %bb.hb ], [ %i.bel, %bb.gz ], [ %.23134.i, %bb.ha ], [ %i.ben, %.thread3593.i ], [ %i.bep, %bb.gy ]
  %.43130.i = phi nsz <4 x float> [ %i.bem, %.lr.ph3816.i ], [ %i.bfc, %bb.hb ], [ %i.bem, %bb.gz ], [ %.23128.i, %bb.ha ], [ %i.beo, %.thread3593.i ], [ %i.beq, %bb.gy ]
  %.49.i = phi ptr [ null, %.lr.ph3816.i ], [ %i.bfd, %bb.hb ], [ %.473815.i, %bb.gz ], [ %i.bey, %bb.ha ], [ %.473815.i, %.thread3593.i ], [ %.473815.i, %bb.gy ] ; 2 uses
  %.53137.i = fmul reassoc nsz arcp contract afn <4 x float> %.43136.i, %i.aep ; 6 uses
  %.53131.i = fmul reassoc nsz arcp contract afn <4 x float> %.43130.i, %i.aep ; 6 uses
  br i1 %.not2019.i, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %.thread3602.i
  switch i32 %i.c, label %bb.hg [
    i32 4, label %bb.hd
    i32 1, label %bb.he
  ]

bb.hd:                                            ; preds = %bb.hc
  store <4 x float> %.53137.i, ptr %.319553812.i, align 16, !tbaa !89
  %i.bfe = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 16
  store <4 x float> %.53131.i, ptr %i.bfe, align 16, !tbaa !89
  br label %bb.hg

bb.he:                                            ; preds = %bb.hc
  %.sroa.02151.0.vec.extract.i = extractelement <4 x float> %.53137.i, i64 0
  store float %.sroa.02151.0.vec.extract.i, ptr %.319553812.i, align 4, !tbaa !68
  %.sroa.72152.16.vec.extract.i = extractelement <4 x float> %.53131.i, i64 0
  %i.bff = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 4
  store float %.sroa.72152.16.vec.extract.i, ptr %i.bff, align 4, !tbaa !68
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %.319553812.i, i64 %i.l
  %i.bfh = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bfh, ptr %i.bfg, align 4, !tbaa !68
  %i.bfi = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.idx3656.i
  %i.bfj = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bfj, ptr %i.bfi, align 4, !tbaa !68
  %i.bfk = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.idx3657.i
  %i.bfl = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bfl, ptr %i.bfk, align 4, !tbaa !68
  br label %bb.hg

bb.hf:                                            ; preds = %.thread3602.i
  store <4 x float> %.53137.i, ptr %.319553812.i, align 1, !tbaa !89
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %.319553812.i, i64 %i.l
  store <4 x float> %.53131.i, ptr %i.bfm, align 1, !tbaa !89
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hc
  %.sink4011.i = phi i64 [ 16, %bb.hf ], [ %.idx3658.i, %bb.hd ], [ %.idx3658.i, %bb.hc ], [ %.idx3658.i, %bb.he ]
  %i.bfn = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.sink4011.i ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %.1219053814.i, i64 32 ; 2 uses
  %i.bfp = add nuw nsw i32 %.119443813.i, 4       ; 3 uses
  %i.bfq = or disjoint i32 %i.bfp, 3
  %i.bfr = icmp slt i32 %i.bfq, %7
  br i1 %i.bfr, label %.lr.ph3816.i, label %.preheader3682.i, !llvm.loop !744

.preheader3681.i:                                 ; preds = %.thread3621.i, %.preheader3682.i
  %.51957.lcssa.i = phi ptr [ %.31955.lcssa.i, %.preheader3682.i ], [ %i.bhd, %.thread3621.i ]
  %.21945.lcssa.i = phi i32 [ %.11944.lcssa.i, %.preheader3682.i ], [ %i.bhf, %.thread3621.i ] ; 2 uses
  %.131906.lcssa.i = phi ptr [ %.121905.lcssa.i, %.preheader3682.i ], [ %i.bhe, %.thread3621.i ] ; 2 uses
  %.50.lcssa.i = phi ptr [ %.47.lcssa.i, %.preheader3682.i ], [ %.52.i, %.thread3621.i ] ; 2 uses
  %i.bfs = icmp slt i32 %.21945.lcssa.i, %7
  br i1 %i.bfs, label %.lr.ph3834.i, label %._crit_edge3835.i

.lr.ph3834.i:                                     ; preds = %.preheader3681.i
  %i.bft = select <2 x i1> %i.aec, <2 x float> %i.baq, <2 x float> zeroinitializer ; 2 uses
  %i.bfu = select ninf nsz i1 %i.aet, float %.21951.i, float 0.000000e+00
  %i.bfv = insertelement <2 x float> poison, float %i.bfu, i64 0
  %i.bfw = shufflevector <2 x float> %i.bfv, <2 x float> %i.bft, <2 x i32> <i32 0, i32 2>
  %i.bfx = fadd reassoc nsz arcp contract afn <2 x float> %i.bft, %i.bfw
  br label %bb.hn

.lr.ph3825.i:                                     ; preds = %.lr.ph3825.i.preheader, %.thread3621.i
  %.503824.i = phi ptr [ %.52.i, %.thread3621.i ], [ %.47.lcssa.i, %.lr.ph3825.i.preheader ] ; 9 uses
  %.1319063823.i = phi ptr [ %i.bhe, %.thread3621.i ], [ %.121905.lcssa.i, %.lr.ph3825.i.preheader ] ; 2 uses
  %.219453822.i = phi i32 [ %i.bhf, %.thread3621.i ], [ %.11944.lcssa.i, %.lr.ph3825.i.preheader ]
  %.519573821.i = phi ptr [ %i.bhd, %.thread3621.i ], [ %.31955.lcssa.i, %.lr.ph3825.i.preheader ] ; 4 uses
  %i.bfy = load <4 x i32>, ptr %.1319063823.i, align 4, !tbaa !50
  %i.bfz = sitofp <4 x i32> %i.bfy to <4 x float>
  %i.bga = fmul fast <4 x float> %i.azu, %i.bfz   ; 6 uses
  %.not2022.i = icmp eq ptr %.503824.i, null
  br i1 %.not2022.i, label %.thread3621.i, label %bb.hh

bb.hh:                                            ; preds = %.lr.ph3825.i
  br i1 %i.aes, label %.thread3608.i, label %bb.hi

.thread3608.i:                                    ; preds = %bb.hh
  %i.bgb = fadd fast <4 x float> %i.bga, %i.bee
  br label %.thread3621.i

bb.hi:                                            ; preds = %bb.hh
  br i1 %i.aet, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.bgc = fadd fast <4 x float> %i.bga, %i.bar
  br label %.thread3621.i

bb.hk:                                            ; preds = %bb.hi
  switch i32 %3, label %.thread3621.i [
    i32 3, label %bb.hl
    i32 4, label %bb.hm
  ]

bb.hl:                                            ; preds = %bb.hk
  %i.bgd = getelementptr inbounds nuw [4 x i8], ptr %.503824.i, i64 %i.u
  %i.bge = load <2 x float>, ptr %.503824.i, align 4, !tbaa !68
  %i.bgf = load <2 x float>, ptr %i.bgd, align 4, !tbaa !68
  %i.bgg = shufflevector <2 x float> %i.bge, <2 x float> %i.bgf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgh = fmul fast <4 x float> %i.bgg, %i.aeg
  %i.bgi = fadd fast <4 x float> %i.bgh, %i.bga
  %i.bgj = getelementptr inbounds nuw i8, ptr %.503824.i, i64 8
  br label %.thread3621.i

bb.hm:                                            ; preds = %bb.hk
  %i.bgk = load <2 x float>, ptr %.503824.i, align 4, !tbaa !68
  %i.bgl = fmul fast <2 x float> %i.bgk, %i.aer
  %i.bgm = shufflevector <2 x float> %i.bgl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bgn = fadd fast <4 x float> %i.bgm, %i.bga
  %i.bgo = getelementptr inbounds nuw i8, ptr %.503824.i, i64 8
  br label %.thread3621.i

.thread3621.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hj, %.thread3608.i, %.lr.ph3825.i
  %.52.i = phi ptr [ %i.bgo, %bb.hm ], [ %.503824.i, %bb.hk ], [ null, %.lr.ph3825.i ], [ %i.bgj, %bb.hl ], [ %.503824.i, %.thread3608.i ], [ %.503824.i, %bb.hj ] ; 2 uses
  %i.bgp = phi <4 x float> [ %i.bgn, %bb.hm ], [ %i.bga, %bb.hk ], [ %i.bga, %.lr.ph3825.i ], [ %i.bgi, %bb.hl ], [ %i.bgb, %.thread3608.i ], [ %i.bgc, %bb.hj ] ; 3 uses
  %i.bgq = extractelement <4 x float> %i.bgp, i64 0
  %i.bgr = fmul fast float %i.bgq, %9
  %i.bgs = extractelement <4 x float> %i.bgp, i64 3
  %i.bgt = fmul fast float %i.bgs, %9
  store float %i.bgr, ptr %.519573821.i, align 4, !tbaa !68
  %i.bgu = getelementptr inbounds nuw i8, ptr %.519573821.i, i64 4
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %.519573821.i, i64 %i.l ; 2 uses
  %i.bgw = getelementptr i8, ptr %i.bgv, i64 4
  %i.bgx = shufflevector <4 x float> %i.bgp, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bgy = fmul fast <2 x float> %i.bgx, %i.aev   ; 2 uses
  %i.bgz = shufflevector <2 x float> %i.bgy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bha = select <2 x i1> %i.aex, <2 x float> %i.bgy, <2 x float> %i.bgz ; 2 uses
  %i.bhb = extractelement <2 x float> %i.bha, i64 0
  store float %i.bhb, ptr %i.bgu, align 4, !tbaa !68
  %i.bhc = extractelement <2 x float> %i.bha, i64 1
  store float %i.bhc, ptr %i.bgv, align 4, !tbaa !68
  store float %i.bgt, ptr %i.bgw, align 4, !tbaa !68
  %i.bhd = getelementptr inbounds nuw i8, ptr %.519573821.i, i64 %..idx3656.i ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %.1319063823.i, i64 16 ; 2 uses
  %i.bhf = add nuw nsw i32 %.219453822.i, 2       ; 3 uses
  %i.bhg = or disjoint i32 %i.bhf, 1
  %i.bhh = icmp slt i32 %i.bhg, %7
  br i1 %i.bhh, label %.lr.ph3825.i, label %.preheader3681.i, !llvm.loop !745

bb.hn:                                            ; preds = %bb.ht, %.lr.ph3834.i
  %.533833.i = phi ptr [ %.50.lcssa.i, %.lr.ph3834.i ], [ %.55.i, %bb.ht ] ; 7 uses
  %.1419073832.i = phi ptr [ %.131906.lcssa.i, %.lr.ph3834.i ], [ %i.bij, %bb.ht ] ; 2 uses
  %.319463831.i = phi i32 [ %.21945.lcssa.i, %.lr.ph3834.i ], [ %i.bik, %bb.ht ]
  %.719593830.i = phi ptr [ %.51957.lcssa.i, %.lr.ph3834.i ], [ %.81960.i, %bb.ht ] ; 5 uses
  %i.bhi = load <2 x i32>, ptr %.1419073832.i, align 4, !tbaa !50
  %i.bhj = sitofp <2 x i32> %i.bhi to <2 x float>
end_hunk_1
begin_hunk_2_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  store <4 x float> %.51187, ptr %i.cat, align 1, !tbaa !89
  %i.cau = getelementptr inbounds nuw i8, ptr %.128131894, i64 48
  store <4 x float> %.51181, ptr %i.cau, align 1, !tbaa !89
  br label %bb.jt

bb.jr:                                            ; preds = %bb.jp
  store <4 x float> %.51199, ptr %.128131894, align 1, !tbaa !89
  %i.cav = getelementptr inbounds nuw i8, ptr %.128131894, i64 16
  store <4 x float> %.51187, ptr %i.cav, align 1, !tbaa !89
  %i.caw = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx2947 ; 2 uses
  store <4 x float> %.51193, ptr %i.caw, align 1, !tbaa !89
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 16
  store <4 x float> %.51181, ptr %i.cax, align 1, !tbaa !89
  br label %bb.jt

bb.js:                                            ; preds = %bb.jp
  %.sroa.069.0.vec.extract = extractelement <4 x float> %.51199, i64 0
  store float %.sroa.069.0.vec.extract, ptr %.128131894, align 4, !tbaa !68
  %.sroa.12.32.vec.extract = extractelement <4 x float> %.51187, i64 0
  %i.cay = getelementptr inbounds nuw i8, ptr %.128131894, i64 4
  store float %.sroa.12.32.vec.extract, ptr %i.cay, align 4, !tbaa !68
  %i.caz = getelementptr inbounds nuw [4 x i8], ptr %.128131894, i64 %i.k
  %i.cba = shufflevector <4 x float> %.51199, <4 x float> %.51187, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cba, ptr %i.caz, align 4, !tbaa !68
  %i.cbb = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx1727
  %i.cbc = shufflevector <4 x float> %.51199, <4 x float> %.51187, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cbc, ptr %i.cbb, align 4, !tbaa !68
  %i.cbd = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx1729
  %i.cbe = shufflevector <4 x float> %.51199, <4 x float> %.51187, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.cbe, ptr %i.cbd, align 4, !tbaa !68
  %.sroa.770.16.vec.extract = extractelement <4 x float> %.51193, i64 0
  %i.cbf = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx2947 ; 2 uses
  store float %.sroa.770.16.vec.extract, ptr %i.cbf, align 4, !tbaa !68
  %.sroa.17.48.vec.extract = extractelement <4 x float> %.51181, i64 0
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbf, i64 4
  store float %.sroa.17.48.vec.extract, ptr %i.cbg, align 4, !tbaa !68
  %i.cbh = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx1734
  %i.cbi = shufflevector <4 x float> %.51193, <4 x float> %.51181, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cbi, ptr %i.cbh, align 4, !tbaa !68
  %i.cbj = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx1735
  %i.cbk = shufflevector <4 x float> %.51193, <4 x float> %.51181, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cbk, ptr %i.cbj, align 4, !tbaa !68
  %i.cbl = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx1736
  %i.cbm = shufflevector <4 x float> %.51193, <4 x float> %.51181, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.cbm, ptr %i.cbl, align 4, !tbaa !68
  br label %bb.jt

bb.jt:                                            ; preds = %bb.jr, %bb.jq, %bb.jp, %bb.js
  %i.cbn = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx2949
  br label %bb.kc

bb.ju:                                            ; preds = %bb.jo
  store <4 x float> %.51199, ptr %.128131894, align 1, !tbaa !89
  %i.cbo = getelementptr inbounds nuw i8, ptr %.128131894, i64 16
  store <4 x float> %.51193, ptr %i.cbo, align 1, !tbaa !89
  %i.cbp = getelementptr inbounds nuw [4 x i8], ptr %.128131894, i64 %i.k ; 2 uses
  store <4 x float> %.51187, ptr %i.cbp, align 1, !tbaa !89
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbp, i64 16
  store <4 x float> %.51181, ptr %i.cbq, align 1, !tbaa !89
  %i.cbr = getelementptr inbounds nuw i8, ptr %.128131894, i64 32
  br label %bb.kc

bb.jv:                                            ; preds = %bb.jn
  %i.cbs = bitcast <4 x float> %.51199 to <4 x i32>
  %i.cbt = lshr <4 x i32> %i.cbs, splat (i32 16)
  %i.cbu = bitcast <4 x float> %.51193 to <4 x i32>
  %i.cbv = lshr <4 x i32> %i.cbu, splat (i32 16)
  %i.cbw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbt, <4 x i32> %i.cbv) ; 12 uses
  %i.cbx = bitcast <8 x i16> %i.cbw to <2 x i64>
  %i.cby = bitcast <4 x float> %.51187 to <4 x i32>
  %i.cbz = lshr <4 x i32> %i.cby, splat (i32 16)
  %i.cca = bitcast <4 x float> %.51181 to <4 x i32>
  %i.ccb = lshr <4 x i32> %i.cca, splat (i32 16)
  %i.ccc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbz, <4 x i32> %i.ccb) ; 12 uses
  %i.ccd = bitcast <8 x i16> %i.ccc to <2 x i64>
  br i1 %.not2936, label %bb.kb, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  switch i32 %i.b, label %bb.ka [
    i32 8, label %bb.jx
    i32 4, label %bb.jy
    i32 1, label %bb.jz
  ]

bb.jx:                                            ; preds = %bb.jw
  store <8 x i16> %i.cbw, ptr %.128221893, align 1, !tbaa !89
  %i.cce = getelementptr inbounds nuw i8, ptr %.128221893, i64 16
  store <8 x i16> %i.ccc, ptr %i.cce, align 1, !tbaa !89
  br label %bb.ka

bb.jy:                                            ; preds = %bb.jw
  %i.ccf = shufflevector <2 x i64> %i.cbx, <2 x i64> %i.ccd, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.ccf, ptr %.128221893, align 1, !tbaa !89
  %i.ccg = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1727
  %i.cch = bitcast <8 x i16> %i.cbw to <2 x double>
  %i.cci = bitcast <8 x i16> %i.ccc to <2 x double>
  %i.ccj = shufflevector <2 x double> %i.cch, <2 x double> %i.cci, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ccj, ptr %i.ccg, align 1, !tbaa !89
  br label %bb.ka

bb.jz:                                            ; preds = %bb.jw
  %.sroa.066.0.vec.extract = extractelement <8 x i16> %i.cbw, i64 0
  store i16 %.sroa.066.0.vec.extract, ptr %.128221893, align 2, !tbaa !108
  %.sroa.11.16.vec.extract = extractelement <8 x i16> %i.ccc, i64 0
  %i.cck = getelementptr inbounds nuw i8, ptr %.128221893, i64 2
  store i16 %.sroa.11.16.vec.extract, ptr %i.cck, align 2, !tbaa !108
  %.sroa.066.2.vec.extract = extractelement <8 x i16> %i.cbw, i64 1
  %i.ccl = getelementptr inbounds nuw [2 x i8], ptr %.128221893, i64 %i.k ; 2 uses
  store i16 %.sroa.066.2.vec.extract, ptr %i.ccl, align 2, !tbaa !108
  %.sroa.11.18.vec.extract = extractelement <8 x i16> %i.ccc, i64 1
  %i.ccm = getelementptr i8, ptr %i.ccl, i64 2
  store i16 %.sroa.11.18.vec.extract, ptr %i.ccm, align 2, !tbaa !108
  %.sroa.066.4.vec.extract = extractelement <8 x i16> %i.cbw, i64 2
  %i.ccn = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1725 ; 2 uses
  store i16 %.sroa.066.4.vec.extract, ptr %i.ccn, align 2, !tbaa !108
  %.sroa.11.20.vec.extract = extractelement <8 x i16> %i.ccc, i64 2
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccn, i64 2
  store i16 %.sroa.11.20.vec.extract, ptr %i.cco, align 2, !tbaa !108
  %.sroa.066.6.vec.extract = extractelement <8 x i16> %i.cbw, i64 3
  %i.ccp = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1726 ; 2 uses
  store i16 %.sroa.066.6.vec.extract, ptr %i.ccp, align 2, !tbaa !108
  %.sroa.11.22.vec.extract = extractelement <8 x i16> %i.ccc, i64 3
  %i.ccq = getelementptr i8, ptr %i.ccp, i64 2
  store i16 %.sroa.11.22.vec.extract, ptr %i.ccq, align 2, !tbaa !108
  %.sroa.066.8.vec.extract = extractelement <8 x i16> %i.cbw, i64 4
  %i.ccr = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1727 ; 2 uses
  store i16 %.sroa.066.8.vec.extract, ptr %i.ccr, align 2, !tbaa !108
  %.sroa.11.24.vec.extract = extractelement <8 x i16> %i.ccc, i64 4
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 2
  store i16 %.sroa.11.24.vec.extract, ptr %i.ccs, align 2, !tbaa !108
  %.sroa.066.10.vec.extract = extractelement <8 x i16> %i.cbw, i64 5
  %i.cct = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1728 ; 2 uses
  store i16 %.sroa.066.10.vec.extract, ptr %i.cct, align 2, !tbaa !108
  %.sroa.11.26.vec.extract = extractelement <8 x i16> %i.ccc, i64 5
  %i.ccu = getelementptr i8, ptr %i.cct, i64 2
  store i16 %.sroa.11.26.vec.extract, ptr %i.ccu, align 2, !tbaa !108
  %.sroa.066.12.vec.extract = extractelement <8 x i16> %i.cbw, i64 6
  %i.ccv = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1729 ; 2 uses
  store i16 %.sroa.066.12.vec.extract, ptr %i.ccv, align 2, !tbaa !108
  %.sroa.11.28.vec.extract = extractelement <8 x i16> %i.ccc, i64 6
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.ccv, i64 2
  store i16 %.sroa.11.28.vec.extract, ptr %i.ccw, align 2, !tbaa !108
  %.sroa.066.14.vec.extract = extractelement <8 x i16> %i.cbw, i64 7
  %i.ccx = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1730 ; 2 uses
  store i16 %.sroa.066.14.vec.extract, ptr %i.ccx, align 2, !tbaa !108
  %.sroa.11.30.vec.extract = extractelement <8 x i16> %i.ccc, i64 7
  %i.ccy = getelementptr i8, ptr %i.ccx, i64 2
  store i16 %.sroa.11.30.vec.extract, ptr %i.ccy, align 2, !tbaa !108
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jy, %bb.jx, %bb.jw, %bb.jz
  %i.ccz = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx2947
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jv
  store <8 x i16> %i.cbw, ptr %.128221893, align 1, !tbaa !89
  %i.cda = getelementptr inbounds nuw [2 x i8], ptr %.128221893, i64 %i.k
  store <8 x i16> %i.ccc, ptr %i.cda, align 1, !tbaa !89
  %i.cdb = getelementptr inbounds nuw i8, ptr %.128221893, i64 16
  br label %bb.kc

bb.kc:                                            ; preds = %bb.ka, %bb.kb, %bb.jt, %bb.ju
  %.32824 = phi ptr [ %.128221893, %bb.jt ], [ %.128221893, %bb.ju ], [ %i.ccz, %bb.ka ], [ %i.cdb, %bb.kb ] ; 2 uses
  %.22814 = phi ptr [ %i.cbn, %bb.jt ], [ %i.cbr, %bb.ju ], [ %.128131894, %bb.ka ], [ %.128131894, %bb.kb ] ; 2 uses
  %i.cdc = add nuw nsw i32 %.028031895, 8         ; 2 uses
  %i.cdd = or disjoint i32 %i.cdc, 7
  %i.cde = icmp slt i32 %i.cdd, %6
  br i1 %i.cde, label %.lr.ph1898, label %.preheader1767, !llvm.loop !1243

.preheader1766:                                   ; preds = %bb.kv, %.preheader1767
  %.42825.lcssa = phi ptr [ %.12822.lcssa, %.preheader1767 ], [ %.62827, %bb.kv ] ; 2 uses
  %.32815.lcssa = phi ptr [ %.12813.lcssa, %.preheader1767 ], [ %.42816, %bb.kv ] ; 2 uses
  %.12804.lcssa = phi i32 [ %.02803.lcssa, %.preheader1767 ], [ %i.cfp, %bb.kv ] ; 3 uses
  %.122753.lcssa = phi ptr [ %.112752.lcssa, %.preheader1767 ], [ %i.cdq, %bb.kv ] ; 2 uses
  %.47.lcssa = phi ptr [ %.44.lcssa, %.preheader1767 ], [ %.49, %bb.kv ] ; 2 uses
  %i.cdf = or disjoint i32 %.12804.lcssa, 1
  %i.cdg = icmp slt i32 %i.cdf, %6
  br i1 %i.cdg, label %.lr.ph1924.preheader, label %.preheader1765

.lr.ph1924.preheader:                             ; preds = %.preheader1766
  %i.cdh = insertelement <2 x float> poison, float %.22811, i64 0
  %i.cdi = shufflevector <2 x float> %i.cdh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cdj = insertelement <2 x float> poison, float %.12808, i64 0
  %i.cdk = shufflevector <2 x float> %i.cdj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cdl = insertelement <2 x float> poison, float %.22811, i64 0
  %i.cdm = shufflevector <2 x float> %i.cdl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph1924

.lr.ph1913:                                       ; preds = %.preheader1767, %bb.kv
  %.471912 = phi ptr [ %.49, %bb.kv ], [ %.44.lcssa, %.preheader1767 ] ; 9 uses
  %.1227531911 = phi ptr [ %i.cdq, %bb.kv ], [ %.112752.lcssa, %.preheader1767 ] ; 3 uses
  %.128041910 = phi i32 [ %i.cfp, %bb.kv ], [ %.02803.lcssa, %.preheader1767 ]
  %.328151909 = phi ptr [ %.42816, %bb.kv ], [ %.12813.lcssa, %.preheader1767 ] ; 13 uses
  %.428251908 = phi ptr [ %.62827, %bb.kv ], [ %.12822.lcssa, %.preheader1767 ] ; 11 uses
  %.512051907 = phi <4 x float> [ %.71207, %bb.kv ], [ %.21202.lcssa, %.preheader1767 ] ; 6 uses
  %.612141906 = phi <4 x float> [ %.81216, %bb.kv ], [ %.31211.lcssa, %.preheader1767 ] ; 7 uses
  %i.cdn = load <4 x float>, ptr %.1227531911, align 16, !tbaa !89 ; 2 uses
  %i.cdo = getelementptr inbounds nuw i8, ptr %.1227531911, i64 16
  %i.cdp = load <4 x float>, ptr %i.cdo, align 16, !tbaa !89 ; 2 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %.1227531911, i64 32 ; 2 uses
  %11 = shufflevector <4 x float> %i.cdn, <4 x float> %i.cdp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %12 = shufflevector <4 x float> %i.cdn, <4 x float> %i.cdp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %13 = shufflevector <4 x float> %11, <4 x float> %12, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 7 uses
  %14 = shufflevector <4 x float> %11, <4 x float> %12, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.cdr = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %.not2942 = icmp eq ptr %.471912, null
  br i1 %.not2942, label %.thread1669, label %bb.kd

bb.kd:                                            ; preds = %.lr.ph1913
  br i1 %i.ask, label %.thread1660, label %bb.ke

.thread1660:                                      ; preds = %bb.kd
  %i.cds = fadd fast <4 x float> %.612141906, %13
  %i.cdt = fadd fast <4 x float> %i.cdr, %.612141906
  br label %.thread1669

bb.ke:                                            ; preds = %bb.kd
  br i1 %or.cond21, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.cdu = fadd fast <4 x float> %.612141906, %13
  %i.cdv = fadd fast <4 x float> %i.cdr, %.512051907
  br label %.thread1669

bb.kg:                                            ; preds = %bb.ke
  switch i32 %2, label %.thread1669 [
    i32 3, label %bb.kh
    i32 4, label %bb.ki
  ]

bb.kh:                                            ; preds = %bb.kg
  %i.cdw = load <4 x float>, ptr %.471912, align 1, !tbaa !89 ; 3 uses
  %i.cdx = getelementptr inbounds nuw [4 x i8], ptr %.471912, i64 %i.t
  %i.cdy = load <4 x float>, ptr %i.cdx, align 1, !tbaa !89 ; 3 uses
  %i.cdz = fadd fast <4 x float> %i.cdw, %13
  %i.cea = fadd fast <4 x float> %i.cdy, %i.cdr
  %i.ceb = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdw, <4 x float> nofpclass(nan inf) %i.asp, <4 x float> nofpclass(nan inf) %13)
  %i.cec = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdy, <4 x float> nofpclass(nan inf) %i.asp, <4 x float> nofpclass(nan inf) %i.cdr)
  %.21172 = select nsz i1 %i.asq, <4 x float> %i.cdz, <4 x float> %i.ceb
  %.21166 = select nsz i1 %i.asq, <4 x float> %i.cea, <4 x float> %i.cec
  %i.ced = getelementptr inbounds nuw i8, ptr %.471912, i64 16
  br label %.thread1669

bb.ki:                                            ; preds = %bb.kg
  %i.cee = load <4 x float>, ptr %.471912, align 1, !tbaa !89
  %i.cef = fmul fast <4 x float> %i.cee, %i.asp   ; 3 uses
  %i.ceg = fadd fast <4 x float> %i.cef, %13
  %i.ceh = fadd fast <4 x float> %i.cef, %i.cdr
  %i.cei = getelementptr inbounds nuw i8, ptr %.471912, i64 16
  br label %.thread1669

.thread1669:                                      ; preds = %bb.kg, %bb.kf, %.thread1660, %bb.kh, %bb.ki, %.lr.ph1913
  %.81216 = phi nsz <4 x float> [ %.612141906, %.lr.ph1913 ], [ %i.cef, %bb.ki ], [ %.612141906, %bb.kg ], [ %i.cdw, %bb.kh ], [ %.612141906, %.thread1660 ], [ %.612141906, %bb.kf ]
  %.71207 = phi nsz <4 x float> [ %.512051907, %.lr.ph1913 ], [ %.512051907, %bb.ki ], [ %.512051907, %bb.kg ], [ %i.cdy, %bb.kh ], [ %.512051907, %.thread1660 ], [ %.512051907, %bb.kf ]
  %.41174 = phi nsz <4 x float> [ %13, %.lr.ph1913 ], [ %i.ceg, %bb.ki ], [ %13, %bb.kg ], [ %.21172, %bb.kh ], [ %i.cds, %.thread1660 ], [ %i.cdu, %bb.kf ] ; 2 uses
  %.41168 = phi nsz <4 x float> [ %i.cdr, %.lr.ph1913 ], [ %i.ceh, %bb.ki ], [ %i.cdr, %bb.kg ], [ %.21166, %bb.kh ], [ %i.cdt, %.thread1660 ], [ %i.cdv, %bb.kf ] ; 2 uses
  %.49 = phi ptr [ null, %.lr.ph1913 ], [ %i.cei, %bb.ki ], [ %.471912, %bb.kg ], [ %i.ced, %bb.kh ], [ %.471912, %.thread1660 ], [ %.471912, %bb.kf ] ; 2 uses
  %i.cej = fmul fast <4 x float> %.41174, %i.ast
  %i.cek = fmul fast <4 x float> %.41168, %i.ast
  %.51175 = select nsz i1 %i.asr, <4 x float> %i.cej, <4 x float> %.41174 ; 7 uses
  %.51169 = select nsz i1 %i.asr, <4 x float> %i.cek, <4 x float> %.41168 ; 7 uses
  br i1 %i.asu, label %bb.kj, label %bb.kp

bb.kj:                                            ; preds = %.thread1669
  br i1 %.not2936, label %bb.ko, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  switch i32 %i.b, label %bb.kn [
    i32 4, label %bb.kl
    i32 1, label %bb.km
  ]

bb.kl:                                            ; preds = %bb.kk
  store <4 x float> %.51175, ptr %.328151909, align 1, !tbaa !89
  %i.cel = getelementptr inbounds nuw i8, ptr %.328151909, i64 16
  store <4 x float> %.51169, ptr %i.cel, align 1, !tbaa !89
  br label %bb.kn

bb.km:                                            ; preds = %bb.kk
  %.sroa.039.0.vec.extract = extractelement <4 x float> %.51175, i64 0
  store float %.sroa.039.0.vec.extract, ptr %.328151909, align 4, !tbaa !68
  %.sroa.740.16.vec.extract = extractelement <4 x float> %.51169, i64 0
  %i.cem = getelementptr inbounds nuw i8, ptr %.328151909, i64 4
  store float %.sroa.740.16.vec.extract, ptr %i.cem, align 4, !tbaa !68
  %i.cen = getelementptr inbounds nuw [4 x i8], ptr %.328151909, i64 %i.k
  %i.ceo = shufflevector <4 x float> %.51175, <4 x float> %.51169, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ceo, ptr %i.cen, align 4, !tbaa !68
  %i.cep = getelementptr inbounds nuw i8, ptr %.328151909, i64 %.idx1727
  %i.ceq = shufflevector <4 x float> %.51175, <4 x float> %.51169, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ceq, ptr %i.cep, align 4, !tbaa !68
  %i.cer = getelementptr inbounds nuw i8, ptr %.328151909, i64 %.idx1729
  %i.ces = shufflevector <4 x float> %.51175, <4 x float> %.51169, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ces, ptr %i.cer, align 4, !tbaa !68
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kl, %bb.kk, %bb.km
  %i.cet = getelementptr inbounds nuw i8, ptr %.328151909, i64 %.idx2947
  br label %bb.kv

bb.ko:                                            ; preds = %bb.kj
  store <4 x float> %.51175, ptr %.328151909, align 1, !tbaa !89
  %i.ceu = getelementptr inbounds nuw [4 x i8], ptr %.328151909, i64 %i.k
  store <4 x float> %.51169, ptr %i.ceu, align 1, !tbaa !89
  %i.cev = getelementptr inbounds nuw i8, ptr %.328151909, i64 16
  br label %bb.kv

bb.kp:                                            ; preds = %.thread1669
  %i.cew = bitcast <4 x float> %.51175 to <4 x i32>
  %i.cex = lshr <4 x i32> %i.cew, splat (i32 16)
  %i.cey = bitcast <4 x float> %.51169 to <4 x i32>
  %i.cez = lshr <4 x i32> %i.cey, splat (i32 16)
  %i.cfa = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cex, <4 x i32> %i.cez) ; 7 uses
  br i1 %.not2936, label %bb.ku, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  switch i32 %i.b, label %bb.kt [
    i32 4, label %bb.kr
    i32 1, label %bb.ks
  ]

bb.kr:                                            ; preds = %bb.kq
  store <8 x i16> %i.cfa, ptr %.428251908, align 1, !tbaa !89
  br label %bb.kt

bb.ks:                                            ; preds = %bb.kq
  %i.cfb = shufflevector <8 x i16> %i.cfa, <8 x i16> poison, <2 x i32> <i32 0, i32 4>
  store <2 x i16> %i.cfb, ptr %.428251908, align 2, !tbaa !108
  %i.cfc = getelementptr inbounds nuw [2 x i8], ptr %.428251908, i64 %i.k
  %i.cfd = shufflevector <8 x i16> %i.cfa, <8 x i16> poison, <2 x i32> <i32 1, i32 5>
  store <2 x i16> %i.cfd, ptr %i.cfc, align 2, !tbaa !108
  %i.cfe = getelementptr inbounds nuw i8, ptr %.428251908, i64 %.idx1725
  %i.cff = shufflevector <8 x i16> %i.cfa, <8 x i16> poison, <2 x i32> <i32 2, i32 6>
  store <2 x i16> %i.cff, ptr %i.cfe, align 2, !tbaa !108
  %i.cfg = getelementptr inbounds nuw i8, ptr %.428251908, i64 %.idx1726
  %i.cfh = shufflevector <8 x i16> %i.cfa, <8 x i16> poison, <2 x i32> <i32 3, i32 7>
  store <2 x i16> %i.cfh, ptr %i.cfg, align 2, !tbaa !108
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kr, %bb.kq, %bb.ks
  %i.cfi = getelementptr inbounds nuw i8, ptr %.428251908, i64 %.idx1727
  br label %bb.kv

bb.ku:                                            ; preds = %bb.kp
  %i.cfj = bitcast <8 x i16> %i.cfa to <2 x i64>
  %i.cfk = extractelement <2 x i64> %i.cfj, i64 0
  store i64 %i.cfk, ptr %.428251908, align 1, !tbaa !89
  %i.cfl = getelementptr inbounds nuw [2 x i8], ptr %.428251908, i64 %i.k
  %i.cfm = bitcast <8 x i16> %i.cfa to <2 x i64>
  %i.cfn = extractelement <2 x i64> %i.cfm, i64 1
  store i64 %i.cfn, ptr %i.cfl, align 1, !tbaa !89
  %i.cfo = getelementptr inbounds nuw i8, ptr %.428251908, i64 8
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kt, %bb.ku, %bb.kn, %bb.ko
  %.62827 = phi ptr [ %.428251908, %bb.kn ], [ %.428251908, %bb.ko ], [ %i.cfi, %bb.kt ], [ %i.cfo, %bb.ku ] ; 2 uses
  %.42816 = phi ptr [ %i.cet, %bb.kn ], [ %i.cev, %bb.ko ], [ %.328151909, %bb.kt ], [ %.328151909, %bb.ku ] ; 2 uses
  %i.cfp = add nuw nsw i32 %.128041910, 4         ; 3 uses
  %i.cfq = or disjoint i32 %i.cfp, 3
  %i.cfr = icmp slt i32 %i.cfq, %6
  br i1 %i.cfr, label %.lr.ph1913, label %.preheader1766, !llvm.loop !1244

.preheader1765:                                   ; preds = %bb.li, %.preheader1766
  %.72828.lcssa = phi ptr [ %.42825.lcssa, %.preheader1766 ], [ %.92830, %bb.li ]
  %.52817.lcssa = phi ptr [ %.32815.lcssa, %.preheader1766 ], [ %.62818, %bb.li ]
  %.22805.lcssa = phi i32 [ %.12804.lcssa, %.preheader1766 ], [ %i.chv, %bb.li ] ; 2 uses
  %.132754.lcssa = phi ptr [ %.122753.lcssa, %.preheader1766 ], [ %i.cfx, %bb.li ] ; 2 uses
  %.50.lcssa = phi ptr [ %.47.lcssa, %.preheader1766 ], [ %.52, %bb.li ] ; 2 uses
  %i.cfs = icmp slt i32 %.22805.lcssa, %6
  br i1 %i.cfs, label %.lr.ph1935.preheader, label %._crit_edge1936

.lr.ph1935.preheader:                             ; preds = %.preheader1765
  %i.cft = shufflevector <2 x float> %i.byp, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph1935

.lr.ph1924:                                       ; preds = %.lr.ph1924.preheader, %bb.li
  %.501923 = phi ptr [ %.52, %bb.li ], [ %.47.lcssa, %.lr.ph1924.preheader ] ; 9 uses
  %.1327541922 = phi ptr [ %i.cfx, %bb.li ], [ %.122753.lcssa, %.lr.ph1924.preheader ] ; 3 uses
  %.228051921 = phi i32 [ %i.chv, %bb.li ], [ %.12804.lcssa, %.lr.ph1924.preheader ]
  %.528171920 = phi ptr [ %.62818, %bb.li ], [ %.32815.lcssa, %.lr.ph1924.preheader ] ; 7 uses
  %.728281919 = phi ptr [ %.92830, %bb.li ], [ %.42825.lcssa, %.lr.ph1924.preheader ] ; 7 uses
  %i.cfu = load <2 x float>, ptr %.1327541922, align 4, !tbaa !68 ; 6 uses
  %i.cfv = getelementptr inbounds nuw i8, ptr %.1327541922, i64 8
  %i.cfw = load <2 x float>, ptr %i.cfv, align 4, !tbaa !68 ; 6 uses
  %i.cfx = getelementptr inbounds nuw i8, ptr %.1327541922, i64 16 ; 2 uses
  %.not2939 = icmp eq ptr %.501923, null
  br i1 %.not2939, label %.thread1688, label %bb.kw

bb.kw:                                            ; preds = %.lr.ph1924
  br i1 %i.ask, label %.thread1675, label %bb.kx

.thread1675:                                      ; preds = %bb.kw
  %i.cfy = fadd fast <2 x float> %i.cfu, %i.cdm
  %i.cfz = fadd fast <2 x float> %i.cfw, %i.cdm
  br label %.thread1688

bb.kx:                                            ; preds = %bb.kw
  br i1 %or.cond27, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.cga = fadd fast <2 x float> %i.cfu, %i.cdi
  %i.cgb = fadd fast <2 x float> %i.cfw, %i.cdk
  br label %.thread1688

bb.kz:                                            ; preds = %bb.kx
  switch i32 %2, label %.thread1688 [
    i32 3, label %bb.la
    i32 4, label %bb.lb
  ]

bb.la:                                            ; preds = %bb.kz
  %i.cgc = load <2 x float>, ptr %.501923, align 4, !tbaa !68
  %i.cgd = fmul fast <2 x float> %i.cgc, %i.ata
  %i.cge = fadd fast <2 x float> %i.cgd, %i.cfu
  %i.cgf = getelementptr inbounds nuw [4 x i8], ptr %.501923, i64 %i.t
  %i.cgg = load <2 x float>, ptr %i.cgf, align 4, !tbaa !68
  %i.cgh = fmul fast <2 x float> %i.cgg, %i.ata
  %i.cgi = fadd fast <2 x float> %i.cgh, %i.cfw
  %i.cgj = getelementptr inbounds nuw i8, ptr %.501923, i64 8
  br label %.thread1688

bb.lb:                                            ; preds = %bb.kz
  %i.cgk = load <2 x float>, ptr %.501923, align 4, !tbaa !68
  %i.cgl = fmul fast <2 x float> %i.cgk, %i.ata   ; 2 uses
  %i.cgm = fadd fast <2 x float> %i.cgl, %i.cfu
  %i.cgn = fadd fast <2 x float> %i.cgl, %i.cfw
  %i.cgo = getelementptr inbounds nuw i8, ptr %.501923, i64 8
  br label %.thread1688

.thread1688:                                      ; preds = %bb.kz, %bb.ky, %.thread1675, %bb.la, %bb.lb, %.lr.ph1924
  %.52 = phi ptr [ %i.cgo, %bb.lb ], [ %.501923, %bb.kz ], [ null, %.lr.ph1924 ], [ %i.cgj, %bb.la ], [ %.501923, %.thread1675 ], [ %.501923, %bb.ky ] ; 2 uses
  %i.cgp = phi <2 x float> [ %i.cgn, %bb.lb ], [ %i.cfw, %bb.kz ], [ %i.cfw, %.lr.ph1924 ], [ %i.cgi, %bb.la ], [ %i.cfz, %.thread1675 ], [ %i.cgb, %bb.ky ]
  %i.cgq = phi <2 x float> [ %i.cgm, %bb.lb ], [ %i.cfu, %bb.kz ], [ %i.cfu, %.lr.ph1924 ], [ %i.cge, %bb.la ], [ %i.cfy, %.thread1675 ], [ %i.cga, %bb.ky ]
  %i.cgr = fmul fast <2 x float> %i.cgq, %i.atc   ; 4 uses
  %i.cgs = fmul fast <2 x float> %i.cgp, %i.atc   ; 5 uses
  br i1 %i.asu, label %bb.lc, label %bb.lf

bb.lc:                                            ; preds = %.thread1688
  %i.cgt = extractelement <2 x float> %i.cgr, i64 0
  store float %i.cgt, ptr %.528171920, align 4, !tbaa !68
  %i.cgu = getelementptr inbounds nuw i8, ptr %.528171920, i64 4 ; 2 uses
  %i.cgv = getelementptr inbounds nuw [4 x i8], ptr %.528171920, i64 %i.k ; 3 uses
  %i.cgw = getelementptr i8, ptr %i.cgv, i64 4    ; 2 uses
  br i1 %.not2936, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.cgx = extractelement <2 x float> %i.cgs, i64 0
  store float %i.cgx, ptr %i.cgu, align 4, !tbaa !68
  %i.cgy = extractelement <2 x float> %i.cgr, i64 1
  store float %i.cgy, ptr %i.cgv, align 4, !tbaa !68
  %i.cgz = extractelement <2 x float> %i.cgs, i64 1
  store float %i.cgz, ptr %i.cgw, align 4, !tbaa !68
  %i.cha = getelementptr inbounds nuw i8, ptr %.528171920, i64 %.idx1727
  br label %bb.li

bb.le:                                            ; preds = %bb.lc
end_hunk_2
