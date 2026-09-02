Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rgb2yuv?download=true
inline.NumInlined: 784
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK20Op_RGB24_32_to_YCbCr18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
          to label %.noexc319 unwind label %bb.bc ; 3 uses

.noexc319:                                        ; preds = %bb.av
  %.not.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.aw

bb.aw:                                            ; preds = %.noexc319
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 80
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !160
  %sext.i.i.i = shl i64 %i.gs, 32
  %i.gt = ashr exact i64 %sext.i.i.i, 32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !161
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.aw, %.noexc319
  %.0384 = phi i64 [ %i.gt, %bb.aw ], [ 0, %.noexc319 ] ; 14 uses
  %.0.i.i.i = phi ptr [ %i.gv, %bb.aw ], [ null, %.noexc319 ] ; 12 uses
  %i.gw = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.am, i32 noundef 0)
          to label %.noexc320 unwind label %bb.bc ; 3 uses

.noexc320:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.ax

bb.ax:                                            ; preds = %.noexc320
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 80
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !160
  %sext.i.i = shl i64 %i.gy, 32
  %i.gz = ashr exact i64 %sext.i.i, 32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !161
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.ax, %.noexc320
  %.0386 = phi i64 [ %i.gz, %bb.ax ], [ 0, %.noexc320 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.hb, %bb.ax ], [ null, %.noexc320 ] ; 2 uses
  %i.hc = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.am, i32 noundef 1)
          to label %.noexc324 unwind label %bb.bc ; 3 uses

.noexc324:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i321 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i321, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit325, label %bb.ay

bb.ay:                                            ; preds = %.noexc324
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !160
  %sext.i.i322 = shl i64 %i.he, 32
  %i.hf = ashr exact i64 %sext.i.i322, 32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !161
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit325

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit325: ; preds = %bb.ay, %.noexc324
  %.0382 = phi i64 [ %i.hf, %bb.ay ], [ 0, %.noexc324 ] ; 7 uses
  %.0.i.i323 = phi ptr [ %i.hh, %bb.ay ], [ null, %.noexc324 ] ; 7 uses
  %i.hi = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.am, i32 noundef 2)
          to label %.noexc329 unwind label %bb.bc ; 3 uses

.noexc329:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit325
  %.not.i.i326 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i326, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit330, label %bb.az

bb.az:                                            ; preds = %.noexc329
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 80
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !160
  %sext.i.i327 = shl i64 %i.hk, 32
  %i.hl = ashr exact i64 %sext.i.i327, 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 56
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !161
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit330

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit330: ; preds = %bb.az, %.noexc329
  %.0383 = phi i64 [ %i.hl, %bb.az ], [ 0, %.noexc329 ] ; 7 uses
  %.0.i.i328 = phi ptr [ %i.hn, %bb.az ], [ null, %.noexc329 ] ; 7 uses
  br i1 %i.bb, label %bb.ba, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit335

bb.ba:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit330
  %i.ho = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.am, i32 noundef 6)
          to label %.noexc334 unwind label %bb.bc ; 3 uses

.noexc334:                                        ; preds = %bb.ba
  %.not.i.i331 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i331, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit335, label %bb.bb

bb.bb:                                            ; preds = %.noexc334
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !160
  %sext.i.i332 = shl i64 %i.hq, 32
  %i.hr = ashr exact i64 %sext.i.i332, 32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !161
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit335

bb.bc:                                            ; preds = %bb.ba, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit325, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.av
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit335: ; preds = %bb.bb, %.noexc334, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit330
  %.0385 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit330 ], [ %i.hr, %bb.bb ], [ 0, %.noexc334 ] ; 12 uses
  %.0276 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit330 ], [ %i.ht, %bb.bb ], [ null, %.noexc334 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZN25RGB_to_YCbCr_coefficients8defaultsEv(ptr dead_on_unwind nonnull writable sret(%struct.RGB_to_YCbCr_coefficients) align 4 %15)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit335
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.hx = load i8, ptr %i.hw, align 2, !tbaa !162, !range !20, !noundef !21
  %i.hy = trunc nuw i8 %i.hx to i1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ia = load i16, ptr %i.hz, align 4, !tbaa !23
  %i.ib = load i16, ptr %i.hv, align 4, !tbaa !163
  invoke void @_Z29get_RGB_to_YCbCr_coefficientstt(ptr dead_on_unwind nonnull writable sret(%struct.RGB_to_YCbCr_coefficients) align 4 %16, i16 noundef zeroext %i.ia, i16 noundef zeroext %i.ib)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %15, ptr noundef nonnull align 4 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !164
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.ic = select i1 %i.ay, i32 4, i32 3           ; 8 uses
  %.not449 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %.not449, label %._crit_edge402.split.thread563, label %.lr.ph401

.lr.ph401:                                        ; preds = %bb.be
  %.not450 = icmp eq i32 %i.c, 0
  %i.id = zext nneg i32 %i.ic to i64              ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  br i1 %.not450, label %._crit_edge402.split.thread, label %.lr.ph401.split

.lr.ph401.split:                                  ; preds = %.lr.ph401
  %wide.trip.count478 = zext i32 %i.e to i64      ; 2 uses
  %wide.trip.count473 = zext i32 %i.c to i64      ; 2 uses
  br i1 %i.hy, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph401.split, %._crit_edge.split.us.us
  %indvars.iv475 = phi i64 [ %indvars.iv.next476, %._crit_edge.split.us.us ], [ 0, %.lr.ph401.split ] ; 3 uses
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
  br i1 %exitcond474.not, label %._crit_edge.split.us.us, label %bb.bf, !llvm.loop !434

._crit_edge.split.us.us:                          ; preds = %bb.bf
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 2 uses
  %exitcond479.not = icmp eq i64 %indvars.iv.next476, %wide.trip.count478
  br i1 %exitcond479.not, label %._crit_edge402.split, label %.lr.ph.us, !llvm.loop !435

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
  br i1 %exitcond522.not, label %._crit_edge435.split.us.us, label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit.us.us, !llvm.loop !436

._crit_edge435.split.us.us:                       ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit.us.us
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1 ; 2 uses
  %exitcond527.not = icmp eq i64 %indvars.iv.next524, %wide.trip.count526
  br i1 %exitcond527.not, label %.loopexit, label %.lr.ph434.us, !llvm.loop !437

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
  br i1 %exitcond469.not, label %._crit_edge402.split, label %.lr.ph, !llvm.loop !435

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
  br i1 %exitcond.not, label %._crit_edge.split, label %_Z10clip_f_u16fi.exit, !llvm.loop !434

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
  br i1 %exitcond517.not, label %.loopexit, label %.lr.ph434, !llvm.loop !437

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit: ; preds = %.lr.ph434, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit
  %indvars.iv508 = phi i64 [ 0, %.lr.ph434 ], [ %indvars.iv.next509, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit ] ; 3 uses
  %.0271431 = phi ptr [ %i.mh, %.lr.ph434 ], [ %i.mo, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit ] ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0271431, i64 1
  %i.mn = getelementptr inbounds nuw i8, ptr %.0271431, i64 2
  %i.mo = getelementptr inbounds nuw i8, ptr %.0271431, i64 %i.jk
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %indvars.iv508
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 %indvars.iv508
  %i.mr = load i8, ptr %i.mm, align 1, !tbaa !133
  %i.ms = load i8, ptr %.0271431, align 1, !tbaa !133
  %i.mt = load i8, ptr %i.mn, align 1, !tbaa !133
  %17 = uitofp i8 %i.mr to float
  %18 = uitofp i8 %i.ms to float
  %19 = uitofp i8 %i.mt to float
  %20 = load <4 x float>, ptr %i.jl, align 4, !tbaa !170 ; 3 uses
  %21 = load <2 x float>, ptr %i.jp, align 4, !tbaa !170 ; 2 uses
  %22 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %23 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %20, <4 x float> %23, <2 x i32> <i32 1, i32 4>
  %25 = insertelement <2 x float> poison, float %17, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = fmul <2 x float> %24, %26
  %i.mu = insertelement <2 x float> poison, float %18, i64 0
  %28 = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %30 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %29, <2 x float> %27)
  %i.mv = insertelement <2 x float> poison, float %19, i64 0
  %31 = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = shufflevector <2 x float> %22, <2 x float> %21, <2 x i32> <i32 0, i32 3>
  %i.mw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %32, <2 x float> %30)
  %i.mx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mw, <2 x float> splat (float 8.750000e-01), <2 x float> splat (float 1.280000e+02))
  %i.my = fadd <2 x float> %i.mx, splat (float 5.000000e-01)
  %i.mz = fptosi <2 x float> %i.my to <2 x i32>
  %i.na = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mz, <2 x i32> zeroinitializer)
  %i.nb = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.na, <2 x i32> splat (i32 255))
  %i.nc = trunc nuw <2 x i32> %i.nb to <2 x i8>   ; 2 uses
  %i.nd = extractelement <2 x i8> %i.nc, i64 0
  store i8 %i.nd, ptr %i.mp, align 1, !tbaa !133
  %i.ne = extractelement <2 x i8> %i.nc, i64 1
  store i8 %i.ne, ptr %i.mq, align 1, !tbaa !133
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next509, %wide.trip.count521
  br i1 %exitcond512.not, label %._crit_edge435.split, label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit, !llvm.loop !436

bb.bi:                                            ; preds = %._crit_edge402.split.thread563, %._crit_edge402.split.thread, %._crit_edge402.split
  %i.nf = phi i1 [ %i.jj, %._crit_edge402.split.thread ], [ %i.jf, %._crit_edge402.split ], [ %i.jh, %._crit_edge402.split.thread563 ]
  %i.ng = icmp eq i8 %i.ak, 2                     ; 2 uses
  %i.nh = icmp eq i8 %i.al, 2
  %or.cond6 = and i1 %i.ng, %i.nh
  br i1 %or.cond6, label %.preheader394, label %bb.ca

.preheader394:                                    ; preds = %bb.bi
  %i.ni = and i32 %i.e, -2                        ; 2 uses
  %.not452 = icmp eq i32 %i.ni, 0
  br i1 %.not452, label %._crit_edge419.split, label %.lr.ph418

.lr.ph418:                                        ; preds = %.preheader394
  %i.nj = and i32 %i.c, -2                        ; 2 uses
  %.not453 = icmp eq i32 %i.nj, 0
  %i.nk = zext nneg i32 %i.ic to i64              ; 2 uses
  %i.nl = shl nuw nsw i32 %i.ic, 1
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.np = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.nq = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.nr = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ns = getelementptr inbounds nuw i8, ptr %15, i64 36
  br i1 %.not453, label %._crit_edge419.split, label %.lr.ph416.preheader

.lr.ph416.preheader:                              ; preds = %.lr.ph418
  %i.nt = zext i32 %i.nj to i64
  %i.nu = zext i32 %i.ni to i64
  br label %.lr.ph416

._crit_edge419.split:                             ; preds = %._crit_edge, %.lr.ph418, %.preheader394
  %i.nv = and i32 %i.c, 1
  %.not = icmp eq i32 %i.nv, 0
  br i1 %.not, label %.loopexit393, label %bb.bm

.lr.ph416:                                        ; preds = %.lr.ph416.preheader, %._crit_edge
  %indvars.iv499 = phi i64 [ 0, %.lr.ph416.preheader ], [ %indvars.iv.next500, %._crit_edge ] ; 3 uses
  %i.nw = mul nsw i64 %.0384, %indvars.iv499
  %i.nx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.nw
  %i.ny = lshr exact i64 %indvars.iv499, 1        ; 2 uses
  %i.nz = mul nsw i64 %.0382, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %.0.i.i323, i64 %i.nz
  %i.ob = mul nsw i64 %.0383, %i.ny
  %i.oc = getelementptr inbounds nuw i8, ptr %.0.i.i328, i64 %i.ob
  br label %bb.bj

._crit_edge:                                      ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 2 ; 2 uses
  %i.od = icmp samesign ult i64 %indvars.iv.next500, %i.nu
  br i1 %i.od, label %.lr.ph416, label %._crit_edge419.split, !llvm.loop !438

bb.bj:                                            ; preds = %.lr.ph416, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341
  %indvars.iv496 = phi i64 [ 0, %.lr.ph416 ], [ %indvars.iv.next497, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341 ] ; 2 uses
  %.0268414 = phi ptr [ %i.nx, %.lr.ph416 ], [ %i.qc, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341 ] ; 6 uses
  %i.oe = load i8, ptr %.0268414, align 1, !tbaa !133
  %i.of = zext i8 %i.oe to i16
  %i.og = getelementptr inbounds nuw i8, ptr %.0268414, i64 %i.nk ; 3 uses
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !133
  %i.oi = zext i8 %i.oh to i16
  %i.oj = add nuw nsw i16 %i.oi, %i.of
  %i.ok = getelementptr i8, ptr %.0268414, i64 %.0384 ; 4 uses
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !133
  %i.om = zext i8 %i.ol to i16
  %i.on = add nuw nsw i16 %i.oj, %i.om
  %i.oo = getelementptr i8, ptr %i.ok, i64 %i.nk  ; 3 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !133
  %i.oq = zext i8 %i.op to i16
  %i.or = add nuw nsw i16 %i.on, %i.oq
  %i.os = lshr i16 %i.or, 2
  %i.ot = trunc nuw i16 %i.os to i8
  %i.ou = getelementptr inbounds nuw i8, ptr %.0268414, i64 1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !133
  %i.ow = zext i8 %i.ov to i16
  %i.ox = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !133
  %i.oz = zext i8 %i.oy to i16
  %i.pa = add nuw nsw i16 %i.oz, %i.ow
  %i.pb = getelementptr i8, ptr %i.ok, i64 1
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !133
  %i.pd = zext i8 %i.pc to i16
  %i.pe = add nuw nsw i16 %i.pa, %i.pd
  %i.pf = getelementptr i8, ptr %i.oo, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !133
  %i.ph = zext i8 %i.pg to i16
  %i.pi = add nuw nsw i16 %i.pe, %i.ph
  %i.pj = lshr i16 %i.pi, 2
  %i.pk = trunc nuw i16 %i.pj to i8
  %i.pl = getelementptr inbounds nuw i8, ptr %.0268414, i64 2
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !133
  %i.pn = zext i8 %i.pm to i16
  %i.po = getelementptr inbounds nuw i8, ptr %i.og, i64 2
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !133
  %i.pq = zext i8 %i.pp to i16
  %i.pr = add nuw nsw i16 %i.pq, %i.pn
  %i.ps = getelementptr i8, ptr %i.ok, i64 2
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !133
  %i.pu = zext i8 %i.pt to i16
  %i.pv = add nuw nsw i16 %i.pr, %i.pu
  %i.pw = getelementptr i8, ptr %i.oo, i64 2
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !133
  %i.py = zext i8 %i.px to i16
  %i.pz = add nuw nsw i16 %i.pv, %i.py
  %i.qa = lshr i16 %i.pz, 2
  %i.qb = trunc nuw i16 %i.qa to i8
  %i.qc = getelementptr inbounds nuw i8, ptr %.0268414, i64 %i.nm
  %i.qd = lshr exact i64 %indvars.iv496, 1        ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.qd
  %i.qf = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.qd
  %i.qg = uitofp i8 %i.ot to float                ; 2 uses
  %i.qh = load float, ptr %i.nn, align 4, !tbaa !170
  %i.qi = uitofp i8 %i.pk to float                ; 2 uses
  %i.qj = load float, ptr %i.no, align 4, !tbaa !170
  %i.qk = fmul float %i.qj, %i.qi
  %i.ql = call float @llvm.fmuladd.f32(float %i.qg, float %i.qh, float %i.qk)
  %i.qm = uitofp i8 %i.qb to float                ; 2 uses
  %i.qn = load float, ptr %i.np, align 4, !tbaa !170
  %i.qo = call float @llvm.fmuladd.f32(float %i.qm, float %i.qn, float %i.ql) ; 2 uses
  %i.qp = load float, ptr %i.nq, align 4, !tbaa !170
  %i.qq = load float, ptr %i.nr, align 4, !tbaa !170
  %i.qr = fmul float %i.qq, %i.qi
  %i.qs = call float @llvm.fmuladd.f32(float %i.qg, float %i.qp, float %i.qr)
  %i.qt = load float, ptr %i.ns, align 4, !tbaa !170
  %i.qu = call float @llvm.fmuladd.f32(float %i.qm, float %i.qt, float %i.qs) ; 2 uses
  br i1 %i.hy, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.qv = fadd float %i.qo, 1.280000e+02
  %i.qw = fadd float %i.qv, 5.000000e-01
  %i.qx = fptosi float %i.qw to i32
  %i.qy = call i32 @llvm.smax.i32(i32 %i.qx, i32 0)
  %i.qz = call i32 @llvm.umin.i32(i32 %i.qy, i32 255)
  %i.ra = fadd float %i.qu, 1.280000e+02
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341

bb.bl:                                            ; preds = %bb.bj
  %i.rb = call float @llvm.fmuladd.f32(float %i.qo, float 8.750000e-01, float 1.280000e+02)
  %i.rc = fadd float %i.rb, 5.000000e-01
  %i.rd = fptosi float %i.rc to i32
  %i.re = call i32 @llvm.smax.i32(i32 %i.rd, i32 0)
  %i.rf = call i32 @llvm.umin.i32(i32 %i.re, i32 255)
  %i.rg = call float @llvm.fmuladd.f32(float %i.qu, float 8.750000e-01, float 1.280000e+02)
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit341: ; preds = %bb.bk, %bb.bl
  %.sink24.i337 = phi float [ %i.rg, %bb.bl ], [ %i.ra, %bb.bk ]
  %.0.i21.sink.in.i338 = phi i32 [ %i.rf, %bb.bl ], [ %i.qz, %bb.bk ]
  %i.rh = fadd float %.sink24.i337, 5.000000e-01
  %i.ri = fptosi float %i.rh to i32
  %i.rj = call i32 @llvm.smax.i32(i32 %i.ri, i32 0)
  %i.rk = call i32 @llvm.umin.i32(i32 %i.rj, i32 255)
  %.0.i21.sink.i339 = trunc nuw i32 %.0.i21.sink.in.i338 to i8
  store i8 %.0.i21.sink.i339, ptr %i.qe, align 1, !tbaa !133
  %storemerge.i340 = trunc nuw i32 %i.rk to i8
  store i8 %storemerge.i340, ptr %i.qf, align 1, !tbaa !133
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 2 ; 2 uses
  %i.rl = icmp samesign ult i64 %indvars.iv.next497, %i.nt
  br i1 %i.rl, label %bb.bj, label %._crit_edge, !llvm.loop !439

bb.bm:                                            ; preds = %._crit_edge419.split
  br i1 %.not449, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.lr.ph423

.lr.ph423:                                        ; preds = %bb.bm
  %i.rm = mul i32 %i.ic, %i.ao
  %i.rn = zext i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.rn
  %i.rp = lshr exact i32 %i.ao, 1
  %i.rq = zext nneg i32 %i.rp to i64              ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.0.i.i323, i64 %i.rq
  %invariant.gep424 = getelementptr i8, ptr %.0.i.i328, i64 %i.rq
  %i.rr = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.rt = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ru = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.rv = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.rw = getelementptr inbounds nuw i8, ptr %15, i64 36
  %i.rx = shl nsw i64 %.0384, 1
  %i.ry = zext i32 %i.as to i64
  %i.rz = zext i32 %i.e to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph423, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit346
  %indvars.iv502 = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next503, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit346 ] ; 3 uses
  %.0254420 = phi ptr [ %i.ro, %.lr.ph423 ], [ %i.un, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit346 ] ; 7 uses
  %i.sa = icmp samesign ult i64 %indvars.iv502, %i.ry
  %i.sb = load i8, ptr %.0254420, align 1, !tbaa !133 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK20Op_RGB24_32_to_YCbCr18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
  %.0250 = phi i8 [ %i.ta, %bb.bo ], [ %i.te, %bb.bp ]
  %i.tf = lshr exact i64 %indvars.iv502, 1        ; 2 uses
  %i.tg = mul nsw i64 %.0382, %i.tf
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.tg
  %i.th = mul nsw i64 %.0383, %i.tf
  %gep425 = getelementptr i8, ptr %invariant.gep424, i64 %i.th
  %i.ti = uitofp i8 %.0252 to float               ; 2 uses
  %i.tj = load float, ptr %i.rr, align 4, !tbaa !170
  %i.tk = uitofp i8 %.0251 to float               ; 2 uses
  %i.tl = load float, ptr %i.rs, align 4, !tbaa !170
  %i.tm = fmul float %i.tl, %i.tk
  %i.tn = call float @llvm.fmuladd.f32(float %i.ti, float %i.tj, float %i.tm)
  %i.to = uitofp i8 %.0250 to float               ; 2 uses
  %i.tp = load float, ptr %i.rt, align 4, !tbaa !170
  %i.tq = call float @llvm.fmuladd.f32(float %i.to, float %i.tp, float %i.tn) ; 2 uses
  %i.tr = load float, ptr %i.ru, align 4, !tbaa !170
  %i.ts = load float, ptr %i.rv, align 4, !tbaa !170
  %i.tt = fmul float %i.ts, %i.tk
  %i.tu = call float @llvm.fmuladd.f32(float %i.ti, float %i.tr, float %i.tt)
  %i.tv = load float, ptr %i.rw, align 4, !tbaa !170
  %i.tw = call float @llvm.fmuladd.f32(float %i.to, float %i.tv, float %i.tu) ; 2 uses
  br i1 %i.hy, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.tx = fadd float %i.tq, 1.280000e+02
  %i.ty = fadd float %i.tx, 5.000000e-01
  %i.tz = fptosi float %i.ty to i32
  %i.ua = call i32 @llvm.smax.i32(i32 %i.tz, i32 0)
  %i.ub = call i32 @llvm.umin.i32(i32 %i.ua, i32 255)
  %i.uc = fadd float %i.tw, 1.280000e+02
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit346

bb.bs:                                            ; preds = %bb.bq
  %i.ud = call float @llvm.fmuladd.f32(float %i.tq, float 8.750000e-01, float 1.280000e+02)
  %i.ue = fadd float %i.ud, 5.000000e-01
  %i.uf = fptosi float %i.ue to i32
  %i.ug = call i32 @llvm.smax.i32(i32 %i.uf, i32 0)
  %i.uh = call i32 @llvm.umin.i32(i32 %i.ug, i32 255)
  %i.ui = call float @llvm.fmuladd.f32(float %i.tw, float 8.750000e-01, float 1.280000e+02)
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit346

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit346: ; preds = %bb.br, %bb.bs
  %.sink24.i342 = phi float [ %i.ui, %bb.bs ], [ %i.uc, %bb.br ]
  %.0.i21.sink.in.i343 = phi i32 [ %i.uh, %bb.bs ], [ %i.ub, %bb.br ]
  %i.uj = fadd float %.sink24.i342, 5.000000e-01
  %i.uk = fptosi float %i.uj to i32
  %i.ul = call i32 @llvm.smax.i32(i32 %i.uk, i32 0)
  %i.um = call i32 @llvm.umin.i32(i32 %i.ul, i32 255)
  %.0.i21.sink.i344 = trunc nuw i32 %.0.i21.sink.in.i343 to i8
  store i8 %.0.i21.sink.i344, ptr %gep, align 1, !tbaa !133
  %storemerge.i345 = trunc nuw i32 %i.um to i8
  store i8 %storemerge.i345, ptr %gep425, align 1, !tbaa !133
  %i.un = getelementptr inbounds nuw i8, ptr %.0254420, i64 %i.rx
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 2 ; 2 uses
  %i.uo = icmp samesign ult i64 %indvars.iv.next503, %i.rz
  br i1 %i.uo, label %bb.bn, label %.loopexit393, !llvm.loop !440

.loopexit393:                                     ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit346, %._crit_edge419.split
  %i.up = and i32 %i.e, 1
  %.not295 = icmp eq i32 %i.up, 0
  br i1 %.not295, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %.loopexit393
  %.not455 = icmp eq i32 %i.c, 0
  br i1 %.not455, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.lr.ph430

.lr.ph430:                                        ; preds = %bb.bt
  %i.uq = zext i32 %i.as to i64
  %i.ur = mul nsw i64 %.0384, %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ur
  %i.ut = zext nneg i32 %i.ic to i64
  %i.uu = lshr exact i32 %i.as, 1
  %i.uv = zext nneg i32 %i.uu to i64              ; 2 uses
  %i.uw = mul nsw i64 %.0382, %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %.0.i.i323, i64 %i.uw
  %i.uy = mul nsw i64 %.0383, %i.uv
  %i.uz = getelementptr inbounds nuw i8, ptr %.0.i.i328, i64 %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.vb = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.vc = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.vd = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.ve = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.vf = getelementptr inbounds nuw i8, ptr %15, i64 36
  %i.vg = shl nuw nsw i32 %i.ic, 1
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = zext i32 %i.ao to i64
  %i.vj = zext i32 %i.c to i64
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph430, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351
  %indvars.iv505 = phi i64 [ 0, %.lr.ph430 ], [ %indvars.iv.next506, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351 ] ; 3 uses
  %.0249427 = phi ptr [ %i.us, %.lr.ph430 ], [ %i.xx, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351 ] ; 7 uses
  %i.vk = icmp samesign ult i64 %indvars.iv505, %i.vi
  %i.vl = load i8, ptr %.0249427, align 1, !tbaa !133 ; 2 uses
  br i1 %i.vk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.vm = zext i8 %i.vl to i16
  %i.vn = getelementptr inbounds nuw i8, ptr %.0249427, i64 %i.ut ; 3 uses
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !133
  %i.vp = zext i8 %i.vo to i16
  %i.vq = add nuw nsw i16 %i.vp, %i.vm
  %i.vr = lshr i16 %i.vq, 1
  %i.vs = trunc nuw i16 %i.vr to i8
  %i.vt = getelementptr inbounds nuw i8, ptr %.0249427, i64 1
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !133
  %i.vv = zext i8 %i.vu to i16
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vn, i64 1
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !133
  %i.vy = zext i8 %i.vx to i16
  %i.vz = add nuw nsw i16 %i.vy, %i.vv
  %i.wa = lshr i16 %i.vz, 1
  %i.wb = trunc nuw i16 %i.wa to i8
  %i.wc = getelementptr inbounds nuw i8, ptr %.0249427, i64 2
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !133
  %i.we = zext i8 %i.wd to i16
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vn, i64 2
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !133
  %i.wh = zext i8 %i.wg to i16
  %i.wi = add nuw nsw i16 %i.wh, %i.we
  %i.wj = lshr i16 %i.wi, 1
  %i.wk = trunc nuw i16 %i.wj to i8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.wl = getelementptr inbounds nuw i8, ptr %.0249427, i64 1
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !133
  %i.wn = getelementptr inbounds nuw i8, ptr %.0249427, i64 2
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !133
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0247 = phi i8 [ %i.vs, %bb.bv ], [ %i.vl, %bb.bw ]
  %.0246 = phi i8 [ %i.wb, %bb.bv ], [ %i.wm, %bb.bw ]
  %.0245 = phi i8 [ %i.wk, %bb.bv ], [ %i.wo, %bb.bw ]
  %i.wp = lshr exact i64 %indvars.iv505, 1        ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.wp
  %i.ws = uitofp i8 %.0247 to float               ; 2 uses
  %i.wt = load float, ptr %i.va, align 4, !tbaa !170
  %i.wu = uitofp i8 %.0246 to float               ; 2 uses
  %i.wv = load float, ptr %i.vb, align 4, !tbaa !170
  %i.ww = fmul float %i.wv, %i.wu
  %i.wx = call float @llvm.fmuladd.f32(float %i.ws, float %i.wt, float %i.ww)
  %i.wy = uitofp i8 %.0245 to float               ; 2 uses
  %i.wz = load float, ptr %i.vc, align 4, !tbaa !170
  %i.xa = call float @llvm.fmuladd.f32(float %i.wy, float %i.wz, float %i.wx) ; 2 uses
  %i.xb = load float, ptr %i.vd, align 4, !tbaa !170
  %i.xc = load float, ptr %i.ve, align 4, !tbaa !170
  %i.xd = fmul float %i.xc, %i.wu
  %i.xe = call float @llvm.fmuladd.f32(float %i.ws, float %i.xb, float %i.xd)
  %i.xf = load float, ptr %i.vf, align 4, !tbaa !170
  %i.xg = call float @llvm.fmuladd.f32(float %i.wy, float %i.xf, float %i.xe) ; 2 uses
  br i1 %i.hy, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.xh = fadd float %i.xa, 1.280000e+02
  %i.xi = fadd float %i.xh, 5.000000e-01
  %i.xj = fptosi float %i.xi to i32
  %i.xk = call i32 @llvm.smax.i32(i32 %i.xj, i32 0)
  %i.xl = call i32 @llvm.umin.i32(i32 %i.xk, i32 255)
  %i.xm = fadd float %i.xg, 1.280000e+02
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351

bb.bz:                                            ; preds = %bb.bx
  %i.xn = call float @llvm.fmuladd.f32(float %i.xa, float 8.750000e-01, float 1.280000e+02)
  %i.xo = fadd float %i.xn, 5.000000e-01
  %i.xp = fptosi float %i.xo to i32
  %i.xq = call i32 @llvm.smax.i32(i32 %i.xp, i32 0)
  %i.xr = call i32 @llvm.umin.i32(i32 %i.xq, i32 255)
  %i.xs = call float @llvm.fmuladd.f32(float %i.xg, float 8.750000e-01, float 1.280000e+02)
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351: ; preds = %bb.by, %bb.bz
  %.sink24.i347 = phi float [ %i.xs, %bb.bz ], [ %i.xm, %bb.by ]
  %.0.i21.sink.in.i348 = phi i32 [ %i.xr, %bb.bz ], [ %i.xl, %bb.by ]
  %i.xt = fadd float %.sink24.i347, 5.000000e-01
  %i.xu = fptosi float %i.xt to i32
  %i.xv = call i32 @llvm.smax.i32(i32 %i.xu, i32 0)
  %i.xw = call i32 @llvm.umin.i32(i32 %i.xv, i32 255)
  %.0.i21.sink.i349 = trunc nuw i32 %.0.i21.sink.in.i348 to i8
  store i8 %.0.i21.sink.i349, ptr %i.wq, align 1, !tbaa !133
  %storemerge.i350 = trunc nuw i32 %i.xw to i8
  store i8 %storemerge.i350, ptr %i.wr, align 1, !tbaa !133
  %i.xx = getelementptr inbounds nuw i8, ptr %.0249427, i64 %i.vh
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 2 ; 2 uses
  %i.xy = icmp samesign ult i64 %indvars.iv.next506, %i.vj
  br i1 %i.xy, label %bb.bu, label %.loopexit, !llvm.loop !441

bb.ca:                                            ; preds = %bb.bi
  %or.cond9 = and i1 %i.ng, %i.nf
  %i.xz = icmp ne i32 %i.e, 0
  %or.cond446 = select i1 %or.cond9, i1 %i.xz, i1 false
  br i1 %or.cond446, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %bb.ca
  %.not451 = icmp eq i32 %i.c, 0
  %i.ya = shl nuw nsw i32 %i.ic, 1
  %i.yb = zext nneg i32 %i.ya to i64              ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.ye = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.yf = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.yg = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %15, i64 36
  br i1 %.not451, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.lr.ph411.split

.lr.ph411.split:                                  ; preds = %.lr.ph411
  %i.yi = zext i32 %i.c to i64                    ; 2 uses
  %wide.trip.count494 = zext i32 %i.e to i64      ; 2 uses
  br i1 %i.hy, label %.lr.ph407.us, label %.lr.ph407

.lr.ph407.us:                                     ; preds = %.lr.ph411.split, %._crit_edge.split409.us.us
  %indvars.iv491 = phi i64 [ %indvars.iv.next492, %._crit_edge.split409.us.us ], [ 0, %.lr.ph411.split ] ; 4 uses
  %i.yj = mul nsw i64 %.0384, %indvars.iv491
  %i.yk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.yj
  %i.yl = mul nsw i64 %.0382, %indvars.iv491
  %i.ym = getelementptr inbounds nuw i8, ptr %.0.i.i323, i64 %i.yl
  %i.yn = mul nsw i64 %.0383, %indvars.iv491
  %i.yo = getelementptr inbounds nuw i8, ptr %.0.i.i328, i64 %i.yn
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us: ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us, %.lr.ph407.us
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us ], [ 0, %.lr.ph407.us ] ; 2 uses
  %.0243405.us.us = phi ptr [ %i.yu, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us ], [ %i.yk, %.lr.ph407.us ] ; 4 uses
  %i.yp = load i8, ptr %.0243405.us.us, align 1, !tbaa !133
  %i.yq = getelementptr inbounds nuw i8, ptr %.0243405.us.us, i64 1
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !133
  %i.ys = getelementptr inbounds nuw i8, ptr %.0243405.us.us, i64 2
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !133
  %i.yu = getelementptr inbounds nuw i8, ptr %.0243405.us.us, i64 %i.yb
  %i.yv = lshr exact i64 %indvars.iv488, 1        ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yv
  %i.yy = uitofp i8 %i.yp to float                ; 2 uses
  %i.yz = load float, ptr %i.yc, align 4, !tbaa !170
  %i.za = uitofp i8 %i.yr to float                ; 2 uses
  %i.zb = load float, ptr %i.yd, align 4, !tbaa !170
  %i.zc = fmul float %i.zb, %i.za
  %i.zd = call float @llvm.fmuladd.f32(float %i.yy, float %i.yz, float %i.zc)
  %i.ze = uitofp i8 %i.yt to float                ; 2 uses
  %i.zf = load float, ptr %i.ye, align 4, !tbaa !170
  %i.zg = call float @llvm.fmuladd.f32(float %i.ze, float %i.zf, float %i.zd)
  %i.zh = load float, ptr %i.yf, align 4, !tbaa !170
  %i.zi = load float, ptr %i.yg, align 4, !tbaa !170
  %i.zj = fmul float %i.zi, %i.za
  %i.zk = call float @llvm.fmuladd.f32(float %i.yy, float %i.zh, float %i.zj)
  %i.zl = load float, ptr %i.yh, align 4, !tbaa !170
  %i.zm = call float @llvm.fmuladd.f32(float %i.ze, float %i.zl, float %i.zk)
  %i.zn = fadd float %i.zg, 1.280000e+02
  %i.zo = fadd float %i.zn, 5.000000e-01
  %i.zp = fptosi float %i.zo to i32
  %i.zq = call i32 @llvm.smax.i32(i32 %i.zp, i32 0)
  %i.zr = call i32 @llvm.umin.i32(i32 %i.zq, i32 255)
  %i.zs = fadd float %i.zm, 1.280000e+02
  %i.zt = fadd float %i.zs, 5.000000e-01
  %i.zu = fptosi float %i.zt to i32
  %i.zv = call i32 @llvm.smax.i32(i32 %i.zu, i32 0)
  %i.zw = call i32 @llvm.umin.i32(i32 %i.zv, i32 255)
  %.0.i21.sink.i354.us.us = trunc nuw i32 %i.zr to i8
  store i8 %.0.i21.sink.i354.us.us, ptr %i.yw, align 1, !tbaa !133
  %storemerge.i355.us.us = trunc nuw i32 %i.zw to i8
  store i8 %storemerge.i355.us.us, ptr %i.yx, align 1, !tbaa !133
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 2 ; 2 uses
  %i.zx = icmp samesign ult i64 %indvars.iv.next489, %i.yi
  br i1 %i.zx, label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us, label %._crit_edge.split409.us.us, !llvm.loop !442

._crit_edge.split409.us.us:                       ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356.us.us
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count494
  br i1 %exitcond495.not, label %.loopexit, label %.lr.ph407.us, !llvm.loop !443

.lr.ph407:                                        ; preds = %.lr.ph411.split, %._crit_edge.split409
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %._crit_edge.split409 ], [ 0, %.lr.ph411.split ] ; 4 uses
  %i.zy = mul nsw i64 %.0384, %indvars.iv483
  %i.zz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.zy
  %i.aaa = mul nsw i64 %.0382, %indvars.iv483
  %i.aab = getelementptr inbounds nuw i8, ptr %.0.i.i323, i64 %i.aaa
  %i.aac = mul nsw i64 %.0383, %indvars.iv483
  %i.aad = getelementptr inbounds nuw i8, ptr %.0.i.i328, i64 %i.aac
  br label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356

._crit_edge.split409:                             ; preds = %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond487.not = icmp eq i64 %indvars.iv.next484, %wide.trip.count494
  br i1 %exitcond487.not, label %.loopexit, label %.lr.ph407, !llvm.loop !443

_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356: ; preds = %.lr.ph407, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356
  %indvars.iv480 = phi i64 [ 0, %.lr.ph407 ], [ %indvars.iv.next481, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356 ] ; 2 uses
  %.0243405 = phi ptr [ %i.zz, %.lr.ph407 ], [ %i.aag, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356 ] ; 4 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.0243405, i64 1
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0243405, i64 2
  %i.aag = getelementptr inbounds nuw i8, ptr %.0243405, i64 %i.yb
  %i.aah = lshr exact i64 %indvars.iv480, 1       ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.aah
  %i.aak = load i8, ptr %i.aae, align 1, !tbaa !133
  %i.aal = load i8, ptr %.0243405, align 1, !tbaa !133
  %i.aam = load i8, ptr %i.aaf, align 1, !tbaa !133
  %33 = uitofp i8 %i.aak to float
  %34 = uitofp i8 %i.aal to float
  %35 = uitofp i8 %i.aam to float
  %36 = load <4 x float>, ptr %i.yc, align 4, !tbaa !170 ; 3 uses
  %37 = load <2 x float>, ptr %i.yg, align 4, !tbaa !170 ; 2 uses
  %38 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %39 = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %40 = shufflevector <4 x float> %36, <4 x float> %39, <2 x i32> <i32 1, i32 4>
  %41 = insertelement <2 x float> poison, float %33, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = fmul <2 x float> %40, %42
  %i.aan = insertelement <2 x float> poison, float %34, i64 0
  %44 = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> zeroinitializer
  %45 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %46 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %45, <2 x float> %43)
  %i.aao = insertelement <2 x float> poison, float %35, i64 0
  %47 = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = shufflevector <2 x float> %38, <2 x float> %37, <2 x i32> <i32 0, i32 3>
  %i.aap = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %48, <2 x float> %46)
  %i.aaq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aap, <2 x float> splat (float 8.750000e-01), <2 x float> splat (float 1.280000e+02))
  %i.aar = fadd <2 x float> %i.aaq, splat (float 5.000000e-01)
  %i.aas = fptosi <2 x float> %i.aar to <2 x i32>
  %i.aat = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.aas, <2 x i32> zeroinitializer)
  %i.aau = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.aat, <2 x i32> splat (i32 255))
  %i.aav = trunc nuw <2 x i32> %i.aau to <2 x i8> ; 2 uses
  %i.aaw = extractelement <2 x i8> %i.aav, i64 0
  store i8 %i.aaw, ptr %i.aai, align 1, !tbaa !133
  %i.aax = extractelement <2 x i8> %i.aav, i64 1
  store i8 %i.aax, ptr %i.aaj, align 1, !tbaa !133
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 2 ; 2 uses
  %i.aay = icmp samesign ult i64 %indvars.iv.next481, %i.yi
  br i1 %i.aay, label %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit356, label %._crit_edge.split409, !llvm.loop !442

.loopexit:                                        ; preds = %._crit_edge435.split, %._crit_edge435.split.us.us, %._crit_edge.split409, %._crit_edge.split409.us.us, %_Z17set_chroma_pixelsPhS_hhhRK25RGB_to_YCbCr_coefficientsb.exit351, %.loopexit393, %bb.ca
  %i.aaz = icmp ne i32 %i.e, 0
  %or.cond447 = select i1 %i.bb, i1 %i.aaz, i1 false
  %i.aba = icmp ne i32 %i.c, 0
  %or.cond448 = select i1 %or.cond447, i1 %i.aba, i1 false
  br i1 %or.cond448, label %.preheader.lr.ph.split, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit

.preheader.lr.ph.split:                           ; preds = %.loopexit
  br i1 %i.ay, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.abb = zext i32 %i.c to i64                   ; 9 uses
  %wide.trip.count534 = zext i32 %i.e to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count534, 7      ; 3 uses
  %i.abc = icmp ult i32 %i.e, 8
  br i1 %i.abc, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count534, 4294967288
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count544 = zext i32 %i.e to i64      ; 2 uses
  %wide.trip.count539 = zext i32 %i.c to i64      ; 9 uses
  %i.abd = add nsw i64 %wide.trip.count544, -1    ; 2 uses
  %i.abe = mul i64 %.0385, %i.abd
  %i.abf = getelementptr i8, ptr %.0276, i64 %i.abe
  %scevgep = getelementptr i8, ptr %i.abf, i64 %wide.trip.count539
  %scevgep592 = getelementptr i8, ptr %.0.i.i.i, i64 3
  %i.abg = mul i64 %.0384, %i.abd
  %i.abh = shl nuw nsw i64 %wide.trip.count539, 2
  %i.abi = getelementptr i8, ptr %.0.i.i.i, i64 %i.abg
  %scevgep593 = getelementptr i8, ptr %i.abi, i64 %i.abh
  %i.abj = add i32 %i.c, -1073741825
  %or.cond600 = icmp ult i32 %i.abj, -1073741816
  %bound0 = icmp ult ptr %.0276, %scevgep593
  %bound1 = icmp ult ptr %scevgep592, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.abk = or i64 %.0384, %.0385
  %i.abl = icmp slt i64 %i.abk, 0
  %i.abm = or i1 %found.conflict, %i.abl
  %min.iters.check595 = icmp ult i32 %i.c, 17
  %i.abn = and i64 %wide.trip.count539, 15        ; 2 uses
  %i.abo = icmp eq i64 %i.abn, 0
  %i.abp = select i1 %i.abo, i64 16, i64 %i.abn   ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count539, %i.abp ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.abp, 9
  %i.abq = and i64 %wide.trip.count539, 7         ; 2 uses
  %i.abr = icmp eq i64 %i.abq, 0
  %i.abs = select i1 %i.abr, i64 8, i64 %i.abq
  %n.vec596 = sub nsw i64 %wide.trip.count539, %i.abs ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %._crit_edge442.split.us.us
  %indvars.iv541 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next542, %._crit_edge442.split.us.us ] ; 3 uses
  %i.abt = mul nsw i64 %.0384, %indvars.iv541
  %i.abu = getelementptr i8, ptr %.0.i.i.i, i64 %i.abt ; 29 uses
  %i.abv = mul nsw i64 %.0385, %indvars.iv541
  %i.abw = getelementptr i8, ptr %.0276, i64 %i.abv ; 7 uses
  %brmerge = select i1 %or.cond600, i1 true, i1 %i.abm
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check595, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 18 uses
  %i.abx = shl i64 %index, 2
  %i.aby = shl i64 %index, 2
  %i.abz = shl i64 %index, 2
  %i.aca = shl i64 %index, 2
  %i.acb = shl i64 %index, 2
  %i.acc = shl i64 %index, 2
  %i.acd = shl i64 %index, 2
  %i.ace = shl i64 %index, 2
  %i.acf = shl i64 %index, 2
  %i.acg = shl i64 %index, 2
  %i.ach = shl i64 %index, 2
  %i.aci = shl i64 %index, 2
  %i.acj = shl i64 %index, 2
  %i.ack = shl i64 %index, 2
  %i.acl = shl i64 %index, 2
  %i.acm = shl i64 %index, 2
  %i.acn = and i64 %i.abx, 4294967232
  %i.aco = and i64 %i.aby, 4294967232
  %i.acp = and i64 %i.abz, 4294967232
  %i.acq = and i64 %i.aca, 4294967232
  %i.acr = and i64 %i.acb, 4294967232
  %i.acs = and i64 %i.acc, 4294967232
  %i.act = and i64 %i.acd, 4294967232
  %i.acu = and i64 %i.ace, 4294967232
  %i.acv = and i64 %i.acf, 4294967232
  %i.acw = and i64 %i.acg, 4294967232
  %i.acx = and i64 %i.ach, 4294967232
  %i.acy = and i64 %i.aci, 4294967232
  %i.acz = and i64 %i.acj, 4294967232
  %i.ada = and i64 %i.ack, 4294967232
  %i.adb = and i64 %i.acl, 4294967232
  %i.adc = and i64 %i.acm, 4294967232
  %i.add = getelementptr i8, ptr %i.abu, i64 %i.acn
  %i.ade = getelementptr i8, ptr %i.abu, i64 %i.aco
  %i.adf = getelementptr i8, ptr %i.abu, i64 %i.acp
  %i.adg = getelementptr i8, ptr %i.abu, i64 %i.acq
  %i.adh = getelementptr i8, ptr %i.abu, i64 %i.acr
  %i.adi = getelementptr i8, ptr %i.abu, i64 %i.acs
  %i.adj = getelementptr i8, ptr %i.abu, i64 %i.act
  %i.adk = getelementptr i8, ptr %i.abu, i64 %i.acu
  %i.adl = getelementptr i8, ptr %i.abu, i64 %i.acv
  %i.adm = getelementptr i8, ptr %i.abu, i64 %i.acw
  %i.adn = getelementptr i8, ptr %i.abu, i64 %i.acx
  %i.ado = getelementptr i8, ptr %i.abu, i64 %i.acy
  %i.adp = getelementptr i8, ptr %i.abu, i64 %i.acz
  %i.adq = getelementptr i8, ptr %i.abu, i64 %i.ada
  %i.adr = getelementptr i8, ptr %i.abu, i64 %i.adb
  %i.ads = getelementptr i8, ptr %i.abu, i64 %i.adc
  %i.adt = getelementptr i8, ptr %i.add, i64 3
  %i.adu = getelementptr i8, ptr %i.ade, i64 7
  %i.adv = getelementptr i8, ptr %i.adf, i64 11
  %i.adw = getelementptr i8, ptr %i.adg, i64 15
  %i.adx = getelementptr i8, ptr %i.adh, i64 19
  %i.ady = getelementptr i8, ptr %i.adi, i64 23
  %i.adz = getelementptr i8, ptr %i.adj, i64 27
  %i.aea = getelementptr i8, ptr %i.adk, i64 31
  %i.aeb = getelementptr i8, ptr %i.adl, i64 35
  %i.aec = getelementptr i8, ptr %i.adm, i64 39
  %i.aed = getelementptr i8, ptr %i.adn, i64 43
  %i.aee = getelementptr i8, ptr %i.ado, i64 47
  %i.aef = getelementptr i8, ptr %i.adp, i64 51
  %i.aeg = getelementptr i8, ptr %i.adq, i64 55
  %i.aeh = getelementptr i8, ptr %i.adr, i64 59
  %i.aei = getelementptr i8, ptr %i.ads, i64 63
  %i.aej = load i8, ptr %i.adt, align 1, !tbaa !133, !alias.scope !460
  %i.aek = load i8, ptr %i.adu, align 1, !tbaa !133, !alias.scope !460
  %i.ael = load i8, ptr %i.adv, align 1, !tbaa !133, !alias.scope !460
  %i.aem = load i8, ptr %i.adw, align 1, !tbaa !133, !alias.scope !460
  %i.aen = load i8, ptr %i.adx, align 1, !tbaa !133, !alias.scope !460
  %i.aeo = load i8, ptr %i.ady, align 1, !tbaa !133, !alias.scope !460
  %i.aep = load i8, ptr %i.adz, align 1, !tbaa !133, !alias.scope !460
  %i.aeq = load i8, ptr %i.aea, align 1, !tbaa !133, !alias.scope !460
  %i.aer = load i8, ptr %i.aeb, align 1, !tbaa !133, !alias.scope !460
  %i.aes = load i8, ptr %i.aec, align 1, !tbaa !133, !alias.scope !460
  %i.aet = load i8, ptr %i.aed, align 1, !tbaa !133, !alias.scope !460
  %i.aeu = load i8, ptr %i.aee, align 1, !tbaa !133, !alias.scope !460
  %i.aev = load i8, ptr %i.aef, align 1, !tbaa !133, !alias.scope !460
  %i.aew = load i8, ptr %i.aeg, align 1, !tbaa !133, !alias.scope !460
  %i.aex = load i8, ptr %i.aeh, align 1, !tbaa !133, !alias.scope !460
  %i.aey = load i8, ptr %i.aei, align 1, !tbaa !133, !alias.scope !460
  %i.aez = insertelement <16 x i8> poison, i8 %i.aej, i64 0
  %i.afa = insertelement <16 x i8> %i.aez, i8 %i.aek, i64 1
  %i.afb = insertelement <16 x i8> %i.afa, i8 %i.ael, i64 2
  %i.afc = insertelement <16 x i8> %i.afb, i8 %i.aem, i64 3
  %i.afd = insertelement <16 x i8> %i.afc, i8 %i.aen, i64 4
  %i.afe = insertelement <16 x i8> %i.afd, i8 %i.aeo, i64 5
  %i.aff = insertelement <16 x i8> %i.afe, i8 %i.aep, i64 6
  %i.afg = insertelement <16 x i8> %i.aff, i8 %i.aeq, i64 7
  %i.afh = insertelement <16 x i8> %i.afg, i8 %i.aer, i64 8
  %i.afi = insertelement <16 x i8> %i.afh, i8 %i.aes, i64 9
  %i.afj = insertelement <16 x i8> %i.afi, i8 %i.aet, i64 10
  %i.afk = insertelement <16 x i8> %i.afj, i8 %i.aeu, i64 11
  %i.afl = insertelement <16 x i8> %i.afk, i8 %i.aev, i64 12
  %i.afm = insertelement <16 x i8> %i.afl, i8 %i.aew, i64 13
  %i.afn = insertelement <16 x i8> %i.afm, i8 %i.aex, i64 14
  %i.afo = insertelement <16 x i8> %i.afn, i8 %i.aey, i64 15
  %i.afp = getelementptr i8, ptr %i.abw, i64 %index
  store <16 x i8> %i.afo, ptr %i.afp, align 1, !tbaa !133, !alias.scope !461, !noalias !460
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.afq = icmp eq i64 %index.next, %n.vec
  br i1 %i.afq, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !447

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !462

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index597 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next598, %vec.epilog.vector.body ] ; 10 uses
  %i.afr = shl i64 %index597, 2
  %i.afs = shl i64 %index597, 2
  %i.aft = add i64 %i.afs, 4
  %i.afu = shl i64 %index597, 2
  %i.afv = add i64 %i.afu, 8
  %i.afw = shl i64 %index597, 2
  %i.afx = add i64 %i.afw, 12
  %i.afy = shl i64 %index597, 2
end_hunk_1
