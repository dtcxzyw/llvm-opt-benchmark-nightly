Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rgb2yuv?download=true
inline.NumInlined: 784
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK27Op_RRGGBBxx_HDR_to_YCbCr42018convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
  %i.ga = trunc i8 %i.fz to i1
  br i1 %i.ga, label %bb.aq, label %_ZN5ErrorD2Ev.exit258

bb.aq:                                            ; preds = %.critedge237
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !132
  %i.gd = load i64, ptr %i.fy, align 8
  %i.ge = and i64 %i.gd, -2
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.ge) #19
  br label %_ZN5ErrorD2Ev.exit258

_ZN5ErrorD2Ev.exit258:                            ; preds = %.critedge237, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.af, %_ZN5ErrorD2Ev.exit258
  %i.gf = load ptr, ptr %2, align 8, !tbaa !52
  %i.gg = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.gf, i32 noundef 10)
          to label %.noexc259 unwind label %bb.ay ; 3 uses

.noexc259:                                        ; preds = %bb.ar
  %.not.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.as

bb.as:                                            ; preds = %.noexc259
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 80
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !159
  %i.gj = shl i64 %i.gi, 32
  %i.gk = ashr exact i64 %i.gj, 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !160
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.as, %.noexc259
  %.0290 = phi i64 [ %i.gk, %bb.as ], [ 0, %.noexc259 ] ; 10 uses
  %.0.i.i.i = phi ptr [ %i.gm, %bb.as ], [ null, %.noexc259 ] ; 22 uses
  %i.gn = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.ao, i32 noundef 0)
          to label %.noexc260 unwind label %bb.ay ; 3 uses

.noexc260:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.at

bb.at:                                            ; preds = %.noexc260
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !159
  %i.gq = shl i64 %i.gp, 32
  %i.gr = ashr exact i64 %i.gq, 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !160
  %i.gu = lshr i64 %i.gr, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.at, %.noexc260
  %.0291 = phi i64 [ %i.gu, %bb.at ], [ 0, %.noexc260 ] ; 7 uses
  %.0.i.i = phi ptr [ %i.gt, %bb.at ], [ null, %.noexc260 ] ; 11 uses
  %i.gv = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.ao, i32 noundef 1)
          to label %.noexc263 unwind label %bb.ay ; 3 uses

.noexc263:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i261 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i261, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264, label %bb.au

bb.au:                                            ; preds = %.noexc263
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 80
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !159
  %i.gy = shl i64 %i.gx, 32
  %i.gz = ashr exact i64 %i.gy, 32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !160
  %i.hc = lshr i64 %i.gz, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264: ; preds = %bb.au, %.noexc263
  %.0294 = phi i64 [ %i.hc, %bb.au ], [ 0, %.noexc263 ]
  %.0.i.i262 = phi ptr [ %i.hb, %bb.au ], [ null, %.noexc263 ]
  %i.hd = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.ao, i32 noundef 2)
          to label %.noexc267 unwind label %bb.ay ; 3 uses

.noexc267:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264
  %.not.i.i265 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i265, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit268, label %bb.av

bb.av:                                            ; preds = %.noexc267
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !159
  %i.hg = shl i64 %i.hf, 32
  %i.hh = ashr exact i64 %i.hg, 32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !160
  %i.hk = lshr i64 %i.hh, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit268

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit268: ; preds = %bb.av, %.noexc267
  %.0293 = phi i64 [ %i.hk, %bb.av ], [ 0, %.noexc267 ]
  %.0.i.i266 = phi ptr [ %i.hj, %bb.av ], [ null, %.noexc267 ]
  switch i32 %i.j, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit272 [
    i32 15, label %bb.aw
    i32 13, label %bb.aw
  ]

bb.aw:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit268, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit268
  %i.hl = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.ao, i32 noundef 6)
          to label %.noexc271 unwind label %bb.ay ; 3 uses

.noexc271:                                        ; preds = %bb.aw
  %.not.i.i269 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i269, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit272, label %bb.ax

bb.ax:                                            ; preds = %.noexc271
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !159
  %i.ho = shl i64 %i.hn, 32
  %i.hp = ashr exact i64 %i.ho, 32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !160
  %i.hs = lshr i64 %i.hp, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit272

bb.ay:                                            ; preds = %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit, %bb.aw, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.ar
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit272: ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit268, %bb.ax, %.noexc271
  %.0292 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit268 ], [ %i.hs, %bb.ax ], [ 0, %.noexc271 ] ; 5 uses
  %.0209 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit268 ], [ %i.hr, %bb.ax ], [ null, %.noexc271 ] ; 7 uses
  %i.hu = add nsw i32 %i.g, -1
  %i.hv = shl nuw i32 1, %i.hu
  %notmask = shl nsw i32 -1, %i.g
  %i.hw = xor i32 %notmask, -1                    ; 8 uses
  %i.hx = add nsw i32 %i.g, -8
  %i.hy = shl i32 16, %i.hx
  %i.hz = sitofp i32 %i.hy to float               ; 4 uses
  %i.ia = load ptr, ptr %2, align 8, !tbaa !52
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 380
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !170
  %i.id = and i32 %i.ic, -2
  %narrow = icmp eq i32 %i.id, 14                 ; 5 uses
  %i.ie = zext i1 %narrow to i32                  ; 9 uses
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.ih = load i8, ptr %i.ig, align 2, !tbaa !161, !range !20, !noundef !21
  %i.ii = trunc nuw i8 %i.ih to i1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ik = load i16, ptr %i.ij, align 4, !tbaa !23
  %i.il = load i16, ptr %i.if, align 4, !tbaa !162
  invoke void @_Z29get_RGB_to_YCbCr_coefficientstt(ptr dead_on_unwind nonnull writable sret(%struct.RGB_to_YCbCr_coefficients) align 4 %15, i16 noundef zeroext %i.ik, i16 noundef zeroext %i.il)
          to label %.preheader298 unwind label %bb.az

.preheader298:                                    ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit272
  %.not310 = icmp eq i32 %i.e, 0
  br i1 %.not310, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.preheader297.lr.ph

.preheader297.lr.ph:                              ; preds = %.preheader298
  %.not311 = icmp eq i32 %i.c, 0
  %i.im = zext i1 %narrow to i64                  ; 31 uses
  %i.in = xor i32 %i.ie, 1
  %i.io = zext nneg i32 %i.in to i64              ; 31 uses
  %i.ip = xor i32 %i.ie, 3
  %i.iq = zext nneg i32 %i.ip to i64              ; 31 uses
  %i.ir = select i1 %narrow, i64 4, i64 5         ; 31 uses
  %i.is = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.it = load float, ptr %i.is, align 4          ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.iv = load float, ptr %i.iu, align 4          ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ix = load float, ptr %i.iw, align 4          ; 6 uses
  %i.iy = xor i32 %i.ie, 7
  %i.iz = zext nneg i32 %i.iy to i64              ; 20 uses
  br i1 %.not311, label %.preheader.lr.ph, label %.preheader297.lr.ph.split

.preheader297.lr.ph.split:                        ; preds = %.preheader297.lr.ph
  %wide.trip.count345 = zext i32 %i.e to i64      ; 4 uses
  %wide.trip.count340 = zext i32 %i.c to i64      ; 14 uses
  %i.ja = add nsw i64 %wide.trip.count340, -1     ; 6 uses
  %i.jb = add nsw i64 %wide.trip.count345, -1     ; 4 uses
  %i.jc = mul i64 %.0291, %i.jb
  %i.jd = add i64 %i.jc, %wide.trip.count340
  %i.je = shl i64 %i.jd, 1
  %scevgep525 = getelementptr i8, ptr %.0.i.i, i64 %i.je ; 7 uses
  switch i32 %i.j, label %.preheader297.preheader [
    i32 15, label %.preheader297.lr.ph.split.split.us
    i32 13, label %.preheader297.lr.ph.split.split.us
  ]

.preheader297.preheader:                          ; preds = %.preheader297.lr.ph.split
  %scevgep526 = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.jf = mul i64 %.0290, %i.jb                   ; 3 uses
  %i.jg = add nsw i64 %wide.trip.count340, -1
  %i.jh = zext nneg i32 %i.ap to i64
  %i.ji = mul nsw i64 %i.jg, %i.jh                ; 3 uses
  %i.jj = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.jf
  %i.jl = getelementptr i8, ptr %i.jk, i64 %i.ji
  %scevgep528 = getelementptr i8, ptr %.0.i.i.i, i64 %i.im
  %i.jm = add i64 %i.jf, %i.ji                    ; 2 uses
  %i.jn = getelementptr i8, ptr %.0.i.i.i, i64 %i.jm
  %i.jo = getelementptr i8, ptr %i.jn, i64 %i.im
  %16 = insertelement <2 x ptr> poison, ptr %i.jl, i64 0
  %17 = insertelement <2 x ptr> %16, ptr %i.jo, i64 1
  %18 = getelementptr i8, <2 x ptr> %17, <2 x i64> <i64 1, i64 5>
  %i.jp = getelementptr i8, ptr %.0.i.i.i, i64 %i.iq
  %scevgep532.a = getelementptr i8, ptr %.0.i.i.i, i64 %i.jm
  %i.jq = getelementptr i8, ptr %scevgep532.a, i64 %i.iq
  %i.jr = getelementptr i8, ptr %.0.i.i.i, i64 %i.io
  %i.js = getelementptr i8, ptr %.0.i.i.i, i64 %i.jf
  %19 = getelementptr i8, ptr %i.js, i64 %i.ji
  %20 = getelementptr i8, ptr %19, i64 %i.io
  %21 = insertelement <2 x ptr> poison, ptr %i.jq, i64 0
  %22 = insertelement <2 x ptr> %21, ptr %20, i64 1
  %23 = getelementptr i8, <2 x ptr> %22, i64 1
  %i.jt = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.ju = shufflevector <4 x ptr> %i.jt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jv = insertelement <4 x ptr> poison, ptr %scevgep526, i64 0
  %i.jw = insertelement <4 x ptr> %i.jv, ptr %scevgep528, i64 1
  %i.jx = insertelement <4 x ptr> %i.jw, ptr %i.jp, i64 2
  %i.jy = insertelement <4 x ptr> %i.jx, ptr %i.jr, i64 3
  %i.jz = insertelement <4 x ptr> poison, ptr %scevgep525, i64 0
  %i.ka = shufflevector <4 x ptr> %i.jz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %24 = shufflevector <2 x ptr> %18, <2 x ptr> %23, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %min.iters.check552 = icmp ult i32 %i.c, 8
  %i.kb = trunc i64 %i.ja to i32
  %mul522 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ap, i32 %i.kb)
  %mul.overflow523 = extractvalue { i32, i1 } %mul522, 1
  %i.kc = icmp ugt i64 %i.ja, 4294967295
  %i.kd = or i1 %mul.overflow523, %i.kc
  %i.ke = icmp ult <4 x ptr> %i.ju, %24
  %i.kf = icmp ult <4 x ptr> %i.jy, %i.ka
  %stride.check537 = icmp samesign ugt i64 %.0291, 4611686018427387903
  %stride.check538 = icmp slt i64 %.0290, 0
  %i.kg = and <4 x i1> %i.ke, %i.kf
  %i.kh = bitcast <4 x i1> %i.kg to i4
  %i.ki = icmp ne i4 %i.kh, 0
  %op.rdx = or i1 %i.ki, %stride.check538
  %op.rdx571 = or i1 %op.rdx, %stride.check537
  %n.vec554 = and i64 %wide.trip.count340, 4294967288 ; 3 uses
  %broadcast.splatinsert555 = insertelement <8 x float> poison, float %i.iv, i64 0
  %broadcast.splat556 = shufflevector <8 x float> %broadcast.splatinsert555, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert557 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat558 = shufflevector <8 x float> %broadcast.splatinsert557, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat560 = shufflevector <8 x float> %broadcast.splatinsert559, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert561 = insertelement <8 x float> poison, float %i.hz, i64 0
  %broadcast.splat562 = shufflevector <8 x float> %broadcast.splatinsert561, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert563 = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat564 = shufflevector <8 x i32> %broadcast.splatinsert563, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n569 = icmp eq i64 %n.vec554, %wide.trip.count340
  br label %.preheader297

.preheader297.lr.ph.split.split.us:               ; preds = %.preheader297.lr.ph.split, %.preheader297.lr.ph.split
  %i.kj = mul i64 %.0292, %i.jb
  %i.kk = add i64 %i.kj, %wide.trip.count340
  %i.kl = shl i64 %i.kk, 1
  %scevgep446 = getelementptr i8, ptr %.0209, i64 %i.kl ; 4 uses
  %scevgep447 = getelementptr i8, ptr %.0.i.i.i, i64 %i.iz ; 4 uses
  %i.km = mul i64 %.0290, %i.jb                   ; 3 uses
  %i.kn = add nsw i64 %wide.trip.count340, -1
  %i.ko = zext nneg i32 %i.ap to i64
  %i.kp = mul nsw i64 %i.kn, %i.ko                ; 3 uses
  %i.kq = add i64 %i.km, %i.kp                    ; 2 uses
  %i.kr = getelementptr i8, ptr %.0.i.i.i, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.iz
  %scevgep448 = getelementptr i8, ptr %i.ks, i64 1 ; 4 uses
  %scevgep449 = getelementptr i8, ptr %.0.i.i.i, i64 %i.im ; 4 uses
  %i.kt = getelementptr i8, ptr %.0.i.i.i, i64 %i.kq
  %i.ku = getelementptr i8, ptr %i.kt, i64 %i.im
  %scevgep451.a = getelementptr i8, ptr %i.ku, i64 7 ; 4 uses
  %i.kv = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir ; 4 uses
  %i.kw = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.km
  %scevgep453.a = getelementptr i8, ptr %i.kx, i64 %i.kp
  %i.ky = getelementptr i8, ptr %.0.i.i.i, i64 %i.iq ; 4 uses
  %25 = add i64 %i.km, %i.kp                      ; 2 uses
  %scevgep454.a = getelementptr i8, ptr %.0.i.i.i, i64 %25
  %scevgep455.a = getelementptr i8, ptr %scevgep454.a, i64 %i.iq ; 2 uses
  %26 = insertelement <2 x ptr> poison, ptr %scevgep453.a, i64 0
  %27 = insertelement <2 x ptr> %26, ptr %scevgep455.a, i64 1 ; 2 uses
  %28 = getelementptr i8, <2 x ptr> %27, i64 1
  %29 = getelementptr i8, <2 x ptr> %27, i64 1
  %scevgep454 = getelementptr i8, ptr %scevgep455.a, i64 1 ; 2 uses
  %scevgep455 = getelementptr i8, ptr %.0.i.i.i, i64 %i.io ; 4 uses
  %30 = getelementptr i8, ptr %.0.i.i.i, i64 %25
  %31 = getelementptr i8, ptr %30, i64 %i.io
  %scevgep456 = getelementptr i8, ptr %31, i64 1  ; 4 uses
  br i1 %i.ii, label %.preheader297.us.us.preheader, label %.preheader297.us.preheader

.preheader297.us.preheader:                       ; preds = %.preheader297.lr.ph.split.split.us
  %min.iters.check = icmp ult i32 %i.c, 8
  %i.kz = trunc i64 %i.ja to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ap, i32 %i.kz)
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.la = icmp ugt i64 %i.ja, 4294967295
  %i.lb = or i1 %mul.overflow, %i.la
  %i.lc = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.ld = shufflevector <4 x ptr> %i.lc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.le = insertelement <4 x ptr> poison, ptr %scevgep446, i64 0 ; 2 uses
  %32 = insertelement <4 x ptr> %i.le, ptr %scevgep448, i64 1
  %i.lf = insertelement <4 x ptr> %32, ptr %scevgep451.a, i64 2
  %33 = shufflevector <2 x ptr> %29, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %34 = shufflevector <4 x ptr> %i.lf, <4 x ptr> %33, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lg = icmp ult <4 x ptr> %i.ld, %34
  %i.lh = insertelement <4 x ptr> poison, ptr %.0209, i64 0 ; 2 uses
  %i.li = insertelement <4 x ptr> %i.lh, ptr %scevgep447, i64 1
  %i.lj = insertelement <4 x ptr> %i.li, ptr %scevgep449, i64 2
  %i.lk = insertelement <4 x ptr> %i.lj, ptr %i.kv, i64 3
  %i.ll = insertelement <4 x ptr> poison, ptr %scevgep525, i64 0
  %i.lm = shufflevector <4 x ptr> %i.ll, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ln = icmp ult <4 x ptr> %i.lk, %i.lm
  %i.lo = or i64 %.0292, %.0291
  %i.lp = icmp samesign ugt i64 %i.lo, 4611686018427387903
  %stride.check396 = icmp slt i64 %.0290, 0
  %i.lq = and <4 x i1> %i.lg, %i.ln
  %bound0405 = icmp ult ptr %.0.i.i, %scevgep454
  %bound1406 = icmp ult ptr %i.ky, %scevgep525
  %found.conflict407 = and i1 %bound0405, %bound1406
  %bound0409 = icmp ult ptr %.0.i.i, %scevgep456
  %bound1410 = icmp ult ptr %scevgep455, %scevgep525
  %found.conflict411 = and i1 %bound0409, %bound1410
  %35 = shufflevector <4 x ptr> %i.lh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %36 = insertelement <4 x ptr> poison, ptr %scevgep448, i64 0
  %37 = insertelement <4 x ptr> %36, ptr %scevgep451.a, i64 1
  %38 = shufflevector <4 x ptr> %37, <4 x ptr> %33, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lr = icmp ult <4 x ptr> %35, %38
  %i.ls = insertelement <4 x ptr> poison, ptr %scevgep447, i64 0
  %i.lt = insertelement <4 x ptr> %i.ls, ptr %scevgep449, i64 1
  %i.lu = insertelement <4 x ptr> %i.lt, ptr %i.kv, i64 2
  %i.lv = insertelement <4 x ptr> %i.lu, ptr %i.ky, i64 3
  %i.lw = shufflevector <4 x ptr> %i.le, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lx = icmp ult <4 x ptr> %i.lv, %i.lw
  %i.ly = and <4 x i1> %i.lr, %i.lx
  %bound0429 = icmp ult ptr %.0209, %scevgep456
  %bound1430 = icmp ult ptr %scevgep455, %scevgep446
  %found.conflict431 = and i1 %bound0429, %bound1430
  %rdx.op577 = or <4 x i1> %i.lq, %i.ly
  %i.lz = bitcast <4 x i1> %rdx.op577 to i4
  %i.ma = icmp ne i4 %i.lz, 0
  %op.rdx578 = or i1 %i.ma, %found.conflict407
  %op.rdx579 = or i1 %found.conflict411, %found.conflict431
  %op.rdx580 = or i1 %stride.check396, %i.lp
  %op.rdx581 = or i1 %op.rdx578, %op.rdx579
  %op.rdx582 = or i1 %op.rdx581, %op.rdx580
  %n.vec = and i64 %wide.trip.count340, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.iv, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert433 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat434 = shufflevector <8 x float> %broadcast.splatinsert433, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert435 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat436 = shufflevector <8 x float> %broadcast.splatinsert435, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert437 = insertelement <8 x float> poison, float %i.hz, i64 0
  %broadcast.splat438 = shufflevector <8 x float> %broadcast.splatinsert437, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert439 = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat440 = shufflevector <8 x i32> %broadcast.splatinsert439, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count340
  br label %.preheader297.us

.preheader297.us.us.preheader:                    ; preds = %.preheader297.lr.ph.split.split.us
  %min.iters.check504 = icmp ult i32 %i.c, 24
  %i.mb = trunc i64 %i.ja to i32
  %mul442 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ap, i32 %i.mb)
  %mul.overflow443 = extractvalue { i32, i1 } %mul442, 1
  %i.mc = icmp ugt i64 %i.ja, 4294967295
  %i.md = or i1 %mul.overflow443, %i.mc
  %i.me = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.mf = shufflevector <4 x ptr> %i.me, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.mg = insertelement <4 x ptr> poison, ptr %scevgep446, i64 0 ; 2 uses
  %39 = insertelement <4 x ptr> %i.mg, ptr %scevgep448, i64 1
  %i.mh = insertelement <4 x ptr> %39, ptr %scevgep451.a, i64 2
  %40 = shufflevector <2 x ptr> %28, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %41 = shufflevector <4 x ptr> %i.mh, <4 x ptr> %40, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mi = icmp ult <4 x ptr> %i.mf, %41
  %i.mj = insertelement <4 x ptr> poison, ptr %.0209, i64 0 ; 2 uses
  %i.mk = insertelement <4 x ptr> %i.mj, ptr %scevgep447, i64 1
  %i.ml = insertelement <4 x ptr> %i.mk, ptr %scevgep449, i64 2
  %i.mm = insertelement <4 x ptr> %i.ml, ptr %i.kv, i64 3
  %i.mn = insertelement <4 x ptr> poison, ptr %scevgep525, i64 0
  %i.mo = shufflevector <4 x ptr> %i.mn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.mp = icmp ult <4 x ptr> %i.mm, %i.mo
  %i.mq = or i64 %.0292, %.0291
  %i.mr = icmp samesign ugt i64 %i.mq, 4611686018427387903
  %stride.check465 = icmp slt i64 %.0290, 0
  %i.ms = and <4 x i1> %i.mi, %i.mp
  %bound0475 = icmp ult ptr %.0.i.i, %scevgep454
  %bound1476 = icmp ult ptr %i.ky, %scevgep525
  %found.conflict477 = and i1 %bound0475, %bound1476
  %bound0479 = icmp ult ptr %.0.i.i, %scevgep456
  %bound1480 = icmp ult ptr %scevgep455, %scevgep525
  %found.conflict481 = and i1 %bound0479, %bound1480
  %42 = shufflevector <4 x ptr> %i.mj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %43 = insertelement <4 x ptr> poison, ptr %scevgep448, i64 0
  %44 = insertelement <4 x ptr> %43, ptr %scevgep451.a, i64 1
  %45 = shufflevector <4 x ptr> %44, <4 x ptr> %40, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mt = icmp ult <4 x ptr> %42, %45
  %i.mu = insertelement <4 x ptr> poison, ptr %scevgep447, i64 0
  %i.mv = insertelement <4 x ptr> %i.mu, ptr %scevgep449, i64 1
  %i.mw = insertelement <4 x ptr> %i.mv, ptr %i.kv, i64 2
  %i.mx = insertelement <4 x ptr> %i.mw, ptr %i.ky, i64 3
  %i.my = shufflevector <4 x ptr> %i.mg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.mz = icmp ult <4 x ptr> %i.mx, %i.my
  %i.na = and <4 x i1> %i.mt, %i.mz
  %bound0499 = icmp ult ptr %.0209, %scevgep456
  %bound1500 = icmp ult ptr %scevgep455, %scevgep446
  %found.conflict501 = and i1 %bound0499, %bound1500
  %rdx.op = or <4 x i1> %i.ms, %i.na
  %i.nb = bitcast <4 x i1> %rdx.op to i4
  %i.nc = icmp ne i4 %i.nb, 0
  %op.rdx572 = or i1 %i.nc, %found.conflict477
  %op.rdx573 = or i1 %found.conflict481, %found.conflict501
  %op.rdx574 = or i1 %stride.check465, %i.mr
  %op.rdx575 = or i1 %op.rdx572, %op.rdx573
  %op.rdx576 = or i1 %op.rdx575, %op.rdx574
  %n.vec506 = and i64 %wide.trip.count340, 4294967288 ; 3 uses
  %broadcast.splatinsert507 = insertelement <8 x float> poison, float %i.iv, i64 0
  %broadcast.splat508 = shufflevector <8 x float> %broadcast.splatinsert507, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert509 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat510 = shufflevector <8 x float> %broadcast.splatinsert509, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert511 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat512 = shufflevector <8 x float> %broadcast.splatinsert511, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert513 = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat514 = shufflevector <8 x i32> %broadcast.splatinsert513, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n519 = icmp eq i64 %n.vec506, %wide.trip.count340
  br label %.preheader297.us.us

.preheader297.us.us:                              ; preds = %.preheader297.us.us.preheader, %._crit_edge.split.us.us.split.us.us
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %._crit_edge.split.us.us.split.us.us ], [ 0, %.preheader297.us.us.preheader ] ; 4 uses
  %i.nd = mul nsw i64 %.0290, %indvars.iv331
  %i.ne = getelementptr i8, ptr %.0.i.i.i, i64 %i.nd ; 9 uses
  %i.nf = mul i64 %.0291, %indvars.iv331
  %i.ng = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.nf ; 2 uses
  %i.nh = mul i64 %.0292, %indvars.iv331
  %i.ni = getelementptr [2 x i8], ptr %.0209, i64 %i.nh ; 2 uses
  %brmerge = select i1 %min.iters.check504, i1 true, i1 %i.md
  %brmerge593 = select i1 %brmerge, i1 true, i1 %op.rdx576
  br i1 %brmerge593, label %_Z10clip_f_u16fi.exit.us.us.us.us.preheader, label %vector.body515

vector.body515:                                   ; preds = %.preheader297.us.us, %vector.body515
  %index516 = phi i64 [ %index.next517, %vector.body515 ], [ 0, %.preheader297.us.us ] ; 4 uses
  %i.nj = trunc i64 %index516 to i32              ; 8 uses
  %i.nk = or disjoint i32 %i.nj, 1
  %i.nl = or disjoint i32 %i.nj, 2
  %i.nm = or disjoint i32 %i.nj, 3
  %i.nn = or disjoint i32 %i.nj, 4
  %i.no = or disjoint i32 %i.nj, 5
  %i.np = or disjoint i32 %i.nj, 6
  %i.nq = or disjoint i32 %i.nj, 7
  %i.nr = mul i32 %i.ap, %i.nj
  %i.ns = mul i32 %i.ap, %i.nk
  %i.nt = mul i32 %i.ap, %i.nl
  %i.nu = mul i32 %i.ap, %i.nm
  %i.nv = mul i32 %i.ap, %i.nn
  %i.nw = mul i32 %i.ap, %i.no
  %i.nx = mul i32 %i.ap, %i.np
  %i.ny = mul i32 %i.ap, %i.nq
  %i.nz = zext i32 %i.nr to i64
  %i.oa = zext i32 %i.ns to i64
  %i.ob = zext i32 %i.nt to i64
  %i.oc = zext i32 %i.nu to i64
  %i.od = zext i32 %i.nv to i64
  %i.oe = zext i32 %i.nw to i64
  %i.of = zext i32 %i.nx to i64
  %i.og = zext i32 %i.ny to i64
  %i.oh = getelementptr i8, ptr %i.ne, i64 %i.nz  ; 5 uses
  %i.oi = getelementptr i8, ptr %i.ne, i64 %i.oa  ; 5 uses
  %i.oj = getelementptr i8, ptr %i.ne, i64 %i.ob  ; 5 uses
  %i.ok = getelementptr i8, ptr %i.ne, i64 %i.oc  ; 5 uses
  %i.ol = getelementptr i8, ptr %i.ne, i64 %i.od  ; 5 uses
  %i.om = getelementptr i8, ptr %i.ne, i64 %i.oe  ; 5 uses
  %i.on = getelementptr i8, ptr %i.ne, i64 %i.of  ; 5 uses
  %i.oo = getelementptr i8, ptr %i.ne, i64 %i.og  ; 5 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.im ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.im ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.im ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.im ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.im ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.im ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.im ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.im ; 4 uses
  %i.ox = load i8, ptr %i.op, align 1, !tbaa !132, !alias.scope !383
  %i.oy = load i8, ptr %i.oq, align 1, !tbaa !132, !alias.scope !383
  %i.oz = load i8, ptr %i.or, align 1, !tbaa !132, !alias.scope !383
  %i.pa = load i8, ptr %i.os, align 1, !tbaa !132, !alias.scope !383
  %i.pb = load i8, ptr %i.ot, align 1, !tbaa !132, !alias.scope !383
  %i.pc = load i8, ptr %i.ou, align 1, !tbaa !132, !alias.scope !383
  %i.pd = load i8, ptr %i.ov, align 1, !tbaa !132, !alias.scope !383
  %i.pe = load i8, ptr %i.ow, align 1, !tbaa !132, !alias.scope !383
  %i.pf = insertelement <8 x i8> poison, i8 %i.ox, i64 0
  %i.pg = insertelement <8 x i8> %i.pf, i8 %i.oy, i64 1
  %i.ph = insertelement <8 x i8> %i.pg, i8 %i.oz, i64 2
  %i.pi = insertelement <8 x i8> %i.ph, i8 %i.pa, i64 3
  %i.pj = insertelement <8 x i8> %i.pi, i8 %i.pb, i64 4
  %i.pk = insertelement <8 x i8> %i.pj, i8 %i.pc, i64 5
  %i.pl = insertelement <8 x i8> %i.pk, i8 %i.pd, i64 6
  %i.pm = insertelement <8 x i8> %i.pl, i8 %i.pe, i64 7
  %i.pn = zext <8 x i8> %i.pm to <8 x i32>
  %i.po = shl nuw nsw <8 x i32> %i.pn, splat (i32 8)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.io
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.io
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.io
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.io
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.io
  %i.pu = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.io
  %i.pv = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.io
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.io
  %i.px = load i8, ptr %i.pp, align 1, !tbaa !132, !alias.scope !384
  %i.py = load i8, ptr %i.pq, align 1, !tbaa !132, !alias.scope !384
  %i.pz = load i8, ptr %i.pr, align 1, !tbaa !132, !alias.scope !384
  %i.qa = load i8, ptr %i.ps, align 1, !tbaa !132, !alias.scope !384
  %i.qb = load i8, ptr %i.pt, align 1, !tbaa !132, !alias.scope !384
  %i.qc = load i8, ptr %i.pu, align 1, !tbaa !132, !alias.scope !384
  %i.qd = load i8, ptr %i.pv, align 1, !tbaa !132, !alias.scope !384
  %i.qe = load i8, ptr %i.pw, align 1, !tbaa !132, !alias.scope !384
  %i.qf = insertelement <8 x i8> poison, i8 %i.px, i64 0
  %i.qg = insertelement <8 x i8> %i.qf, i8 %i.py, i64 1
  %i.qh = insertelement <8 x i8> %i.qg, i8 %i.pz, i64 2
  %i.qi = insertelement <8 x i8> %i.qh, i8 %i.qa, i64 3
  %i.qj = insertelement <8 x i8> %i.qi, i8 %i.qb, i64 4
  %i.qk = insertelement <8 x i8> %i.qj, i8 %i.qc, i64 5
  %i.ql = insertelement <8 x i8> %i.qk, i8 %i.qd, i64 6
  %i.qm = insertelement <8 x i8> %i.ql, i8 %i.qe, i64 7
  %i.qn = zext <8 x i8> %i.qm to <8 x i32>
  %i.qo = or disjoint <8 x i32> %i.po, %i.qn
  %i.qp = uitofp nneg <8 x i32> %i.qo to <8 x float>
  %i.qq = getelementptr inbounds nuw i8, ptr %i.op, i64 2
  %i.qr = getelementptr inbounds nuw i8, ptr %i.oq, i64 2
  %i.qs = getelementptr inbounds nuw i8, ptr %i.or, i64 2
  %i.qt = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ot, i64 2
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ov, i64 2
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ow, i64 2
  %i.qy = load i8, ptr %i.qq, align 1, !tbaa !132, !alias.scope !383
  %i.qz = load i8, ptr %i.qr, align 1, !tbaa !132, !alias.scope !383
  %i.ra = load i8, ptr %i.qs, align 1, !tbaa !132, !alias.scope !383
  %i.rb = load i8, ptr %i.qt, align 1, !tbaa !132, !alias.scope !383
  %i.rc = load i8, ptr %i.qu, align 1, !tbaa !132, !alias.scope !383
  %i.rd = load i8, ptr %i.qv, align 1, !tbaa !132, !alias.scope !383
  %i.re = load i8, ptr %i.qw, align 1, !tbaa !132, !alias.scope !383
  %i.rf = load i8, ptr %i.qx, align 1, !tbaa !132, !alias.scope !383
  %i.rg = insertelement <8 x i8> poison, i8 %i.qy, i64 0
  %i.rh = insertelement <8 x i8> %i.rg, i8 %i.qz, i64 1
  %i.ri = insertelement <8 x i8> %i.rh, i8 %i.ra, i64 2
  %i.rj = insertelement <8 x i8> %i.ri, i8 %i.rb, i64 3
  %i.rk = insertelement <8 x i8> %i.rj, i8 %i.rc, i64 4
  %i.rl = insertelement <8 x i8> %i.rk, i8 %i.rd, i64 5
  %i.rm = insertelement <8 x i8> %i.rl, i8 %i.re, i64 6
  %i.rn = insertelement <8 x i8> %i.rm, i8 %i.rf, i64 7
  %i.ro = zext <8 x i8> %i.rn to <8 x i32>
  %i.rp = shl nuw nsw <8 x i32> %i.ro, splat (i32 8)
  %i.rq = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.iq
  %i.rr = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.iq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.iq
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.iq
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.iq
  %i.rv = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.iq
  %i.rw = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.iq
  %i.rx = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.iq
  %i.ry = load i8, ptr %i.rq, align 1, !tbaa !132, !alias.scope !385
  %i.rz = load i8, ptr %i.rr, align 1, !tbaa !132, !alias.scope !385
  %i.sa = load i8, ptr %i.rs, align 1, !tbaa !132, !alias.scope !385
  %i.sb = load i8, ptr %i.rt, align 1, !tbaa !132, !alias.scope !385
  %i.sc = load i8, ptr %i.ru, align 1, !tbaa !132, !alias.scope !385
  %i.sd = load i8, ptr %i.rv, align 1, !tbaa !132, !alias.scope !385
  %i.se = load i8, ptr %i.rw, align 1, !tbaa !132, !alias.scope !385
  %i.sf = load i8, ptr %i.rx, align 1, !tbaa !132, !alias.scope !385
  %i.sg = insertelement <8 x i8> poison, i8 %i.ry, i64 0
  %i.sh = insertelement <8 x i8> %i.sg, i8 %i.rz, i64 1
  %i.si = insertelement <8 x i8> %i.sh, i8 %i.sa, i64 2
  %i.sj = insertelement <8 x i8> %i.si, i8 %i.sb, i64 3
  %i.sk = insertelement <8 x i8> %i.sj, i8 %i.sc, i64 4
  %i.sl = insertelement <8 x i8> %i.sk, i8 %i.sd, i64 5
  %i.sm = insertelement <8 x i8> %i.sl, i8 %i.se, i64 6
  %i.sn = insertelement <8 x i8> %i.sm, i8 %i.sf, i64 7
  %i.so = zext <8 x i8> %i.sn to <8 x i32>
  %i.sp = or disjoint <8 x i32> %i.rp, %i.so
  %i.sq = uitofp nneg <8 x i32> %i.sp to <8 x float>
  %i.sr = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  %i.ss = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.st = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.su = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %i.sz = load i8, ptr %i.sr, align 1, !tbaa !132, !alias.scope !383
  %i.ta = load i8, ptr %i.ss, align 1, !tbaa !132, !alias.scope !383
  %i.tb = load i8, ptr %i.st, align 1, !tbaa !132, !alias.scope !383
  %i.tc = load i8, ptr %i.su, align 1, !tbaa !132, !alias.scope !383
  %i.td = load i8, ptr %i.sv, align 1, !tbaa !132, !alias.scope !383
  %i.te = load i8, ptr %i.sw, align 1, !tbaa !132, !alias.scope !383
  %i.tf = load i8, ptr %i.sx, align 1, !tbaa !132, !alias.scope !383
  %i.tg = load i8, ptr %i.sy, align 1, !tbaa !132, !alias.scope !383
  %i.th = insertelement <8 x i8> poison, i8 %i.sz, i64 0
  %i.ti = insertelement <8 x i8> %i.th, i8 %i.ta, i64 1
  %i.tj = insertelement <8 x i8> %i.ti, i8 %i.tb, i64 2
  %i.tk = insertelement <8 x i8> %i.tj, i8 %i.tc, i64 3
  %i.tl = insertelement <8 x i8> %i.tk, i8 %i.td, i64 4
  %i.tm = insertelement <8 x i8> %i.tl, i8 %i.te, i64 5
  %i.tn = insertelement <8 x i8> %i.tm, i8 %i.tf, i64 6
  %i.to = insertelement <8 x i8> %i.tn, i8 %i.tg, i64 7
  %i.tp = zext <8 x i8> %i.to to <8 x i32>
  %i.tq = shl nuw nsw <8 x i32> %i.tp, splat (i32 8)
  %i.tr = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ir
  %i.ts = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ir
  %i.tt = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ir
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.ir
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.ir
  %i.tw = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.ir
  %i.tx = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.ir
end_hunk_0
