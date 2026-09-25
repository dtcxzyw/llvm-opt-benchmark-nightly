Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rgb2yuv?download=true
inline.NumInlined: 784
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK20Op_RGB24_32_to_YCbCr18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
  %i.ih = mul nsw i64 %.0384, %indvars.iv475
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ih
  %i.ij = mul nsw i64 %.0386, %indvars.iv475
  %i.ik = getelementptr i8, ptr %.0.i.i, i64 %i.ij
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.us
  %indvars.iv470 = phi i64 [ %indvars.iv.next471, %bb.bf ], [ 0, %.lr.ph.us ] ; 2 uses
  %.0274397.us.us = phi ptr [ %i.in, %bb.bf ], [ %i.ii, %.lr.ph.us ] ; 3 uses
  %i.il = load i8, ptr %.0274397.us.us, align 1, !tbaa !133
  %i.im = getelementptr inbounds nuw i8, ptr %.0274397.us.us, i64 1
  %i.in = getelementptr inbounds nuw i8, ptr %.0274397.us.us, i64 %i.id
  %i.io = uitofp i8 %i.il to float
  %i.ip = load float, ptr %i.ie, align 4, !tbaa !170
  %i.iq = load float, ptr %i.if, align 4, !tbaa !170
  %i.ir = load <2 x i8>, ptr %i.im, align 1, !tbaa !133
  %i.is = uitofp <2 x i8> %i.ir to <2 x float>    ; 2 uses
  %i.it = extractelement <2 x float> %i.is, i64 0
  %i.iu = fmul float %i.iq, %i.it
  %i.iv = call float @llvm.fmuladd.f32(float %i.io, float %i.ip, float %i.iu)
  %i.iw = load float, ptr %i.ig, align 4, !tbaa !170
  %i.ix = extractelement <2 x float> %i.is, i64 1
  %i.iy = call float @llvm.fmuladd.f32(float %i.ix, float %i.iw, float %i.iv)
  %i.iz = fadd float %i.iy, 5.000000e-01
  %i.ja = fptosi float %i.iz to i32
  %i.jb = call i32 @llvm.smax.i32(i32 %i.ja, i32 0)
  %i.jc = call i32 @llvm.umin.i32(i32 %i.jb, i32 255)
  %.0.i.us.us = trunc nuw i32 %i.jc to i8
  %i.jd = getelementptr i8, ptr %i.ik, i64 %indvars.iv470
  store i8 %.0.i.us.us, ptr %i.jd, align 1, !tbaa !133
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1 ; 2 uses
  %exitcond474.not = icmp eq i64 %indvars.iv.next471, %wide.trip.count473
  br i1 %exitcond474.not, label %._crit_edge.split.us.us, label %bb.bf, !llvm.loop !418

._crit_edge.split.us.us:                          ; preds = %bb.bf
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 2 uses
  %exitcond479.not = icmp eq i64 %indvars.iv.next476, %wide.trip.count478
  br i1 %exitcond479.not, label %._crit_edge402.split, label %.lr.ph.us, !llvm.loop !419

._crit_edge402.split:                             ; preds = %._crit_edge.split, %._crit_edge.split.us.us
  %i.je = icmp eq i8 %i.ak, 1
  %i.jf = icmp eq i8 %i.al, 1                     ; 2 uses
  %or.cond = and i1 %i.je, %i.jf
  br i1 %or.cond, label %.lr.ph437, label %bb.bi

._crit_edge402.split.thread563:                   ; preds = %bb.be
  %i.jg = icmp eq i8 %i.ak, 1
  %i.jh = icmp eq i8 %i.al, 1                     ; 2 uses
  %or.cond564 = and i1 %i.jg, %i.jh
  br i1 %or.cond564, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %bb.bi

._crit_edge402.split.thread:                      ; preds = %.lr.ph401
  %i.ji = icmp eq i8 %i.ak, 1
  %i.jj = icmp eq i8 %i.al, 1                     ; 2 uses
  %or.cond562 = and i1 %i.ji, %i.jj
  br i1 %or.cond562, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %bb.bi

.lr.ph437:                                        ; preds = %._crit_edge402.split
  %i.jk = zext nneg i32 %i.ic to i64              ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.jn = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.jp = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %15, i64 36
  %wide.trip.count526 = zext i32 %i.e to i64      ; 2 uses
  %wide.trip.count521 = zext i32 %i.c to i64      ; 2 uses
  br i1 %i.hy, label %.lr.ph434.us, label %.lr.ph434

.lr.ph434.us:                                     ; preds = %.lr.ph437, %._crit_edge435.split.us.us
  %indvars.iv523 = phi i64 [ %indvars.iv.next524, %._crit_edge435.split.us.us ], [ 0, %.lr.ph437 ] ; 4 uses
  %i.jr = mul nsw i64 %.0384, %indvars.iv523
  %i.js = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.jr
  %i.jt = mul nsw i64 %.0382, %indvars.iv523
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i.i323, i64 %i.jt
  %i.jv = mul nsw i64 %.0383, %indvars.iv523
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i.i328, i64 %i.jv
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit.us.us

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit.us.us: ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit.us.us, %.lr.ph434.us
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit.us.us ], [ 0, %.lr.ph434.us ] ; 3 uses
  %.0271431.us.us = phi ptr [ %i.kc, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit.us.us ], [ %i.js, %.lr.ph434.us ] ; 4 uses
  %i.jx = load i8, ptr %.0271431.us.us, align 1, !tbaa !133
  %i.jy = getelementptr inbounds nuw i8, ptr %.0271431.us.us, i64 1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !133
  %i.ka = getelementptr inbounds nuw i8, ptr %.0271431.us.us, i64 2
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !133
  %i.kc = getelementptr inbounds nuw i8, ptr %.0271431.us.us, i64 %i.jk
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ju, i64 %indvars.iv518
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 %indvars.iv518
  %i.kf = uitofp i8 %i.jx to float                ; 2 uses
  %i.kg = load float, ptr %i.jl, align 4, !tbaa !170
  %i.kh = uitofp i8 %i.jz to float                ; 2 uses
  %i.ki = load float, ptr %i.jm, align 4, !tbaa !170
  %i.kj = fmul float %i.ki, %i.kh
  %i.kk = call float @llvm.fmuladd.f32(float %i.kf, float %i.kg, float %i.kj)
  %i.kl = uitofp i8 %i.kb to float                ; 2 uses
  %i.km = load float, ptr %i.jn, align 4, !tbaa !170
  %i.kn = call float @llvm.fmuladd.f32(float %i.kl, float %i.km, float %i.kk)
  %i.ko = load float, ptr %i.jo, align 4, !tbaa !170
  %i.kp = load float, ptr %i.jp, align 4, !tbaa !170
  %i.kq = fmul float %i.kp, %i.kh
  %i.kr = call float @llvm.fmuladd.f32(float %i.kf, float %i.ko, float %i.kq)
  %i.ks = load float, ptr %i.jq, align 4, !tbaa !170
  %i.kt = call float @llvm.fmuladd.f32(float %i.kl, float %i.ks, float %i.kr)
  %i.ku = fadd float %i.kn, 1.280000e+02
  %i.kv = fadd float %i.ku, 5.000000e-01
  %i.kw = fptosi float %i.kv to i32
  %i.kx = call i32 @llvm.smax.i32(i32 %i.kw, i32 0)
  %i.ky = call i32 @llvm.umin.i32(i32 %i.kx, i32 255)
  %i.kz = fadd float %i.kt, 1.280000e+02
  %i.la = fadd float %i.kz, 5.000000e-01
  %i.lb = fptosi float %i.la to i32
  %i.lc = call i32 @llvm.smax.i32(i32 %i.lb, i32 0)
  %i.ld = call i32 @llvm.umin.i32(i32 %i.lc, i32 255)
  %.0.i21.sink.i.us.us = trunc nuw i32 %i.ky to i8
  store i8 %.0.i21.sink.i.us.us, ptr %i.kd, align 1, !tbaa !133
  %storemerge.i.us.us = trunc nuw i32 %i.ld to i8
  store i8 %storemerge.i.us.us, ptr %i.ke, align 1, !tbaa !133
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %exitcond522.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count521
  br i1 %exitcond522.not, label %._crit_edge435.split.us.us, label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit.us.us, !llvm.loop !420

._crit_edge435.split.us.us:                       ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit.us.us
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1 ; 2 uses
  %exitcond527.not = icmp eq i64 %indvars.iv.next524, %wide.trip.count526
  br i1 %exitcond527.not, label %.loopexit, label %.lr.ph434.us, !llvm.loop !421

bb.bg:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit335
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bh:                                            ; preds = %bb.bd
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.cb

.lr.ph:                                           ; preds = %.lr.ph401.split, %._crit_edge.split
  %indvars.iv465 = phi i64 [ %indvars.iv.next466, %._crit_edge.split ], [ 0, %.lr.ph401.split ] ; 3 uses
  %i.lg = mul nsw i64 %.0384, %indvars.iv465
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.lg
  %i.li = mul nsw i64 %.0386, %indvars.iv465
  %i.lj = getelementptr i8, ptr %.0.i.i, i64 %i.li
  br label %_Z10clip_f_u16fi.exit

._crit_edge.split:                                ; preds = %_Z10clip_f_u16fi.exit
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %exitcond469.not = icmp eq i64 %indvars.iv.next466, %wide.trip.count478
  br i1 %exitcond469.not, label %._crit_edge402.split, label %.lr.ph, !llvm.loop !419

_Z10clip_f_u16fi.exit:                            ; preds = %.lr.ph, %_Z10clip_f_u16fi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z10clip_f_u16fi.exit ] ; 2 uses
  %.0274397 = phi ptr [ %i.lh, %.lr.ph ], [ %i.lm, %_Z10clip_f_u16fi.exit ] ; 3 uses
  %i.lk = load i8, ptr %.0274397, align 1, !tbaa !133
  %i.ll = getelementptr inbounds nuw i8, ptr %.0274397, i64 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.0274397, i64 %i.id
  %i.ln = uitofp i8 %i.lk to float
  %i.lo = load float, ptr %i.ie, align 4, !tbaa !170
  %i.lp = load float, ptr %i.if, align 4, !tbaa !170
  %i.lq = load <2 x i8>, ptr %i.ll, align 1, !tbaa !133
  %i.lr = uitofp <2 x i8> %i.lq to <2 x float>    ; 2 uses
  %i.ls = extractelement <2 x float> %i.lr, i64 0
  %i.lt = fmul float %i.lp, %i.ls
  %i.lu = call float @llvm.fmuladd.f32(float %i.ln, float %i.lo, float %i.lt)
  %i.lv = load float, ptr %i.ig, align 4, !tbaa !170
  %i.lw = extractelement <2 x float> %i.lr, i64 1
  %i.lx = call float @llvm.fmuladd.f32(float %i.lw, float %i.lv, float %i.lu)
  %i.ly = fmul float %i.lx, 8.554700e-01
  %i.lz = fadd float %i.ly, 5.000000e-01
  %i.ma = fptosi float %i.lz to i32               ; 2 uses
  %i.mb = icmp slt i32 %i.ma, 0
  %spec.select389 = call i32 @llvm.umin.i32(i32 %i.ma, i32 219)
  %i.mc = trunc nuw i32 %spec.select389 to i8
  %i.md = add nuw i8 %i.mc, 16
  %i.me = select i1 %i.mb, i8 16, i8 %i.md
  %i.mf = getelementptr i8, ptr %i.lj, i64 %indvars.iv
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count473
  br i1 %exitcond.not, label %._crit_edge.split, label %_Z10clip_f_u16fi.exit, !llvm.loop !418

.lr.ph434:                                        ; preds = %.lr.ph437, %._crit_edge435.split
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %._crit_edge435.split ], [ 0, %.lr.ph437 ] ; 4 uses
  %i.mg = mul nsw i64 %.0384, %indvars.iv513
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.mg
  %i.mi = mul nsw i64 %.0382, %indvars.iv513
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.i.i323, i64 %i.mi
  %i.mk = mul nsw i64 %.0383, %indvars.iv513
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i.i328, i64 %i.mk
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit

._crit_edge435.split:                             ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count526
  br i1 %exitcond517.not, label %.loopexit, label %.lr.ph434, !llvm.loop !421

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit: ; preds = %.lr.ph434, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit
  %indvars.iv508 = phi i64 [ 0, %.lr.ph434 ], [ %indvars.iv.next509, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit ] ; 3 uses
  %.0271431 = phi ptr [ %i.mh, %.lr.ph434 ], [ %i.mn, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit ] ; 4 uses
  %17 = getelementptr inbounds nuw i8, ptr %.0271431, i64 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.0271431, i64 2
  %i.mn = getelementptr inbounds nuw i8, ptr %.0271431, i64 %i.jk
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 %indvars.iv508
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 %indvars.iv508
  %18 = load i8, ptr %17, align 1, !tbaa !133
  %19 = load i8, ptr %.0271431, align 1, !tbaa !133
  %i.mq = load i8, ptr %i.mm, align 1, !tbaa !133
  %i.mr = uitofp i8 %18 to float
  %20 = uitofp i8 %19 to float
  %21 = uitofp i8 %i.mq to float
  %i.ms = load <4 x float>, ptr %i.jl, align 4, !tbaa !170 ; 3 uses
  %i.mt = load <2 x float>, ptr %i.jp, align 4, !tbaa !170 ; 2 uses
  %i.mu = shufflevector <4 x float> %i.ms, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.mv = shufflevector <2 x float> %i.mt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.mw = shufflevector <4 x float> %i.ms, <4 x float> %i.mv, <2 x i32> <i32 1, i32 4>
  %22 = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.mx = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.my = fmul <2 x float> %i.mw, %i.mx
  %i.mz = insertelement <2 x float> poison, float %20, i64 0
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nb = shufflevector <4 x float> %i.ms, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.nc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.na, <2 x float> %i.nb, <2 x float> %i.my)
  %23 = insertelement <2 x float> poison, float %21, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nd = shufflevector <2 x float> %i.mu, <2 x float> %i.mt, <2 x i32> <i32 0, i32 3>
  %i.ne = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %i.nd, <2 x float> %i.nc)
  %i.nf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ne, <2 x float> splat (float 8.750000e-01), <2 x float> splat (float 1.280000e+02))
  %i.ng = fadd <2 x float> %i.nf, splat (float 5.000000e-01)
  %i.nh = fptosi <2 x float> %i.ng to <2 x i32>
  %i.ni = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.nh, <2 x i32> zeroinitializer)
  %i.nj = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ni, <2 x i32> splat (i32 255))
  %i.nk = trunc nuw <2 x i32> %i.nj to <2 x i8>   ; 2 uses
  %i.nl = extractelement <2 x i8> %i.nk, i64 0
  store i8 %i.nl, ptr %i.mo, align 1, !tbaa !133
  %i.nm = extractelement <2 x i8> %i.nk, i64 1
  store i8 %i.nm, ptr %i.mp, align 1, !tbaa !133
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next509, %wide.trip.count521
  br i1 %exitcond512.not, label %._crit_edge435.split, label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit, !llvm.loop !420

bb.bi:                                            ; preds = %._crit_edge402.split.thread563, %._crit_edge402.split.thread, %._crit_edge402.split
  %i.nn = phi i1 [ %i.jj, %._crit_edge402.split.thread ], [ %i.jf, %._crit_edge402.split ], [ %i.jh, %._crit_edge402.split.thread563 ]
  %i.no = icmp eq i8 %i.ak, 2                     ; 2 uses
  %i.np = icmp eq i8 %i.al, 2
  %or.cond6 = and i1 %i.no, %i.np
  br i1 %or.cond6, label %.preheader394, label %bb.ca

.preheader394:                                    ; preds = %bb.bi
  %i.nq = and i32 %i.e, -2                        ; 2 uses
  %.not452 = icmp eq i32 %i.nq, 0
  br i1 %.not452, label %._crit_edge419.split, label %.lr.ph418

.lr.ph418:                                        ; preds = %.preheader394
  %i.nr = and i32 %i.c, -2                        ; 2 uses
  %.not453 = icmp eq i32 %i.nr, 0
  %i.ns = zext nneg i32 %i.ic to i64              ; 2 uses
  %i.nt = shl nuw nsw i32 %i.ic, 1
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.nx = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ny = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.nz = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.oa = getelementptr inbounds nuw i8, ptr %15, i64 36
  br i1 %.not453, label %._crit_edge419.split, label %.lr.ph416.preheader

.lr.ph416.preheader:                              ; preds = %.lr.ph418
  %i.ob = zext i32 %i.nr to i64
  %i.oc = zext i32 %i.nq to i64
  br label %.lr.ph416

._crit_edge419.split:                             ; preds = %._crit_edge, %.lr.ph418, %.preheader394
  %i.od = and i32 %i.c, 1
  %.not = icmp eq i32 %i.od, 0
  br i1 %.not, label %.loopexit393, label %bb.bm

.lr.ph416:                                        ; preds = %.lr.ph416.preheader, %._crit_edge
  %indvars.iv499 = phi i64 [ 0, %.lr.ph416.preheader ], [ %indvars.iv.next500, %._crit_edge ] ; 3 uses
  %i.oe = mul nsw i64 %.0384, %indvars.iv499
  %i.of = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.oe
  %i.og = lshr exact i64 %indvars.iv499, 1        ; 2 uses
  %i.oh = mul nsw i64 %.0382, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i.i323, i64 %i.oh
  %i.oj = mul nsw i64 %.0383, %i.og
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i.i328, i64 %i.oj
  br label %bb.bj

._crit_edge:                                      ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 2 ; 2 uses
  %i.ol = icmp samesign ult i64 %indvars.iv.next500, %i.oc
  br i1 %i.ol, label %.lr.ph416, label %._crit_edge419.split, !llvm.loop !422

bb.bj:                                            ; preds = %.lr.ph416, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341
  %indvars.iv496 = phi i64 [ 0, %.lr.ph416 ], [ %indvars.iv.next497, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341 ] ; 2 uses
  %.0268414 = phi ptr [ %i.of, %.lr.ph416 ], [ %i.qk, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341 ] ; 6 uses
  %i.om = load i8, ptr %.0268414, align 1, !tbaa !133
  %i.on = zext i8 %i.om to i16
  %i.oo = getelementptr inbounds nuw i8, ptr %.0268414, i64 %i.ns ; 3 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !133
  %i.oq = zext i8 %i.op to i16
  %i.or = add nuw nsw i16 %i.oq, %i.on
  %i.os = getelementptr i8, ptr %.0268414, i64 %.0384 ; 4 uses
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !133
  %i.ou = zext i8 %i.ot to i16
  %i.ov = add nuw nsw i16 %i.or, %i.ou
  %i.ow = getelementptr i8, ptr %i.os, i64 %i.ns  ; 3 uses
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !133
  %i.oy = zext i8 %i.ox to i16
  %i.oz = add nuw nsw i16 %i.ov, %i.oy
  %i.pa = lshr i16 %i.oz, 2
  %i.pb = trunc nuw i16 %i.pa to i8
  %i.pc = getelementptr inbounds nuw i8, ptr %.0268414, i64 1
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !133
  %i.pe = zext i8 %i.pd to i16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oo, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !133
  %i.ph = zext i8 %i.pg to i16
  %i.pi = add nuw nsw i16 %i.ph, %i.pe
  %i.pj = getelementptr i8, ptr %i.os, i64 1
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !133
  %i.pl = zext i8 %i.pk to i16
  %i.pm = add nuw nsw i16 %i.pi, %i.pl
  %i.pn = getelementptr i8, ptr %i.ow, i64 1
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !133
  %i.pp = zext i8 %i.po to i16
  %i.pq = add nuw nsw i16 %i.pm, %i.pp
  %i.pr = lshr i16 %i.pq, 2
  %i.ps = trunc nuw i16 %i.pr to i8
  %i.pt = getelementptr inbounds nuw i8, ptr %.0268414, i64 2
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !133
  %i.pv = zext i8 %i.pu to i16
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oo, i64 2
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !133
  %i.py = zext i8 %i.px to i16
  %i.pz = add nuw nsw i16 %i.py, %i.pv
  %i.qa = getelementptr i8, ptr %i.os, i64 2
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !133
  %i.qc = zext i8 %i.qb to i16
  %i.qd = add nuw nsw i16 %i.pz, %i.qc
  %i.qe = getelementptr i8, ptr %i.ow, i64 2
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !133
  %i.qg = zext i8 %i.qf to i16
  %i.qh = add nuw nsw i16 %i.qd, %i.qg
  %i.qi = lshr i16 %i.qh, 2
  %i.qj = trunc nuw i16 %i.qi to i8
  %i.qk = getelementptr inbounds nuw i8, ptr %.0268414, i64 %i.nu
  %i.ql = lshr exact i64 %indvars.iv496, 1        ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ql
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.ql
  %i.qo = uitofp i8 %i.pb to float                ; 2 uses
  %i.qp = load float, ptr %i.nv, align 4, !tbaa !170
  %i.qq = uitofp i8 %i.ps to float                ; 2 uses
  %i.qr = load float, ptr %i.nw, align 4, !tbaa !170
  %i.qs = fmul float %i.qr, %i.qq
  %i.qt = call float @llvm.fmuladd.f32(float %i.qo, float %i.qp, float %i.qs)
  %i.qu = uitofp i8 %i.qj to float                ; 2 uses
  %i.qv = load float, ptr %i.nx, align 4, !tbaa !170
  %i.qw = call float @llvm.fmuladd.f32(float %i.qu, float %i.qv, float %i.qt) ; 2 uses
  %i.qx = load float, ptr %i.ny, align 4, !tbaa !170
  %i.qy = load float, ptr %i.nz, align 4, !tbaa !170
  %i.qz = fmul float %i.qy, %i.qq
  %i.ra = call float @llvm.fmuladd.f32(float %i.qo, float %i.qx, float %i.qz)
  %i.rb = load float, ptr %i.oa, align 4, !tbaa !170
  %i.rc = call float @llvm.fmuladd.f32(float %i.qu, float %i.rb, float %i.ra) ; 2 uses
  br i1 %i.hy, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.rd = fadd float %i.qw, 1.280000e+02
  %i.re = fadd float %i.rd, 5.000000e-01
  %i.rf = fptosi float %i.re to i32
  %i.rg = call i32 @llvm.smax.i32(i32 %i.rf, i32 0)
  %i.rh = call i32 @llvm.umin.i32(i32 %i.rg, i32 255)
  %i.ri = fadd float %i.rc, 1.280000e+02
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341

bb.bl:                                            ; preds = %bb.bj
  %i.rj = call float @llvm.fmuladd.f32(float %i.qw, float 8.750000e-01, float 1.280000e+02)
  %i.rk = fadd float %i.rj, 5.000000e-01
  %i.rl = fptosi float %i.rk to i32
  %i.rm = call i32 @llvm.smax.i32(i32 %i.rl, i32 0)
  %i.rn = call i32 @llvm.umin.i32(i32 %i.rm, i32 255)
  %i.ro = call float @llvm.fmuladd.f32(float %i.rc, float 8.750000e-01, float 1.280000e+02)
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341: ; preds = %bb.bk, %bb.bl
  %.sink24.i337 = phi float [ %i.ro, %bb.bl ], [ %i.ri, %bb.bk ]
  %.0.i21.sink.in.i338 = phi i32 [ %i.rn, %bb.bl ], [ %i.rh, %bb.bk ]
  %i.rp = fadd float %.sink24.i337, 5.000000e-01
  %i.rq = fptosi float %i.rp to i32
  %i.rr = call i32 @llvm.smax.i32(i32 %i.rq, i32 0)
  %i.rs = call i32 @llvm.umin.i32(i32 %i.rr, i32 255)
  %.0.i21.sink.i339 = trunc nuw i32 %.0.i21.sink.in.i338 to i8
  store i8 %.0.i21.sink.i339, ptr %i.qm, align 1, !tbaa !133
  %storemerge.i340 = trunc nuw i32 %i.rs to i8
  store i8 %storemerge.i340, ptr %i.qn, align 1, !tbaa !133
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 2 ; 2 uses
  %i.rt = icmp samesign ult i64 %indvars.iv.next497, %i.ob
  br i1 %i.rt, label %bb.bj, label %._crit_edge, !llvm.loop !423

bb.bm:                                            ; preds = %._crit_edge419.split
  br i1 %.not449, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.lr.ph423

.lr.ph423:                                        ; preds = %bb.bm
  %i.ru = mul i32 %i.ic, %i.ao
  %i.rv = zext i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.rv
  %i.rx = lshr exact i32 %i.ao, 1
  %i.ry = zext nneg i32 %i.rx to i64              ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.0.i.i323, i64 %i.ry
  %invariant.gep424 = getelementptr i8, ptr %.0.i.i328, i64 %i.ry
  %i.rz = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.sa = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.sb = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.sc = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.sd = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.se = getelementptr inbounds nuw i8, ptr %15, i64 36
  %i.sf = shl nsw i64 %.0384, 1
  %i.sg = zext i32 %i.as to i64
  %i.sh = zext i32 %i.e to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph423, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit346
  %indvars.iv502 = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next503, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit346 ] ; 3 uses
  %.0254420 = phi ptr [ %i.rw, %.lr.ph423 ], [ %i.uv, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit346 ] ; 7 uses
  %i.si = icmp samesign ult i64 %indvars.iv502, %i.sg
  %i.sj = load i8, ptr %.0254420, align 1, !tbaa !133 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK20Op_RGB24_32_to_YCbCr18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
bb.bu:                                            ; preds = %.lr.ph430, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351
  %indvars.iv505 = phi i64 [ 0, %.lr.ph430 ], [ %indvars.iv.next506, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351 ] ; 3 uses
  %.0249427 = phi ptr [ %i.va, %.lr.ph430 ], [ %i.yf, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351 ] ; 7 uses
  %i.vs = icmp samesign ult i64 %indvars.iv505, %i.vq
  %i.vt = load i8, ptr %.0249427, align 1, !tbaa !133 ; 2 uses
  br i1 %i.vs, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.vu = zext i8 %i.vt to i16
  %i.vv = getelementptr inbounds nuw i8, ptr %.0249427, i64 %i.vb ; 3 uses
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !133
  %i.vx = zext i8 %i.vw to i16
  %i.vy = add nuw nsw i16 %i.vx, %i.vu
  %i.vz = lshr i16 %i.vy, 1
  %i.wa = trunc nuw i16 %i.vz to i8
  %i.wb = getelementptr inbounds nuw i8, ptr %.0249427, i64 1
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !133
  %i.wd = zext i8 %i.wc to i16
  %i.we = getelementptr inbounds nuw i8, ptr %i.vv, i64 1
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !133
  %i.wg = zext i8 %i.wf to i16
  %i.wh = add nuw nsw i16 %i.wg, %i.wd
  %i.wi = lshr i16 %i.wh, 1
  %i.wj = trunc nuw i16 %i.wi to i8
  %i.wk = getelementptr inbounds nuw i8, ptr %.0249427, i64 2
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !133
  %i.wm = zext i8 %i.wl to i16
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vv, i64 2
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !133
  %i.wp = zext i8 %i.wo to i16
  %i.wq = add nuw nsw i16 %i.wp, %i.wm
  %i.wr = lshr i16 %i.wq, 1
  %i.ws = trunc nuw i16 %i.wr to i8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.wt = getelementptr inbounds nuw i8, ptr %.0249427, i64 1
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !133
  %i.wv = getelementptr inbounds nuw i8, ptr %.0249427, i64 2
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !133
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0247 = phi i8 [ %i.wa, %bb.bv ], [ %i.vt, %bb.bw ]
  %.0246 = phi i8 [ %i.wj, %bb.bv ], [ %i.wu, %bb.bw ]
  %.0245 = phi i8 [ %i.ws, %bb.bv ], [ %i.ww, %bb.bw ]
  %i.wx = lshr exact i64 %indvars.iv505, 1        ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.wx
  %i.xa = uitofp i8 %.0247 to float               ; 2 uses
  %i.xb = load float, ptr %i.vi, align 4, !tbaa !170
  %i.xc = uitofp i8 %.0246 to float               ; 2 uses
  %i.xd = load float, ptr %i.vj, align 4, !tbaa !170
  %i.xe = fmul float %i.xd, %i.xc
  %i.xf = call float @llvm.fmuladd.f32(float %i.xa, float %i.xb, float %i.xe)
  %i.xg = uitofp i8 %.0245 to float               ; 2 uses
  %i.xh = load float, ptr %i.vk, align 4, !tbaa !170
  %i.xi = call float @llvm.fmuladd.f32(float %i.xg, float %i.xh, float %i.xf) ; 2 uses
  %i.xj = load float, ptr %i.vl, align 4, !tbaa !170
  %i.xk = load float, ptr %i.vm, align 4, !tbaa !170
  %i.xl = fmul float %i.xk, %i.xc
  %i.xm = call float @llvm.fmuladd.f32(float %i.xa, float %i.xj, float %i.xl)
  %i.xn = load float, ptr %i.vn, align 4, !tbaa !170
  %i.xo = call float @llvm.fmuladd.f32(float %i.xg, float %i.xn, float %i.xm) ; 2 uses
  br i1 %i.hy, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.xp = fadd float %i.xi, 1.280000e+02
  %i.xq = fadd float %i.xp, 5.000000e-01
  %i.xr = fptosi float %i.xq to i32
  %i.xs = call i32 @llvm.smax.i32(i32 %i.xr, i32 0)
  %i.xt = call i32 @llvm.umin.i32(i32 %i.xs, i32 255)
  %i.xu = fadd float %i.xo, 1.280000e+02
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351

bb.bz:                                            ; preds = %bb.bx
  %i.xv = call float @llvm.fmuladd.f32(float %i.xi, float 8.750000e-01, float 1.280000e+02)
  %i.xw = fadd float %i.xv, 5.000000e-01
  %i.xx = fptosi float %i.xw to i32
  %i.xy = call i32 @llvm.smax.i32(i32 %i.xx, i32 0)
  %i.xz = call i32 @llvm.umin.i32(i32 %i.xy, i32 255)
  %i.ya = call float @llvm.fmuladd.f32(float %i.xo, float 8.750000e-01, float 1.280000e+02)
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351: ; preds = %bb.by, %bb.bz
  %.sink24.i347 = phi float [ %i.ya, %bb.bz ], [ %i.xu, %bb.by ]
  %.0.i21.sink.in.i348 = phi i32 [ %i.xz, %bb.bz ], [ %i.xt, %bb.by ]
  %i.yb = fadd float %.sink24.i347, 5.000000e-01
  %i.yc = fptosi float %i.yb to i32
  %i.yd = call i32 @llvm.smax.i32(i32 %i.yc, i32 0)
  %i.ye = call i32 @llvm.umin.i32(i32 %i.yd, i32 255)
  %.0.i21.sink.i349 = trunc nuw i32 %.0.i21.sink.in.i348 to i8
  store i8 %.0.i21.sink.i349, ptr %i.wy, align 1, !tbaa !133
  %storemerge.i350 = trunc nuw i32 %i.ye to i8
  store i8 %storemerge.i350, ptr %i.wz, align 1, !tbaa !133
  %i.yf = getelementptr inbounds nuw i8, ptr %.0249427, i64 %i.vp
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 2 ; 2 uses
  %i.yg = icmp samesign ult i64 %indvars.iv.next506, %i.vr
  br i1 %i.yg, label %bb.bu, label %.loopexit, !llvm.loop !425

bb.ca:                                            ; preds = %bb.bi
  %or.cond9 = and i1 %i.no, %i.nn
  %i.yh = icmp ne i32 %i.e, 0
  %or.cond446 = select i1 %or.cond9, i1 %i.yh, i1 false
  br i1 %or.cond446, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %bb.ca
  %.not451 = icmp eq i32 %i.c, 0
  %i.yi = shl nuw nsw i32 %i.ic, 1
  %i.yj = zext nneg i32 %i.yi to i64              ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.ym = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.yn = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.yo = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %15, i64 36
  br i1 %.not451, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.lr.ph411.split

.lr.ph411.split:                                  ; preds = %.lr.ph411
  %i.yq = zext i32 %i.c to i64                    ; 2 uses
  %wide.trip.count494 = zext i32 %i.e to i64      ; 2 uses
  br i1 %i.hy, label %.lr.ph407.us, label %.lr.ph407

.lr.ph407.us:                                     ; preds = %.lr.ph411.split, %._crit_edge.split409.us.us
  %indvars.iv491 = phi i64 [ %indvars.iv.next492, %._crit_edge.split409.us.us ], [ 0, %.lr.ph411.split ] ; 4 uses
  %i.yr = mul nsw i64 %.0384, %indvars.iv491
  %i.ys = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.yr
  %i.yt = mul nsw i64 %.0382, %indvars.iv491
  %i.yu = getelementptr inbounds nuw i8, ptr %.0.i.i323, i64 %i.yt
  %i.yv = mul nsw i64 %.0383, %indvars.iv491
  %i.yw = getelementptr inbounds nuw i8, ptr %.0.i.i328, i64 %i.yv
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us: ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us, %.lr.ph407.us
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us ], [ 0, %.lr.ph407.us ] ; 2 uses
  %.0243405.us.us = phi ptr [ %i.zc, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us ], [ %i.ys, %.lr.ph407.us ] ; 4 uses
  %i.yx = load i8, ptr %.0243405.us.us, align 1, !tbaa !133
  %i.yy = getelementptr inbounds nuw i8, ptr %.0243405.us.us, i64 1
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !133
  %i.za = getelementptr inbounds nuw i8, ptr %.0243405.us.us, i64 2
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !133
  %i.zc = getelementptr inbounds nuw i8, ptr %.0243405.us.us, i64 %i.yj
  %i.zd = lshr exact i64 %indvars.iv488, 1        ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yu, i64 %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.zd
  %i.zg = uitofp i8 %i.yx to float                ; 2 uses
  %i.zh = load float, ptr %i.yk, align 4, !tbaa !170
  %i.zi = uitofp i8 %i.yz to float                ; 2 uses
  %i.zj = load float, ptr %i.yl, align 4, !tbaa !170
  %i.zk = fmul float %i.zj, %i.zi
  %i.zl = call float @llvm.fmuladd.f32(float %i.zg, float %i.zh, float %i.zk)
  %i.zm = uitofp i8 %i.zb to float                ; 2 uses
  %i.zn = load float, ptr %i.ym, align 4, !tbaa !170
  %i.zo = call float @llvm.fmuladd.f32(float %i.zm, float %i.zn, float %i.zl)
  %i.zp = load float, ptr %i.yn, align 4, !tbaa !170
  %i.zq = load float, ptr %i.yo, align 4, !tbaa !170
  %i.zr = fmul float %i.zq, %i.zi
  %i.zs = call float @llvm.fmuladd.f32(float %i.zg, float %i.zp, float %i.zr)
  %i.zt = load float, ptr %i.yp, align 4, !tbaa !170
  %i.zu = call float @llvm.fmuladd.f32(float %i.zm, float %i.zt, float %i.zs)
  %i.zv = fadd float %i.zo, 1.280000e+02
  %i.zw = fadd float %i.zv, 5.000000e-01
  %i.zx = fptosi float %i.zw to i32
  %i.zy = call i32 @llvm.smax.i32(i32 %i.zx, i32 0)
  %i.zz = call i32 @llvm.umin.i32(i32 %i.zy, i32 255)
  %i.aaa = fadd float %i.zu, 1.280000e+02
  %i.aab = fadd float %i.aaa, 5.000000e-01
  %i.aac = fptosi float %i.aab to i32
  %i.aad = call i32 @llvm.smax.i32(i32 %i.aac, i32 0)
  %i.aae = call i32 @llvm.umin.i32(i32 %i.aad, i32 255)
  %.0.i21.sink.i354.us.us = trunc nuw i32 %i.zz to i8
  store i8 %.0.i21.sink.i354.us.us, ptr %i.ze, align 1, !tbaa !133
  %storemerge.i355.us.us = trunc nuw i32 %i.aae to i8
  store i8 %storemerge.i355.us.us, ptr %i.zf, align 1, !tbaa !133
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 2 ; 2 uses
  %i.aaf = icmp samesign ult i64 %indvars.iv.next489, %i.yq
  br i1 %i.aaf, label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us, label %._crit_edge.split409.us.us, !llvm.loop !426

._crit_edge.split409.us.us:                       ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count494
  br i1 %exitcond495.not, label %.loopexit, label %.lr.ph407.us, !llvm.loop !427

.lr.ph407:                                        ; preds = %.lr.ph411.split, %._crit_edge.split409
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %._crit_edge.split409 ], [ 0, %.lr.ph411.split ] ; 4 uses
  %i.aag = mul nsw i64 %.0384, %indvars.iv483
  %i.aah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.aag
  %i.aai = mul nsw i64 %.0382, %indvars.iv483
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0.i.i323, i64 %i.aai
  %i.aak = mul nsw i64 %.0383, %indvars.iv483
  %i.aal = getelementptr inbounds nuw i8, ptr %.0.i.i328, i64 %i.aak
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356

._crit_edge.split409:                             ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond487.not = icmp eq i64 %indvars.iv.next484, %wide.trip.count494
  br i1 %exitcond487.not, label %.loopexit, label %.lr.ph407, !llvm.loop !427

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356: ; preds = %.lr.ph407, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356
  %indvars.iv480 = phi i64 [ 0, %.lr.ph407 ], [ %indvars.iv.next481, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356 ] ; 2 uses
  %.0243405 = phi ptr [ %i.aah, %.lr.ph407 ], [ %i.aan, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356 ] ; 4 uses
  %25 = getelementptr inbounds nuw i8, ptr %.0243405, i64 1
  %i.aam = getelementptr inbounds nuw i8, ptr %.0243405, i64 2
  %i.aan = getelementptr inbounds nuw i8, ptr %.0243405, i64 %i.yj
  %i.aao = lshr exact i64 %indvars.iv480, 1       ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.aao
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aao
  %26 = load i8, ptr %25, align 1, !tbaa !133
  %27 = load i8, ptr %.0243405, align 1, !tbaa !133
  %i.aar = load i8, ptr %i.aam, align 1, !tbaa !133
  %i.aas = uitofp i8 %26 to float
  %28 = uitofp i8 %27 to float
  %29 = uitofp i8 %i.aar to float
  %i.aat = load <4 x float>, ptr %i.yk, align 4, !tbaa !170 ; 3 uses
  %i.aau = load <2 x float>, ptr %i.yo, align 4, !tbaa !170 ; 2 uses
  %i.aav = shufflevector <4 x float> %i.aat, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.aaw = shufflevector <2 x float> %i.aau, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aax = shufflevector <4 x float> %i.aat, <4 x float> %i.aaw, <2 x i32> <i32 1, i32 4>
  %30 = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.aay = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaz = fmul <2 x float> %i.aax, %i.aay
  %i.aba = insertelement <2 x float> poison, float %28, i64 0
  %i.abb = shufflevector <2 x float> %i.aba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abc = shufflevector <4 x float> %i.aat, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.abd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abb, <2 x float> %i.abc, <2 x float> %i.aaz)
  %31 = insertelement <2 x float> poison, float %29, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abe = shufflevector <2 x float> %i.aav, <2 x float> %i.aau, <2 x i32> <i32 0, i32 3>
  %i.abf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %i.abe, <2 x float> %i.abd)
  %i.abg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abf, <2 x float> splat (float 8.750000e-01), <2 x float> splat (float 1.280000e+02))
  %i.abh = fadd <2 x float> %i.abg, splat (float 5.000000e-01)
  %i.abi = fptosi <2 x float> %i.abh to <2 x i32>
  %i.abj = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.abi, <2 x i32> zeroinitializer)
  %i.abk = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.abj, <2 x i32> splat (i32 255))
  %i.abl = trunc nuw <2 x i32> %i.abk to <2 x i8> ; 2 uses
  %i.abm = extractelement <2 x i8> %i.abl, i64 0
  store i8 %i.abm, ptr %i.aap, align 1, !tbaa !133
  %i.abn = extractelement <2 x i8> %i.abl, i64 1
  store i8 %i.abn, ptr %i.aaq, align 1, !tbaa !133
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 2 ; 2 uses
  %i.abo = icmp samesign ult i64 %indvars.iv.next481, %i.yq
  br i1 %i.abo, label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356, label %._crit_edge.split409, !llvm.loop !426

.loopexit:                                        ; preds = %._crit_edge435.split, %._crit_edge435.split.us.us, %._crit_edge.split409, %._crit_edge.split409.us.us, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351, %.loopexit393, %bb.ca
  %i.abp = icmp ne i32 %i.e, 0
  %or.cond447 = select i1 %i.bb, i1 %i.abp, i1 false
  %i.abq = icmp ne i32 %i.c, 0
  %or.cond448 = select i1 %or.cond447, i1 %i.abq, i1 false
  br i1 %or.cond448, label %.preheader.lr.ph.split, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit

.preheader.lr.ph.split:                           ; preds = %.loopexit
  br i1 %i.ay, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.abr = zext i32 %i.c to i64                   ; 9 uses
  %wide.trip.count534 = zext i32 %i.e to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count534, 7      ; 3 uses
  %i.abs = icmp ult i32 %i.e, 8
  br i1 %i.abs, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count534, 4294967288
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count544 = zext i32 %i.e to i64      ; 2 uses
  %wide.trip.count539 = zext i32 %i.c to i64      ; 9 uses
  %i.abt = add nsw i64 %wide.trip.count544, -1    ; 2 uses
  %i.abu = mul i64 %.0385, %i.abt
  %i.abv = getelementptr i8, ptr %.0276, i64 %i.abu
  %scevgep = getelementptr i8, ptr %i.abv, i64 %wide.trip.count539
  %scevgep592 = getelementptr i8, ptr %.0.i.i.i, i64 3
  %i.abw = mul i64 %.0384, %i.abt
  %i.abx = shl nuw nsw i64 %wide.trip.count539, 2
  %i.aby = getelementptr i8, ptr %.0.i.i.i, i64 %i.abw
  %scevgep593 = getelementptr i8, ptr %i.aby, i64 %i.abx
  %i.abz = add i32 %i.c, -1073741825
  %or.cond600 = icmp ult i32 %i.abz, -1073741816
  %bound0 = icmp ult ptr %.0276, %scevgep593
  %bound1 = icmp ult ptr %scevgep592, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.aca = or i64 %.0384, %.0385
  %i.acb = icmp slt i64 %i.aca, 0
  %i.acc = or i1 %found.conflict, %i.acb
  %min.iters.check595 = icmp ult i32 %i.c, 17
  %i.acd = and i64 %wide.trip.count539, 15        ; 2 uses
  %i.ace = icmp eq i64 %i.acd, 0
  %i.acf = select i1 %i.ace, i64 16, i64 %i.acd   ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count539, %i.acf ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.acf, 9
  %i.acg = and i64 %wide.trip.count539, 7         ; 2 uses
  %i.ach = icmp eq i64 %i.acg, 0
  %i.aci = select i1 %i.ach, i64 8, i64 %i.acg
  %n.vec596 = sub nsw i64 %wide.trip.count539, %i.aci ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %._crit_edge442.split.us.us
  %indvars.iv541 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next542, %._crit_edge442.split.us.us ] ; 3 uses
  %i.acj = mul nsw i64 %.0384, %indvars.iv541
  %i.ack = getelementptr i8, ptr %.0.i.i.i, i64 %i.acj ; 29 uses
  %i.acl = mul nsw i64 %.0385, %indvars.iv541
  %i.acm = getelementptr i8, ptr %.0276, i64 %i.acl ; 7 uses
  %brmerge = select i1 %or.cond600, i1 true, i1 %i.acc
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check595, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 18 uses
  %i.acn = shl i64 %index, 2
  %i.aco = shl i64 %index, 2
  %i.acp = shl i64 %index, 2
  %i.acq = shl i64 %index, 2
  %i.acr = shl i64 %index, 2
  %i.acs = shl i64 %index, 2
  %i.act = shl i64 %index, 2
  %i.acu = shl i64 %index, 2
  %i.acv = shl i64 %index, 2
  %i.acw = shl i64 %index, 2
  %i.acx = shl i64 %index, 2
  %i.acy = shl i64 %index, 2
  %i.acz = shl i64 %index, 2
  %i.ada = shl i64 %index, 2
  %i.adb = shl i64 %index, 2
  %i.adc = shl i64 %index, 2
  %i.add = and i64 %i.acn, 4294967232
  %i.ade = and i64 %i.aco, 4294967232
  %i.adf = and i64 %i.acp, 4294967232
  %i.adg = and i64 %i.acq, 4294967232
  %i.adh = and i64 %i.acr, 4294967232
  %i.adi = and i64 %i.acs, 4294967232
  %i.adj = and i64 %i.act, 4294967232
  %i.adk = and i64 %i.acu, 4294967232
  %i.adl = and i64 %i.acv, 4294967232
  %i.adm = and i64 %i.acw, 4294967232
  %i.adn = and i64 %i.acx, 4294967232
  %i.ado = and i64 %i.acy, 4294967232
  %i.adp = and i64 %i.acz, 4294967232
  %i.adq = and i64 %i.ada, 4294967232
  %i.adr = and i64 %i.adb, 4294967232
  %i.ads = and i64 %i.adc, 4294967232
  %i.adt = getelementptr i8, ptr %i.ack, i64 %i.add
  %i.adu = getelementptr i8, ptr %i.ack, i64 %i.ade
  %i.adv = getelementptr i8, ptr %i.ack, i64 %i.adf
  %i.adw = getelementptr i8, ptr %i.ack, i64 %i.adg
  %i.adx = getelementptr i8, ptr %i.ack, i64 %i.adh
  %i.ady = getelementptr i8, ptr %i.ack, i64 %i.adi
  %i.adz = getelementptr i8, ptr %i.ack, i64 %i.adj
  %i.aea = getelementptr i8, ptr %i.ack, i64 %i.adk
  %i.aeb = getelementptr i8, ptr %i.ack, i64 %i.adl
  %i.aec = getelementptr i8, ptr %i.ack, i64 %i.adm
  %i.aed = getelementptr i8, ptr %i.ack, i64 %i.adn
  %i.aee = getelementptr i8, ptr %i.ack, i64 %i.ado
  %i.aef = getelementptr i8, ptr %i.ack, i64 %i.adp
  %i.aeg = getelementptr i8, ptr %i.ack, i64 %i.adq
  %i.aeh = getelementptr i8, ptr %i.ack, i64 %i.adr
  %i.aei = getelementptr i8, ptr %i.ack, i64 %i.ads
  %i.aej = getelementptr i8, ptr %i.adt, i64 3
  %i.aek = getelementptr i8, ptr %i.adu, i64 7
  %i.ael = getelementptr i8, ptr %i.adv, i64 11
  %i.aem = getelementptr i8, ptr %i.adw, i64 15
  %i.aen = getelementptr i8, ptr %i.adx, i64 19
  %i.aeo = getelementptr i8, ptr %i.ady, i64 23
  %i.aep = getelementptr i8, ptr %i.adz, i64 27
  %i.aeq = getelementptr i8, ptr %i.aea, i64 31
  %i.aer = getelementptr i8, ptr %i.aeb, i64 35
  %i.aes = getelementptr i8, ptr %i.aec, i64 39
  %i.aet = getelementptr i8, ptr %i.aed, i64 43
  %i.aeu = getelementptr i8, ptr %i.aee, i64 47
  %i.aev = getelementptr i8, ptr %i.aef, i64 51
  %i.aew = getelementptr i8, ptr %i.aeg, i64 55
  %i.aex = getelementptr i8, ptr %i.aeh, i64 59
  %i.aey = getelementptr i8, ptr %i.aei, i64 63
  %i.aez = load i8, ptr %i.aej, align 1, !tbaa !133, !alias.scope !444
  %i.afa = load i8, ptr %i.aek, align 1, !tbaa !133, !alias.scope !444
  %i.afb = load i8, ptr %i.ael, align 1, !tbaa !133, !alias.scope !444
  %i.afc = load i8, ptr %i.aem, align 1, !tbaa !133, !alias.scope !444
  %i.afd = load i8, ptr %i.aen, align 1, !tbaa !133, !alias.scope !444
  %i.afe = load i8, ptr %i.aeo, align 1, !tbaa !133, !alias.scope !444
  %i.aff = load i8, ptr %i.aep, align 1, !tbaa !133, !alias.scope !444
  %i.afg = load i8, ptr %i.aeq, align 1, !tbaa !133, !alias.scope !444
  %i.afh = load i8, ptr %i.aer, align 1, !tbaa !133, !alias.scope !444
  %i.afi = load i8, ptr %i.aes, align 1, !tbaa !133, !alias.scope !444
  %i.afj = load i8, ptr %i.aet, align 1, !tbaa !133, !alias.scope !444
  %i.afk = load i8, ptr %i.aeu, align 1, !tbaa !133, !alias.scope !444
  %i.afl = load i8, ptr %i.aev, align 1, !tbaa !133, !alias.scope !444
  %i.afm = load i8, ptr %i.aew, align 1, !tbaa !133, !alias.scope !444
  %i.afn = load i8, ptr %i.aex, align 1, !tbaa !133, !alias.scope !444
  %i.afo = load i8, ptr %i.aey, align 1, !tbaa !133, !alias.scope !444
  %i.afp = insertelement <16 x i8> poison, i8 %i.aez, i64 0
  %i.afq = insertelement <16 x i8> %i.afp, i8 %i.afa, i64 1
  %i.afr = insertelement <16 x i8> %i.afq, i8 %i.afb, i64 2
  %i.afs = insertelement <16 x i8> %i.afr, i8 %i.afc, i64 3
  %i.aft = insertelement <16 x i8> %i.afs, i8 %i.afd, i64 4
  %i.afu = insertelement <16 x i8> %i.aft, i8 %i.afe, i64 5
  %i.afv = insertelement <16 x i8> %i.afu, i8 %i.aff, i64 6
  %i.afw = insertelement <16 x i8> %i.afv, i8 %i.afg, i64 7
  %i.afx = insertelement <16 x i8> %i.afw, i8 %i.afh, i64 8
  %i.afy = insertelement <16 x i8> %i.afx, i8 %i.afi, i64 9
  %i.afz = insertelement <16 x i8> %i.afy, i8 %i.afj, i64 10
  %i.aga = insertelement <16 x i8> %i.afz, i8 %i.afk, i64 11
  %i.agb = insertelement <16 x i8> %i.aga, i8 %i.afl, i64 12
  %i.agc = insertelement <16 x i8> %i.agb, i8 %i.afm, i64 13
  %i.agd = insertelement <16 x i8> %i.agc, i8 %i.afn, i64 14
  %i.age = insertelement <16 x i8> %i.agd, i8 %i.afo, i64 15
  %i.agf = getelementptr i8, ptr %i.acm, i64 %index
  store <16 x i8> %i.age, ptr %i.agf, align 1, !tbaa !133, !alias.scope !445, !noalias !444
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.agg = icmp eq i64 %index.next, %n.vec
  br i1 %i.agg, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !431

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !446

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index597 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next598, %vec.epilog.vector.body ] ; 10 uses
  %i.agh = shl i64 %index597, 2
  %i.agi = shl i64 %index597, 2
  %i.agj = add i64 %i.agi, 4
  %i.agk = shl i64 %index597, 2
  %i.agl = add i64 %i.agk, 8
  %i.agm = shl i64 %index597, 2
  %i.agn = add i64 %i.agm, 12
  %i.ago = shl i64 %index597, 2
end_hunk_1
