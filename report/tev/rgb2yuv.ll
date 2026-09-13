Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rgb2yuv?download=true
inline.NumInlined: 784
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK15Op_RGB_to_YCbCrIhE18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateSA_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
          to label %.noexc368 unwind label %bb.bl ; 3 uses

.noexc368:                                        ; preds = %bb.bb
  %.not.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.bc

bb.bc:                                            ; preds = %.noexc368
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !160
  %sext.i.i.i = shl i64 %i.he, 32
  %i.hf = ashr exact i64 %sext.i.i.i, 32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !161
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.bc, %.noexc368
  %.0451 = phi i64 [ %i.hf, %bb.bc ], [ 0, %.noexc368 ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.hh, %bb.bc ], [ null, %.noexc368 ] ; 8 uses
  %i.hi = load ptr, ptr %2, align 8, !tbaa !53
  %i.hj = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hi, i32 noundef 4)
          to label %.noexc372 unwind label %bb.bl ; 3 uses

.noexc372:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i.i369 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i369, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit373, label %bb.bd

bb.bd:                                            ; preds = %.noexc372
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 80
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !160
  %sext.i.i.i370 = shl i64 %i.hl, 32
  %i.hm = ashr exact i64 %sext.i.i.i370, 32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !161
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit373

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit373: ; preds = %bb.bd, %.noexc372
  %.0452 = phi i64 [ %i.hm, %bb.bd ], [ 0, %.noexc372 ] ; 11 uses
  %.0.i.i.i371 = phi ptr [ %i.ho, %bb.bd ], [ null, %.noexc372 ] ; 11 uses
  %i.hp = load ptr, ptr %2, align 8, !tbaa !53
  %i.hq = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hp, i32 noundef 5)
          to label %.noexc377 unwind label %bb.bl ; 3 uses

.noexc377:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit373
  %.not.i.i.i374 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i374, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit378, label %bb.be

bb.be:                                            ; preds = %.noexc377
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !160
  %sext.i.i.i375 = shl i64 %i.hs, 32
  %i.ht = ashr exact i64 %sext.i.i.i375, 32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !161
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit378

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit378: ; preds = %bb.be, %.noexc377
  %.0460 = phi i64 [ %i.ht, %bb.be ], [ 0, %.noexc377 ] ; 7 uses
  %.0.i.i.i376 = phi ptr [ %i.hv, %bb.be ], [ null, %.noexc377 ] ; 7 uses
  %i.hw = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bi, i32 noundef 0)
          to label %.noexc379 unwind label %bb.bl ; 3 uses

.noexc379:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit378
  %.not.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.bf

bb.bf:                                            ; preds = %.noexc379
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !160
  %sext.i.i = shl i64 %i.hy, 32
  %i.hz = ashr exact i64 %sext.i.i, 32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !161
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.bf, %.noexc379
  %.0457 = phi i64 [ %i.hz, %bb.bf ], [ 0, %.noexc379 ] ; 11 uses
  %.0.i.i = phi ptr [ %i.ib, %bb.bf ], [ null, %.noexc379 ] ; 11 uses
  %i.ic = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bi, i32 noundef 1)
          to label %.noexc383 unwind label %bb.bl ; 3 uses

.noexc383:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i380 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i380, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit384, label %bb.bg

bb.bg:                                            ; preds = %.noexc383
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 80
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !160
  %sext.i.i381 = shl i64 %i.ie, 32
  %i.if = ashr exact i64 %sext.i.i381, 32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 56
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !161
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit384

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit384: ; preds = %bb.bg, %.noexc383
  %.0456 = phi i64 [ %i.if, %bb.bg ], [ 0, %.noexc383 ]
  %.0.i.i382 = phi ptr [ %i.ih, %bb.bg ], [ null, %.noexc383 ]
  %i.ii = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bi, i32 noundef 2)
          to label %.noexc388 unwind label %bb.bl ; 3 uses

.noexc388:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit384
  %.not.i.i385 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i385, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389, label %bb.bh

bb.bh:                                            ; preds = %.noexc388
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 80
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !160
  %sext.i.i386 = shl i64 %i.ik, 32
  %i.il = ashr exact i64 %sext.i.i386, 32
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 56
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !161
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389: ; preds = %bb.bh, %.noexc388
  %.0455 = phi i64 [ %i.il, %bb.bh ], [ 0, %.noexc388 ] ; 2 uses
  %.0.i.i387 = phi ptr [ %i.in, %bb.bh ], [ null, %.noexc388 ] ; 3 uses
  br i1 %i.v, label %bb.bi, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit399

bb.bi:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389
  %i.io = load ptr, ptr %2, align 8, !tbaa !53
  %i.ip = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.io, i32 noundef 6)
          to label %.noexc393 unwind label %bb.bm ; 3 uses

.noexc393:                                        ; preds = %bb.bi
  %.not.i.i.i390 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i390, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit394, label %bb.bj

bb.bj:                                            ; preds = %.noexc393
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !160
  %sext.i.i.i391 = shl i64 %i.ir, 32
  %i.is = ashr exact i64 %sext.i.i.i391, 32
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !161
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit394

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit394: ; preds = %bb.bj, %.noexc393
  %.1459 = phi i64 [ %i.is, %bb.bj ], [ 0, %.noexc393 ] ; 2 uses
  %.0.i.i.i392 = phi ptr [ %i.iu, %bb.bj ], [ null, %.noexc393 ] ; 2 uses
  %i.iv = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bi, i32 noundef 6)
          to label %.noexc398 unwind label %bb.bm ; 3 uses

.noexc398:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit394
  %.not.i.i395 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i395, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit399, label %bb.bk

bb.bk:                                            ; preds = %.noexc398
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 80
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !160
  %sext.i.i396 = shl i64 %i.ix, 32
  %i.iy = ashr exact i64 %sext.i.i396, 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !161
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit399

bb.bl:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit384, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit378, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit373, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.bb
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bm:                                            ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit394, %bb.bi
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit399: ; preds = %bb.bk, %.noexc398, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389
  %.0458 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389 ], [ %.1459, %.noexc398 ], [ %.1459, %bb.bk ] ; 3 uses
  %.0453 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389 ], [ 0, %.noexc398 ], [ %i.iy, %bb.bk ] ; 3 uses
  %.0304 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389 ], [ %.0.i.i.i392, %.noexc398 ], [ %.0.i.i.i392, %bb.bk ] ; 3 uses
  %.0303 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389 ], [ null, %.noexc398 ], [ %i.ja, %bb.bk ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZN25RGB_to_YCbCr_coefficients8defaultsEv(ptr dead_on_unwind nonnull writable sret(%struct.RGB_to_YCbCr_coefficients) align 4 %15)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit399
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.jf = load i8, ptr %i.je, align 2, !tbaa !162, !range !20, !noundef !21
  %i.jg = trunc nuw i8 %i.jf to i1                ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ji = load i16, ptr %i.jh, align 4, !tbaa !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.jj = load i16, ptr %i.jd, align 4, !tbaa !163
  invoke void @_Z29get_RGB_to_YCbCr_coefficientstt(ptr dead_on_unwind nonnull writable sret(%struct.RGB_to_YCbCr_coefficients) align 4 %16, i16 noundef zeroext %i.ji, i16 noundef zeroext %i.jj)
          to label %bb.bo unwind label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %15, ptr noundef nonnull align 4 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !164
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %.not498.a = icmp eq i32 %i.e, 0                ; 2 uses
  br i1 %.not498.a, label %._crit_edge488, label %.preheader475.lr.ph

.preheader475.lr.ph:                              ; preds = %bb.bo
  %.not499 = icmp eq i32 %i.c, 0
  %i.jk = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  br i1 %.not499, label %._crit_edge488, label %.preheader475.preheader

.preheader475.preheader:                          ; preds = %.preheader475.lr.ph
  %wide.trip.count529 = zext i32 %i.e to i64      ; 5 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 36 uses
  %wide.trip.count514 = zext i32 %i.c to i64
  %wide.trip.count519 = zext i32 %i.c to i64
  %wide.trip.count524 = zext i32 %i.c to i64
  %i.jn = add nsw i64 %wide.trip.count529, -1     ; 4 uses
  %i.jo = mul i64 %.0457, %i.jn
  %i.jp = getelementptr i8, ptr %.0.i.i, i64 %i.jo
  %scevgep = getelementptr i8, ptr %i.jp, i64 %wide.trip.count
  %i.jq = mul i64 %.0451, %i.jn
  %i.jr = getelementptr i8, ptr %.0.i.i.i, i64 %i.jq
  %scevgep577.a = getelementptr i8, ptr %i.jr, i64 %wide.trip.count
  %i.js = mul i64 %.0452, %i.jn
  %i.jt = getelementptr i8, ptr %.0.i.i.i371, i64 %i.js
  %scevgep578.a = getelementptr i8, ptr %i.jt, i64 %wide.trip.count
  %i.ju = mul i64 %.0460, %i.jn
  %i.jv = getelementptr i8, ptr %.0.i.i.i376, i64 %i.ju
  %scevgep579.a = getelementptr i8, ptr %i.jv, i64 %wide.trip.count
  %scevgep580 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.jw = add nsw i64 %wide.trip.count529, -1     ; 2 uses
  %i.jx = mul i64 %.0457, %i.jw
  %i.jy = getelementptr i8, ptr %.0.i.i, i64 %i.jx
  %scevgep605.a = getelementptr i8, ptr %i.jy, i64 %wide.trip.count
  %i.jz = mul i64 %.0452, %i.jw
  %i.ka = getelementptr i8, ptr %.0.i.i.i371, i64 %i.jz
  %scevgep606 = getelementptr i8, ptr %i.ka, i64 %wide.trip.count
  %i.kb = add nsw i64 %wide.trip.count529, -1     ; 2 uses
  %i.kc = mul i64 %.0457, %i.kb
  %i.kd = getelementptr i8, ptr %.0.i.i, i64 %i.kc
  %scevgep631.a = getelementptr i8, ptr %i.kd, i64 %wide.trip.count
  %i.ke = mul i64 %.0452, %i.kb
  %i.kf = getelementptr i8, ptr %.0.i.i.i371, i64 %i.ke
  %scevgep632 = getelementptr i8, ptr %i.kf, i64 %wide.trip.count
  %i.kg = add nsw i64 %wide.trip.count529, -1     ; 4 uses
  %i.kh = mul i64 %.0457, %i.kg
  %i.ki = getelementptr i8, ptr %.0.i.i, i64 %i.kh
  %scevgep665.a = getelementptr i8, ptr %i.ki, i64 %wide.trip.count ; 3 uses
  %i.kj = mul i64 %.0452, %i.kg
  %i.kk = getelementptr i8, ptr %.0.i.i.i371, i64 %i.kj
  %scevgep666.a = getelementptr i8, ptr %i.kk, i64 %wide.trip.count
  %i.kl = mul i64 %.0451, %i.kg
  %i.km = getelementptr i8, ptr %.0.i.i.i, i64 %i.kl
  %scevgep667.a = getelementptr i8, ptr %i.km, i64 %wide.trip.count
  %i.kn = mul i64 %.0460, %i.kg
  %i.ko = getelementptr i8, ptr %.0.i.i.i376, i64 %i.kn
  %scevgep668 = getelementptr i8, ptr %i.ko, i64 %wide.trip.count
  %i.kp = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.kq = shufflevector <4 x ptr> %i.kp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.kr = insertelement <4 x ptr> poison, ptr %scevgep577.a, i64 0
  %i.ks = insertelement <4 x ptr> %i.kr, ptr %scevgep578.a, i64 1
  %i.kt = insertelement <4 x ptr> %i.ks, ptr %scevgep579.a, i64 2
  %i.ku = insertelement <4 x ptr> %i.kt, ptr %scevgep580, i64 3
  %i.kv = insertelement <4 x ptr> poison, ptr %.0.i.i.i, i64 0
  %i.kw = insertelement <4 x ptr> %i.kv, ptr %.0.i.i.i371, i64 1
  %i.kx = insertelement <4 x ptr> %i.kw, ptr %.0.i.i.i376, i64 2
  %i.ky = insertelement <4 x ptr> %i.kx, ptr %i.jk, i64 3
  %i.kz = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.la = shufflevector <4 x ptr> %i.kz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check687 = icmp ult i32 %i.c, 8
  %bound0669 = icmp ult ptr %.0.i.i, %scevgep666.a
  %bound1670 = icmp ult ptr %.0.i.i.i371, %scevgep665.a
  %found.conflict671 = and i1 %bound0669, %bound1670
  %i.lb = or i64 %.0452, %.0457
  %i.lc = icmp slt i64 %i.lb, 0
  %i.ld = or i1 %found.conflict671, %i.lc
  %bound0674 = icmp ult ptr %.0.i.i, %scevgep667.a
  %bound1675 = icmp ult ptr %.0.i.i.i, %scevgep665.a
  %found.conflict676 = and i1 %bound0674, %bound1675
  %i.le = or i64 %.0451, %.0457
  %i.lf = icmp slt i64 %i.le, 0
  %i.lg = or i1 %found.conflict676, %i.lf
  %conflict.rdx679 = or i1 %i.ld, %i.lg
  %bound0680 = icmp ult ptr %.0.i.i, %scevgep668
  %bound1681 = icmp ult ptr %.0.i.i.i376, %scevgep665.a
  %found.conflict682 = and i1 %bound0680, %bound1681
  %i.lh = or i64 %.0460, %.0457
  %i.li = icmp slt i64 %i.lh, 0
  %i.lj = or i1 %found.conflict682, %i.li
  %conflict.rdx685 = or i1 %conflict.rdx679, %i.lj
  %min.iters.check689 = icmp ult i32 %i.c, 32
  %i.lk = and i64 %wide.trip.count, 24
  %n.vec691 = and i64 %wide.trip.count, 4294967264 ; 4 uses
  %cmp.n702 = icmp eq i64 %n.vec691, %wide.trip.count
  %min.epilog.iters.check707 = icmp eq i64 %i.lk, 0
  %n.vec709 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n717 = icmp eq i64 %n.vec709, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ll = add nsw i64 %wide.trip.count, -1
  %min.iters.check613.a = icmp ult i32 %i.c, 4    ; 2 uses
  %bound0633 = icmp ult ptr %.0.i.i, %scevgep632
  %bound1634 = icmp ult ptr %.0.i.i.i371, %scevgep631.a
  %found.conflict635 = and i1 %bound0633, %bound1634
  %i.lm = or i64 %.0452, %.0457
  %i.ln = icmp slt i64 %i.lm, 0
  %i.lo = or i1 %found.conflict635, %i.ln
  %min.iters.check641 = icmp ult i32 %i.c, 16
  %i.lp = and i64 %wide.trip.count, 12
  %n.vec643 = and i64 %wide.trip.count, 4294967280 ; 4 uses
  %cmp.n648 = icmp eq i64 %n.vec643, %wide.trip.count
  %cmp.n649 = icmp eq i64 %i.lp, 0
  %n.vec655 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %min.epilog.iters.check654 = icmp eq i64 %n.vec655, %wide.trip.count
  %n.vec656 = and i64 %wide.trip.count, 1
  %cmp.n662 = icmp eq i64 %n.vec656, 0
  %17 = add nsw i64 %wide.trip.count, -1
  %bound0607 = icmp ult ptr %.0.i.i, %scevgep606
  %bound1608 = icmp ult ptr %.0.i.i.i371, %scevgep605.a
  %found.conflict609 = and i1 %bound0607, %bound1608
  %i.lq = or i64 %.0452, %.0457
  %i.lr = icmp slt i64 %i.lq, 0
  %i.ls = or i1 %found.conflict609, %i.lr
  %min.iters.check614 = icmp ult i32 %i.c, 32
  %i.lt = and i64 %wide.trip.count, 28
  %n.vec616 = and i64 %wide.trip.count, 4294967264 ; 4 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.lt, 0
  %n.vec624 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n628 = icmp eq i64 %n.vec624, %wide.trip.count
  %xtraiter729 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod730.not = icmp eq i64 %xtraiter729, 0
  %min.iters.check = icmp ult i32 %i.c, 4
  %i.lu = icmp ult <4 x ptr> %i.kq, %i.ku
  %i.lv = icmp ult <4 x ptr> %i.ky, %i.la
  %i.lw = or i64 %.0460, %.0457
  %i.lx = and <4 x i1> %i.lu, %i.lv
  %i.ly = bitcast <4 x i1> %i.lx to i4
  %i.lz = icmp ne i4 %i.ly, 0
  %i.ma = or i64 %.0452, %i.lw
  %i.mb = or i64 %.0451, %i.ma
  %i.mc = icmp slt i64 %i.mb, 0
  %op.rdx721 = or i1 %i.lz, %i.mc
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader475

.preheader475:                                    ; preds = %.preheader475.preheader, %._crit_edge
  %indvars.iv526 = phi i64 [ 0, %.preheader475.preheader ], [ %indvars.iv.next527, %._crit_edge ] ; 5 uses
  %i.md = mul nsw i64 %.0452, %indvars.iv526
  %i.me = getelementptr i8, ptr %.0.i.i.i371, i64 %i.md ; 19 uses
  %i.mf = mul nsw i64 %.0451, %indvars.iv526
  %i.mg = getelementptr i8, ptr %.0.i.i.i, i64 %i.mf ; 7 uses
  %i.mh = mul nsw i64 %.0460, %indvars.iv526
  %i.mi = getelementptr i8, ptr %.0.i.i.i376, i64 %i.mh ; 7 uses
  %i.mj = mul nsw i64 %.0457, %indvars.iv526
  %i.mk = getelementptr i8, ptr %.0.i.i, i64 %i.mj ; 19 uses
  switch i16 %i.ji, label %_Z10clip_f_u16fi.exit401.preheader [
    i16 0, label %.lr.ph.split.us
    i16 8, label %iter.check704
  ]

iter.check704:                                    ; preds = %.preheader475
  %brmerge = select i1 %min.iters.check687, i1 true, i1 %conflict.rdx685
  br i1 %brmerge, label %.lr.ph.split.us477.preheader, label %vector.main.loop.iter.check688

vector.main.loop.iter.check688:                   ; preds = %iter.check704
  br i1 %min.iters.check689, label %vec.epilog.ph708, label %vector.body692

vector.body692:                                   ; preds = %vector.main.loop.iter.check688, %vector.body692
  %index693 = phi i64 [ %index.next700, %vector.body692 ], [ 0, %vector.main.loop.iter.check688 ] ; 5 uses
  %i.ml = getelementptr i8, ptr %i.me, i64 %index693 ; 2 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 16
  %wide.load694.a = load <16 x i8>, ptr %i.ml, align 1, !tbaa !133, !alias.scope !240
  %wide.load695.a = load <16 x i8>, ptr %i.mm, align 1, !tbaa !133, !alias.scope !240
  %i.mn = lshr <16 x i8> %wide.load694.a, splat (i8 1)
  %i.mo = lshr <16 x i8> %wide.load695.a, splat (i8 1)
  %i.mp = getelementptr i8, ptr %i.mg, i64 %index693 ; 2 uses
  %i.mq = getelementptr i8, ptr %i.mp, i64 16
  %wide.load696.a = load <16 x i8>, ptr %i.mp, align 1, !tbaa !133, !alias.scope !241
  %wide.load697.a = load <16 x i8>, ptr %i.mq, align 1, !tbaa !133, !alias.scope !241
  %i.mr = zext <16 x i8> %wide.load696.a to <16 x i16>
  %i.ms = zext <16 x i8> %wide.load697.a to <16 x i16>
  %i.mt = getelementptr i8, ptr %i.mi, i64 %index693 ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 16
  %wide.load698.a = load <16 x i8>, ptr %i.mt, align 1, !tbaa !133, !alias.scope !242
  %wide.load699 = load <16 x i8>, ptr %i.mu, align 1, !tbaa !133, !alias.scope !242
  %i.mv = zext <16 x i8> %wide.load698.a to <16 x i16>
  %i.mw = zext <16 x i8> %wide.load699 to <16 x i16>
  %i.mx = add nuw nsw <16 x i16> %i.mv, %i.mr
  %i.my = add nuw nsw <16 x i16> %i.mw, %i.ms
  %i.mz = lshr <16 x i16> %i.mx, splat (i16 2)
  %i.na = lshr <16 x i16> %i.my, splat (i16 2)
  %i.nb = trunc nuw nsw <16 x i16> %i.mz to <16 x i8>
  %i.nc = trunc nuw nsw <16 x i16> %i.na to <16 x i8>
  %i.nd = add nuw <16 x i8> %i.mn, %i.nb
  %i.ne = add nuw <16 x i8> %i.mo, %i.nc
  %i.nf = getelementptr i8, ptr %i.mk, i64 %index693 ; 2 uses
  %i.ng = getelementptr i8, ptr %i.nf, i64 16
  store <16 x i8> %i.nd, ptr %i.nf, align 1, !tbaa !133, !alias.scope !243, !noalias !244
  store <16 x i8> %i.ne, ptr %i.ng, align 1, !tbaa !133, !alias.scope !243, !noalias !244
  %index.next700 = add nuw i64 %index693, 32      ; 2 uses
  %i.nh = icmp eq i64 %index.next700, %n.vec691
  br i1 %i.nh, label %middle.block701, label %vector.body692, !llvm.loop !205

middle.block701:                                  ; preds = %vector.body692
  br i1 %cmp.n702, label %._crit_edge, label %vec.epilog.iter.check706

vec.epilog.iter.check706:                         ; preds = %middle.block701
  br i1 %min.epilog.iters.check707, label %.lr.ph.split.us477.preheader, label %vec.epilog.ph708, !prof !245

vec.epilog.ph708:                                 ; preds = %vector.main.loop.iter.check688, %vec.epilog.iter.check706
  %vec.epilog.resume.val703 = phi i64 [ %n.vec691, %vec.epilog.iter.check706 ], [ 0, %vector.main.loop.iter.check688 ]
  br label %vec.epilog.vector.body710

vec.epilog.vector.body710:                        ; preds = %vec.epilog.vector.body710, %vec.epilog.ph708
  %index711 = phi i64 [ %vec.epilog.resume.val703, %vec.epilog.ph708 ], [ %index.next715, %vec.epilog.vector.body710 ] ; 5 uses
  %i.ni = getelementptr i8, ptr %i.me, i64 %index711
  %wide.load712.a = load <8 x i8>, ptr %i.ni, align 1, !tbaa !133, !alias.scope !240
  %i.nj = lshr <8 x i8> %wide.load712.a, splat (i8 1)
  %i.nk = getelementptr i8, ptr %i.mg, i64 %index711
  %wide.load713.a = load <8 x i8>, ptr %i.nk, align 1, !tbaa !133, !alias.scope !241
  %i.nl = zext <8 x i8> %wide.load713.a to <8 x i16>
  %i.nm = getelementptr i8, ptr %i.mi, i64 %index711
  %wide.load714 = load <8 x i8>, ptr %i.nm, align 1, !tbaa !133, !alias.scope !242
  %i.nn = zext <8 x i8> %wide.load714 to <8 x i16>
  %i.no = add nuw nsw <8 x i16> %i.nn, %i.nl
  %i.np = lshr <8 x i16> %i.no, splat (i16 2)
  %i.nq = trunc nuw nsw <8 x i16> %i.np to <8 x i8>
  %i.nr = add nuw <8 x i8> %i.nj, %i.nq
  %i.ns = getelementptr i8, ptr %i.mk, i64 %index711
  store <8 x i8> %i.nr, ptr %i.ns, align 1, !tbaa !133, !alias.scope !243, !noalias !244
  %index.next715 = add nuw i64 %index711, 8       ; 2 uses
  %i.nt = icmp eq i64 %index.next715, %n.vec709
  br i1 %i.nt, label %vec.epilog.middle.block716, label %vec.epilog.vector.body710, !llvm.loop !206

vec.epilog.middle.block716:                       ; preds = %vec.epilog.vector.body710
  br i1 %cmp.n717, label %._crit_edge, label %.lr.ph.split.us477.preheader

.lr.ph.split.us477.preheader:                     ; preds = %iter.check704, %vec.epilog.iter.check706, %vec.epilog.middle.block716
  %indvars.iv.ph = phi i64 [ 0, %iter.check704 ], [ %n.vec709, %vec.epilog.middle.block716 ], [ %n.vec691, %vec.epilog.iter.check706 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.us477.prol.loopexit, label %.lr.ph.split.us477.prol

.lr.ph.split.us477.prol:                          ; preds = %.lr.ph.split.us477.preheader
  %i.nu = getelementptr i8, ptr %i.me, i64 %indvars.iv.ph
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !133
  %i.nw = lshr i8 %i.nv, 1
  %i.nx = getelementptr i8, ptr %i.mg, i64 %indvars.iv.ph
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !133
  %i.nz = zext i8 %i.ny to i16
  %i.oa = getelementptr i8, ptr %i.mi, i64 %indvars.iv.ph
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !133
  %i.oc = zext i8 %i.ob to i16
  %i.od = add nuw nsw i16 %i.oc, %i.nz
  %i.oe = lshr i16 %i.od, 2
  %i.of = trunc nuw nsw i16 %i.oe to i8
  %i.og = add nuw i8 %i.nw, %i.of
  %i.oh = getelementptr i8, ptr %i.mk, i64 %indvars.iv.ph
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !133
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.split.us477.prol.loopexit

.lr.ph.split.us477.prol.loopexit:                 ; preds = %.lr.ph.split.us477.prol, %.lr.ph.split.us477.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.us477.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.us477.prol ]
  %i.oi = icmp eq i64 %indvars.iv.ph, %i.ll
  br i1 %i.oi, label %._crit_edge, label %.lr.ph.split.us477

_Z10clip_f_u16fi.exit401.preheader:               ; preds = %.preheader475
  %brmerge742 = select i1 %min.iters.check, i1 true, i1 %op.rdx721
  br i1 %brmerge742, label %_Z10clip_f_u16fi.exit401.preheader725, label %vector.ph

vector.ph:                                        ; preds = %_Z10clip_f_u16fi.exit401.preheader
  %i.oj = load <4 x float>, ptr %i.jk, align 4
  %broadcast.splat601 = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ok = load <4 x float>, ptr %i.jl, align 4
  %broadcast.splat = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ol = load <4 x float>, ptr %i.jm, align 4
  %broadcast.splat603 = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.om = getelementptr i8, ptr %i.mg, i64 %index
  %wide.load = load <4 x i8>, ptr %i.om, align 1, !tbaa !133, !alias.scope !246
  %i.on = uitofp <4 x i8> %wide.load to <4 x float>
  %i.oo = getelementptr i8, ptr %i.me, i64 %index
  %wide.load598.a = load <4 x i8>, ptr %i.oo, align 1, !tbaa !133, !alias.scope !247
  %i.op = uitofp <4 x i8> %wide.load598.a to <4 x float>
  %i.oq = getelementptr i8, ptr %i.mi, i64 %index
  %wide.load599 = load <4 x i8>, ptr %i.oq, align 1, !tbaa !133, !alias.scope !248
  %i.or = uitofp <4 x i8> %wide.load599 to <4 x float>
  %i.os = fmul <4 x float> %broadcast.splat, %i.op
  %i.ot = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.on, <4 x float> %broadcast.splat601, <4 x float> %i.os)
  %i.ou = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.or, <4 x float> %broadcast.splat603, <4 x float> %i.ot) ; 2 uses
  %i.ov = fmul <4 x float> %i.ou, splat (float 2.190000e+02)
  %i.ow = fmul <4 x float> %i.ov, splat (float 3.906250e-03)
  %i.ox = fadd <4 x float> %i.ow, splat (float 1.600000e+01)
  %i.oy = select i1 %i.jg, <4 x float> %i.ou, <4 x float> %i.ox
  %i.oz = fadd <4 x float> %i.oy, splat (float 5.000000e-01)
  %i.pa = fptosi <4 x float> %i.oz to <4 x i32>   ; 2 uses
  %i.pb = icmp slt <4 x i32> %i.pa, zeroinitializer
  %i.pc = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.pa, <4 x i32> splat (i32 255))
  %i.pd = trunc nuw <4 x i32> %i.pc to <4 x i8>
  %i.pe = select <4 x i1> %i.pb, <4 x i8> zeroinitializer, <4 x i8> %i.pd
  %i.pf = getelementptr i8, ptr %i.mk, i64 %index
  store <4 x i8> %i.pe, ptr %i.pf, align 1, !tbaa !133, !alias.scope !249, !noalias !250
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pg = icmp eq i64 %index.next, %n.vec
  br i1 %i.pg, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %_Z10clip_f_u16fi.exit401.preheader725

_Z10clip_f_u16fi.exit401.preheader725:            ; preds = %_Z10clip_f_u16fi.exit401.preheader, %middle.block
  %indvars.iv521.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %_Z10clip_f_u16fi.exit401.preheader ]
  br label %_Z10clip_f_u16fi.exit401

.lr.ph.split.us:                                  ; preds = %.preheader475
  br i1 %i.jg, label %iter.check, label %iter.check651

iter.check651:                                    ; preds = %.lr.ph.split.us
  %brmerge743 = select i1 %min.iters.check613.a, i1 true, i1 %i.lo
  br i1 %brmerge743, label %vec.epilog.middle.block661, label %vector.main.loop.iter.check640

vector.main.loop.iter.check640:                   ; preds = %iter.check651
  br i1 %min.iters.check641, label %vec.epilog.ph655, label %vector.body644

vector.body644:                                   ; preds = %vector.main.loop.iter.check640, %vector.body644
  %index645 = phi i64 [ %index.next647, %vector.body644 ], [ 0, %vector.main.loop.iter.check640 ] ; 3 uses
  %i.ph = getelementptr i8, ptr %i.me, i64 %index645
  %wide.load646 = load <16 x i8>, ptr %i.ph, align 1, !tbaa !133, !alias.scope !251
  %i.pi = uitofp <16 x i8> %wide.load646 to <16 x float>
  %i.pj = fmul nnan <16 x float> %i.pi, splat (float 2.190000e+02)
  %i.pk = fmul nnan <16 x float> %i.pj, splat (float 3.906250e-03)
  %i.pl = fadd <16 x float> %i.pk, splat (float 1.600000e+01)
  %i.pm = fadd <16 x float> %i.pl, splat (float 5.000000e-01)
  %i.pn = fptosi <16 x float> %i.pm to <16 x i32>
  %i.po = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.pn, <16 x i32> splat (i32 255))
  %i.pp = trunc nuw <16 x i32> %i.po to <16 x i8>
  %i.pq = getelementptr i8, ptr %i.mk, i64 %index645
  store <16 x i8> %i.pp, ptr %i.pq, align 1, !tbaa !133, !alias.scope !252, !noalias !251
  %index.next647 = add nuw i64 %index645, 16      ; 2 uses
  %i.pr = icmp eq i64 %index.next647, %n.vec643
  br i1 %i.pr, label %middle.block648, label %vector.body644, !llvm.loop !217

middle.block648:                                  ; preds = %vector.body644
  br i1 %cmp.n648, label %._crit_edge, label %vec.epilog.iter.check653

vec.epilog.iter.check653:                         ; preds = %middle.block648
  br i1 %cmp.n649, label %vec.epilog.middle.block661, label %vec.epilog.ph655, !prof !167

vec.epilog.ph655:                                 ; preds = %vector.main.loop.iter.check640, %vec.epilog.iter.check653
  %vec.epilog.resume.val650 = phi i64 [ %n.vec643, %vec.epilog.iter.check653 ], [ 0, %vector.main.loop.iter.check640 ]
  br label %vec.epilog.vector.body657

vec.epilog.vector.body657:                        ; preds = %vec.epilog.vector.body657, %vec.epilog.ph655
  %index658 = phi i64 [ %vec.epilog.resume.val650, %vec.epilog.ph655 ], [ %index.next660, %vec.epilog.vector.body657 ] ; 3 uses
  %i.ps = getelementptr i8, ptr %i.me, i64 %index658
  %wide.load659 = load <4 x i8>, ptr %i.ps, align 1, !tbaa !133, !alias.scope !251
  %i.pt = uitofp <4 x i8> %wide.load659 to <4 x float>
  %i.pu = fmul nnan <4 x float> %i.pt, splat (float 2.190000e+02)
  %i.pv = fmul nnan <4 x float> %i.pu, splat (float 3.906250e-03)
  %i.pw = fadd <4 x float> %i.pv, splat (float 1.600000e+01)
  %i.px = fadd <4 x float> %i.pw, splat (float 5.000000e-01)
  %i.py = fptosi <4 x float> %i.px to <4 x i32>
  %i.pz = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.py, <4 x i32> splat (i32 255))
  %i.qa = trunc nuw <4 x i32> %i.pz to <4 x i8>
  %i.qb = getelementptr i8, ptr %i.mk, i64 %index658
  store <4 x i8> %i.qa, ptr %i.qb, align 1, !tbaa !133, !alias.scope !252, !noalias !251
  %index.next660 = add nuw i64 %index658, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next660, %n.vec655
  br i1 %i.qc, label %vec.epilog.middle.block660, label %vec.epilog.vector.body657, !llvm.loop !218

vec.epilog.middle.block660:                       ; preds = %vec.epilog.vector.body657
  br i1 %min.epilog.iters.check654, label %._crit_edge, label %vec.epilog.middle.block661

vec.epilog.middle.block661:                       ; preds = %iter.check651, %vec.epilog.iter.check653, %vec.epilog.middle.block660
  %indvars.iv510.ph = phi i64 [ 0, %iter.check651 ], [ %n.vec655, %vec.epilog.middle.block660 ], [ %n.vec643, %vec.epilog.iter.check653 ] ; 5 uses
  br i1 %cmp.n662, label %_Z10clip_f_u16fi.exit.us.prol.loopexit, label %_Z10clip_f_u16fi.exit.us.preheader

_Z10clip_f_u16fi.exit.us.preheader:               ; preds = %vec.epilog.middle.block661
  %18 = getelementptr i8, ptr %i.me, i64 %indvars.iv510.ph
  %19 = load i8, ptr %18, align 1, !tbaa !133
  %20 = uitofp i8 %19 to float
  %21 = fmul nnan float %20, 2.190000e+02
  %22 = fmul nnan float %21, 3.906250e-03
  %23 = fadd float %22, 1.600000e+01
  %24 = fadd float %23, 5.000000e-01
  %25 = fptosi float %24 to i32
  %spec.select471.us.prol = call i32 @llvm.umin.i32(i32 %25, i32 255)
  %26 = trunc nuw i32 %spec.select471.us.prol to i8
  %27 = getelementptr i8, ptr %i.mk, i64 %indvars.iv510.ph
  store i8 %26, ptr %27, align 1, !tbaa !133
  %indvars.iv.next511.prol = or disjoint i64 %indvars.iv510.ph, 1
  br label %_Z10clip_f_u16fi.exit.us.prol.loopexit

_Z10clip_f_u16fi.exit.us.prol.loopexit:           ; preds = %_Z10clip_f_u16fi.exit.us.preheader, %vec.epilog.middle.block661
  %indvars.iv510.unr = phi i64 [ %indvars.iv510.ph, %vec.epilog.middle.block661 ], [ %indvars.iv.next511.prol, %_Z10clip_f_u16fi.exit.us.preheader ]
  %28 = icmp eq i64 %indvars.iv510.ph, %17
  br i1 %28, label %._crit_edge, label %_Z10clip_f_u16fi.exit.us

iter.check:                                       ; preds = %.lr.ph.split.us
  %brmerge744 = select i1 %min.iters.check613.a, i1 true, i1 %i.ls
  br i1 %brmerge744, label %.lr.ph.split.us.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check614, label %vec.epilog.ph, label %vector.body617

vector.body617:                                   ; preds = %vector.main.loop.iter.check, %vector.body617
  %index618 = phi i64 [ %index.next621, %vector.body617 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.qd = getelementptr i8, ptr %i.me, i64 %index618 ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 16
  %wide.load619.a = load <16 x i8>, ptr %i.qd, align 1, !tbaa !133, !alias.scope !253
  %wide.load620 = load <16 x i8>, ptr %i.qe, align 1, !tbaa !133, !alias.scope !253
  %i.qf = getelementptr i8, ptr %i.mk, i64 %index618 ; 2 uses
  %i.qg = getelementptr i8, ptr %i.qf, i64 16
  store <16 x i8> %wide.load619.a, ptr %i.qf, align 1, !tbaa !133, !alias.scope !254, !noalias !253
  store <16 x i8> %wide.load620, ptr %i.qg, align 1, !tbaa !133, !alias.scope !254, !noalias !253
  %index.next621 = add nuw i64 %index618, 32      ; 2 uses
  %i.qh = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.qh, label %middle.block622, label %vector.body617, !llvm.loop !222

middle.block622:                                  ; preds = %vector.body617
  br i1 %cmp.n623, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block622
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.split.us.preheader, label %vec.epilog.ph, !prof !255

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec616, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index625 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next627, %vec.epilog.vector.body ] ; 3 uses
  %i.qi = getelementptr i8, ptr %i.me, i64 %index625
  %wide.load626 = load <4 x i8>, ptr %i.qi, align 1, !tbaa !133, !alias.scope !253
  %i.qj = getelementptr i8, ptr %i.mk, i64 %index625
  store <4 x i8> %wide.load626, ptr %i.qj, align 1, !tbaa !133, !alias.scope !254, !noalias !253
  %index.next627 = add nuw i64 %index625, 4       ; 2 uses
  %i.qk = icmp eq i64 %index.next627, %n.vec624
  br i1 %i.qk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !223

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n628, label %._crit_edge, label %.lr.ph.split.us.split.us.preheader

.lr.ph.split.us.split.us.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv516.ph = phi i64 [ 0, %iter.check ], [ %n.vec624, %vec.epilog.middle.block ], [ %n.vec616, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod730.not, label %.lr.ph.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.prol

.lr.ph.split.us.split.us.prol:                    ; preds = %.lr.ph.split.us.split.us.preheader, %.lr.ph.split.us.split.us.prol
  %indvars.iv516.prol = phi i64 [ %indvars.iv.next517.prol, %.lr.ph.split.us.split.us.prol ], [ %indvars.iv516.ph, %.lr.ph.split.us.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.split.us.prol ], [ 0, %.lr.ph.split.us.split.us.preheader ]
  %i.ql = getelementptr i8, ptr %i.me, i64 %indvars.iv516.prol
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !133
  %i.qn = getelementptr i8, ptr %i.mk, i64 %indvars.iv516.prol
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !133
  %indvars.iv.next517.prol = add nuw nsw i64 %indvars.iv516.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter729
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.prol, !llvm.loop !224

.lr.ph.split.us.split.us.prol.loopexit:           ; preds = %.lr.ph.split.us.split.us.prol, %.lr.ph.split.us.split.us.preheader
  %indvars.iv516.unr = phi i64 [ %indvars.iv516.ph, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next517.prol, %.lr.ph.split.us.split.us.prol ]
  %i.qo = sub nsw i64 %indvars.iv516.ph, %wide.trip.count
  %i.qp = icmp ugt i64 %i.qo, -4
  br i1 %i.qp, label %._crit_edge, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us
  %indvars.iv516 = phi i64 [ %indvars.iv.next517.3, %.lr.ph.split.us.split.us ], [ %indvars.iv516.unr, %.lr.ph.split.us.split.us.prol.loopexit ] ; 6 uses
  %i.qq = getelementptr i8, ptr %i.me, i64 %indvars.iv516
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !133
  %i.qs = getelementptr i8, ptr %i.mk, i64 %indvars.iv516
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !133
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %i.qt = getelementptr i8, ptr %i.me, i64 %indvars.iv.next517
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !133
  %i.qv = getelementptr i8, ptr %i.mk, i64 %indvars.iv.next517
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !133
  %indvars.iv.next517.1 = add nuw nsw i64 %indvars.iv516, 2 ; 2 uses
  %i.qw = getelementptr i8, ptr %i.me, i64 %indvars.iv.next517.1
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !133
  %i.qy = getelementptr i8, ptr %i.mk, i64 %indvars.iv.next517.1
  store i8 %i.qx, ptr %i.qy, align 1, !tbaa !133
  %indvars.iv.next517.2 = add nuw nsw i64 %indvars.iv516, 3 ; 2 uses
  %i.qz = getelementptr i8, ptr %i.me, i64 %indvars.iv.next517.2
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !133
  %i.rb = getelementptr i8, ptr %i.mk, i64 %indvars.iv.next517.2
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !133
  %indvars.iv.next517.3 = add nuw nsw i64 %indvars.iv516, 4 ; 2 uses
  %exitcond520.not.3 = icmp eq i64 %indvars.iv.next517.3, %wide.trip.count519
  br i1 %exitcond520.not.3, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !225

_Z10clip_f_u16fi.exit.us:                         ; preds = %_Z10clip_f_u16fi.exit.us.prol.loopexit, %_Z10clip_f_u16fi.exit.us
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %_Z10clip_f_u16fi.exit.us ], [ %indvars.iv510.unr, %_Z10clip_f_u16fi.exit.us.prol.loopexit ] ; 4 uses
  %i.rc = getelementptr i8, ptr %i.me, i64 %indvars.iv511
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !133
  %i.re = uitofp i8 %i.rd to float
  %i.rf = fmul nnan float %i.re, 2.190000e+02
  %i.rg = fmul nnan float %i.rf, 3.906250e-03
  %i.rh = fadd float %i.rg, 1.600000e+01
  %i.ri = fadd float %i.rh, 5.000000e-01
  %i.rj = fptosi float %i.ri to i32
  %spec.select471.us = call i32 @llvm.umin.i32(i32 %i.rj, i32 255)
  %29 = trunc nuw i32 %spec.select471.us to i8
  %30 = getelementptr i8, ptr %i.mk, i64 %indvars.iv511
  store i8 %29, ptr %30, align 1, !tbaa !133
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %31 = getelementptr i8, ptr %i.me, i64 %indvars.iv.next511
  %32 = load i8, ptr %31, align 1, !tbaa !133
  %33 = uitofp i8 %32 to float
  %34 = fmul nnan float %33, 2.190000e+02
  %35 = fmul nnan float %34, 3.906250e-03
  %36 = fadd float %35, 1.600000e+01
  %37 = fadd float %36, 5.000000e-01
  %38 = fptosi float %37 to i32
  %spec.select471.us.1 = call i32 @llvm.umin.i32(i32 %38, i32 255)
  %39 = trunc nuw i32 %spec.select471.us.1 to i8
  %i.rk = getelementptr i8, ptr %i.mk, i64 %indvars.iv.next511
  store i8 %39, ptr %i.rk, align 1, !tbaa !133
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 2 ; 2 uses
  %exitcond515.not = icmp eq i64 %indvars.iv.next512, %wide.trip.count514
  br i1 %exitcond515.not, label %._crit_edge, label %_Z10clip_f_u16fi.exit.us, !llvm.loop !226

.lr.ph.split.us477:                               ; preds = %.lr.ph.split.us477.prol.loopexit, %.lr.ph.split.us477
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split.us477 ], [ %indvars.iv.unr, %.lr.ph.split.us477.prol.loopexit ] ; 6 uses
  %i.rl = getelementptr i8, ptr %i.me, i64 %indvars.iv
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !133
  %i.rn = lshr i8 %i.rm, 1
  %i.ro = getelementptr i8, ptr %i.mg, i64 %indvars.iv
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !133
  %i.rq = zext i8 %i.rp to i16
  %i.rr = getelementptr i8, ptr %i.mi, i64 %indvars.iv
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !133
  %i.rt = zext i8 %i.rs to i16
  %i.ru = add nuw nsw i16 %i.rt, %i.rq
  %i.rv = lshr i16 %i.ru, 2
  %i.rw = trunc nuw nsw i16 %i.rv to i8
  %i.rx = add nuw i8 %i.rn, %i.rw
  %i.ry = getelementptr i8, ptr %i.mk, i64 %indvars.iv
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.rz = getelementptr i8, ptr %i.me, i64 %indvars.iv.next
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !133
  %i.sb = lshr i8 %i.sa, 1
  %i.sc = getelementptr i8, ptr %i.mg, i64 %indvars.iv.next
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !133
  %i.se = zext i8 %i.sd to i16
  %i.sf = getelementptr i8, ptr %i.mi, i64 %indvars.iv.next
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !133
  %i.sh = zext i8 %i.sg to i16
  %i.si = add nuw nsw i16 %i.sh, %i.se
  %i.sj = lshr i16 %i.si, 2
  %i.sk = trunc nuw nsw i16 %i.sj to i8
  %i.sl = add nuw i8 %i.sb, %i.sk
  %i.sm = getelementptr i8, ptr %i.mk, i64 %indvars.iv.next
  store i8 %i.sl, ptr %i.sm, align 1, !tbaa !133
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split.us477, !llvm.loop !227

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.sn = or i8 %i.j, %i.h
  %or.cond.not = icmp ult i8 %i.sn, 2
  %i.so = icmp eq i8 %i.j, 2                      ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.sr = icmp eq i8 %i.h, 2
  %i.ss = insertelement <2 x i1> poison, i1 %i.jg, i64 0
  %i.st = shufflevector <2 x i1> %i.ss, <2 x i1> poison, <2 x i32> zeroinitializer
  %invariant.op = and i1 %i.sr, %i.so
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge481.us
  %.1485.us = phi i32 [ %i.zs, %._crit_edge481.us ], [ 0, %.preheader.lr.ph ] ; 5 uses
  %i.su = zext i32 %.1485.us to i64               ; 3 uses
  %i.sv = mul nsw i64 %.0452, %i.su
  %i.sw = getelementptr i8, ptr %.0.i.i.i371, i64 %i.sv ; 3 uses
  %i.sx = mul nsw i64 %.0451, %i.su
  %i.sy = getelementptr i8, ptr %.0.i.i.i, i64 %i.sx ; 3 uses
  %i.sz = mul nsw i64 %.0460, %i.su               ; 2 uses
  %i.ta = getelementptr i8, ptr %.0.i.i.i376, i64 %i.sz ; 5 uses
  %i.tb = getelementptr i8, ptr %.0.i.i.i, i64 %i.sz ; 2 uses
  %i.tc = add nuw i32 %.1485.us, 1                ; 2 uses
  %i.td = icmp ult i32 %i.tc, %i.e
  %or.cond8.us = and i1 %i.so, %i.td
  %i.te = select i1 %or.cond8.us, i32 %i.tc, i32 %.1485.us
  %i.tf = zext i32 %i.te to i64                   ; 3 uses
  %i.tg = mul nsw i64 %.0451, %i.tf
  %i.th = getelementptr i8, ptr %.0.i.i.i, i64 %i.tg ; 2 uses
  %i.ti = mul nsw i64 %.0452, %i.tf
  %i.tj = getelementptr i8, ptr %.0.i.i.i371, i64 %i.ti ; 2 uses
  %i.tk = mul nsw i64 %.0460, %i.tf
  %i.tl = getelementptr i8, ptr %.0.i.i.i376, i64 %i.tk ; 2 uses
  %i.tm = udiv i32 %.1485.us, %i.k
  %i.tn = zext i32 %i.tm to i64                   ; 3 uses
  %i.to = mul nsw i64 %.0456, %i.tn               ; 2 uses
  %i.tp = getelementptr i8, ptr %.0.i.i382, i64 %i.to ; 4 uses
  switch i16 %i.ji, label %.lr.ph.split482.us492 [
    i16 0, label %.lr.ph.split482.us.us
    i16 8, label %.lr.ph.split482.us483.us
  ]

.lr.ph.split482.us483.us:                         ; preds = %.preheader.us
  %i.tq = mul nsw i64 %.0455, %i.tn
  %i.tr = getelementptr i8, ptr %.0.i.i387, i64 %i.tq
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.split482.us483.us
  %.1302480.us484.us = phi i32 [ 0, %.lr.ph.split482.us483.us ], [ %i.us, %bb.bp ] ; 3 uses
  %i.ts = zext i32 %.1302480.us484.us to i64      ; 3 uses
  %i.tt = getelementptr i8, ptr %i.sw, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !133
  %i.tv = lshr i8 %i.tu, 1
  %i.tw = getelementptr i8, ptr %i.sy, i64 %i.ts  ; 2 uses
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !133
  %i.ty = zext i8 %i.tx to i16
  %i.tz = getelementptr i8, ptr %i.ta, i64 %i.ts  ; 2 uses
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !133
  %i.ub = zext i8 %i.ua to i16
  %i.uc = add nuw nsw i16 %i.ub, %i.ty
  %i.ud = lshr i16 %i.uc, 2
  %i.ue = trunc nuw nsw i16 %i.ud to i8
  %i.uf = sub nsw i8 %i.tv, %i.ue
  %i.ug = xor i8 %i.uf, -128
  %i.uh = udiv i32 %.1302480.us484.us, %i.i
  %i.ui = zext i32 %i.uh to i64                   ; 2 uses
  %i.uj = getelementptr i8, ptr %i.tp, i64 %i.ui
  store i8 %i.ug, ptr %i.uj, align 1, !tbaa !133
  %i.uk = load i8, ptr %i.tw, align 1, !tbaa !133
  %i.ul = zext i8 %i.uk to i16
  %i.um = load i8, ptr %i.tz, align 1, !tbaa !133
  %i.un = zext i8 %i.um to i16
  %.lhs.trunc.us.us = sub nsw i16 %i.ul, %i.un
  %i.uo = sdiv i16 %.lhs.trunc.us.us, 2
  %i.up = trunc nsw i16 %i.uo to i8
  %i.uq = xor i8 %i.up, -128
  %i.ur = getelementptr i8, ptr %i.tr, i64 %i.ui
  store i8 %i.uq, ptr %i.ur, align 1, !tbaa !133
  %i.us = add i32 %.1302480.us484.us, %i.i        ; 2 uses
  %i.ut = icmp ult i32 %i.us, %i.c
  br i1 %i.ut, label %bb.bp, label %._crit_edge481.us, !llvm.loop !228

.lr.ph.split482.us.us:                            ; preds = %.preheader.us
  %i.uu = getelementptr i8, ptr %.0.i.i387, i64 %i.to ; 2 uses
  br i1 %i.jg, label %.lr.ph.split482.us.split.us.us, label %_Z10clip_f_u16fi.exit403.us.us

_Z10clip_f_u16fi.exit403.us.us:                   ; preds = %.lr.ph.split482.us.us, %_Z10clip_f_u16fi.exit403.us.us
  %.1302480.us.us490 = phi i32 [ %i.vs, %_Z10clip_f_u16fi.exit403.us.us ], [ 0, %.lr.ph.split482.us.us ] ; 3 uses
  %i.uv = zext i32 %.1302480.us.us490 to i64      ; 2 uses
  %i.uw = getelementptr i8, ptr %i.ta, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !133
  %i.uy = uitofp i8 %i.ux to float
  %i.uz = fmul nnan float %i.uy, 2.240000e+02
  %i.va = fmul nnan float %i.uz, 3.906250e-03
  %i.vb = fadd float %i.va, 1.600000e+01
  %i.vc = fadd float %i.vb, 5.000000e-01
  %i.vd = fptosi float %i.vc to i32
  %spec.select462468.us.us = call i32 @llvm.umin.i32(i32 %i.vd, i32 255)
  %i.ve = trunc nuw i32 %spec.select462468.us.us to i8
  %i.vf = udiv i32 %.1302480.us.us490, %i.i
  %i.vg = zext i32 %i.vf to i64                   ; 2 uses
  %i.vh = getelementptr i8, ptr %i.tp, i64 %i.vg
  store i8 %i.ve, ptr %i.vh, align 1, !tbaa !133
  %i.vi = getelementptr i8, ptr %i.tb, i64 %i.uv
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !133
  %i.vk = uitofp i8 %i.vj to float
  %i.vl = fmul nnan float %i.vk, 2.240000e+02
  %i.vm = fmul nnan float %i.vl, 3.906250e-03
  %i.vn = fadd float %i.vm, 1.600000e+01
  %i.vo = fadd float %i.vn, 5.000000e-01
  %i.vp = fptosi float %i.vo to i32
  %spec.select463469.us.us = call i32 @llvm.umin.i32(i32 %i.vp, i32 255)
  %i.vq = trunc nuw i32 %spec.select463469.us.us to i8
  %i.vr = getelementptr i8, ptr %i.uu, i64 %i.vg
  store i8 %i.vq, ptr %i.vr, align 1, !tbaa !133
  %i.vs = add i32 %.1302480.us.us490, %i.i        ; 2 uses
  %i.vt = icmp ult i32 %i.vs, %i.c
  br i1 %i.vt, label %_Z10clip_f_u16fi.exit403.us.us, label %._crit_edge481.us, !llvm.loop !228

.lr.ph.split482.us.split.us.us:                   ; preds = %.lr.ph.split482.us.us, %.lr.ph.split482.us.split.us.us
  %.1302480.us.us.us = phi i32 [ %i.wd, %.lr.ph.split482.us.split.us.us ], [ 0, %.lr.ph.split482.us.us ] ; 3 uses
  %i.vu = zext i32 %.1302480.us.us.us to i64      ; 2 uses
  %i.vv = getelementptr i8, ptr %i.ta, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !133
  %i.vx = udiv i32 %.1302480.us.us.us, %i.i
  %i.vy = zext i32 %i.vx to i64                   ; 2 uses
  %i.vz = getelementptr i8, ptr %i.tp, i64 %i.vy
  store i8 %i.vw, ptr %i.vz, align 1, !tbaa !133
  %i.wa = getelementptr i8, ptr %i.tb, i64 %i.vu
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !133
  %i.wc = getelementptr i8, ptr %i.uu, i64 %i.vy
  store i8 %i.wb, ptr %i.wc, align 1, !tbaa !133
  %i.wd = add i32 %.1302480.us.us.us, %i.i        ; 2 uses
  %i.we = icmp ult i32 %i.wd, %i.c
  br i1 %i.we, label %.lr.ph.split482.us.split.us.us, label %._crit_edge481.us, !llvm.loop !228

.lr.ph.split482.us492:                            ; preds = %.preheader.us
  %i.wf = mul nsw i64 %.0455, %i.tn
  %i.wg = getelementptr i8, ptr %.0.i.i387, i64 %i.wf
  br label %bb.bq

bb.bq:                                            ; preds = %_Z10clip_f_u16fi.exit411.us, %.lr.ph.split482.us492
  %.1302480.us493 = phi i32 [ 0, %.lr.ph.split482.us492 ], [ %i.zq, %_Z10clip_f_u16fi.exit411.us ] ; 5 uses
  %i.wh = zext i32 %.1302480.us493 to i64         ; 6 uses
  %i.wi = getelementptr i8, ptr %i.sy, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !133
  %i.wk = uitofp i8 %i.wj to float                ; 2 uses
  %i.wl = getelementptr i8, ptr %i.sw, i64 %i.wh
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !133
  %i.wn = getelementptr i8, ptr %i.ta, i64 %i.wh
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !133
  %i.wp = insertelement <2 x i8> poison, i8 %i.wm, i64 0
  %i.wq = insertelement <2 x i8> %i.wp, i8 %i.wo, i64 1
  %i.wr = uitofp <2 x i8> %i.wq to <2 x float>    ; 2 uses
  br i1 %or.cond.not, label %_Z10clip_f_u16fi.exit411.us, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ws = add nuw i32 %.1302480.us493, 1          ; 2 uses
  %i.wt = icmp ult i32 %i.ws, %i.c
  %or.cond6.reass.us.reass.reass = and i1 %i.wt, %invariant.op
  %i.wu = select i1 %or.cond6.reass.us.reass.reass, i32 %i.ws, i32 %.1302480.us493
  %i.wv = zext i32 %i.wu to i64                   ; 6 uses
  %i.ww = getelementptr i8, ptr %i.sy, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !133
  %i.wy = uitofp i8 %i.wx to float
  %i.wz = fadd nnan float %i.wk, %i.wy
  %i.xa = getelementptr i8, ptr %i.sw, i64 %i.wv
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !133
  %i.xc = getelementptr i8, ptr %i.ta, i64 %i.wv
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !133
  %i.xe = getelementptr i8, ptr %i.th, i64 %i.wh
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !133
  %i.xg = uitofp i8 %i.xf to float
  %i.xh = fadd nnan float %i.wz, %i.xg
  %i.xi = getelementptr i8, ptr %i.tj, i64 %i.wh
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !133
  %i.xk = getelementptr i8, ptr %i.tl, i64 %i.wh
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !133
  %i.xm = getelementptr i8, ptr %i.th, i64 %i.wv
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !133
  %i.xo = uitofp i8 %i.xn to float
  %i.xp = fadd nnan float %i.xh, %i.xo
  %i.xq = getelementptr i8, ptr %i.tj, i64 %i.wv
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !133
  %i.xs = getelementptr i8, ptr %i.tl, i64 %i.wv
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !133
  %i.xu = insertelement <2 x i8> poison, i8 %i.xb, i64 0
  %i.xv = insertelement <2 x i8> %i.xu, i8 %i.xd, i64 1
  %i.xw = uitofp <2 x i8> %i.xv to <2 x float>
  %i.xx = fadd nnan <2 x float> %i.wr, %i.xw
  %i.xy = insertelement <2 x i8> poison, i8 %i.xj, i64 0
  %i.xz = insertelement <2 x i8> %i.xy, i8 %i.xl, i64 1
  %i.ya = uitofp <2 x i8> %i.xz to <2 x float>
  %i.yb = fadd nnan <2 x float> %i.xx, %i.ya
  %i.yc = insertelement <2 x i8> poison, i8 %i.xr, i64 0
  %i.yd = insertelement <2 x i8> %i.yc, i8 %i.xt, i64 1
  %i.ye = uitofp <2 x i8> %i.yd to <2 x float>
  %i.yf = fadd nnan <2 x float> %i.yb, %i.ye
  %i.yg = fmul nnan float %i.xp, 2.500000e-01
  %i.yh = fmul nnan <2 x float> %i.yf, splat (float 2.500000e-01)
  br label %_Z10clip_f_u16fi.exit411.us

_Z10clip_f_u16fi.exit411.us:                      ; preds = %bb.br, %bb.bq
  %.0298.us = phi float [ %i.yg, %bb.br ], [ %i.wk, %bb.bq ]
  %i.yi = phi <2 x float> [ %i.yh, %bb.br ], [ %i.wr, %bb.bq ] ; 2 uses
  %i.yj = udiv i32 %.1302480.us493, %i.i
  %i.yk = zext i32 %i.yj to i64                   ; 2 uses
  %i.yl = getelementptr i8, ptr %i.tp, i64 %i.yk
  %i.ym = load <4 x float>, ptr %i.sp, align 4, !tbaa !170 ; 3 uses
  %i.yn = load <2 x float>, ptr %i.sq, align 4, !tbaa !170 ; 2 uses
  %i.yo = shufflevector <2 x float> %i.yi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yp = shufflevector <4 x float> %i.ym, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.yq = shufflevector <2 x float> %i.yn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.yr = shufflevector <4 x float> %i.ym, <4 x float> %i.yq, <2 x i32> <i32 1, i32 4>
  %i.ys = fmul <2 x float> %i.yo, %i.yr
  %i.yt = insertelement <2 x float> poison, float %.0298.us, i64 0
  %i.yu = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yv = shufflevector <4 x float> %i.ym, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.yw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yu, <2 x float> %i.yv, <2 x float> %i.ys)
  %i.yx = shufflevector <2 x float> %i.yi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yy = shufflevector <2 x float> %i.yp, <2 x float> %i.yn, <2 x i32> <i32 0, i32 3>
  %i.yz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yx, <2 x float> %i.yy, <2 x float> %i.yw) ; 2 uses
  %i.za = fmul <2 x float> %i.yz, splat (float 2.240000e+02)
  %i.zb = fmul <2 x float> %i.za, splat (float 3.906250e-03)
  %i.zc = select <2 x i1> %i.st, <2 x float> %i.yz, <2 x float> %i.zb
  %i.zd = fadd <2 x float> %i.zc, splat (float 1.280000e+02)
  %i.ze = fadd <2 x float> %i.zd, splat (float 5.000000e-01)
  %i.zf = fptosi <2 x float> %i.ze to <2 x i32>   ; 3 uses
  %i.zg = extractelement <2 x i32> %i.zf, i64 0
  %spec.select464470.us.a = call i32 @llvm.umin.i32(i32 %i.zg, i32 255)
  %i.zh = trunc nuw i32 %spec.select464470.us.a to i8
  %i.zi = icmp slt <2 x i32> %i.zf, zeroinitializer ; 2 uses
  %i.zj = extractelement <2 x i1> %i.zi, i64 0
  %i.zk = select i1 %i.zj, i8 0, i8 %i.zh
  store i8 %i.zk, ptr %i.yl, align 1, !tbaa !133
  %i.zl = extractelement <2 x i32> %i.zf, i64 1
  %spec.select465471.us = call i32 @llvm.umin.i32(i32 %i.zl, i32 255)
  %i.zm = trunc nuw i32 %spec.select465471.us to i8
  %i.zn = extractelement <2 x i1> %i.zi, i64 1
  %i.zo = select i1 %i.zn, i8 0, i8 %i.zm
  %i.zp = getelementptr i8, ptr %i.wg, i64 %i.yk
  store i8 %i.zo, ptr %i.zp, align 1, !tbaa !133
  %i.zq = add i32 %.1302480.us493, %i.i           ; 2 uses
  %i.zr = icmp ult i32 %i.zq, %i.c
  br i1 %i.zr, label %bb.bq, label %._crit_edge481.us, !llvm.loop !228

._crit_edge481.us:                                ; preds = %bb.bp, %_Z10clip_f_u16fi.exit403.us.us, %.lr.ph.split482.us.split.us.us, %_Z10clip_f_u16fi.exit411.us
  %i.zs = add i32 %.1485.us, %i.k                 ; 2 uses
  %i.zt = icmp ult i32 %i.zs, %i.e
  br i1 %i.zt, label %.preheader.us, label %._crit_edge488, !llvm.loop !229

_Z10clip_f_u16fi.exit401:                         ; preds = %_Z10clip_f_u16fi.exit401.preheader725, %_Z10clip_f_u16fi.exit401
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %_Z10clip_f_u16fi.exit401 ], [ %indvars.iv521.ph, %_Z10clip_f_u16fi.exit401.preheader725 ] ; 5 uses
  %i.zu = getelementptr i8, ptr %i.mg, i64 %indvars.iv521
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !133
  %i.zw = uitofp i8 %i.zv to float
  %i.zx = getelementptr i8, ptr %i.me, i64 %indvars.iv521
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !133
  %i.zz = uitofp i8 %i.zy to float
  %i.aaa = getelementptr i8, ptr %i.mi, i64 %indvars.iv521
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !133
  %i.aac = uitofp i8 %i.aab to float
  %i.aad = load float, ptr %i.jk, align 4, !tbaa !170
  %i.aae = load float, ptr %i.jl, align 4, !tbaa !170
  %i.aaf = fmul float %i.aae, %i.zz
  %i.aag = call float @llvm.fmuladd.f32(float %i.zw, float %i.aad, float %i.aaf)
  %i.aah = load float, ptr %i.jm, align 4, !tbaa !170
  %i.aai = call float @llvm.fmuladd.f32(float %i.aac, float %i.aah, float %i.aag) ; 2 uses
  %i.aaj = fmul float %i.aai, 2.190000e+02
  %i.aak = fmul float %i.aaj, 3.906250e-03
  %i.aal = fadd float %i.aak, 1.600000e+01
  %.0299 = select i1 %i.jg, float %i.aai, float %i.aal
  %i.aam = fadd float %.0299, 5.000000e-01
  %i.aan = fptosi float %i.aam to i32             ; 2 uses
  %i.aao = icmp slt i32 %i.aan, 0
  %spec.select461473 = call i32 @llvm.umin.i32(i32 %i.aan, i32 255)
  %i.aap = trunc nuw i32 %spec.select461473 to i8
  %i.aaq = select i1 %i.aao, i8 0, i8 %i.aap
  %i.aar = getelementptr i8, ptr %i.mk, i64 %indvars.iv521
  store i8 %i.aaq, ptr %i.aar, align 1, !tbaa !133
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count524
  br i1 %exitcond525.not, label %._crit_edge, label %_Z10clip_f_u16fi.exit401, !llvm.loop !230

bb.bs:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit399
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bt:                                            ; preds = %bb.bn
  %i.aat = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.by

._crit_edge:                                      ; preds = %.lr.ph.split.us477.prol.loopexit, %.lr.ph.split.us477, %_Z10clip_f_u16fi.exit.us.prol.loopexit, %_Z10clip_f_u16fi.exit.us, %.lr.ph.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us, %_Z10clip_f_u16fi.exit401, %middle.block701, %vec.epilog.middle.block716, %middle.block648, %vec.epilog.middle.block660, %middle.block622, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1 ; 2 uses
  %exitcond530.not = icmp eq i64 %indvars.iv.next527, %wide.trip.count529
  br i1 %exitcond530.not, label %.preheader.lr.ph, label %.preheader475, !llvm.loop !231

._crit_edge488:                                   ; preds = %._crit_edge481.us, %.preheader475.lr.ph, %bb.bo
  br i1 %i.v, label %bb.bu, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit

bb.bu:                                            ; preds = %._crit_edge488
  %i.aau = load ptr, ptr %2, align 8, !tbaa !53
  %i.aav = invoke noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.aau, i32 noundef 6)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  br i1 %.not498.a, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bv
  %i.aaw = icmp ugt i16 %i.aav, 8
  %i.aax = zext i1 %i.aaw to i32
  %i.aay = shl i32 %i.c, %i.aax
  %i.aaz = sext i32 %i.aay to i64                 ; 3 uses
  %wide.trip.count534 = zext i32 %i.e to i64      ; 2 uses
  %xtraiter731 = and i64 %wide.trip.count534, 1
  %i.aba = icmp eq i32 %i.e, 1
  br i1 %i.aba, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count534, 4294967294
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.new
  %indvars.iv531 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next532.1, %bb.bw ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bw ]
  %i.abb = mul nsw i64 %.0453, %indvars.iv531
  %i.abc = getelementptr inbounds nuw i8, ptr %.0303, i64 %i.abb
  %i.abd = mul nsw i64 %.0458, %indvars.iv531
  %i.abe = getelementptr inbounds nuw i8, ptr %.0304, i64 %i.abd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abc, ptr align 1 %i.abe, i64 %i.aaz, i1 false)
  %indvars.iv.next532 = or disjoint i64 %indvars.iv531, 1 ; 2 uses
  %i.abf = mul nsw i64 %.0453, %indvars.iv.next532
  %i.abg = getelementptr inbounds nuw i8, ptr %.0303, i64 %i.abf
  %i.abh = mul nsw i64 %.0458, %indvars.iv.next532
  %i.abi = getelementptr inbounds nuw i8, ptr %.0304, i64 %i.abh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abg, ptr align 1 %i.abi, i64 %i.aaz, i1 false)
  %indvars.iv.next532.1 = add nuw nsw i64 %indvars.iv531, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit.loopexit.unr-lcssa, label %bb.bw, !llvm.loop !232

bb.bx:                                            ; preds = %bb.bu
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit.loopexit.unr-lcssa: ; preds = %bb.bw
  %lcmp.mod732.not = icmp eq i64 %xtraiter731, 0
  br i1 %lcmp.mod732.not, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv531.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next532.1, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod733 = trunc i32 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod733)
  %i.abk = mul nsw i64 %.0453, %indvars.iv531.epil.init
  %i.abl = getelementptr inbounds nuw i8, ptr %.0303, i64 %i.abk
  %i.abm = mul nsw i64 %.0458, %indvars.iv531.epil.init
  %i.abn = getelementptr inbounds nuw i8, ptr %.0304, i64 %i.abm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abl, ptr align 1 %i.abn, i64 %i.aaz, i1 false)
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit: ; preds = %.epil.preheader, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit.loopexit.unr-lcssa, %bb.bv, %._crit_edge488
  %i.abo = load ptr, ptr %i.ay, align 8, !tbaa !146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %i.bi, ptr %0, align 8, !tbaa !145
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.abo, ptr %i.abp, align 8, !tbaa !146
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.abq, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.bz

bb.by:                                            ; preds = %bb.bt, %bb.bx, %bb.bs
  %.pn336.pn = phi { ptr, i32 } [ %i.aas, %bb.bs ], [ %i.abj, %bb.bx ], [ %i.aat, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.cc

bb.bz:                                            ; preds = %_ZN5ErrorD2Ev.exit366, %_ZN5ErrorD2Ev.exit361, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit
  %i.abr = load ptr, ptr %i.ay, align 8, !tbaa !146 ; 5 uses
  %.not.i415 = icmp eq ptr %i.abr, null
  br i1 %.not.i415, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit416, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abt = atomicrmw add ptr %i.abs, i64 -1 acq_rel, align 8
  %i.abu = icmp eq i64 %i.abt, 0
  br i1 %i.abu, label %bb.cb, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit416

bb.cb:                                            ; preds = %bb.ca
  %i.abv = load ptr, ptr %i.abr, align 8, !tbaa !138
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  %i.abx = load ptr, ptr %i.abw, align 8
  call void %i.abx(ptr noundef nonnull align 8 dereferenceable(24) %i.abr) #17, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abr) #17
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit416

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit416: ; preds = %bb.bz, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bl, %bb.by, %bb.bm, %_ZN5ErrorD2Ev.exit360, %_ZN5ErrorD2Ev.exit365, %bb.aa
  %.pn336.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.aa ], [ %.pn332, %_ZN5ErrorD2Ev.exit360 ], [ %.pn334, %_ZN5ErrorD2Ev.exit365 ], [ %i.jb, %bb.bl ], [ %.pn336.pn, %bb.by ], [ %i.jc, %bb.bm ]
  call void @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn336.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit345, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit416, %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit
  ret void
}

declare noundef zeroext i8 @_Z20chroma_h_subsampling11heif_chroma(i32 noundef) local_unnamed_addr #3

declare noundef zeroext i8 @_Z20chroma_v_subsampling11heif_chroma(i32 noundef) local_unnamed_addr #3

declare noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK14HeifPixelImage11has_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #3

declare void @_ZN14HeifPixelImage6createEjj15heif_colorspace11heif_chroma(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN14HeifPixelImage11add_channelE12heif_channeljjiPK20heif_security_limits23heif_component_datatype(ptr dead_on_unwind writable sret(%class.Error) align 8, ptr noundef nonnull align 8 dereferenceable(448), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN25RGB_to_YCbCr_coefficients8defaultsEv(ptr dead_on_unwind writable sret(%struct.RGB_to_YCbCr_coefficients) align 4) local_unnamed_addr #3

declare void @_Z29get_RGB_to_YCbCr_coefficientstt(ptr dead_on_unwind writable sret(%struct.RGB_to_YCbCr_coefficients) align 4, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #17, !inline_history !256
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #17
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK15Op_RGB_to_YCbCrItE22state_after_conversionERK10ColorStateS3_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_ext(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 8
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !18
  %.not = icmp eq i32 %i.d, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %.not25 = icmp eq i32 %i.f, 3
  %or.cond31 = select i1 %.not, i1 %.not25, i1 false
  br i1 %or.cond31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 4, !tbaa !19, !range !20, !noundef !21 ; 3 uses
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22   ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  %.not26122 = icmp eq i32 %i.k, %i.b
  %.not26 = or i1 %.not.i, %.not26122
  br i1 %.not26, label %bb.h, label %bb.g
end_hunk_0
