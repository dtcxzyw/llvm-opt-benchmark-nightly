Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86?download=true
inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
bb.cd:                                            ; preds = %.thread757.i
  switch i32 %i.b, label %bb.cf [
    i32 4, label %.thread761.i
    i32 1, label %bb.ce
  ]

.thread761.i:                                     ; preds = %bb.cd
  store <4 x float> %i.us, ptr %.101203922.i, align 16, !tbaa !87
  %i.uu = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.sroa.0140.0.vec.extract.i = extractelement <4 x float> %i.us, i64 0
  store float %.sroa.0140.0.vec.extract.i, ptr %.101203922.i, align 4, !tbaa !67
  %.sroa.0140.4.vec.extract.i = extractelement <4 x float> %i.us, i64 1
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.101203922.i, i64 %i.k
  store float %.sroa.0140.4.vec.extract.i, ptr %i.uv, align 4, !tbaa !67
  %.sroa.0140.8.vec.extract.i = extractelement <4 x float> %i.us, i64 2
  %i.uw = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 %.idx1293.i
  store float %.sroa.0140.8.vec.extract.i, ptr %i.uw, align 4, !tbaa !67
  %.sroa.0140.12.vec.extract.i = extractelement <4 x float> %i.us, i64 3
  %i.ux = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 %.idx1294.i
  store float %.sroa.0140.12.vec.extract.i, ptr %i.ux, align 4, !tbaa !67
  %i.uy = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.thread761.i, %bb.cd, %bb.cc
  %.121205.i = phi ptr [ %i.ut, %bb.cc ], [ %i.uy, %bb.ce ], [ %.101203922.i, %bb.cd ], [ %i.uu, %.thread761.i ]
  %i.uz = getelementptr inbounds nuw i8, ptr %.41179923.i, i64 16 ; 2 uses
  %i.va = add nuw nsw i32 %.31209921.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.va, %6
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph925.i, !llvm.loop !565

._crit_edge.i:                                    ; preds = %bb.cf, %.preheader886.i
  %.41179.lcssa.i = phi ptr [ %.31178.lcssa.i, %.preheader886.i ], [ %i.uz, %bb.cf ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader886.i ], [ %.19.i, %bb.cf ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.vb = or disjoint i64 %indvars.iv.next.i, 3
  %i.vc = icmp samesign ult i64 %i.vb, %i.ar
  br i1 %i.vc, label %bb.b, label %.preheader885.loopexit.i, !llvm.loop !566

.preheader881.loopexit.i:                         ; preds = %._crit_edge974.i
  %i.vd = trunc nuw nsw i64 %indvars.iv.next1058.i to i32
  br label %.preheader881.i

.preheader881.i:                                  ; preds = %.preheader881.loopexit.i, %.preheader885.i
  %.11191.lcssa.i = phi i32 [ %.01190.lcssa.i, %.preheader885.i ], [ %i.vd, %.preheader881.loopexit.i ] ; 2 uses
  %.51180.lcssa.i = phi ptr [ %.01175.lcssa.i, %.preheader885.i ], [ %.91184.lcssa.i, %.preheader881.loopexit.i ]
  %.20.lcssa.i = phi ptr [ %.01166.lcssa.i, %.preheader885.i ], [ %.33.lcssa.i, %.preheader881.loopexit.i ]
  %i.ve = icmp slt i32 %.11191.lcssa.i, %4
  br i1 %i.ve, label %.lr.ph1026.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph1026.i:                                     ; preds = %.preheader881.i
  %.not.i = icmp eq i32 %10, 0                    ; 5 uses
  %i.vf = sext i32 %5 to i64                      ; 4 uses
  %i.vg = mul i64 %i.k, %i.vf
  %i.vh = icmp eq i32 %2, 0
  %or.cond21.i = icmp ult i32 %2, 3               ; 5 uses
  %i.vi = sext i32 %3 to i64                      ; 3 uses
  %i.vj = icmp sgt i32 %6, 7
  %i.vk = add i32 %2, -3
  %or.cond27.i = icmp ult i32 %i.vk, 2            ; 4 uses
  %i.vl = insertelement <4 x float> poison, float %9, i64 0
  %i.vm = shufflevector <4 x float> %i.vl, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.vn = fcmp fast une float %8, 1.000000e+00
  %i.vo = insertelement <4 x float> poison, float %8, i64 0
  %i.vp = shufflevector <4 x float> %i.vo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vq = select ninf nsz i1 %i.vn, <4 x float> %i.vp, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.vr = icmp eq i64 %i.k, 1                     ; 2 uses
  %.idx1251.i = shl i64 %i.k, 3                   ; 3 uses
  %.idx1252.i = mul i64 %i.k, 12                  ; 2 uses
  %.idx1253.i = shl i64 %i.k, 4                   ; 5 uses
  %.idx1254.i = mul i64 %i.k, 20
  %.idx1255.i = mul i64 %i.k, 24
  %.idx1256.i = mul i64 %i.k, 28
  %.idx1257.i = shl i64 %i.k, 5                   ; 3 uses
  %i.vs = and i32 %6, -8
  %i.vt = zext nneg i32 %.11191.lcssa.i to i64
  %i.vu = sext i32 %i.b to i64
  %wide.trip.count.i = zext i32 %4 to i64
  %i.vv = insertelement <2 x float> poison, float %9, i64 0
  %i.vw = shufflevector <2 x float> %i.vv, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ed

bb.cg:                                            ; preds = %._crit_edge974.i, %.lr.ph981.i
  %indvars.iv1057.i = phi i64 [ %i.br, %.lr.ph981.i ], [ %indvars.iv.next1058.i, %._crit_edge974.i ] ; 4 uses
  %.20980.i = phi ptr [ %.01166.lcssa.i, %.lr.ph981.i ], [ %.33.lcssa.i, %._crit_edge974.i ] ; 4 uses
  %.51180979.i = phi ptr [ %.01175.lcssa.i, %.lr.ph981.i ], [ %.91184.lcssa.i, %._crit_edge974.i ] ; 2 uses
  %i.vx = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  br i1 %.not1258.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.bd
  %i.vz = add nsw i64 %indvars.iv1057.i, %i.be    ; 2 uses
  %i.wa = mul nsw i64 %i.vz, %i.bt
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.vy, i64 %i.wa
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.wc = add nsw i64 %indvars.iv1057.i, %i.be    ; 2 uses
  %i.wd = mul i64 %i.wc, %i.k
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.wd
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.bc
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pre-phi.i = phi i64 [ %i.wc, %bb.ci ], [ %i.vz, %bb.ch ] ; 2 uses
  %.01210.i = phi ptr [ %i.wf, %bb.ci ], [ %i.wb, %bb.ch ] ; 2 uses
  %i.wg = load ptr, ptr %7, align 8, !tbaa !23
  %i.wh = getelementptr [4 x i8], ptr %i.wg, i64 %.pre-phi.i
  %i.wi = load <2 x float>, ptr %i.wh, align 4, !tbaa !67 ; 4 uses
  %i.wj = shufflevector <2 x float> %i.wi, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.wk = shufflevector <2 x float> %i.wi, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.wl = shufflevector <2 x float> %i.wi, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not1259.i = icmp eq ptr %.20980.i, null
  br i1 %.not1259.i, label %.thread779.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.bx, label %.thread763.i, label %bb.cl

.thread763.i:                                     ; preds = %bb.ck
  %i.wm = load float, ptr %.20980.i, align 4, !tbaa !67
  %i.wn = fmul fast float %i.wm, %9               ; 3 uses
  %i.wo = insertelement <4 x float> poison, float %i.wn, i64 0
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wq = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wn, i64 0
  br label %.thread779.i

bb.cl:                                            ; preds = %bb.ck
  br i1 %or.cond11.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.wr = load ptr, ptr %0, align 8, !tbaa !23
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %i.be
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv1057.i ; 2 uses
  %i.wu = load <2 x float>, ptr %i.wt, align 4, !tbaa !67
  %i.wv = fmul fast <2 x float> %i.wu, %i.bw      ; 4 uses
  %i.ww = extractelement <2 x float> %i.wv, i64 0
  %i.wx = shufflevector <2 x float> %i.wv, <2 x float> poison, <4 x i32> zeroinitializer
  %i.wy = shufflevector <2 x float> %i.wv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread779.i

bb.cn:                                            ; preds = %bb.cl
  switch i32 %2, label %.thread779.i [
    i32 3, label %bb.co
    i32 4, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %i.wz = load ptr, ptr %0, align 8, !tbaa !23
  %i.xa = mul i64 %.pre-phi.i, %i.t
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %i.xa
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.bc
  br label %.thread779.i

bb.cp:                                            ; preds = %bb.cn
  %i.xd = load ptr, ptr %0, align 8, !tbaa !23
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.bc
  br label %.thread779.i

.thread779.i:                                     ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm, %.thread763.i, %bb.cj
  %.2635.i = phi nsz <4 x float> [ zeroinitializer, %bb.cj ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.cn ], [ zeroinitializer, %bb.co ], [ %i.wp, %.thread763.i ], [ %i.wx, %bb.cm ] ; 2 uses
  %.1626.i = phi nsz <4 x float> [ zeroinitializer, %bb.cj ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.cn ], [ zeroinitializer, %bb.co ], [ zeroinitializer, %.thread763.i ], [ %i.wy, %bb.cm ] ; 2 uses
  %.21227.i = phi nsz float [ 0.000000e+00, %bb.cj ], [ 0.000000e+00, %bb.cp ], [ 0.000000e+00, %bb.cn ], [ 0.000000e+00, %bb.co ], [ %i.wn, %.thread763.i ], [ %i.ww, %bb.cm ]
  %.23.i = phi ptr [ null, %bb.cj ], [ %i.xe, %bb.cp ], [ %.20980.i, %bb.cn ], [ %i.xc, %bb.co ], [ %.20980.i, %.thread763.i ], [ %i.wt, %bb.cm ] ; 2 uses
  %i.xf = phi <2 x float> [ zeroinitializer, %bb.cj ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.cn ], [ zeroinitializer, %bb.co ], [ %i.wq, %.thread763.i ], [ %i.wv, %bb.cm ] ; 3 uses
  %i.xg = shufflevector <2 x float> %i.xf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.bf, label %.lr.ph942.i, label %.preheader884.i

.preheader884.i:                                  ; preds = %bb.de, %.thread779.i
  %.3636.lcssa.i = phi <4 x float> [ %.2635.i, %.thread779.i ], [ %.5638.i, %bb.de ]
  %.2627.lcssa.i = phi <4 x float> [ %.1626.i, %.thread779.i ], [ %.4629.i, %bb.de ]
  %.01219.lcssa.i = phi i32 [ 0, %.thread779.i ], [ %i.bq, %bb.de ] ; 3 uses
  %.11211.lcssa.i = phi ptr [ %.01210.i, %.thread779.i ], [ %i.aaf, %bb.de ] ; 2 uses
  %.61181.lcssa.i = phi ptr [ %.51180979.i, %.thread779.i ], [ %i.aag, %bb.de ] ; 2 uses
  %.24.lcssa.i = phi ptr [ %.23.i, %.thread779.i ], [ %.26.i, %bb.de ] ; 2 uses
  %i.xh = or disjoint i32 %.01219.lcssa.i, 3
  %i.xi = icmp slt i32 %i.xh, %6
  br i1 %i.xi, label %.lr.ph955.i, label %.preheader883.i

.lr.ph942.i:                                      ; preds = %.thread779.i, %bb.de
  %.24941.i = phi ptr [ %.26.i, %bb.de ], [ %.23.i, %.thread779.i ] ; 11 uses
  %.61181940.i = phi ptr [ %i.aag, %bb.de ], [ %.51180979.i, %.thread779.i ] ; 5 uses
  %.11211939.i = phi ptr [ %i.aaf, %bb.de ], [ %.01210.i, %.thread779.i ] ; 16 uses
  %.01219938.i = phi i32 [ %i.aah, %bb.de ], [ 0, %.thread779.i ]
  %.2627937.i = phi <4 x float> [ %.4629.i, %bb.de ], [ %.1626.i, %.thread779.i ] ; 6 uses
  %.3636936.i = phi <4 x float> [ %.5638.i, %bb.de ], [ %.2635.i, %.thread779.i ] ; 10 uses
  %i.xj = load <4 x i32>, ptr %.61181940.i, align 16, !tbaa !87
  %i.xk = sitofp fast <4 x i32> %i.xj to <4 x float> ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 16
  %i.xm = load <4 x i32>, ptr %i.xl, align 16, !tbaa !87
  %i.xn = sitofp fast <4 x i32> %i.xm to <4 x float> ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 32
  %i.xp = load <4 x i32>, ptr %i.xo, align 16, !tbaa !87
  %i.xq = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 48
  %i.xr = load <4 x i32>, ptr %i.xq, align 16, !tbaa !87
  %i.xs = sitofp <4 x i32> %i.xp to <4 x float>
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.xu = sitofp <4 x i32> %i.xr to <4 x float>
  %i.xv = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %11 = shufflevector <4 x float> %i.xk, <4 x float> %i.xt, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %12 = shufflevector <4 x float> %i.xn, <4 x float> %i.xv, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %13 = shufflevector <4 x float> %i.xk, <4 x float> %i.xt, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %14 = shufflevector <4 x float> %i.xn, <4 x float> %i.xv, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.xw = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xx = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xy = fmul fast <4 x float> %i.wk, %11        ; 6 uses
  %i.xz = fmul fast <4 x float> %i.wk, %12        ; 6 uses
  %i.ya = fmul fast <4 x float> %i.xw, %i.wl      ; 6 uses
  %i.yb = fmul fast <4 x float> %i.xx, %i.wl      ; 6 uses
  %.not1265.i = icmp eq ptr %.24941.i, null
  br i1 %.not1265.i, label %.thread798.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph942.i
  br i1 %i.bx, label %.thread785.i, label %bb.cr

.thread785.i:                                     ; preds = %bb.cq
  %i.yc = fadd fast <4 x float> %i.xy, %.3636936.i
  %i.yd = fadd fast <4 x float> %i.xz, %.3636936.i
  %i.ye = fadd fast <4 x float> %i.ya, %.3636936.i
  %i.yf = fadd fast <4 x float> %i.yb, %.3636936.i
  br label %.thread798.i

bb.cr:                                            ; preds = %bb.cq
  br i1 %or.cond11.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.yg = fadd fast <4 x float> %i.xy, %.3636936.i
  %i.yh = fadd fast <4 x float> %i.xz, %.3636936.i
  %i.yi = fadd fast <4 x float> %i.ya, %.2627937.i
  %i.yj = fadd fast <4 x float> %i.yb, %.2627937.i
  br label %.thread798.i

bb.ct:                                            ; preds = %bb.cr
  switch i32 %2, label %.thread798.i [
    i32 3, label %bb.cu
    i32 4, label %bb.cx
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.yk = load <4 x float>, ptr %.24941.i, align 1, !tbaa !87 ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.24941.i, i64 16
  %i.ym = load <4 x float>, ptr %i.yl, align 1, !tbaa !87 ; 3 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.24941.i, i64 %i.t ; 2 uses
  %i.yo = load <4 x float>, ptr %i.yn, align 1, !tbaa !87 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yq = load <4 x float>, ptr %i.yp, align 1, !tbaa !87 ; 2 uses
  br i1 %i.bi, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.yr = fmul fast <4 x float> %i.yk, %i.bh
  %i.ys = fmul fast <4 x float> %i.ym, %i.bh
  %i.yt = fmul fast <4 x float> %i.yo, %i.bh
  %i.yu = fmul fast <4 x float> %i.yq, %i.bh
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn.i = phi <4 x float> [ %i.yr, %bb.cv ], [ %i.yk, %bb.cu ]
  %.pn1028.i = phi <4 x float> [ %i.ys, %bb.cv ], [ %i.ym, %bb.cu ]
  %.pn1029.i = phi <4 x float> [ %i.yt, %bb.cv ], [ %i.yo, %bb.cu ]
  %.pn1030.i = phi <4 x float> [ %i.yu, %bb.cv ], [ %i.yq, %bb.cu ]
  %.2603.i = fadd fast <4 x float> %.pn1030.i, %i.yb
  %.2609.i = fadd fast <4 x float> %.pn1029.i, %i.ya
  %.2615.i = fadd fast <4 x float> %.pn1028.i, %i.xz
  %.2621.i = fadd fast <4 x float> %.pn.i, %i.xy
  %i.yv = getelementptr inbounds nuw i8, ptr %.24941.i, i64 32
  br label %.thread798.i

bb.cx:                                            ; preds = %bb.ct
  %i.yw = load <4 x float>, ptr %.24941.i, align 1, !tbaa !87
  %i.yx = getelementptr inbounds nuw i8, ptr %.24941.i, i64 16
  %i.yy = load <4 x float>, ptr %i.yx, align 1, !tbaa !87
  %i.yz = fmul fast <4 x float> %i.yw, %i.bh      ; 3 uses
  %i.za = fmul fast <4 x float> %i.yy, %i.bh      ; 3 uses
  %i.zb = fadd fast <4 x float> %i.yz, %i.xy
  %i.zc = fadd fast <4 x float> %i.za, %i.xz
  %i.zd = fadd fast <4 x float> %i.yz, %i.ya
  %i.ze = fadd fast <4 x float> %i.za, %i.yb
  %i.zf = getelementptr inbounds nuw i8, ptr %.24941.i, i64 32
  br label %.thread798.i

.thread798.i:                                     ; preds = %bb.cx, %bb.cw, %bb.ct, %bb.cs, %.thread785.i, %.lr.ph942.i
  %.5638.i = phi nsz <4 x float> [ %.3636936.i, %.lr.ph942.i ], [ %i.yz, %bb.cx ], [ %.3636936.i, %bb.ct ], [ %i.yk, %bb.cw ], [ %.3636936.i, %.thread785.i ], [ %.3636936.i, %bb.cs ] ; 2 uses
  %.4629.i = phi nsz <4 x float> [ %.2627937.i, %.lr.ph942.i ], [ %i.za, %bb.cx ], [ %.2627937.i, %bb.ct ], [ %i.ym, %bb.cw ], [ %.2627937.i, %.thread785.i ], [ %.2627937.i, %bb.cs ] ; 2 uses
  %.4623.i = phi nsz <4 x float> [ %i.xy, %.lr.ph942.i ], [ %i.zb, %bb.cx ], [ %i.xy, %bb.ct ], [ %.2621.i, %bb.cw ], [ %i.yc, %.thread785.i ], [ %i.yg, %bb.cs ] ; 2 uses
  %.4617.i = phi nsz <4 x float> [ %i.xz, %.lr.ph942.i ], [ %i.zc, %bb.cx ], [ %i.xz, %bb.ct ], [ %.2615.i, %bb.cw ], [ %i.yd, %.thread785.i ], [ %i.yh, %bb.cs ] ; 2 uses
  %.4611.i = phi nsz <4 x float> [ %i.ya, %.lr.ph942.i ], [ %i.zd, %bb.cx ], [ %i.ya, %bb.ct ], [ %.2609.i, %bb.cw ], [ %i.ye, %.thread785.i ], [ %i.yi, %bb.cs ] ; 2 uses
  %.4605.i = phi nsz <4 x float> [ %i.yb, %.lr.ph942.i ], [ %i.ze, %bb.cx ], [ %i.yb, %bb.ct ], [ %.2603.i, %bb.cw ], [ %i.yf, %.thread785.i ], [ %i.yj, %bb.cs ] ; 2 uses
  %.26.i = phi ptr [ null, %.lr.ph942.i ], [ %i.zf, %bb.cx ], [ %.24941.i, %bb.ct ], [ %i.yv, %bb.cw ], [ %.24941.i, %.thread785.i ], [ %.24941.i, %bb.cs ] ; 2 uses
  br i1 %i.bj, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.thread798.i
  %i.zg = fmul fast <4 x float> %.4623.i, %i.bl
  %i.zh = fmul fast <4 x float> %.4617.i, %i.bl
  %i.zi = fmul fast <4 x float> %.4611.i, %i.bl
  %i.zj = fmul fast <4 x float> %.4605.i, %i.bl
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.thread798.i
  %.5624.i = phi nsz <4 x float> [ %i.zg, %bb.cy ], [ %.4623.i, %.thread798.i ] ; 6 uses
  %.5618.i = phi nsz <4 x float> [ %i.zh, %bb.cy ], [ %.4617.i, %.thread798.i ] ; 6 uses
  %.5612.i = phi nsz <4 x float> [ %i.zi, %bb.cy ], [ %.4611.i, %.thread798.i ] ; 6 uses
  %.5606.i = phi nsz <4 x float> [ %i.zj, %bb.cy ], [ %.4605.i, %.thread798.i ] ; 6 uses
  br i1 %.not1258.i, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  switch i32 %i.b, label %bb.de [
    i32 4, label %bb.db
    i32 1, label %bb.dc
  ]

bb.db:                                            ; preds = %bb.da
  store <4 x float> %.5624.i, ptr %.11211939.i, align 16, !tbaa !87
  %i.zk = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 16
  store <4 x float> %.5612.i, ptr %i.zk, align 16, !tbaa !87
  %i.zl = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx871.i ; 2 uses
  store <4 x float> %.5618.i, ptr %i.zl, align 16, !tbaa !87
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  store <4 x float> %.5606.i, ptr %i.zm, align 16, !tbaa !87
  br label %bb.de

bb.dc:                                            ; preds = %bb.da
  %.sroa.054.0.vec.extract.i = extractelement <4 x float> %.5624.i, i64 0
  store float %.sroa.054.0.vec.extract.i, ptr %.11211939.i, align 4, !tbaa !67
  %.sroa.12.32.vec.extract.i = extractelement <4 x float> %.5612.i, i64 0
  %i.zn = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 4
  store float %.sroa.12.32.vec.extract.i, ptr %i.zn, align 4, !tbaa !67
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %.11211939.i, i64 %i.k
  %i.zp = shufflevector <4 x float> %.5624.i, <4 x float> %.5612.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.zp, ptr %i.zo, align 4, !tbaa !67
  %i.zq = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx869.i
  %i.zr = shufflevector <4 x float> %.5624.i, <4 x float> %.5612.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.zr, ptr %i.zq, align 4, !tbaa !67
  %i.zs = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx870.i
  %i.zt = shufflevector <4 x float> %.5624.i, <4 x float> %.5612.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.zt, ptr %i.zs, align 4, !tbaa !67
  %.sroa.755.16.vec.extract.i = extractelement <4 x float> %.5618.i, i64 0
  %i.zu = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx871.i ; 2 uses
  store float %.sroa.755.16.vec.extract.i, ptr %i.zu, align 4, !tbaa !67
  %.sroa.17.48.vec.extract.i = extractelement <4 x float> %.5606.i, i64 0
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  store float %.sroa.17.48.vec.extract.i, ptr %i.zv, align 4, !tbaa !67
  %i.zw = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx872.i
  %i.zx = shufflevector <4 x float> %.5618.i, <4 x float> %.5606.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.zx, ptr %i.zw, align 4, !tbaa !67
  %i.zy = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx873.i
  %i.zz = shufflevector <4 x float> %.5618.i, <4 x float> %.5606.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.zz, ptr %i.zy, align 4, !tbaa !67
  %i.aaa = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx874.i
  %i.aab = shufflevector <4 x float> %.5618.i, <4 x float> %.5606.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.aab, ptr %i.aaa, align 4, !tbaa !67
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz
  store <4 x float> %.5624.i, ptr %.11211939.i, align 1, !tbaa !87
  %i.aac = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 16
  store <4 x float> %.5618.i, ptr %i.aac, align 1, !tbaa !87
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %.11211939.i, i64 %i.k ; 2 uses
  store <4 x float> %.5612.i, ptr %i.aad, align 1, !tbaa !87
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  store <4 x float> %.5606.i, ptr %i.aae, align 1, !tbaa !87
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da
  %.sink1112.i = phi i64 [ 32, %bb.dd ], [ %.idx1267.i, %bb.db ], [ %.idx1267.i, %bb.da ], [ %.idx1267.i, %bb.dc ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.sink1112.i ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 64 ; 2 uses
  %i.aah = add nuw nsw i32 %.01219938.i, 8        ; 2 uses
  %i.aai = or disjoint i32 %i.aah, 7
  %i.aaj = icmp slt i32 %i.aai, %6
  br i1 %i.aaj, label %.lr.ph942.i, label %.preheader884.i, !llvm.loop !567

.preheader883.i:                                  ; preds = %bb.dp, %.preheader884.i
  %.11220.lcssa.i = phi i32 [ %.01219.lcssa.i, %.preheader884.i ], [ %i.abv, %bb.dp ] ; 3 uses
  %.31213.lcssa.i = phi ptr [ %.11211.lcssa.i, %.preheader884.i ], [ %i.abt, %bb.dp ] ; 2 uses
  %.71182.lcssa.i = phi ptr [ %.61181.lcssa.i, %.preheader884.i ], [ %i.abu, %bb.dp ] ; 2 uses
  %.27.lcssa.i = phi ptr [ %.24.lcssa.i, %.preheader884.i ], [ %.29.i, %bb.dp ] ; 2 uses
  %i.aak = or disjoint i32 %.11220.lcssa.i, 1
  %i.aal = icmp slt i32 %i.aak, %6
  br i1 %i.aal, label %.lr.ph964.i.preheader, label %.preheader882.i

.lr.ph964.i.preheader:                            ; preds = %.preheader883.i
  %i.aam = shufflevector <2 x float> %i.xf, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph964.i

.lr.ph955.i:                                      ; preds = %.preheader884.i, %bb.dp
  %.27954.i = phi ptr [ %.29.i, %bb.dp ], [ %.24.lcssa.i, %.preheader884.i ] ; 9 uses
  %.71182953.i = phi ptr [ %i.abu, %bb.dp ], [ %.61181.lcssa.i, %.preheader884.i ] ; 3 uses
  %.31213952.i = phi ptr [ %i.abt, %bb.dp ], [ %.11211.lcssa.i, %.preheader884.i ] ; 10 uses
  %.11220951.i = phi i32 [ %i.abv, %bb.dp ], [ %.01219.lcssa.i, %.preheader884.i ]
  %.5630950.i = phi <4 x float> [ %.7632.i, %bb.dp ], [ %.2627.lcssa.i, %.preheader884.i ] ; 6 uses
  %.6639949.i = phi <4 x float> [ %.8641.i, %bb.dp ], [ %.3636.lcssa.i, %.preheader884.i ] ; 7 uses
  %i.aan = load <4 x i32>, ptr %.71182953.i, align 16, !tbaa !87
  %i.aao = sitofp fast <4 x i32> %i.aan to <4 x float> ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.71182953.i, i64 16
  %i.aaq = load <4 x i32>, ptr %i.aap, align 16, !tbaa !87
  %i.aar = sitofp fast <4 x i32> %i.aaq to <4 x float> ; 2 uses
  %15 = shufflevector <4 x float> %i.aao, <4 x float> %i.aar, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %16 = shufflevector <4 x float> %i.aao, <4 x float> %i.aar, <4 x i32> <i32 3, i32 7, i32 1, i32 5>
  %i.aas = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aat = fmul fast <4 x float> %i.wk, %15       ; 6 uses
  %i.aau = fmul fast <4 x float> %i.aas, %i.wl    ; 6 uses
  %.not1263.i = icmp eq ptr %.27954.i, null
  br i1 %.not1263.i, label %.thread815.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph955.i
  br i1 %i.bx, label %.thread806.i, label %bb.dg

.thread806.i:                                     ; preds = %bb.df
  %i.aav = fadd fast <4 x float> %i.aat, %.6639949.i
  %i.aaw = fadd fast <4 x float> %i.aau, %.6639949.i
  br label %.thread815.i

bb.dg:                                            ; preds = %bb.df
  br i1 %or.cond11.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aax = fadd fast <4 x float> %i.aat, %.6639949.i
  %i.aay = fadd fast <4 x float> %i.aau, %.5630950.i
  br label %.thread815.i

bb.di:                                            ; preds = %bb.dg
  switch i32 %2, label %.thread815.i [
    i32 3, label %bb.dj
    i32 4, label %bb.dk
  ]

bb.dj:                                            ; preds = %bb.di
  %i.aaz = load <4 x float>, ptr %.27954.i, align 1, !tbaa !87 ; 3 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %.27954.i, i64 %i.t
  %i.abb = load <4 x float>, ptr %i.aba, align 1, !tbaa !87 ; 3 uses
  %i.abc = fmul fast <4 x float> %i.aaz, %i.bh
  %i.abd = fmul fast <4 x float> %i.abb, %i.bh
  %.pn1031.i = select i1 %i.bi, <4 x float> %i.aaz, <4 x float> %i.abc
  %.pn1032.i = select i1 %i.bi, <4 x float> %i.abb, <4 x float> %i.abd
  %.2570.i = fadd fast <4 x float> %.pn1032.i, %i.aau
  %.2576.i = fadd fast <4 x float> %.pn1031.i, %i.aat
  %i.abe = getelementptr inbounds nuw i8, ptr %.27954.i, i64 16
  br label %.thread815.i

bb.dk:                                            ; preds = %bb.di
  %i.abf = load <4 x float>, ptr %.27954.i, align 1, !tbaa !87
  %i.abg = fmul fast <4 x float> %i.abf, %i.bh    ; 3 uses
  %i.abh = fadd fast <4 x float> %i.abg, %i.aat
  %i.abi = fadd fast <4 x float> %i.abg, %i.aau
  %i.abj = getelementptr inbounds nuw i8, ptr %.27954.i, i64 16
  br label %.thread815.i

.thread815.i:                                     ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh, %.thread806.i, %.lr.ph955.i
  %.8641.i = phi nsz <4 x float> [ %.6639949.i, %.lr.ph955.i ], [ %i.abg, %bb.dk ], [ %.6639949.i, %bb.di ], [ %i.aaz, %bb.dj ], [ %.6639949.i, %.thread806.i ], [ %.6639949.i, %bb.dh ]
  %.7632.i = phi nsz <4 x float> [ %.5630950.i, %.lr.ph955.i ], [ %.5630950.i, %bb.dk ], [ %.5630950.i, %bb.di ], [ %i.abb, %bb.dj ], [ %.5630950.i, %.thread806.i ], [ %.5630950.i, %bb.dh ]
  %.4578.i = phi nsz <4 x float> [ %i.aat, %.lr.ph955.i ], [ %i.abh, %bb.dk ], [ %i.aat, %bb.di ], [ %.2576.i, %bb.dj ], [ %i.aav, %.thread806.i ], [ %i.aax, %bb.dh ]
  %.4572.i = phi nsz <4 x float> [ %i.aau, %.lr.ph955.i ], [ %i.abi, %bb.dk ], [ %i.aau, %bb.di ], [ %.2570.i, %bb.dj ], [ %i.aaw, %.thread806.i ], [ %i.aay, %bb.dh ]
  %.29.i = phi ptr [ null, %.lr.ph955.i ], [ %i.abj, %bb.dk ], [ %.27954.i, %bb.di ], [ %i.abe, %bb.dj ], [ %.27954.i, %.thread806.i ], [ %.27954.i, %bb.dh ] ; 2 uses
  %.5579.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.4578.i, %i.bu ; 6 uses
  %.5573.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.4572.i, %i.bu ; 6 uses
  br i1 %.not1258.i, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %.thread815.i
  switch i32 %i.b, label %bb.dp [
    i32 4, label %bb.dm
    i32 1, label %bb.dn
  ]

bb.dm:                                            ; preds = %bb.dl
  store <4 x float> %.5579.i, ptr %.31213952.i, align 16, !tbaa !87
  %i.abk = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 16
  store <4 x float> %.5573.i, ptr %i.abk, align 16, !tbaa !87
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dl
  %.sroa.027.0.vec.extract.i = extractelement <4 x float> %.5579.i, i64 0
  store float %.sroa.027.0.vec.extract.i, ptr %.31213952.i, align 4, !tbaa !67
  %.sroa.728.16.vec.extract.i = extractelement <4 x float> %.5573.i, i64 0
  %i.abl = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 4
  store float %.sroa.728.16.vec.extract.i, ptr %i.abl, align 4, !tbaa !67
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.31213952.i, i64 %i.k
  %i.abn = shufflevector <4 x float> %.5579.i, <4 x float> %.5573.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.abn, ptr %i.abm, align 4, !tbaa !67
  %i.abo = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 %.idx869.i
  %i.abp = shufflevector <4 x float> %.5579.i, <4 x float> %.5573.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.abp, ptr %i.abo, align 4, !tbaa !67
  %i.abq = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 %.idx870.i
  %i.abr = shufflevector <4 x float> %.5579.i, <4 x float> %.5573.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.abr, ptr %i.abq, align 4, !tbaa !67
  br label %bb.dp

bb.do:                                            ; preds = %.thread815.i
  store <4 x float> %.5579.i, ptr %.31213952.i, align 1, !tbaa !87
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %.31213952.i, i64 %i.k
  store <4 x float> %.5573.i, ptr %i.abs, align 1, !tbaa !87
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dl
  %.sink1113.i = phi i64 [ 16, %bb.do ], [ %.idx871.i, %bb.dm ], [ %.idx871.i, %bb.dl ], [ %.idx871.i, %bb.dn ]
  %i.abt = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 %.sink1113.i ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.71182953.i, i64 32 ; 2 uses
  %i.abv = add nuw nsw i32 %.11220951.i, 4        ; 3 uses
  %i.abw = or disjoint i32 %i.abv, 3
  %i.abx = icmp slt i32 %i.abw, %6
  br i1 %i.abx, label %.lr.ph955.i, label %.preheader883.i, !llvm.loop !568

.preheader882.i:                                  ; preds = %.thread834.i, %.preheader883.i
  %.21221.lcssa.i = phi i32 [ %.11220.lcssa.i, %.preheader883.i ], [ %i.adl, %.thread834.i ] ; 2 uses
  %.51215.lcssa.i = phi ptr [ %.31213.lcssa.i, %.preheader883.i ], [ %i.adj, %.thread834.i ]
  %.81183.lcssa.i = phi ptr [ %.71182.lcssa.i, %.preheader883.i ], [ %i.adk, %.thread834.i ] ; 2 uses
  %.30.lcssa.i = phi ptr [ %.27.lcssa.i, %.preheader883.i ], [ %.32.i, %.thread834.i ] ; 2 uses
  %i.aby = icmp slt i32 %.21221.lcssa.i, %6
  br i1 %i.aby, label %.lr.ph973.i, label %._crit_edge974.i

.lr.ph973.i:                                      ; preds = %.preheader882.i
  %i.abz = select <2 x i1> %i.bp, <2 x float> %i.xf, <2 x float> zeroinitializer ; 2 uses
  %i.aca = select ninf nsz i1 %i.by, float %.21227.i, float 0.000000e+00
  %i.acb = insertelement <2 x float> poison, float %i.aca, i64 0
  %i.acc = shufflevector <2 x float> %i.acb, <2 x float> %i.abz, <2 x i32> <i32 0, i32 2>
  %i.acd = fadd reassoc nsz arcp contract afn <2 x float> %i.abz, %i.acc
  br label %bb.dw

.lr.ph964.i:                                      ; preds = %.lr.ph964.i.preheader, %.thread834.i
  %.30963.i = phi ptr [ %.32.i, %.thread834.i ], [ %.27.lcssa.i, %.lr.ph964.i.preheader ] ; 9 uses
  %.81183962.i = phi ptr [ %i.adk, %.thread834.i ], [ %.71182.lcssa.i, %.lr.ph964.i.preheader ] ; 2 uses
  %.51215961.i = phi ptr [ %i.adj, %.thread834.i ], [ %.31213.lcssa.i, %.lr.ph964.i.preheader ] ; 4 uses
  %.21221960.i = phi i32 [ %i.adl, %.thread834.i ], [ %.11220.lcssa.i, %.lr.ph964.i.preheader ]
  %i.ace = load <4 x i32>, ptr %.81183962.i, align 4, !tbaa !49
  %i.acf = sitofp <4 x i32> %i.ace to <4 x float>
  %i.acg = fmul fast <4 x float> %i.wj, %i.acf    ; 6 uses
  %.not1261.i = icmp eq ptr %.30963.i, null
  br i1 %.not1261.i, label %.thread834.i, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph964.i
  br i1 %i.bx, label %.thread821.i, label %bb.dr

.thread821.i:                                     ; preds = %bb.dq
  %i.ach = fadd fast <4 x float> %i.acg, %i.aam
  br label %.thread834.i

bb.dr:                                            ; preds = %bb.dq
  br i1 %or.cond11.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.aci = fadd fast <4 x float> %i.acg, %i.xg
  br label %.thread834.i

bb.dt:                                            ; preds = %bb.dr
  switch i32 %2, label %.thread834.i [
    i32 3, label %bb.du
    i32 4, label %bb.dv
  ]

bb.du:                                            ; preds = %bb.dt
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %.30963.i, i64 %i.t
  %i.ack = load <2 x float>, ptr %.30963.i, align 4, !tbaa !67
  %i.acl = load <2 x float>, ptr %i.acj, align 4, !tbaa !67
  %i.acm = shufflevector <2 x float> %i.ack, <2 x float> %i.acl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acn = fmul fast <4 x float> %i.acm, %i.bh
  %i.aco = fadd fast <4 x float> %i.acn, %i.acg
  %i.acp = getelementptr inbounds nuw i8, ptr %.30963.i, i64 8
  br label %.thread834.i

bb.dv:                                            ; preds = %bb.dt
  %i.acq = load <2 x float>, ptr %.30963.i, align 4, !tbaa !67
  %i.acr = fmul fast <2 x float> %i.acq, %i.bw
  %i.acs = shufflevector <2 x float> %i.acr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.act = fadd fast <4 x float> %i.acs, %i.acg
  %i.acu = getelementptr inbounds nuw i8, ptr %.30963.i, i64 8
  br label %.thread834.i

.thread834.i:                                     ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds, %.thread821.i, %.lr.ph964.i
  %.32.i = phi ptr [ %i.acu, %bb.dv ], [ %.30963.i, %bb.dt ], [ null, %.lr.ph964.i ], [ %i.acp, %bb.du ], [ %.30963.i, %.thread821.i ], [ %.30963.i, %bb.ds ] ; 2 uses
  %i.acv = phi <4 x float> [ %i.act, %bb.dv ], [ %i.acg, %bb.dt ], [ %i.acg, %.lr.ph964.i ], [ %i.aco, %bb.du ], [ %i.ach, %.thread821.i ], [ %i.aci, %bb.ds ] ; 2 uses
  %i.acw = shufflevector <4 x float> %i.acv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.acx = fmul fast <2 x float> %i.acw, %i.ca    ; 2 uses
  %i.acy = extractelement <2 x float> %i.acx, i64 0
  store float %i.acy, ptr %.51215961.i, align 4, !tbaa !67
  %i.acz = getelementptr inbounds nuw i8, ptr %.51215961.i, i64 4
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %.51215961.i, i64 %i.k ; 2 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 4
  %i.adc = shufflevector <4 x float> %i.acv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.add = fmul fast <2 x float> %i.adc, %i.ca    ; 2 uses
  %i.ade = shufflevector <2 x float> %i.add, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.adf = select <2 x i1> %i.cc, <2 x float> %i.add, <2 x float> %i.ade ; 2 uses
  %i.adg = extractelement <2 x float> %i.adf, i64 0
  store float %i.adg, ptr %i.acz, align 4, !tbaa !67
  %i.adh = extractelement <2 x float> %i.adf, i64 1
  store float %i.adh, ptr %i.ada, align 4, !tbaa !67
  %i.adi = extractelement <2 x float> %i.acx, i64 1
  store float %i.adi, ptr %i.adb, align 4, !tbaa !67
  %i.adj = getelementptr inbounds nuw i8, ptr %.51215961.i, i64 %..idx869.i ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %.81183962.i, i64 16 ; 2 uses
  %i.adl = add nuw nsw i32 %.21221960.i, 2        ; 3 uses
  %i.adm = or disjoint i32 %i.adl, 1
  %i.adn = icmp slt i32 %i.adm, %6
  br i1 %i.adn, label %.lr.ph964.i, label %.preheader882.i, !llvm.loop !569

bb.dw:                                            ; preds = %bb.ec, %.lr.ph973.i
  %.33972.i = phi ptr [ %.30.lcssa.i, %.lr.ph973.i ], [ %.35.i, %bb.ec ] ; 7 uses
  %.91184971.i = phi ptr [ %.81183.lcssa.i, %.lr.ph973.i ], [ %i.aep, %bb.ec ] ; 2 uses
  %.71217970.i = phi ptr [ %.51215.lcssa.i, %.lr.ph973.i ], [ %.81218.i, %bb.ec ] ; 5 uses
  %.31222969.i = phi i32 [ %.21221.lcssa.i, %.lr.ph973.i ], [ %i.aeq, %bb.ec ]
  %i.ado = load <2 x i32>, ptr %.91184971.i, align 4, !tbaa !49
  %i.adp = sitofp <2 x i32> %i.ado to <2 x float>
end_hunk_0
begin_hunk_1_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  ]

.thread776:                                       ; preds = %bb.do
  %i.ado = extractelement <2 x i64> %i.adh, i64 0
  store i64 %i.ado, ptr %.131717961, align 1, !tbaa !87
  %i.adp = getelementptr inbounds nuw i8, ptr %.131717961, i64 8
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.adq = bitcast <4 x float> %i.adg to <8 x i16> ; 4 uses
  %.sroa.0157.0.extract.trunc = extractelement <8 x i16> %i.adq, i64 0
  %.sroa.4158.0.extract.trunc = extractelement <8 x i16> %i.adq, i64 1
  %.sroa.5159.0.extract.trunc = extractelement <8 x i16> %i.adq, i64 2
  %.sroa.6160.0.extract.trunc = extractelement <8 x i16> %i.adq, i64 3
  store i16 %.sroa.0157.0.extract.trunc, ptr %.131717961, align 2, !tbaa !105
  %i.adr = getelementptr inbounds nuw [2 x i8], ptr %.131717961, i64 %i.k
  store i16 %.sroa.4158.0.extract.trunc, ptr %i.adr, align 2, !tbaa !105
  %i.ads = getelementptr inbounds nuw i8, ptr %.131717961, i64 %.idx1864
  store i16 %.sroa.5159.0.extract.trunc, ptr %i.ads, align 2, !tbaa !105
  %i.adt = getelementptr inbounds nuw i8, ptr %.131717961, i64 %.idx1865
  store i16 %.sroa.6160.0.extract.trunc, ptr %i.adt, align 2, !tbaa !105
  %i.adu = getelementptr inbounds nuw i8, ptr %.131717961, i64 2
  br label %bb.dq

bb.dq:                                            ; preds = %bb.do, %bb.dh, %.thread776, %.thread774, %bb.dn, %bb.dp, %bb.dg, %bb.di
  %.121733 = phi ptr [ %i.acx, %bb.dg ], [ %i.adc, %bb.di ], [ %.101731960, %bb.dh ], [ %.101731960, %bb.do ], [ %.101731960, %bb.dp ], [ %.101731960, %bb.dn ], [ %i.acy, %.thread774 ], [ %.101731960, %.thread776 ]
  %.161720 = phi ptr [ %.131717961, %bb.dg ], [ %.131717961, %bb.di ], [ %.131717961, %bb.dh ], [ %.131717961, %bb.do ], [ %i.adu, %bb.dp ], [ %i.adn, %bb.dn ], [ %.131717961, %.thread774 ], [ %i.adp, %.thread776 ]
  %i.adv = add nuw nsw i32 %.31768959, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.adv, %6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph964, !llvm.loop !974

._crit_edge:                                      ; preds = %bb.dq, %.preheader915
  %.41690.lcssa = phi ptr [ %.31689.lcssa, %.preheader915 ], [ %i.abv, %bb.dq ] ; 2 uses
  %.16.lcssa = phi ptr [ %.12.lcssa, %.preheader915 ], [ %.19, %bb.dq ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.adw = or disjoint i64 %indvars.iv.next, 3
  %i.adx = icmp samesign ult i64 %i.adw, %i.ar
  br i1 %i.adx, label %bb.b, label %.preheader913.loopexit, !llvm.loop !975

.preheader909.loopexit:                           ; preds = %._crit_edge1020
  %i.ady = trunc nuw nsw i64 %indvars.iv.next1110 to i32
  br label %.preheader909

.preheader909:                                    ; preds = %.preheader909.loopexit, %.preheader913
  %.11702.lcssa = phi i32 [ %.01701.lcssa, %.preheader913 ], [ %i.ady, %.preheader909.loopexit ] ; 2 uses
  %.51691.lcssa = phi ptr [ %.01686.lcssa, %.preheader913 ], [ %.91695.lcssa, %.preheader909.loopexit ]
  %.20.lcssa = phi ptr [ %.01674.lcssa, %.preheader913 ], [ %.33.lcssa, %.preheader909.loopexit ]
  %i.adz = icmp slt i32 %.11702.lcssa, %4
  br i1 %i.adz, label %.lr.ph1078, label %._crit_edge1079

.lr.ph1078:                                       ; preds = %.preheader909
  %.not = icmp eq i32 %9, 0                       ; 9 uses
  %i.aea = sext i32 %5 to i64                     ; 3 uses
  %i.aeb = mul i64 %i.k, %i.aea                   ; 2 uses
  %i.aec = mul nsw i32 %i.b, %5
  %i.aed = sext i32 %i.aec to i64                 ; 2 uses
  %i.aee = icmp eq i32 %2, 0
  %or.cond21 = icmp ult i32 %2, 3                 ; 5 uses
  %i.aef = sext i32 %3 to i64                     ; 4 uses
  %i.aeg = icmp sgt i32 %6, 7
  %i.aeh = add i32 %2, -3
  %or.cond27 = icmp ult i32 %i.aeh, 2             ; 4 uses
  %i.aei = insertelement <4 x float> poison, float %8, i64 0
  %i.aej = shufflevector <4 x float> %i.aei, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aek = fcmp fast une float %7, 1.000000e+00   ; 2 uses
  %i.ael = insertelement <4 x float> poison, float %7, i64 0
  %i.aem = shufflevector <4 x float> %i.ael, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aen = icmp eq i32 %10, 1                     ; 4 uses
  %i.aeo = icmp eq i64 %i.k, 1                    ; 4 uses
  %.idx1802 = shl i64 %i.k, 2                     ; 3 uses
  %.idx1803 = mul i64 %i.k, 6                     ; 2 uses
  %.idx1804 = shl i64 %i.k, 3                     ; 6 uses
  %.idx1805 = mul i64 %i.k, 10
  %.idx1806 = mul i64 %i.k, 12                    ; 3 uses
  %.idx1807 = mul i64 %i.k, 14
  %.idx1808 = shl i64 %i.k, 4                     ; 4 uses
  %.idx1813 = mul i64 %i.k, 20
  %.idx1814 = mul i64 %i.k, 24
  %.idx1815 = mul i64 %i.k, 28
  %.idx1816 = shl i64 %i.k, 5
  %i.aep = and i32 %6, -8
  %i.aeq = zext nneg i32 %.11702.lcssa to i64
  %i.aer = sext i32 %i.b to i64
  %wide.trip.count = zext i32 %4 to i64
  %i.aes = insertelement <2 x i1> poison, i1 %or.cond21, i64 0
  %i.aet = shufflevector <2 x i1> %i.aes, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aeu = insertelement <2 x float> poison, float %8, i64 0
  %i.aev = shufflevector <2 x float> %i.aeu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aew = insertelement <2 x float> poison, float %7, i64 0
  %i.aex = shufflevector <2 x float> %i.aew, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.gq

bb.dr:                                            ; preds = %.lr.ph1026, %._crit_edge1020
  %indvars.iv1109 = phi i64 [ %i.bs, %.lr.ph1026 ], [ %indvars.iv.next1110, %._crit_edge1020 ] ; 5 uses
  %.201025 = phi ptr [ %.01674.lcssa, %.lr.ph1026 ], [ %.33.lcssa, %._crit_edge1020 ] ; 4 uses
  %.516911024 = phi ptr [ %.01686.lcssa, %.lr.ph1026 ], [ %.91695.lcssa, %._crit_edge1020 ] ; 2 uses
  %i.aey = load ptr, ptr %1, align 8, !tbaa !23   ; 3 uses
  br i1 %.not1817, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.aey, i64 %i.bd
  %i.afa = add nsw i64 %indvars.iv1109, %i.bh
  %i.afb = mul nsw i64 %i.afa, %i.bu              ; 2 uses
  %i.afc = getelementptr inbounds [2 x i8], ptr %i.aez, i64 %i.afb
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.afd = add nsw i64 %indvars.iv1109, %i.bh
  %i.afe = mul i64 %i.k, %i.afd                   ; 2 uses
  %i.aff = getelementptr inbounds nuw [2 x i8], ptr %i.aey, i64 %i.afe
  %i.afg = getelementptr inbounds [2 x i8], ptr %i.aff, i64 %i.bf
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.sink1189 = phi i64 [ %i.afe, %bb.dt ], [ %i.bd, %bb.ds ]
  %.sink1188 = phi i64 [ %i.bf, %bb.dt ], [ %i.afb, %bb.ds ]
  %.01752 = phi ptr [ %i.afg, %bb.dt ], [ %i.afc, %bb.ds ] ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %.sink1189
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.afh, i64 %.sink1188 ; 2 uses
  %.not1818 = icmp eq ptr %.201025, null
  br i1 %.not1818, label %.thread794, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  br i1 %i.bg, label %.thread778, label %bb.dw

.thread778:                                       ; preds = %bb.dv
  %i.afj = load float, ptr %.201025, align 4, !tbaa !67
  %i.afk = fmul fast float %i.afj, %8             ; 2 uses
  %i.afl = insertelement <4 x float> poison, float %i.afk, i64 0
  %i.afm = shufflevector <4 x float> %i.afl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.afk, i64 0
  br label %.thread794

bb.dw:                                            ; preds = %bb.dv
  br i1 %or.cond11, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.afo = load ptr, ptr %0, align 8, !tbaa !23
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.afo, i64 %i.bh
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %indvars.iv1109 ; 2 uses
  %i.afr = load <2 x float>, ptr %i.afq, align 4, !tbaa !67
  %i.afs = fmul fast <2 x float> %i.afr, %i.bw    ; 3 uses
  %i.aft = shufflevector <2 x float> %i.afs, <2 x float> poison, <4 x i32> zeroinitializer
  %i.afu = shufflevector <2 x float> %i.afs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread794

bb.dy:                                            ; preds = %bb.dw
  switch i32 %2, label %.thread794 [
    i32 3, label %bb.dz
    i32 4, label %bb.ea
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.afv = load ptr, ptr %0, align 8, !tbaa !23
  %i.afw = add nsw i64 %indvars.iv1109, %i.bh
  %i.afx = mul i64 %i.t, %i.afw
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %i.afx
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.afy, i64 %i.bc
  br label %.thread794

bb.ea:                                            ; preds = %bb.dy
  %i.aga = load ptr, ptr %0, align 8, !tbaa !23
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.aga, i64 %i.bc
  br label %.thread794

.thread794:                                       ; preds = %bb.dy, %bb.dx, %.thread778, %bb.dz, %bb.ea, %bb.du
  %.2668 = phi nsz <4 x float> [ zeroinitializer, %bb.du ], [ zeroinitializer, %bb.ea ], [ zeroinitializer, %bb.dy ], [ zeroinitializer, %bb.dz ], [ %i.afm, %.thread778 ], [ %i.aft, %bb.dx ] ; 2 uses
  %.1659 = phi nsz <4 x float> [ zeroinitializer, %bb.du ], [ zeroinitializer, %bb.ea ], [ zeroinitializer, %bb.dy ], [ zeroinitializer, %bb.dz ], [ zeroinitializer, %.thread778 ], [ %i.afu, %bb.dx ] ; 2 uses
  %.23 = phi ptr [ null, %bb.du ], [ %i.agb, %bb.ea ], [ %.201025, %bb.dy ], [ %i.afz, %bb.dz ], [ %.201025, %.thread778 ], [ %i.afq, %bb.dx ] ; 2 uses
  %i.agc = phi <2 x float> [ zeroinitializer, %bb.du ], [ zeroinitializer, %bb.ea ], [ zeroinitializer, %bb.dy ], [ zeroinitializer, %bb.dz ], [ %i.afn, %.thread778 ], [ %i.afs, %bb.dx ] ; 5 uses
  br i1 %i.bi, label %.lr.ph982, label %.preheader912

.preheader912:                                    ; preds = %bb.ez, %.thread794
  %.3669.lcssa = phi <4 x float> [ %.2668, %.thread794 ], [ %.5671, %bb.ez ]
  %.2660.lcssa = phi <4 x float> [ %.1659, %.thread794 ], [ %.4662, %bb.ez ]
  %.11753.lcssa = phi ptr [ %.01752, %.thread794 ], [ %.31755, %bb.ez ] ; 2 uses
  %.11744.lcssa = phi ptr [ %i.afi, %.thread794 ], [ %.21745, %bb.ez ] ; 2 uses
  %.01734.lcssa = phi i32 [ 0, %.thread794 ], [ %i.br, %bb.ez ] ; 3 uses
  %.61692.lcssa = phi ptr [ %.516911024, %.thread794 ], [ %i.agm, %bb.ez ] ; 2 uses
  %.24.lcssa = phi ptr [ %.23, %.thread794 ], [ %.26, %bb.ez ] ; 2 uses
  %i.agd = or disjoint i32 %.01734.lcssa, 3
  %i.age = icmp slt i32 %i.agd, %6
  br i1 %i.age, label %.lr.ph997, label %.preheader911

.lr.ph982:                                        ; preds = %.thread794, %bb.ez
  %.24981 = phi ptr [ %.26, %bb.ez ], [ %.23, %.thread794 ] ; 11 uses
  %.61692980 = phi ptr [ %i.agm, %bb.ez ], [ %.516911024, %.thread794 ] ; 5 uses
  %.01734979 = phi i32 [ %i.akj, %bb.ez ], [ 0, %.thread794 ]
  %.11744978 = phi ptr [ %.21745, %bb.ez ], [ %i.afi, %.thread794 ] ; 23 uses
  %.11753977 = phi ptr [ %.31755, %bb.ez ], [ %.01752, %.thread794 ] ; 18 uses
  %.2660976 = phi <4 x float> [ %.4662, %bb.ez ], [ %.1659, %.thread794 ] ; 6 uses
  %.3669975 = phi <4 x float> [ %.5671, %bb.ez ], [ %.2668, %.thread794 ] ; 10 uses
  %i.agf = load <4 x float>, ptr %.61692980, align 16, !tbaa !87 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.61692980, i64 16
  %i.agh = load <4 x float>, ptr %i.agg, align 16, !tbaa !87 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.61692980, i64 32
  %i.agj = load <4 x float>, ptr %i.agi, align 16, !tbaa !87 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.61692980, i64 48
  %i.agl = load <4 x float>, ptr %i.agk, align 16, !tbaa !87 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.61692980, i64 64 ; 2 uses
  %11 = shufflevector <4 x float> %i.agf, <4 x float> %i.agj, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 6 uses
  %12 = shufflevector <4 x float> %i.agh, <4 x float> %i.agl, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 6 uses
  %13 = shufflevector <4 x float> %i.agf, <4 x float> %i.agj, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %14 = shufflevector <4 x float> %i.agh, <4 x float> %i.agl, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.agn = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 6 uses
  %i.ago = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 6 uses
  %.not1826 = icmp eq ptr %.24981, null
  br i1 %.not1826, label %.thread813, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph982
  br i1 %i.bg, label %.thread800, label %bb.ec

.thread800:                                       ; preds = %bb.eb
  %i.agp = fadd fast <4 x float> %.3669975, %11
  %i.agq = fadd fast <4 x float> %.3669975, %12
  %i.agr = fadd fast <4 x float> %i.agn, %.3669975
  %i.ags = fadd fast <4 x float> %i.ago, %.3669975
  br label %.thread813

bb.ec:                                            ; preds = %bb.eb
  br i1 %or.cond11, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.agt = fadd fast <4 x float> %.3669975, %11
  %i.agu = fadd fast <4 x float> %.3669975, %12
  %i.agv = fadd fast <4 x float> %i.agn, %.2660976
  %i.agw = fadd fast <4 x float> %i.ago, %.2660976
  br label %.thread813

bb.ee:                                            ; preds = %bb.ec
  switch i32 %2, label %.thread813 [
    i32 3, label %bb.ef
    i32 4, label %bb.ei
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.agx = load <4 x float>, ptr %.24981, align 1, !tbaa !87 ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.24981, i64 16
  %i.agz = load <4 x float>, ptr %i.agy, align 1, !tbaa !87 ; 3 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %.24981, i64 %i.t ; 2 uses
  %i.ahb = load <4 x float>, ptr %i.aha, align 1, !tbaa !87 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  %i.ahd = load <4 x float>, ptr %i.ahc, align 1, !tbaa !87 ; 2 uses
  br i1 %i.bl, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ahe = fmul fast <4 x float> %i.agx, %i.bk
  %i.ahf = fmul fast <4 x float> %i.agz, %i.bk
  %i.ahg = fmul fast <4 x float> %i.ahb, %i.bk
  %i.ahh = fmul fast <4 x float> %i.ahd, %i.bk
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %.pn886 = phi <4 x float> [ %i.ahe, %bb.eg ], [ %i.agx, %bb.ef ]
  %.pn887 = phi <4 x float> [ %i.ahf, %bb.eg ], [ %i.agz, %bb.ef ]
  %.pn1080 = phi <4 x float> [ %i.ahg, %bb.eg ], [ %i.ahb, %bb.ef ]
  %.pn1081 = phi <4 x float> [ %i.ahh, %bb.eg ], [ %i.ahd, %bb.ef ]
  %.2636 = fadd fast <4 x float> %.pn1081, %i.ago
  %.2642 = fadd fast <4 x float> %.pn1080, %i.agn
  %.2648 = fadd fast <4 x float> %.pn887, %12
  %.2654 = fadd fast <4 x float> %.pn886, %11
  %i.ahi = getelementptr inbounds nuw i8, ptr %.24981, i64 32
  br label %.thread813

bb.ei:                                            ; preds = %bb.ee
  %i.ahj = load <4 x float>, ptr %.24981, align 1, !tbaa !87
  %i.ahk = getelementptr inbounds nuw i8, ptr %.24981, i64 16
  %i.ahl = load <4 x float>, ptr %i.ahk, align 1, !tbaa !87
  %i.ahm = fmul fast <4 x float> %i.ahj, %i.bk    ; 3 uses
  %i.ahn = fmul fast <4 x float> %i.ahl, %i.bk    ; 3 uses
  %i.aho = fadd fast <4 x float> %i.ahm, %11
  %i.ahp = fadd fast <4 x float> %i.ahn, %12
  %i.ahq = fadd fast <4 x float> %i.ahm, %i.agn
  %i.ahr = fadd fast <4 x float> %i.ahn, %i.ago
  %i.ahs = getelementptr inbounds nuw i8, ptr %.24981, i64 32
  br label %.thread813

.thread813:                                       ; preds = %bb.ee, %bb.ed, %.thread800, %bb.eh, %bb.ei, %.lr.ph982
  %.5671 = phi nsz <4 x float> [ %.3669975, %.lr.ph982 ], [ %i.ahm, %bb.ei ], [ %.3669975, %bb.ee ], [ %i.agx, %bb.eh ], [ %.3669975, %.thread800 ], [ %.3669975, %bb.ed ] ; 2 uses
  %.4662 = phi nsz <4 x float> [ %.2660976, %.lr.ph982 ], [ %i.ahn, %bb.ei ], [ %.2660976, %bb.ee ], [ %i.agz, %bb.eh ], [ %.2660976, %.thread800 ], [ %.2660976, %bb.ed ] ; 2 uses
  %.4656 = phi nsz <4 x float> [ %11, %.lr.ph982 ], [ %i.aho, %bb.ei ], [ %11, %bb.ee ], [ %.2654, %bb.eh ], [ %i.agp, %.thread800 ], [ %i.agt, %bb.ed ] ; 2 uses
  %.4650 = phi nsz <4 x float> [ %12, %.lr.ph982 ], [ %i.ahp, %bb.ei ], [ %12, %bb.ee ], [ %.2648, %bb.eh ], [ %i.agq, %.thread800 ], [ %i.agu, %bb.ed ] ; 2 uses
  %.4644 = phi nsz <4 x float> [ %i.agn, %.lr.ph982 ], [ %i.ahq, %bb.ei ], [ %i.agn, %bb.ee ], [ %.2642, %bb.eh ], [ %i.agr, %.thread800 ], [ %i.agv, %bb.ed ] ; 2 uses
  %.4638 = phi nsz <4 x float> [ %i.ago, %.lr.ph982 ], [ %i.ahr, %bb.ei ], [ %i.ago, %bb.ee ], [ %.2636, %bb.eh ], [ %i.ags, %.thread800 ], [ %i.agw, %bb.ed ] ; 2 uses
  %.26 = phi ptr [ null, %.lr.ph982 ], [ %i.ahs, %bb.ei ], [ %.24981, %bb.ee ], [ %i.ahi, %bb.eh ], [ %.24981, %.thread800 ], [ %.24981, %bb.ed ] ; 2 uses
  br i1 %i.bm, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.thread813
  %i.aht = fmul fast <4 x float> %.4656, %i.bo
  %i.ahu = fmul fast <4 x float> %.4650, %i.bo
  %i.ahv = fmul fast <4 x float> %.4644, %i.bo
  %i.ahw = fmul fast <4 x float> %.4638, %i.bo
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.thread813
  %.5657 = phi nsz <4 x float> [ %i.aht, %bb.ej ], [ %.4656, %.thread813 ] ; 8 uses
  %.5651 = phi nsz <4 x float> [ %i.ahu, %bb.ej ], [ %.4650, %.thread813 ] ; 8 uses
  %.5645 = phi nsz <4 x float> [ %i.ahv, %bb.ej ], [ %.4644, %.thread813 ] ; 8 uses
  %.5639 = phi nsz <4 x float> [ %i.ahw, %bb.ej ], [ %.4638, %.thread813 ] ; 8 uses
  br i1 %i.bp, label %bb.el, label %bb.es

bb.el:                                            ; preds = %bb.ek
  br i1 %.not1817, label %bb.er, label %bb.em

bb.em:                                            ; preds = %bb.el
  switch i32 %i.b, label %bb.eq [
    i32 8, label %bb.en
    i32 4, label %bb.eo
    i32 1, label %bb.ep
  ]

bb.en:                                            ; preds = %bb.em
  store <4 x float> %.5657, ptr %.11744978, align 1, !tbaa !87
  %i.ahx = getelementptr inbounds nuw i8, ptr %.11744978, i64 16
  store <4 x float> %.5651, ptr %i.ahx, align 1, !tbaa !87
  %i.ahy = getelementptr inbounds nuw i8, ptr %.11744978, i64 32
  store <4 x float> %.5645, ptr %i.ahy, align 1, !tbaa !87
  %i.ahz = getelementptr inbounds nuw i8, ptr %.11744978, i64 48
  store <4 x float> %.5639, ptr %i.ahz, align 1, !tbaa !87
  br label %bb.eq

bb.eo:                                            ; preds = %bb.em
  store <4 x float> %.5657, ptr %.11744978, align 1, !tbaa !87
  %i.aia = getelementptr inbounds nuw i8, ptr %.11744978, i64 16
  store <4 x float> %.5645, ptr %i.aia, align 1, !tbaa !87
  %i.aib = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx1828 ; 2 uses
  store <4 x float> %.5651, ptr %i.aib, align 1, !tbaa !87
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  store <4 x float> %.5639, ptr %i.aic, align 1, !tbaa !87
  br label %bb.eq

bb.ep:                                            ; preds = %bb.em
  %.sroa.067.0.vec.extract = extractelement <4 x float> %.5657, i64 0
  store float %.sroa.067.0.vec.extract, ptr %.11744978, align 4, !tbaa !67
  %.sroa.12.32.vec.extract = extractelement <4 x float> %.5645, i64 0
  %i.aid = getelementptr inbounds nuw i8, ptr %.11744978, i64 4
  store float %.sroa.12.32.vec.extract, ptr %i.aid, align 4, !tbaa !67
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %.11744978, i64 %i.k
  %i.aif = shufflevector <4 x float> %.5657, <4 x float> %.5645, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.aif, ptr %i.aie, align 4, !tbaa !67
  %i.aig = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx890
  %i.aih = shufflevector <4 x float> %.5657, <4 x float> %.5645, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aih, ptr %i.aig, align 4, !tbaa !67
  %i.aii = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx892
  %i.aij = shufflevector <4 x float> %.5657, <4 x float> %.5645, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.aij, ptr %i.aii, align 4, !tbaa !67
  %.sroa.768.16.vec.extract = extractelement <4 x float> %.5651, i64 0
  %i.aik = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx1828 ; 2 uses
  store float %.sroa.768.16.vec.extract, ptr %i.aik, align 4, !tbaa !67
  %.sroa.17.48.vec.extract = extractelement <4 x float> %.5639, i64 0
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 4
  store float %.sroa.17.48.vec.extract, ptr %i.ail, align 4, !tbaa !67
  %i.aim = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx897
  %i.ain = shufflevector <4 x float> %.5651, <4 x float> %.5639, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ain, ptr %i.aim, align 4, !tbaa !67
  %i.aio = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx898
  %i.aip = shufflevector <4 x float> %.5651, <4 x float> %.5639, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aip, ptr %i.aio, align 4, !tbaa !67
  %i.aiq = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx899
  %i.air = shufflevector <4 x float> %.5651, <4 x float> %.5639, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.air, ptr %i.aiq, align 4, !tbaa !67
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.en, %bb.em, %bb.ep
  %i.ais = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx1830
  br label %bb.ez

bb.er:                                            ; preds = %bb.el
  store <4 x float> %.5657, ptr %.11744978, align 1, !tbaa !87
  %i.ait = getelementptr inbounds nuw i8, ptr %.11744978, i64 16
  store <4 x float> %.5651, ptr %i.ait, align 1, !tbaa !87
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %.11744978, i64 %i.k ; 2 uses
  store <4 x float> %.5645, ptr %i.aiu, align 1, !tbaa !87
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  store <4 x float> %.5639, ptr %i.aiv, align 1, !tbaa !87
  %i.aiw = getelementptr inbounds nuw i8, ptr %.11744978, i64 32
  br label %bb.ez

bb.es:                                            ; preds = %bb.ek
  %i.aix = bitcast <4 x float> %.5657 to <8 x i16>
  %i.aiy = bitcast <4 x float> %.5651 to <8 x i16>
  %i.aiz = shufflevector <8 x i16> %i.aix, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.aja = shufflevector <8 x i16> %i.aiy, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ajb = bitcast <8 x i16> %i.aiz to <4 x float> ; 2 uses
  %i.ajc = bitcast <8 x i16> %i.aja to <4 x float> ; 2 uses
  %i.ajd = shufflevector <4 x float> %i.ajb, <4 x float> %i.ajc, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %i.aje = bitcast <4 x float> %.5645 to <8 x i16>
  %i.ajf = bitcast <4 x float> %.5639 to <8 x i16>
  %i.ajg = shufflevector <8 x i16> %i.aje, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ajh = shufflevector <8 x i16> %i.ajf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.aji = bitcast <8 x i16> %i.ajg to <4 x float> ; 2 uses
  %i.ajj = bitcast <8 x i16> %i.ajh to <4 x float> ; 2 uses
  %i.ajk = shufflevector <4 x float> %i.aji, <4 x float> %i.ajj, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  br i1 %.not1817, label %bb.ey, label %bb.et

bb.et:                                            ; preds = %bb.es
  switch i32 %i.b, label %bb.ex [
    i32 8, label %bb.eu
    i32 4, label %bb.ev
    i32 1, label %bb.ew
  ]

bb.eu:                                            ; preds = %bb.et
  store <4 x float> %i.ajd, ptr %.11753977, align 1, !tbaa !87
  %i.ajl = getelementptr inbounds nuw i8, ptr %.11753977, i64 16
  store <4 x float> %i.ajk, ptr %i.ajl, align 1, !tbaa !87
  br label %bb.ex

bb.ev:                                            ; preds = %bb.et
  %i.ajm = shufflevector <4 x float> %i.ajb, <4 x float> %i.aji, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.ajm, ptr %.11753977, align 1, !tbaa !87
  %i.ajn = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx890
  %i.ajo = shufflevector <4 x float> %i.ajc, <4 x float> %i.ajj, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.ajo, ptr %i.ajn, align 1, !tbaa !87
  br label %bb.ex

bb.ew:                                            ; preds = %bb.et
  %i.ajp = bitcast <4 x float> %i.ajd to <8 x i16> ; 8 uses
  %i.ajq = bitcast <4 x float> %i.ajk to <8 x i16> ; 8 uses
  %i.ajr = shufflevector <8 x i16> %i.ajp, <8 x i16> %i.ajq, <2 x i32> <i32 0, i32 8>
  store <2 x i16> %i.ajr, ptr %.11753977, align 2, !tbaa !105
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %.11753977, i64 %i.k
  %i.ajt = shufflevector <8 x i16> %i.ajp, <8 x i16> %i.ajq, <2 x i32> <i32 1, i32 9>
  store <2 x i16> %i.ajt, ptr %i.ajs, align 2, !tbaa !105
  %.sroa.064.4.vec.extract = extractelement <8 x i16> %i.ajp, i64 2
  %i.aju = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx888 ; 2 uses
  store i16 %.sroa.064.4.vec.extract, ptr %i.aju, align 2, !tbaa !105
  %.sroa.11.20.vec.extract = extractelement <8 x i16> %i.ajq, i64 2
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 2
  store i16 %.sroa.11.20.vec.extract, ptr %i.ajv, align 2, !tbaa !105
  %.sroa.064.6.vec.extract = extractelement <8 x i16> %i.ajp, i64 3
  %i.ajw = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx889 ; 2 uses
  store i16 %.sroa.064.6.vec.extract, ptr %i.ajw, align 2, !tbaa !105
  %.sroa.11.22.vec.extract = extractelement <8 x i16> %i.ajq, i64 3
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 2
  store i16 %.sroa.11.22.vec.extract, ptr %i.ajx, align 2, !tbaa !105
  %.sroa.064.8.vec.extract = extractelement <8 x i16> %i.ajp, i64 4
  %i.ajy = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx890 ; 2 uses
  store i16 %.sroa.064.8.vec.extract, ptr %i.ajy, align 2, !tbaa !105
  %.sroa.11.24.vec.extract = extractelement <8 x i16> %i.ajq, i64 4
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 2
  store i16 %.sroa.11.24.vec.extract, ptr %i.ajz, align 2, !tbaa !105
  %.sroa.064.10.vec.extract = extractelement <8 x i16> %i.ajp, i64 5
  %i.aka = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx891 ; 2 uses
  store i16 %.sroa.064.10.vec.extract, ptr %i.aka, align 2, !tbaa !105
  %.sroa.11.26.vec.extract = extractelement <8 x i16> %i.ajq, i64 5
  %i.akb = getelementptr i8, ptr %i.aka, i64 2
  store i16 %.sroa.11.26.vec.extract, ptr %i.akb, align 2, !tbaa !105
  %.sroa.064.12.vec.extract = extractelement <8 x i16> %i.ajp, i64 6
  %i.akc = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx892 ; 2 uses
  store i16 %.sroa.064.12.vec.extract, ptr %i.akc, align 2, !tbaa !105
  %.sroa.11.28.vec.extract = extractelement <8 x i16> %i.ajq, i64 6
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 2
  store i16 %.sroa.11.28.vec.extract, ptr %i.akd, align 2, !tbaa !105
  %.sroa.064.14.vec.extract = extractelement <8 x i16> %i.ajp, i64 7
  %i.ake = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx893 ; 2 uses
  store i16 %.sroa.064.14.vec.extract, ptr %i.ake, align 2, !tbaa !105
  %.sroa.11.30.vec.extract = extractelement <8 x i16> %i.ajq, i64 7
  %i.akf = getelementptr i8, ptr %i.ake, i64 2
  store i16 %.sroa.11.30.vec.extract, ptr %i.akf, align 2, !tbaa !105
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %bb.eu, %bb.et, %bb.ew
  %i.akg = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx1828
  br label %bb.ez

bb.ey:                                            ; preds = %bb.es
  store <4 x float> %i.ajd, ptr %.11753977, align 1, !tbaa !87
  %i.akh = getelementptr inbounds nuw [2 x i8], ptr %.11753977, i64 %i.k
  store <4 x float> %i.ajk, ptr %i.akh, align 1, !tbaa !87
  %i.aki = getelementptr inbounds nuw i8, ptr %.11753977, i64 16
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey, %bb.eq, %bb.er
  %.31755 = phi ptr [ %.11753977, %bb.eq ], [ %.11753977, %bb.er ], [ %i.akg, %bb.ex ], [ %i.aki, %bb.ey ] ; 2 uses
  %.21745 = phi ptr [ %i.ais, %bb.eq ], [ %i.aiw, %bb.er ], [ %.11744978, %bb.ex ], [ %.11744978, %bb.ey ] ; 2 uses
  %i.akj = add nuw nsw i32 %.01734979, 8          ; 2 uses
  %i.akk = or disjoint i32 %i.akj, 7
  %i.akl = icmp slt i32 %i.akk, %6
  br i1 %i.akl, label %.lr.ph982, label %.preheader912, !llvm.loop !976

.preheader911:                                    ; preds = %bb.fs, %.preheader912
  %.41756.lcssa = phi ptr [ %.11753.lcssa, %.preheader912 ], [ %.61758, %bb.fs ] ; 2 uses
  %.31746.lcssa = phi ptr [ %.11744.lcssa, %.preheader912 ], [ %.41747, %bb.fs ] ; 2 uses
  %.11735.lcssa = phi i32 [ %.01734.lcssa, %.preheader912 ], [ %i.amu, %bb.fs ] ; 3 uses
  %.71693.lcssa = phi ptr [ %.61692.lcssa, %.preheader912 ], [ %i.aku, %bb.fs ] ; 2 uses
  %.27.lcssa = phi ptr [ %.24.lcssa, %.preheader912 ], [ %.29, %bb.fs ] ; 2 uses
  %i.akm = or disjoint i32 %.11735.lcssa, 1
  %i.akn = icmp slt i32 %i.akm, %6
  br i1 %i.akn, label %.lr.ph1008.preheader, label %.preheader910

.lr.ph1008.preheader:                             ; preds = %.preheader911
  %i.ako = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akp = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.akq = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph1008

.lr.ph997:                                        ; preds = %.preheader912, %bb.fs
  %.27996 = phi ptr [ %.29, %bb.fs ], [ %.24.lcssa, %.preheader912 ] ; 9 uses
  %.71693995 = phi ptr [ %i.aku, %bb.fs ], [ %.61692.lcssa, %.preheader912 ] ; 3 uses
  %.11735994 = phi i32 [ %i.amu, %bb.fs ], [ %.01734.lcssa, %.preheader912 ]
  %.31746993 = phi ptr [ %.41747, %bb.fs ], [ %.11744.lcssa, %.preheader912 ] ; 13 uses
  %.41756992 = phi ptr [ %.61758, %bb.fs ], [ %.11753.lcssa, %.preheader912 ] ; 11 uses
  %.5663991 = phi <4 x float> [ %.7665, %bb.fs ], [ %.2660.lcssa, %.preheader912 ] ; 6 uses
  %.6672990 = phi <4 x float> [ %.8674, %bb.fs ], [ %.3669.lcssa, %.preheader912 ] ; 7 uses
  %i.akr = load <4 x float>, ptr %.71693995, align 16, !tbaa !87 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.71693995, i64 16
  %i.akt = load <4 x float>, ptr %i.aks, align 16, !tbaa !87 ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.71693995, i64 32 ; 2 uses
  %15 = shufflevector <4 x float> %i.akr, <4 x float> %i.akt, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 6 uses
  %16 = shufflevector <4 x float> %i.akr, <4 x float> %i.akt, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.akv = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 6 uses
  %.not1823 = icmp eq ptr %.27996, null
  br i1 %.not1823, label %.thread830, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph997
  br i1 %i.bg, label %.thread821, label %bb.fb

.thread821:                                       ; preds = %bb.fa
  %i.akw = fadd fast <4 x float> %.6672990, %15
  %i.akx = fadd fast <4 x float> %i.akv, %.6672990
  br label %.thread830

bb.fb:                                            ; preds = %bb.fa
  br i1 %or.cond11, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.aky = fadd fast <4 x float> %.6672990, %15
  %i.akz = fadd fast <4 x float> %i.akv, %.5663991
  br label %.thread830

bb.fd:                                            ; preds = %bb.fb
  switch i32 %2, label %.thread830 [
    i32 3, label %bb.fe
    i32 4, label %bb.ff
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.ala = load <4 x float>, ptr %.27996, align 1, !tbaa !87 ; 3 uses
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %.27996, i64 %i.t
  %i.alc = load <4 x float>, ptr %i.alb, align 1, !tbaa !87 ; 3 uses
  %i.ald = fmul fast <4 x float> %i.ala, %i.bk
  %i.ale = fmul fast <4 x float> %i.alc, %i.bk
  %.pn = select i1 %i.bl, <4 x float> %i.ala, <4 x float> %i.ald
  %.2603.v = select i1 %i.bl, <4 x float> %i.alc, <4 x float> %i.ale
  %.2603 = fadd fast <4 x float> %.2603.v, %i.akv
  %.2609 = fadd fast <4 x float> %.pn, %15
  %i.alf = getelementptr inbounds nuw i8, ptr %.27996, i64 16
  br label %.thread830

bb.ff:                                            ; preds = %bb.fd
  %i.alg = load <4 x float>, ptr %.27996, align 1, !tbaa !87
  %i.alh = fmul fast <4 x float> %i.alg, %i.bk    ; 3 uses
  %i.ali = fadd fast <4 x float> %i.alh, %15
  %i.alj = fadd fast <4 x float> %i.alh, %i.akv
  %i.alk = getelementptr inbounds nuw i8, ptr %.27996, i64 16
  br label %.thread830

.thread830:                                       ; preds = %bb.fd, %bb.fc, %.thread821, %bb.fe, %bb.ff, %.lr.ph997
  %.8674 = phi nsz <4 x float> [ %.6672990, %.lr.ph997 ], [ %i.alh, %bb.ff ], [ %.6672990, %bb.fd ], [ %i.ala, %bb.fe ], [ %.6672990, %.thread821 ], [ %.6672990, %bb.fc ]
  %.7665 = phi nsz <4 x float> [ %.5663991, %.lr.ph997 ], [ %.5663991, %bb.ff ], [ %.5663991, %bb.fd ], [ %i.alc, %bb.fe ], [ %.5663991, %.thread821 ], [ %.5663991, %bb.fc ]
  %.4611 = phi nsz <4 x float> [ %15, %.lr.ph997 ], [ %i.ali, %bb.ff ], [ %15, %bb.fd ], [ %.2609, %bb.fe ], [ %i.akw, %.thread821 ], [ %i.aky, %bb.fc ] ; 2 uses
  %.4605 = phi nsz <4 x float> [ %i.akv, %.lr.ph997 ], [ %i.alj, %bb.ff ], [ %i.akv, %bb.fd ], [ %.2603, %bb.fe ], [ %i.akx, %.thread821 ], [ %i.akz, %bb.fc ] ; 2 uses
  %.29 = phi ptr [ null, %.lr.ph997 ], [ %i.alk, %bb.ff ], [ %.27996, %bb.fd ], [ %i.alf, %bb.fe ], [ %.27996, %.thread821 ], [ %.27996, %bb.fc ] ; 2 uses
  %i.all = fmul fast <4 x float> %.4611, %i.bo
  %i.alm = fmul fast <4 x float> %.4605, %i.bo
  %.5612 = select nsz i1 %i.bm, <4 x float> %i.all, <4 x float> %.4611 ; 7 uses
  %.5606 = select nsz i1 %i.bm, <4 x float> %i.alm, <4 x float> %.4605 ; 7 uses
  br i1 %i.bp, label %bb.fg, label %bb.fm

bb.fg:                                            ; preds = %.thread830
  br i1 %.not1817, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  switch i32 %i.b, label %bb.fk [
    i32 4, label %bb.fi
    i32 1, label %bb.fj
  ]

bb.fi:                                            ; preds = %bb.fh
  store <4 x float> %.5612, ptr %.31746993, align 1, !tbaa !87
  %i.aln = getelementptr inbounds nuw i8, ptr %.31746993, i64 16
  store <4 x float> %.5606, ptr %i.aln, align 1, !tbaa !87
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %.sroa.037.0.vec.extract = extractelement <4 x float> %.5612, i64 0
  store float %.sroa.037.0.vec.extract, ptr %.31746993, align 4, !tbaa !67
  %.sroa.738.16.vec.extract = extractelement <4 x float> %.5606, i64 0
  %i.alo = getelementptr inbounds nuw i8, ptr %.31746993, i64 4
  store float %.sroa.738.16.vec.extract, ptr %i.alo, align 4, !tbaa !67
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %.31746993, i64 %i.k
  %i.alq = shufflevector <4 x float> %.5612, <4 x float> %.5606, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.alq, ptr %i.alp, align 4, !tbaa !67
  %i.alr = getelementptr inbounds nuw i8, ptr %.31746993, i64 %.idx890
  %i.als = shufflevector <4 x float> %.5612, <4 x float> %.5606, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.als, ptr %i.alr, align 4, !tbaa !67
  %i.alt = getelementptr inbounds nuw i8, ptr %.31746993, i64 %.idx892
  %i.alu = shufflevector <4 x float> %.5612, <4 x float> %.5606, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.alu, ptr %i.alt, align 4, !tbaa !67
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fi, %bb.fh, %bb.fj
  %i.alv = getelementptr inbounds nuw i8, ptr %.31746993, i64 %.idx1828
  br label %bb.fs

bb.fl:                                            ; preds = %bb.fg
  store <4 x float> %.5612, ptr %.31746993, align 1, !tbaa !87
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %.31746993, i64 %i.k
  store <4 x float> %.5606, ptr %i.alw, align 1, !tbaa !87
  %i.alx = getelementptr inbounds nuw i8, ptr %.31746993, i64 16
  br label %bb.fs

bb.fm:                                            ; preds = %.thread830
  %i.aly = bitcast <4 x float> %.5612 to <8 x i16>
  %i.alz = bitcast <4 x float> %.5606 to <8 x i16>
  %i.ama = shufflevector <8 x i16> %i.aly, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.amb = shufflevector <8 x i16> %i.alz, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.amc = bitcast <8 x i16> %i.ama to <4 x float>
  %i.amd = bitcast <8 x i16> %i.amb to <4 x float>
  %i.ame = shufflevector <4 x float> %i.amc, <4 x float> %i.amd, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  br i1 %.not1817, label %bb.fr, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  switch i32 %i.b, label %bb.fq [
    i32 4, label %bb.fo
    i32 1, label %bb.fp
  ]

bb.fo:                                            ; preds = %bb.fn
  store <4 x float> %i.ame, ptr %.41756992, align 1, !tbaa !87
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.amf = bitcast <4 x float> %i.ame to <8 x i16> ; 6 uses
  %i.amg = shufflevector <8 x i16> %i.amf, <8 x i16> poison, <2 x i32> <i32 0, i32 4>
  store <2 x i16> %i.amg, ptr %.41756992, align 2, !tbaa !105
  %i.amh = getelementptr inbounds nuw [2 x i8], ptr %.41756992, i64 %i.k
  %i.ami = shufflevector <8 x i16> %i.amf, <8 x i16> poison, <2 x i32> <i32 1, i32 5>
  store <2 x i16> %i.ami, ptr %i.amh, align 2, !tbaa !105
  %.sroa.035.4.vec.extract = extractelement <8 x i16> %i.amf, i64 2
  %i.amj = getelementptr inbounds nuw i8, ptr %.41756992, i64 %.idx888 ; 2 uses
  store i16 %.sroa.035.4.vec.extract, ptr %i.amj, align 2, !tbaa !105
  %.sroa.035.12.vec.extract = extractelement <8 x i16> %i.amf, i64 6
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 2
  store i16 %.sroa.035.12.vec.extract, ptr %i.amk, align 2, !tbaa !105
  %.sroa.035.6.vec.extract = extractelement <8 x i16> %i.amf, i64 3
  %i.aml = getelementptr inbounds nuw i8, ptr %.41756992, i64 %.idx889 ; 2 uses
  store i16 %.sroa.035.6.vec.extract, ptr %i.aml, align 2, !tbaa !105
  %.sroa.035.14.vec.extract = extractelement <8 x i16> %i.amf, i64 7
  %i.amm = getelementptr i8, ptr %i.aml, i64 2
  store i16 %.sroa.035.14.vec.extract, ptr %i.amm, align 2, !tbaa !105
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fo, %bb.fn, %bb.fp
  %i.amn = getelementptr inbounds nuw i8, ptr %.41756992, i64 %.idx890
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fm
  %i.amo = bitcast <4 x float> %i.ame to <2 x i64>
  %i.amp = extractelement <2 x i64> %i.amo, i64 0
  store i64 %i.amp, ptr %.41756992, align 1, !tbaa !87
  %i.amq = getelementptr inbounds nuw [2 x i8], ptr %.41756992, i64 %i.k
  %i.amr = bitcast <4 x float> %i.ame to <2 x i64>
  %i.ams = extractelement <2 x i64> %i.amr, i64 1
  store i64 %i.ams, ptr %i.amq, align 1, !tbaa !87
  %i.amt = getelementptr inbounds nuw i8, ptr %.41756992, i64 8
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fq, %bb.fr, %bb.fk, %bb.fl
  %.61758 = phi ptr [ %.41756992, %bb.fk ], [ %.41756992, %bb.fl ], [ %i.amn, %bb.fq ], [ %i.amt, %bb.fr ] ; 2 uses
  %.41747 = phi ptr [ %i.alv, %bb.fk ], [ %i.alx, %bb.fl ], [ %.31746993, %bb.fq ], [ %.31746993, %bb.fr ] ; 2 uses
  %i.amu = add nuw nsw i32 %.11735994, 4          ; 3 uses
  %i.amv = or disjoint i32 %i.amu, 3
  %i.amw = icmp slt i32 %i.amv, %6
  br i1 %i.amw, label %.lr.ph997, label %.preheader911, !llvm.loop !977

.preheader910:                                    ; preds = %bb.gf, %.preheader911
  %.71759.lcssa = phi ptr [ %.41756.lcssa, %.preheader911 ], [ %.91761, %bb.gf ]
  %.51748.lcssa = phi ptr [ %.31746.lcssa, %.preheader911 ], [ %.61749, %bb.gf ]
  %.21736.lcssa = phi i32 [ %.11735.lcssa, %.preheader911 ], [ %i.apa, %bb.gf ] ; 2 uses
  %.81694.lcssa = phi ptr [ %.71693.lcssa, %.preheader911 ], [ %i.anc, %bb.gf ] ; 2 uses
  %.30.lcssa = phi ptr [ %.27.lcssa, %.preheader911 ], [ %.32, %bb.gf ] ; 2 uses
  %i.amx = icmp slt i32 %.21736.lcssa, %6
  br i1 %i.amx, label %.lr.ph1019.preheader, label %._crit_edge1020

.lr.ph1019.preheader:                             ; preds = %.preheader910
  %i.amy = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph1019

.lr.ph1008:                                       ; preds = %.lr.ph1008.preheader, %bb.gf
  %.301007 = phi ptr [ %.32, %bb.gf ], [ %.27.lcssa, %.lr.ph1008.preheader ] ; 9 uses
  %.816941006 = phi ptr [ %i.anc, %bb.gf ], [ %.71693.lcssa, %.lr.ph1008.preheader ] ; 3 uses
  %.217361005 = phi i32 [ %i.apa, %bb.gf ], [ %.11735.lcssa, %.lr.ph1008.preheader ]
  %.517481004 = phi ptr [ %.61749, %bb.gf ], [ %.31746.lcssa, %.lr.ph1008.preheader ] ; 7 uses
  %.717591003 = phi ptr [ %.91761, %bb.gf ], [ %.41756.lcssa, %.lr.ph1008.preheader ] ; 7 uses
  %i.amz = load <2 x float>, ptr %.816941006, align 4, !tbaa !67 ; 6 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.816941006, i64 8
  %i.anb = load <2 x float>, ptr %i.ana, align 4, !tbaa !67 ; 6 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %.816941006, i64 16 ; 2 uses
  %.not1820 = icmp eq ptr %.301007, null
  br i1 %.not1820, label %.thread849, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph1008
  br i1 %i.bg, label %.thread836, label %bb.fu

.thread836:                                       ; preds = %bb.ft
  %i.and = fadd fast <2 x float> %i.amz, %i.akq
  %i.ane = fadd fast <2 x float> %i.anb, %i.akq
  br label %.thread849

bb.fu:                                            ; preds = %bb.ft
  br i1 %or.cond11, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.anf = fadd fast <2 x float> %i.amz, %i.ako
  %i.ang = fadd fast <2 x float> %i.anb, %i.akp
  br label %.thread849

bb.fw:                                            ; preds = %bb.fu
  switch i32 %2, label %.thread849 [
    i32 3, label %bb.fx
    i32 4, label %bb.fy
  ]

bb.fx:                                            ; preds = %bb.fw
  %i.anh = load <2 x float>, ptr %.301007, align 4, !tbaa !67
  %i.ani = fmul fast <2 x float> %i.anh, %i.bw
  %i.anj = fadd fast <2 x float> %i.ani, %i.amz
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %.301007, i64 %i.t
  %i.anl = load <2 x float>, ptr %i.ank, align 4, !tbaa !67
  %i.anm = fmul fast <2 x float> %i.anl, %i.bw
  %i.ann = fadd fast <2 x float> %i.anm, %i.anb
  %i.ano = getelementptr inbounds nuw i8, ptr %.301007, i64 8
  br label %.thread849

bb.fy:                                            ; preds = %bb.fw
  %i.anp = load <2 x float>, ptr %.301007, align 4, !tbaa !67
  %i.anq = fmul fast <2 x float> %i.anp, %i.bw    ; 2 uses
  %i.anr = fadd fast <2 x float> %i.anq, %i.amz
  %i.ans = fadd fast <2 x float> %i.anq, %i.anb
  %i.ant = getelementptr inbounds nuw i8, ptr %.301007, i64 8
  br label %.thread849

.thread849:                                       ; preds = %bb.fw, %bb.fv, %.thread836, %bb.fx, %bb.fy, %.lr.ph1008
  %.32 = phi ptr [ %i.ant, %bb.fy ], [ %.301007, %bb.fw ], [ null, %.lr.ph1008 ], [ %i.ano, %bb.fx ], [ %.301007, %.thread836 ], [ %.301007, %bb.fv ] ; 2 uses
  %i.anu = phi <2 x float> [ %i.ans, %bb.fy ], [ %i.anb, %bb.fw ], [ %i.anb, %.lr.ph1008 ], [ %i.ann, %bb.fx ], [ %i.ane, %.thread836 ], [ %i.ang, %bb.fv ]
  %i.anv = phi <2 x float> [ %i.anr, %bb.fy ], [ %i.amz, %bb.fw ], [ %i.amz, %.lr.ph1008 ], [ %i.anj, %bb.fx ], [ %i.and, %.thread836 ], [ %i.anf, %bb.fv ]
  %i.anw = fmul fast <2 x float> %i.anv, %i.by    ; 4 uses
  %i.anx = fmul fast <2 x float> %i.anu, %i.by    ; 5 uses
  br i1 %i.bp, label %bb.fz, label %bb.gc

bb.fz:                                            ; preds = %.thread849
  %i.any = extractelement <2 x float> %i.anw, i64 0
  store float %i.any, ptr %.517481004, align 4, !tbaa !67
  %i.anz = getelementptr inbounds nuw i8, ptr %.517481004, i64 4 ; 2 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %.517481004, i64 %i.k ; 3 uses
  %i.aob = getelementptr i8, ptr %i.aoa, i64 4    ; 2 uses
  br i1 %.not1817, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aoc = extractelement <2 x float> %i.anx, i64 0
end_hunk_1
