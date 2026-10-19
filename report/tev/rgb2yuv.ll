Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rgb2yuv?download=true
inline.NumInlined: 784
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK15Op_RGB_to_YCbCrIhE18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateSA_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
_ZN5ErrorD2Ev.exit361:                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bw

.critedge:                                        ; preds = %_ZN5ErrorD2Ev.exit353
  %i.fp = load i8, ptr %i.cc, align 8
  %i.fq = trunc i8 %i.fp to i1
  br i1 %i.fq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.critedge
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !132
  %i.ft = load i64, ptr %i.cc, align 8
  %i.fu = and i64 %i.ft, -2
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fu) #19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %i.v, label %bb.ap, label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  invoke void @_ZN14HeifPixelImage11add_channelE12heif_channeljjiPK20heif_security_limits23heif_component_datatype(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %14, ptr noundef nonnull align 8 dereferenceable(448) %i.bi, i32 noundef 6, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 8, ptr noundef %7, i32 noundef 0)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fv = load i32, ptr %14, align 8, !tbaa !151
  %.not460 = icmp eq i32 %i.fv, 0
  br i1 %.not460, label %.critedge344, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fw = load i64, ptr %14, align 8
  store i64 %i.fw, ptr %0, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.fz = load i8, ptr %i.fy, align 8             ; 2 uses
  %i.ga = trunc i8 %i.fz to i1
  br i1 %i.ga, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i64 24, i1 false), !tbaa.struct !133
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !132
  %i.gd = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !132
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef %i.gc, i64 noundef %i.ge)
          to label %._crit_edge530 unwind label %bb.av

._crit_edge530:                                   ; preds = %bb.at
  %.pre531 = load i8, ptr %i.fy, align 8
  br label %bb.ax

_ZN5ErrorD2Ev.exit360:                            ; preds = %bb.ak, %bb.aj, %_ZN5ErrorD2Ev.exit359
  %.pn332 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZN5ErrorD2Ev.exit359 ], [ %i.fc, %bb.aj ], [ %i.fc, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bz

bb.au:                                            ; preds = %bb.ap
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit365

bb.av:                                            ; preds = %bb.at
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load i8, ptr %i.fy, align 8
  %i.gi = trunc i8 %i.gh to i1
  br i1 %i.gi, label %bb.aw, label %_ZN5ErrorD2Ev.exit365

bb.aw:                                            ; preds = %bb.av
  %i.gj = load ptr, ptr %i.gb, align 8, !tbaa !132
  %i.gk = load i64, ptr %i.fy, align 8
  %i.gl = and i64 %i.gk, -2
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gl) #19
  br label %_ZN5ErrorD2Ev.exit365

bb.ax:                                            ; preds = %._crit_edge530, %bb.as
  %i.gm = phi i8 [ %.pre531, %._crit_edge530 ], [ %i.fz, %bb.as ]
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.gn, align 8, !tbaa !135
  %i.go = trunc i8 %i.gm to i1
  br i1 %i.go, label %bb.ay, label %_ZN5ErrorD2Ev.exit366

bb.ay:                                            ; preds = %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !132
  %i.gr = load i64, ptr %i.fy, align 8
  %i.gs = and i64 %i.gr, -2
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gs) #19
  br label %_ZN5ErrorD2Ev.exit366

_ZN5ErrorD2Ev.exit366:                            ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.bw

_ZN5ErrorD2Ev.exit365:                            ; preds = %bb.aw, %bb.av, %bb.au
  %.pn334 = phi { ptr, i32 } [ %i.gf, %bb.au ], [ %i.gg, %bb.av ], [ %i.gg, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.bz

.critedge344:                                     ; preds = %bb.aq
  %i.gt = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 8
  %i.gv = trunc i8 %i.gu to i1
  br i1 %i.gv, label %bb.az, label %_ZN5ErrorD2Ev.exit367

bb.az:                                            ; preds = %.critedge344
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !132
  %i.gy = load i64, ptr %i.gt, align 8
  %i.gz = and i64 %i.gy, -2
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.gz) #19
  br label %_ZN5ErrorD2Ev.exit367

_ZN5ErrorD2Ev.exit367:                            ; preds = %.critedge344, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN5ErrorD2Ev.exit367, %bb.ao
  %i.ha = load ptr, ptr %2, align 8, !tbaa !52
  %i.hb = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.ha, i32 noundef 3)
          to label %.noexc368 unwind label %bb.bk ; 3 uses

.noexc368:                                        ; preds = %bb.ba
  %.not.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.bb

bb.bb:                                            ; preds = %.noexc368
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 80
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !159
  %i.he = shl i64 %i.hd, 32
  %i.hf = ashr exact i64 %i.he, 32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !160
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.bb, %.noexc368
  %.0445 = phi i64 [ %i.hf, %bb.bb ], [ 0, %.noexc368 ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.hh, %bb.bb ], [ null, %.noexc368 ] ; 8 uses
  %i.hi = load ptr, ptr %2, align 8, !tbaa !52
  %i.hj = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hi, i32 noundef 4)
          to label %.noexc371 unwind label %bb.bk ; 3 uses

.noexc371:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i.i369 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i369, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit372, label %bb.bc

bb.bc:                                            ; preds = %.noexc371
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 80
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !159
  %i.hm = shl i64 %i.hl, 32
  %i.hn = ashr exact i64 %i.hm, 32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !160
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit372

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit372: ; preds = %bb.bc, %.noexc371
  %.0446 = phi i64 [ %i.hn, %bb.bc ], [ 0, %.noexc371 ] ; 11 uses
  %.0.i.i.i370 = phi ptr [ %i.hp, %bb.bc ], [ null, %.noexc371 ] ; 11 uses
  %i.hq = load ptr, ptr %2, align 8, !tbaa !52
  %i.hr = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hq, i32 noundef 5)
          to label %.noexc375 unwind label %bb.bk ; 3 uses

.noexc375:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit372
  %.not.i.i.i373 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i373, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit376, label %bb.bd

bb.bd:                                            ; preds = %.noexc375
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 80
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !159
  %i.hu = shl i64 %i.ht, 32
  %i.hv = ashr exact i64 %i.hu, 32
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !160
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit376

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit376: ; preds = %bb.bd, %.noexc375
  %.0454 = phi i64 [ %i.hv, %bb.bd ], [ 0, %.noexc375 ] ; 7 uses
  %.0.i.i.i374 = phi ptr [ %i.hx, %bb.bd ], [ null, %.noexc375 ] ; 7 uses
  %i.hy = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bi, i32 noundef 0)
          to label %.noexc377 unwind label %bb.bk ; 3 uses

.noexc377:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit376
  %.not.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.be

bb.be:                                            ; preds = %.noexc377
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 80
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !159
  %i.ib = shl i64 %i.ia, 32
  %i.ic = ashr exact i64 %i.ib, 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 56
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !160
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.be, %.noexc377
  %.0451 = phi i64 [ %i.ic, %bb.be ], [ 0, %.noexc377 ] ; 9 uses
  %.0.i.i = phi ptr [ %i.ie, %bb.be ], [ null, %.noexc377 ] ; 13 uses
  %i.if = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bi, i32 noundef 1)
          to label %.noexc380 unwind label %bb.bk ; 3 uses

.noexc380:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i378 = icmp eq ptr %i.if, null
  br i1 %.not.i.i378, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit381, label %bb.bf

bb.bf:                                            ; preds = %.noexc380
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 80
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !159
  %i.ii = shl i64 %i.ih, 32
  %i.ij = ashr exact i64 %i.ii, 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 56
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !160
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit381

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit381: ; preds = %bb.bf, %.noexc380
  %.0450 = phi i64 [ %i.ij, %bb.bf ], [ 0, %.noexc380 ]
  %.0.i.i379 = phi ptr [ %i.il, %bb.bf ], [ null, %.noexc380 ]
  %i.im = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bi, i32 noundef 2)
          to label %.noexc384 unwind label %bb.bk ; 3 uses

.noexc384:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit381
  %.not.i.i382 = icmp eq ptr %i.im, null
  br i1 %.not.i.i382, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385, label %bb.bg

bb.bg:                                            ; preds = %.noexc384
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 80
  %i.io = load i64, ptr %i.in, align 8, !tbaa !159
  %i.ip = shl i64 %i.io, 32
  %i.iq = ashr exact i64 %i.ip, 32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 56
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !160
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385: ; preds = %bb.bg, %.noexc384
  %.0449 = phi i64 [ %i.iq, %bb.bg ], [ 0, %.noexc384 ] ; 2 uses
  %.0.i.i383 = phi ptr [ %i.is, %bb.bg ], [ null, %.noexc384 ] ; 3 uses
  br i1 %i.v, label %bb.bh, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit393

bb.bh:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385
  %i.it = load ptr, ptr %2, align 8, !tbaa !52
  %i.iu = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.it, i32 noundef 6)
          to label %.noexc388 unwind label %bb.bk ; 3 uses

.noexc388:                                        ; preds = %bb.bh
  %.not.i.i.i386 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i386, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389, label %bb.bi

bb.bi:                                            ; preds = %.noexc388
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 80
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !159
  %i.ix = shl i64 %i.iw, 32
  %i.iy = ashr exact i64 %i.ix, 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 56
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !160
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389: ; preds = %bb.bi, %.noexc388
  %.1453 = phi i64 [ %i.iy, %bb.bi ], [ 0, %.noexc388 ] ; 2 uses
  %.0.i.i.i387 = phi ptr [ %i.ja, %bb.bi ], [ null, %.noexc388 ] ; 2 uses
  %i.jb = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bi, i32 noundef 6)
          to label %.noexc392 unwind label %bb.bk ; 3 uses

.noexc392:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389
  %.not.i.i390 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i390, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit393, label %bb.bj

bb.bj:                                            ; preds = %.noexc392
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 80
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !159
  %i.je = shl i64 %i.jd, 32
  %i.jf = ashr exact i64 %i.je, 32
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !160
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit393

bb.bk:                                            ; preds = %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389, %bb.bh, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit381, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit376, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit372, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.ba
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit393: ; preds = %bb.bj, %.noexc392, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385
  %.0452 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385 ], [ %.1453, %.noexc392 ], [ %.1453, %bb.bj ] ; 3 uses
  %.0447 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385 ], [ 0, %.noexc392 ], [ %i.jf, %bb.bj ] ; 3 uses
  %.0304 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385 ], [ %.0.i.i.i387, %.noexc392 ], [ %.0.i.i.i387, %bb.bj ] ; 3 uses
  %.0303 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385 ], [ null, %.noexc392 ], [ %i.jh, %bb.bj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZN25RGB_to_YCbCr_coefficients8defaultsEv(ptr dead_on_unwind nonnull writable sret(%struct.RGB_to_YCbCr_coefficients) align 4 %15)
          to label %bb.bl unwind label %bb.bu

bb.bl:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit393
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !161, !range !20, !noundef !21
  %i.jm = trunc nuw i8 %i.jl to i1                ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jo = load i16, ptr %i.jn, align 4, !tbaa !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.jp = load i16, ptr %i.jj, align 4, !tbaa !162
  invoke void @_Z29get_RGB_to_YCbCr_coefficientstt(ptr dead_on_unwind nonnull writable sret(%struct.RGB_to_YCbCr_coefficients) align 4 %16, i16 noundef zeroext %i.jo, i16 noundef zeroext %i.jp)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %15, ptr noundef nonnull align 4 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %.not491 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %.not491, label %._crit_edge481, label %.preheader468.lr.ph

.preheader468.lr.ph:                              ; preds = %bb.bm
  %.not492 = icmp eq i32 %i.c, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  br i1 %.not492, label %._crit_edge481, label %.preheader468.preheader

.preheader468.preheader:                          ; preds = %.preheader468.lr.ph
  %wide.trip.count522 = zext i32 %i.e to i64      ; 5 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 36 uses
  %wide.trip.count507 = zext i32 %i.c to i64
  %wide.trip.count512 = zext i32 %i.c to i64
  %wide.trip.count517 = zext i32 %i.c to i64
  %i.jt = add nsw i64 %wide.trip.count522, -1     ; 4 uses
  %i.ju = mul i64 %.0451, %i.jt
  %i.jv = getelementptr i8, ptr %.0.i.i, i64 %i.ju
  %scevgep = getelementptr i8, ptr %i.jv, i64 %wide.trip.count ; 3 uses
  %i.jw = mul i64 %.0445, %i.jt
  %i.jx = getelementptr i8, ptr %.0.i.i.i, i64 %i.jw
  %scevgep570 = getelementptr i8, ptr %i.jx, i64 %wide.trip.count
  %i.jy = mul i64 %.0446, %i.jt
  %i.jz = getelementptr i8, ptr %.0.i.i.i370, i64 %i.jy
  %scevgep571 = getelementptr i8, ptr %i.jz, i64 %wide.trip.count
  %i.ka = mul i64 %.0454, %i.jt
  %i.kb = getelementptr i8, ptr %.0.i.i.i374, i64 %i.ka
  %scevgep572 = getelementptr i8, ptr %i.kb, i64 %wide.trip.count
  %i.kc = add nsw i64 %wide.trip.count522, -1     ; 2 uses
  %i.kd = mul i64 %.0451, %i.kc
  %i.ke = getelementptr i8, ptr %.0.i.i, i64 %i.kd
  %scevgep592 = getelementptr i8, ptr %i.ke, i64 %wide.trip.count
  %i.kf = mul i64 %.0446, %i.kc
  %i.kg = getelementptr i8, ptr %.0.i.i.i370, i64 %i.kf
  %scevgep593 = getelementptr i8, ptr %i.kg, i64 %wide.trip.count
  %i.kh = add nsw i64 %wide.trip.count522, -1     ; 2 uses
  %i.ki = mul i64 %.0451, %i.kh
  %i.kj = getelementptr i8, ptr %.0.i.i, i64 %i.ki
  %scevgep618 = getelementptr i8, ptr %i.kj, i64 %wide.trip.count
  %i.kk = mul i64 %.0446, %i.kh
  %i.kl = getelementptr i8, ptr %.0.i.i.i370, i64 %i.kk
  %scevgep619 = getelementptr i8, ptr %i.kl, i64 %wide.trip.count
  %i.km = add nsw i64 %wide.trip.count522, -1     ; 4 uses
  %i.kn = mul i64 %.0451, %i.km
  %i.ko = getelementptr i8, ptr %.0.i.i, i64 %i.kn
  %scevgep652.a = getelementptr i8, ptr %i.ko, i64 %wide.trip.count ; 3 uses
  %i.kp = mul i64 %.0446, %i.km
  %i.kq = getelementptr i8, ptr %.0.i.i.i370, i64 %i.kp
  %scevgep653.a = getelementptr i8, ptr %i.kq, i64 %wide.trip.count
  %i.kr = mul i64 %.0445, %i.km
  %i.ks = getelementptr i8, ptr %.0.i.i.i, i64 %i.kr
  %scevgep654 = getelementptr i8, ptr %i.ks, i64 %wide.trip.count
  %i.kt = mul i64 %.0454, %i.km
  %i.ku = getelementptr i8, ptr %.0.i.i.i374, i64 %i.kt
  %scevgep655 = getelementptr i8, ptr %i.ku, i64 %wide.trip.count
  %min.iters.check674 = icmp ult i32 %i.c, 8
  %bound0656 = icmp ult ptr %.0.i.i, %scevgep653.a
  %bound1657 = icmp ult ptr %.0.i.i.i370, %scevgep652.a
  %found.conflict658 = and i1 %bound0656, %bound1657
  %i.kv = or i64 %.0446, %.0451
  %i.kw = icmp slt i64 %i.kv, 0
  %i.kx = or i1 %found.conflict658, %i.kw
  %bound0661 = icmp ult ptr %.0.i.i, %scevgep654
  %bound1662 = icmp ult ptr %.0.i.i.i, %scevgep652.a
  %found.conflict663 = and i1 %bound0661, %bound1662
  %i.ky = icmp slt i64 %.0445, 0
  %i.kz = or i1 %found.conflict663, %i.ky
  %conflict.rdx666 = or i1 %i.kx, %i.kz
  %bound0667 = icmp ult ptr %.0.i.i, %scevgep655
  %bound1668 = icmp ult ptr %.0.i.i.i374, %scevgep652.a
  %found.conflict669 = and i1 %bound0667, %bound1668
  %i.la = icmp slt i64 %.0454, 0
  %i.lb = or i1 %found.conflict669, %i.la
  %conflict.rdx672 = or i1 %conflict.rdx666, %i.lb
  %min.iters.check676 = icmp ult i32 %i.c, 32
  %i.lc = and i64 %wide.trip.count, 24
  %n.vec678 = and i64 %wide.trip.count, 4294967264 ; 4 uses
  %cmp.n689 = icmp eq i64 %n.vec678, %wide.trip.count
  %min.epilog.iters.check694 = icmp eq i64 %i.lc, 0
  %n.vec696 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n704 = icmp eq i64 %n.vec696, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ld = add nsw i64 %wide.trip.count, -1
  %min.iters.check600 = icmp ult i32 %i.c, 4      ; 2 uses
  %bound0620 = icmp ult ptr %.0.i.i, %scevgep619
  %bound1621 = icmp ult ptr %.0.i.i.i370, %scevgep618
  %found.conflict622 = and i1 %bound0620, %bound1621
  %i.le = or i64 %.0446, %.0451
  %i.lf = icmp slt i64 %i.le, 0
  %i.lg = or i1 %found.conflict622, %i.lf
  %min.iters.check628 = icmp ult i32 %i.c, 16
  %i.lh = and i64 %wide.trip.count, 12
  %n.vec630 = and i64 %wide.trip.count, 4294967280 ; 4 uses
  %cmp.n636 = icmp eq i64 %n.vec630, %wide.trip.count
  %min.epilog.iters.check641 = icmp eq i64 %i.lh, 0
  %n.vec643 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n649 = icmp eq i64 %n.vec643, %wide.trip.count
  %xtraiter713.a = and i64 %wide.trip.count, 1
  %lcmp.mod714.not.a = icmp eq i64 %xtraiter713.a, 0
  %i.li = add nsw i64 %wide.trip.count, -1
  %bound0594 = icmp ult ptr %.0.i.i, %scevgep593
  %bound1595 = icmp ult ptr %.0.i.i.i370, %scevgep592
  %found.conflict596 = and i1 %bound0594, %bound1595
  %i.lj = or i64 %.0446, %.0451
  %i.lk = icmp slt i64 %i.lj, 0
  %i.ll = or i1 %found.conflict596, %i.lk
  %min.iters.check601 = icmp ult i32 %i.c, 32
  %i.lm = and i64 %wide.trip.count, 28
  %n.vec603 = and i64 %wide.trip.count, 4294967264 ; 4 uses
  %cmp.n610 = icmp eq i64 %n.vec603, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.lm, 0
  %n.vec611 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n615 = icmp eq i64 %n.vec611, %wide.trip.count
  %xtraiter715 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod716.not = icmp eq i64 %xtraiter715, 0
  %min.iters.check = icmp ult i32 %i.c, 4
  %bound0 = icmp ult ptr %.0.i.i, %scevgep570
  %bound1 = icmp ult ptr %.0.i.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ln = or i64 %.0445, %.0451
  %i.lo = icmp slt i64 %i.ln, 0
  %i.lp = or i1 %found.conflict, %i.lo
  %bound0574 = icmp ult ptr %.0.i.i, %scevgep571
  %bound1575 = icmp ult ptr %.0.i.i.i370, %scevgep
  %found.conflict576 = and i1 %bound0574, %bound1575
  %i.lq = icmp slt i64 %.0446, 0
  %i.lr = or i1 %found.conflict576, %i.lq
  %conflict.rdx = or i1 %i.lp, %i.lr
  %bound0579 = icmp ult ptr %.0.i.i, %scevgep572
  %bound1580 = icmp ult ptr %.0.i.i.i374, %scevgep
  %found.conflict581 = and i1 %bound0579, %bound1580
  %i.ls = icmp slt i64 %.0454, 0
  %i.lt = or i1 %found.conflict581, %i.ls
  %conflict.rdx584 = or i1 %conflict.rdx, %i.lt
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader468

.preheader468:                                    ; preds = %.preheader468.preheader, %._crit_edge
  %indvars.iv519 = phi i64 [ 0, %.preheader468.preheader ], [ %indvars.iv.next520, %._crit_edge ] ; 5 uses
  %i.lu = mul nsw i64 %.0446, %indvars.iv519
  %i.lv = getelementptr i8, ptr %.0.i.i.i370, i64 %i.lu ; 19 uses
  %i.lw = mul nsw i64 %.0445, %indvars.iv519
  %i.lx = getelementptr i8, ptr %.0.i.i.i, i64 %i.lw ; 7 uses
  %i.ly = mul nsw i64 %.0454, %indvars.iv519
  %i.lz = getelementptr i8, ptr %.0.i.i.i374, i64 %i.ly ; 7 uses
  %i.ma = mul nsw i64 %.0451, %indvars.iv519
  %i.mb = getelementptr i8, ptr %.0.i.i, i64 %i.ma ; 19 uses
  switch i16 %i.jo, label %_Z10clip_f_u16fi.exit395.preheader [
    i16 0, label %.lr.ph.split.us
    i16 8, label %iter.check691
  ]

iter.check691:                                    ; preds = %.preheader468
  %brmerge = select i1 %min.iters.check674, i1 true, i1 %conflict.rdx672
  br i1 %brmerge, label %.lr.ph.split.us470.preheader, label %vector.main.loop.iter.check675

vector.main.loop.iter.check675:                   ; preds = %iter.check691
  br i1 %min.iters.check676, label %vec.epilog.ph695, label %vector.body679

vector.body679:                                   ; preds = %vector.main.loop.iter.check675, %vector.body679
  %index680 = phi i64 [ %index.next687, %vector.body679 ], [ 0, %vector.main.loop.iter.check675 ] ; 5 uses
  %i.mc = getelementptr i8, ptr %i.lv, i64 %index680 ; 2 uses
  %i.md = getelementptr i8, ptr %i.mc, i64 16
  %wide.load681.a = load <16 x i8>, ptr %i.mc, align 1, !tbaa !132, !alias.scope !239
  %wide.load682.a = load <16 x i8>, ptr %i.md, align 1, !tbaa !132, !alias.scope !239
  %i.me = lshr <16 x i8> %wide.load681.a, splat (i8 1)
  %i.mf = lshr <16 x i8> %wide.load682.a, splat (i8 1)
  %i.mg = getelementptr i8, ptr %i.lx, i64 %index680 ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 16
  %wide.load683 = load <16 x i8>, ptr %i.mg, align 1, !tbaa !132, !alias.scope !240
  %wide.load684 = load <16 x i8>, ptr %i.mh, align 1, !tbaa !132, !alias.scope !240
  %i.mi = zext <16 x i8> %wide.load683 to <16 x i16>
  %i.mj = zext <16 x i8> %wide.load684 to <16 x i16>
  %i.mk = getelementptr i8, ptr %i.lz, i64 %index680 ; 2 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 16
  %wide.load685 = load <16 x i8>, ptr %i.mk, align 1, !tbaa !132, !alias.scope !241
  %wide.load686 = load <16 x i8>, ptr %i.ml, align 1, !tbaa !132, !alias.scope !241
  %i.mm = zext <16 x i8> %wide.load685 to <16 x i16>
  %i.mn = zext <16 x i8> %wide.load686 to <16 x i16>
  %i.mo = add nuw nsw <16 x i16> %i.mm, %i.mi
  %i.mp = add nuw nsw <16 x i16> %i.mn, %i.mj
  %i.mq = lshr <16 x i16> %i.mo, splat (i16 2)
  %i.mr = lshr <16 x i16> %i.mp, splat (i16 2)
  %i.ms = trunc nuw nsw <16 x i16> %i.mq to <16 x i8>
  %i.mt = trunc nuw nsw <16 x i16> %i.mr to <16 x i8>
  %i.mu = add nuw <16 x i8> %i.me, %i.ms
  %i.mv = add nuw <16 x i8> %i.mf, %i.mt
  %i.mw = getelementptr i8, ptr %i.mb, i64 %index680 ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 16
  store <16 x i8> %i.mu, ptr %i.mw, align 1, !tbaa !132, !alias.scope !242, !noalias !243
  store <16 x i8> %i.mv, ptr %i.mx, align 1, !tbaa !132, !alias.scope !242, !noalias !243
  %index.next687 = add nuw i64 %index680, 32      ; 2 uses
  %i.my = icmp eq i64 %index.next687, %n.vec678
  br i1 %i.my, label %middle.block688, label %vector.body679, !llvm.loop !205

middle.block688:                                  ; preds = %vector.body679
  br i1 %cmp.n689, label %._crit_edge, label %vec.epilog.iter.check693

vec.epilog.iter.check693:                         ; preds = %middle.block688
  br i1 %min.epilog.iters.check694, label %.lr.ph.split.us470.preheader, label %vec.epilog.ph695, !prof !244

vec.epilog.ph695:                                 ; preds = %vector.main.loop.iter.check675, %vec.epilog.iter.check693
  %vec.epilog.resume.val690 = phi i64 [ %n.vec678, %vec.epilog.iter.check693 ], [ 0, %vector.main.loop.iter.check675 ]
  br label %vec.epilog.vector.body697

vec.epilog.vector.body697:                        ; preds = %vec.epilog.vector.body697, %vec.epilog.ph695
  %index698 = phi i64 [ %vec.epilog.resume.val690, %vec.epilog.ph695 ], [ %index.next702, %vec.epilog.vector.body697 ] ; 5 uses
  %i.mz = getelementptr i8, ptr %i.lv, i64 %index698
  %wide.load699 = load <8 x i8>, ptr %i.mz, align 1, !tbaa !132, !alias.scope !239
  %i.na = lshr <8 x i8> %wide.load699, splat (i8 1)
  %i.nb = getelementptr i8, ptr %i.lx, i64 %index698
  %wide.load700 = load <8 x i8>, ptr %i.nb, align 1, !tbaa !132, !alias.scope !240
  %i.nc = zext <8 x i8> %wide.load700 to <8 x i16>
  %i.nd = getelementptr i8, ptr %i.lz, i64 %index698
  %wide.load701 = load <8 x i8>, ptr %i.nd, align 1, !tbaa !132, !alias.scope !241
  %i.ne = zext <8 x i8> %wide.load701 to <8 x i16>
  %i.nf = add nuw nsw <8 x i16> %i.ne, %i.nc
  %i.ng = lshr <8 x i16> %i.nf, splat (i16 2)
  %i.nh = trunc nuw nsw <8 x i16> %i.ng to <8 x i8>
  %i.ni = add nuw <8 x i8> %i.na, %i.nh
  %i.nj = getelementptr i8, ptr %i.mb, i64 %index698
  store <8 x i8> %i.ni, ptr %i.nj, align 1, !tbaa !132, !alias.scope !242, !noalias !243
  %index.next702 = add nuw i64 %index698, 8       ; 2 uses
  %i.nk = icmp eq i64 %index.next702, %n.vec696
  br i1 %i.nk, label %vec.epilog.middle.block703, label %vec.epilog.vector.body697, !llvm.loop !206

vec.epilog.middle.block703:                       ; preds = %vec.epilog.vector.body697
  br i1 %cmp.n704, label %._crit_edge, label %.lr.ph.split.us470.preheader

.lr.ph.split.us470.preheader:                     ; preds = %iter.check691, %vec.epilog.iter.check693, %vec.epilog.middle.block703
  %indvars.iv.ph = phi i64 [ 0, %iter.check691 ], [ %n.vec696, %vec.epilog.middle.block703 ], [ %n.vec678, %vec.epilog.iter.check693 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.us470.prol.loopexit, label %.lr.ph.split.us470.prol

.lr.ph.split.us470.prol:                          ; preds = %.lr.ph.split.us470.preheader
  %i.nl = getelementptr i8, ptr %i.lv, i64 %indvars.iv.ph
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !132
  %i.nn = lshr i8 %i.nm, 1
  %i.no = getelementptr i8, ptr %i.lx, i64 %indvars.iv.ph
  %i.np = load i8, ptr %i.no, align 1, !tbaa !132
  %i.nq = zext i8 %i.np to i16
  %i.nr = getelementptr i8, ptr %i.lz, i64 %indvars.iv.ph
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !132
  %i.nt = zext i8 %i.ns to i16
  %i.nu = add nuw nsw i16 %i.nt, %i.nq
  %i.nv = lshr i16 %i.nu, 2
  %i.nw = trunc nuw nsw i16 %i.nv to i8
  %i.nx = add nuw i8 %i.nn, %i.nw
  %i.ny = getelementptr i8, ptr %i.mb, i64 %indvars.iv.ph
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !132
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.split.us470.prol.loopexit

.lr.ph.split.us470.prol.loopexit:                 ; preds = %.lr.ph.split.us470.prol, %.lr.ph.split.us470.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.us470.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.us470.prol ]
  %i.nz = icmp eq i64 %indvars.iv.ph, %i.ld
  br i1 %i.nz, label %._crit_edge, label %.lr.ph.split.us470

_Z10clip_f_u16fi.exit395.preheader:               ; preds = %.preheader468
  %brmerge728 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx584
  br i1 %brmerge728, label %_Z10clip_f_u16fi.exit395.preheader709, label %vector.body

vector.body:                                      ; preds = %_Z10clip_f_u16fi.exit395.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_Z10clip_f_u16fi.exit395.preheader ] ; 5 uses
  %i.oa = getelementptr i8, ptr %i.lx, i64 %index
  %wide.load = load <4 x i8>, ptr %i.oa, align 1, !tbaa !132, !alias.scope !245
  %i.ob = uitofp <4 x i8> %wide.load to <4 x float>
  %i.oc = getelementptr i8, ptr %i.lv, i64 %index
  %wide.load585 = load <4 x i8>, ptr %i.oc, align 1, !tbaa !132, !alias.scope !246
  %i.od = uitofp <4 x i8> %wide.load585 to <4 x float>
  %i.oe = getelementptr i8, ptr %i.lz, i64 %index
  %wide.load586 = load <4 x i8>, ptr %i.oe, align 1, !tbaa !132, !alias.scope !247
  %i.of = uitofp <4 x i8> %wide.load586 to <4 x float>
  %i.og = load <1 x float>, ptr %i.jq, align 4
  %broadcast.splat588.a = shufflevector <1 x float> %i.og, <1 x float> poison, <4 x i32> zeroinitializer
  %i.oh = load <1 x float>, ptr %i.jr, align 4
  %broadcast.splat = shufflevector <1 x float> %i.oh, <1 x float> poison, <4 x i32> zeroinitializer
  %i.oi = fmul <4 x float> %broadcast.splat, %i.od
  %i.oj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ob, <4 x float> %broadcast.splat588.a, <4 x float> %i.oi)
  %i.ok = load <1 x float>, ptr %i.js, align 4
  %broadcast.splat590 = shufflevector <1 x float> %i.ok, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ol = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.of, <4 x float> %broadcast.splat590, <4 x float> %i.oj) ; 2 uses
  %i.om = fmul <4 x float> %i.ol, splat (float 2.190000e+02)
  %i.on = fmul <4 x float> %i.om, splat (float 3.906250e-03)
  %i.oo = fadd <4 x float> %i.on, splat (float 1.600000e+01)
  %i.op = select i1 %i.jm, <4 x float> %i.ol, <4 x float> %i.oo
  %i.oq = fadd <4 x float> %i.op, splat (float 5.000000e-01)
  %i.or = fptosi <4 x float> %i.oq to <4 x i32>   ; 2 uses
  %i.os = icmp slt <4 x i32> %i.or, zeroinitializer
  %i.ot = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.or, <4 x i32> splat (i32 255))
  %i.ou = trunc nuw <4 x i32> %i.ot to <4 x i8>
  %i.ov = select <4 x i1> %i.os, <4 x i8> zeroinitializer, <4 x i8> %i.ou
  %i.ow = getelementptr i8, ptr %i.mb, i64 %index
  store <4 x i8> %i.ov, ptr %i.ow, align 1, !tbaa !132, !alias.scope !248, !noalias !249
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ox = icmp eq i64 %index.next, %n.vec
  br i1 %i.ox, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %_Z10clip_f_u16fi.exit395.preheader709

_Z10clip_f_u16fi.exit395.preheader709:            ; preds = %_Z10clip_f_u16fi.exit395.preheader, %middle.block
  %indvars.iv514.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %_Z10clip_f_u16fi.exit395.preheader ]
  br label %_Z10clip_f_u16fi.exit395

.lr.ph.split.us:                                  ; preds = %.preheader468
  br i1 %i.jm, label %iter.check, label %iter.check638

iter.check638:                                    ; preds = %.lr.ph.split.us
  %brmerge729 = select i1 %min.iters.check600, i1 true, i1 %i.lg
  br i1 %brmerge729, label %_Z10clip_f_u16fi.exit.us.preheader, label %vector.main.loop.iter.check627

vector.main.loop.iter.check627:                   ; preds = %iter.check638
  br i1 %min.iters.check628, label %vec.epilog.ph642, label %vector.body631

vector.body631:                                   ; preds = %vector.main.loop.iter.check627, %vector.body631
  %index632 = phi i64 [ %index.next634, %vector.body631 ], [ 0, %vector.main.loop.iter.check627 ] ; 3 uses
  %i.oy = getelementptr i8, ptr %i.lv, i64 %index632
  %wide.load633 = load <16 x i8>, ptr %i.oy, align 1, !tbaa !132, !alias.scope !250
  %i.oz = uitofp <16 x i8> %wide.load633 to <16 x float>
  %i.pa = fmul nnan <16 x float> %i.oz, splat (float 2.190000e+02)
  %i.pb = fmul nnan <16 x float> %i.pa, splat (float 3.906250e-03)
  %i.pc = fadd <16 x float> %i.pb, splat (float 1.600000e+01)
  %i.pd = fadd <16 x float> %i.pc, splat (float 5.000000e-01)
  %i.pe = fptosi <16 x float> %i.pd to <16 x i32>
  %i.pf = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.pe, <16 x i32> splat (i32 255))
  %i.pg = trunc nuw <16 x i32> %i.pf to <16 x i8>
  %i.ph = getelementptr i8, ptr %i.mb, i64 %index632
  store <16 x i8> %i.pg, ptr %i.ph, align 1, !tbaa !132, !alias.scope !251, !noalias !250
  %index.next634 = add nuw i64 %index632, 16      ; 2 uses
  %i.pi = icmp eq i64 %index.next634, %n.vec630
  br i1 %i.pi, label %middle.block635, label %vector.body631, !llvm.loop !216
end_hunk_0
begin_hunk_1_@_ZNK15Op_RGB_to_YCbCrItE18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateSA_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
  %.0451 = phi i64 [ %i.hk, %bb.bb ], [ 0, %.noexc368 ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.hj, %bb.bb ], [ null, %.noexc368 ] ; 8 uses
  %i.hl = load ptr, ptr %2, align 8, !tbaa !52
  %i.hm = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hl, i32 noundef 4)
          to label %.noexc371 unwind label %bb.bk ; 3 uses

.noexc371:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i.i369 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i369, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit372, label %bb.bc

bb.bc:                                            ; preds = %.noexc371
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 80
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !159
  %i.hp = shl i64 %i.ho, 32
  %i.hq = ashr exact i64 %i.hp, 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !160
  %i.ht = lshr i64 %i.hq, 1
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit372

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit372: ; preds = %bb.bc, %.noexc371
  %.0452 = phi i64 [ %i.ht, %bb.bc ], [ 0, %.noexc371 ] ; 11 uses
  %.0.i.i.i370 = phi ptr [ %i.hs, %bb.bc ], [ null, %.noexc371 ] ; 11 uses
  %i.hu = load ptr, ptr %2, align 8, !tbaa !52
  %i.hv = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hu, i32 noundef 5)
          to label %.noexc375 unwind label %bb.bk ; 3 uses

.noexc375:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit372
  %.not.i.i.i373 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i373, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit376, label %bb.bd

bb.bd:                                            ; preds = %.noexc375
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !159
  %i.hy = shl i64 %i.hx, 32
  %i.hz = ashr exact i64 %i.hy, 32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !160
  %i.ic = lshr i64 %i.hz, 1
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit376

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit376: ; preds = %bb.bd, %.noexc375
  %.0460 = phi i64 [ %i.ic, %bb.bd ], [ 0, %.noexc375 ] ; 7 uses
  %.0.i.i.i374 = phi ptr [ %i.ib, %bb.bd ], [ null, %.noexc375 ] ; 7 uses
  %i.id = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bk, i32 noundef 0)
          to label %.noexc377 unwind label %bb.bk ; 3 uses

.noexc377:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit376
  %.not.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.be

bb.be:                                            ; preds = %.noexc377
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 80
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !159
  %i.ig = shl i64 %i.if, 32
  %i.ih = ashr exact i64 %i.ig, 32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 56
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !160
  %i.ik = lshr i64 %i.ih, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.be, %.noexc377
  %.0457 = phi i64 [ %i.ik, %bb.be ], [ 0, %.noexc377 ] ; 9 uses
  %.0.i.i = phi ptr [ %i.ij, %bb.be ], [ null, %.noexc377 ] ; 13 uses
  %i.il = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bk, i32 noundef 1)
          to label %.noexc380 unwind label %bb.bk ; 3 uses

.noexc380:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i378 = icmp eq ptr %i.il, null
  br i1 %.not.i.i378, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit381, label %bb.bf

bb.bf:                                            ; preds = %.noexc380
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 80
  %i.in = load i64, ptr %i.im, align 8, !tbaa !159
  %i.io = shl i64 %i.in, 32
  %i.ip = ashr exact i64 %i.io, 32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 56
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !160
  %i.is = lshr i64 %i.ip, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit381

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit381: ; preds = %bb.bf, %.noexc380
  %.0456 = phi i64 [ %i.is, %bb.bf ], [ 0, %.noexc380 ]
  %.0.i.i379 = phi ptr [ %i.ir, %bb.bf ], [ null, %.noexc380 ]
  %i.it = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bk, i32 noundef 2)
          to label %.noexc384 unwind label %bb.bk ; 3 uses

.noexc384:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit381
  %.not.i.i382 = icmp eq ptr %i.it, null
  br i1 %.not.i.i382, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385, label %bb.bg

bb.bg:                                            ; preds = %.noexc384
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !159
  %i.iw = shl i64 %i.iv, 32
  %i.ix = ashr exact i64 %i.iw, 32
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !160
  %i.ja = lshr i64 %i.ix, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385: ; preds = %bb.bg, %.noexc384
  %.0455 = phi i64 [ %i.ja, %bb.bg ], [ 0, %.noexc384 ] ; 2 uses
  %.0.i.i383 = phi ptr [ %i.iz, %bb.bg ], [ null, %.noexc384 ] ; 3 uses
  br i1 %i.x, label %bb.bh, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit393

bb.bh:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385
  %i.jb = load ptr, ptr %2, align 8, !tbaa !52
  %i.jc = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.jb, i32 noundef 6)
          to label %.noexc388 unwind label %bb.bk ; 3 uses

.noexc388:                                        ; preds = %bb.bh
  %.not.i.i.i386 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i386, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389, label %bb.bi

bb.bi:                                            ; preds = %.noexc388
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 80
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !159
  %i.jf = shl i64 %i.je, 32
  %i.jg = ashr exact i64 %i.jf, 32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 56
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !160
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389: ; preds = %bb.bi, %.noexc388
  %.1459 = phi i64 [ %i.jg, %bb.bi ], [ 0, %.noexc388 ] ; 2 uses
  %.0.i.i.i387 = phi ptr [ %i.ji, %bb.bi ], [ null, %.noexc388 ] ; 2 uses
  %i.jj = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bk, i32 noundef 6)
          to label %.noexc392 unwind label %bb.bk ; 3 uses

.noexc392:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389
  %.not.i.i390 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i390, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit393, label %bb.bj

bb.bj:                                            ; preds = %.noexc392
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 80
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !159
  %i.jm = shl i64 %i.jl, 32
  %i.jn = ashr exact i64 %i.jm, 32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !160
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit393

bb.bk:                                            ; preds = %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit389, %bb.bh, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit381, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit376, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit372, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.ba
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit393: ; preds = %bb.bj, %.noexc392, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385
  %.0458 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385 ], [ %.1459, %.noexc392 ], [ %.1459, %bb.bj ] ; 3 uses
  %.0453 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385 ], [ 0, %.noexc392 ], [ %i.jn, %bb.bj ] ; 3 uses
  %.0304 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385 ], [ %.0.i.i.i387, %.noexc392 ], [ %.0.i.i.i387, %bb.bj ] ; 3 uses
  %.0303 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit385 ], [ null, %.noexc392 ], [ %i.jp, %bb.bj ] ; 3 uses
  %i.jr = add nsw i32 %i.n, -1
  %i.js = shl nuw i32 1, %i.jr
  %notmask = shl nsw i32 -1, %i.n
  %i.jt = xor i32 %notmask, -1                    ; 8 uses
  %i.ju = add nsw i32 %i.n, -8
  %i.jv = shl i32 16, %i.ju
  %i.jw = sitofp i32 %i.jv to float               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZN25RGB_to_YCbCr_coefficients8defaultsEv(ptr dead_on_unwind nonnull writable sret(%struct.RGB_to_YCbCr_coefficients) align 4 %15)
          to label %bb.bl unwind label %bb.bu

bb.bl:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit393
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.jy = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.jz = load i8, ptr %i.jy, align 2, !tbaa !161, !range !20, !noundef !21
  %i.ka = trunc nuw i8 %i.jz to i1                ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kc = load i16, ptr %i.kb, align 4, !tbaa !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.kd = load i16, ptr %i.jx, align 4, !tbaa !162
  invoke void @_Z29get_RGB_to_YCbCr_coefficientstt(ptr dead_on_unwind nonnull writable sret(%struct.RGB_to_YCbCr_coefficients) align 4 %16, i16 noundef zeroext %i.kc, i16 noundef zeroext %i.kd)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %15, ptr noundef nonnull align 4 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %.not491 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %.not491, label %._crit_edge476, label %.preheader463.lr.ph

.preheader463.lr.ph:                              ; preds = %bb.bm
  %.not492 = icmp eq i32 %i.c, 0
  %i.ke = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %15, i64 12
  br i1 %.not492, label %.preheader.lr.ph, label %.preheader463.preheader

.preheader463.preheader:                          ; preds = %.preheader463.lr.ph
  %wide.trip.count522 = zext i32 %i.e to i64      ; 5 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 28 uses
  %wide.trip.count507 = zext i32 %i.c to i64
  %wide.trip.count512 = zext i32 %i.c to i64
  %wide.trip.count517 = zext i32 %i.c to i64
  %i.kh = add nsw i64 %wide.trip.count522, -1     ; 4 uses
  %i.ki = mul i64 %.0457, %i.kh
  %i.kj = add i64 %i.ki, %wide.trip.count
  %i.kk = shl i64 %i.kj, 1
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %i.kk ; 3 uses
  %i.kl = mul i64 %.0451, %i.kh
  %i.km = add i64 %i.kl, %wide.trip.count
  %i.kn = shl i64 %i.km, 1
  %scevgep569 = getelementptr i8, ptr %.0.i.i.i, i64 %i.kn
  %i.ko = mul i64 %.0452, %i.kh
  %i.kp = add i64 %i.ko, %wide.trip.count
  %i.kq = shl i64 %i.kp, 1
  %scevgep570 = getelementptr i8, ptr %.0.i.i.i370, i64 %i.kq
  %i.kr = mul i64 %.0460, %i.kh
  %i.ks = add i64 %i.kr, %wide.trip.count
  %i.kt = shl i64 %i.ks, 1
  %scevgep571 = getelementptr i8, ptr %.0.i.i.i374, i64 %i.kt
  %i.ku = add nsw i64 %wide.trip.count522, -1     ; 2 uses
  %i.kv = mul i64 %.0457, %i.ku
  %i.kw = add i64 %i.kv, %wide.trip.count
  %i.kx = shl i64 %i.kw, 1
  %scevgep595 = getelementptr i8, ptr %.0.i.i, i64 %i.kx
  %i.ky = mul i64 %.0452, %i.ku
  %i.kz = add i64 %i.ky, %wide.trip.count
  %i.la = shl i64 %i.kz, 1
  %scevgep596 = getelementptr i8, ptr %.0.i.i.i370, i64 %i.la
  %i.lb = add nsw i64 %wide.trip.count522, -1     ; 2 uses
  %i.lc = mul i64 %.0457, %i.lb
  %i.ld = add i64 %i.lc, %wide.trip.count
  %i.le = shl i64 %i.ld, 1
  %scevgep621 = getelementptr i8, ptr %.0.i.i, i64 %i.le
  %i.lf = mul i64 %.0452, %i.lb
  %i.lg = add i64 %i.lf, %wide.trip.count
  %i.lh = shl i64 %i.lg, 1
  %scevgep622 = getelementptr i8, ptr %.0.i.i.i370, i64 %i.lh
  %i.li = add nsw i64 %wide.trip.count522, -1     ; 4 uses
  %i.lj = mul i64 %.0457, %i.li
  %i.lk = add i64 %i.lj, %wide.trip.count
  %i.ll = shl i64 %i.lk, 1
  %scevgep644.a = getelementptr i8, ptr %.0.i.i, i64 %i.ll ; 3 uses
  %i.lm = mul i64 %.0452, %i.li
  %i.ln = add i64 %i.lm, %wide.trip.count
  %i.lo = shl i64 %i.ln, 1
  %scevgep645.a = getelementptr i8, ptr %.0.i.i.i370, i64 %i.lo
  %i.lp = mul i64 %.0451, %i.li
  %i.lq = add i64 %i.lp, %wide.trip.count
  %i.lr = shl i64 %i.lq, 1
  %scevgep646 = getelementptr i8, ptr %.0.i.i.i, i64 %i.lr
  %i.ls = mul i64 %.0460, %i.li
  %i.lt = add i64 %i.ls, %wide.trip.count
  %i.lu = shl i64 %i.lt, 1
  %scevgep647 = getelementptr i8, ptr %.0.i.i.i374, i64 %i.lu
  %min.iters.check666 = icmp ult i32 %i.c, 16
  %bound0648 = icmp ult ptr %.0.i.i, %scevgep645.a
  %bound1649 = icmp ult ptr %.0.i.i.i370, %scevgep644.a
  %found.conflict650 = and i1 %bound0648, %bound1649
  %17 = or i64 %.0452, %.0457
  %stride.check652 = icmp samesign ugt i64 %17, 4611686018427387903
  %i.lv = or i1 %found.conflict650, %stride.check652
  %bound0653 = icmp ult ptr %.0.i.i, %scevgep646
  %bound1654 = icmp ult ptr %.0.i.i.i, %scevgep644.a
  %found.conflict655 = and i1 %bound0653, %bound1654
  %stride.check657 = icmp samesign ugt i64 %.0451, 4611686018427387903
  %i.lw = or i1 %found.conflict655, %stride.check657
  %conflict.rdx658 = or i1 %i.lv, %i.lw
  %bound0659 = icmp ult ptr %.0.i.i, %scevgep647
  %bound1660 = icmp ult ptr %.0.i.i.i374, %scevgep644.a
  %found.conflict661 = and i1 %bound0659, %bound1660
  %stride.check663 = icmp samesign ugt i64 %.0460, 4611686018427387903
  %i.lx = or i1 %found.conflict661, %stride.check663
  %conflict.rdx664 = or i1 %conflict.rdx658, %i.lx
  %n.vec668 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n676 = icmp eq i64 %n.vec668, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ly = add nsw i64 %wide.trip.count, -1
  %min.iters.check629 = icmp ult i32 %i.c, 8
  %bound0623 = icmp ult ptr %.0.i.i, %scevgep622
  %bound1624 = icmp ult ptr %.0.i.i.i370, %scevgep621
  %found.conflict625 = and i1 %bound0623, %bound1624
  %i.lz = or i64 %.0452, %.0457
  %i.ma = icmp samesign ugt i64 %i.lz, 4611686018427387903
  %i.mb = or i1 %found.conflict625, %i.ma
  %n.vec631 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %broadcast.splatinsert632.a = insertelement <8 x float> poison, float %i.jw, i64 0
  %broadcast.splat633.a = shufflevector <8 x float> %broadcast.splatinsert632.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert634 = insertelement <8 x i32> poison, i32 %i.jt, i64 0
  %broadcast.splat635 = shufflevector <8 x i32> %broadcast.splatinsert634, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n641 = icmp eq i64 %n.vec631, %wide.trip.count
  %min.iters.check603 = icmp ult i32 %i.c, 4
  %bound0597 = icmp ult ptr %.0.i.i, %scevgep596
  %bound1598 = icmp ult ptr %.0.i.i.i370, %scevgep595
  %found.conflict599 = and i1 %bound0597, %bound1598
  %i.mc = or i64 %.0452, %.0457
  %i.md = icmp samesign ugt i64 %i.mc, 4611686018427387903
  %i.me = or i1 %found.conflict599, %i.md
  %min.iters.check604 = icmp ult i32 %i.c, 16
  %i.mf = and i64 %wide.trip.count, 12
  %n.vec606 = and i64 %wide.trip.count, 4294967280 ; 4 uses
  %cmp.n613 = icmp eq i64 %n.vec606, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.mf, 0
  %n.vec614 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n618 = icmp eq i64 %n.vec614, %wide.trip.count
  %xtraiter687 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod688.not = icmp eq i64 %xtraiter687, 0
  %min.iters.check = icmp ult i32 %i.c, 8
  %bound0 = icmp ult ptr %.0.i.i, %scevgep569
  %bound1 = icmp ult ptr %.0.i.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %18 = or i64 %.0451, %.0457
  %stride.check572 = icmp samesign ugt i64 %18, 4611686018427387903
  %i.mg = or i1 %found.conflict, %stride.check572
  %bound0573 = icmp ult ptr %.0.i.i, %scevgep570
  %bound1574 = icmp ult ptr %.0.i.i.i370, %scevgep
  %found.conflict575 = and i1 %bound0573, %bound1574
  %stride.check577 = icmp samesign ugt i64 %.0452, 4611686018427387903
  %i.mh = or i1 %found.conflict575, %stride.check577
  %conflict.rdx = or i1 %i.mg, %i.mh
  %bound0578 = icmp ult ptr %.0.i.i, %scevgep571
  %bound1579 = icmp ult ptr %.0.i.i.i374, %scevgep
  %found.conflict580 = and i1 %bound0578, %bound1579
  %stride.check582 = icmp samesign ugt i64 %.0460, 4611686018427387903
  %i.mi = or i1 %found.conflict580, %stride.check582
  %conflict.rdx583 = or i1 %conflict.rdx, %i.mi
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert588.a = insertelement <8 x float> poison, float %i.jw, i64 0
  %broadcast.splat589.a = shufflevector <8 x float> %broadcast.splatinsert588.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert590 = insertelement <8 x i32> poison, i32 %i.jt, i64 0
  %broadcast.splat591 = shufflevector <8 x i32> %broadcast.splatinsert590, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader463

.preheader463:                                    ; preds = %.preheader463.preheader, %._crit_edge
  %indvars.iv519 = phi i64 [ 0, %.preheader463.preheader ], [ %indvars.iv.next520, %._crit_edge ] ; 5 uses
  %i.mj = mul i64 %.0452, %indvars.iv519
  %i.mk = getelementptr [2 x i8], ptr %.0.i.i.i370, i64 %i.mj ; 15 uses
  %i.ml = mul i64 %.0451, %indvars.iv519
  %i.mm = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.ml ; 6 uses
  %i.mn = mul i64 %.0460, %indvars.iv519
  %i.mo = getelementptr [2 x i8], ptr %.0.i.i.i374, i64 %i.mn ; 6 uses
  %i.mp = mul i64 %.0457, %indvars.iv519
  %i.mq = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.mp ; 15 uses
  %i.mr = load float, ptr %i.ke, align 4          ; 2 uses
  %i.ms = load float, ptr %i.kf, align 4          ; 2 uses
  %i.mt = load float, ptr %i.kg, align 4          ; 2 uses
  switch i16 %i.kc, label %.lr.ph.split.preheader [
    i16 0, label %.lr.ph.split.us
    i16 8, label %.lr.ph.split.us465.preheader
  ]

.lr.ph.split.us465.preheader:                     ; preds = %.preheader463
  %brmerge = select i1 %min.iters.check666, i1 true, i1 %conflict.rdx664
  br i1 %brmerge, label %.lr.ph.split.us465.preheader685, label %vector.body669

vector.body669:                                   ; preds = %.lr.ph.split.us465.preheader, %vector.body669
  %index670 = phi i64 [ %index.next674, %vector.body669 ], [ 0, %.lr.ph.split.us465.preheader ] ; 5 uses
  %i.mu = getelementptr [2 x i8], ptr %i.mk, i64 %index670
  %wide.load671 = load <8 x i16>, ptr %i.mu, align 2, !tbaa !29, !alias.scope !321
  %i.mv = lshr <8 x i16> %wide.load671, splat (i16 1)
  %i.mw = getelementptr [2 x i8], ptr %i.mm, i64 %index670
  %wide.load672 = load <8 x i16>, ptr %i.mw, align 2, !tbaa !29, !alias.scope !322
  %i.mx = zext <8 x i16> %wide.load672 to <8 x i32>
  %i.my = getelementptr [2 x i8], ptr %i.mo, i64 %index670
  %wide.load673 = load <8 x i16>, ptr %i.my, align 2, !tbaa !29, !alias.scope !323
  %i.mz = zext <8 x i16> %wide.load673 to <8 x i32>
  %i.na = add nuw nsw <8 x i32> %i.mz, %i.mx
  %i.nb = lshr <8 x i32> %i.na, splat (i32 2)
  %i.nc = trunc nuw nsw <8 x i32> %i.nb to <8 x i16>
  %i.nd = add nuw <8 x i16> %i.mv, %i.nc
  %i.ne = getelementptr [2 x i8], ptr %i.mq, i64 %index670
  store <8 x i16> %i.nd, ptr %i.ne, align 2, !tbaa !29, !alias.scope !324, !noalias !325
  %index.next674 = add nuw i64 %index670, 8       ; 2 uses
  %i.nf = icmp eq i64 %index.next674, %n.vec668
  br i1 %i.nf, label %middle.block675, label %vector.body669, !llvm.loop !289

middle.block675:                                  ; preds = %vector.body669
  br i1 %cmp.n676, label %._crit_edge, label %.lr.ph.split.us465.preheader685

.lr.ph.split.us465.preheader685:                  ; preds = %.lr.ph.split.us465.preheader, %middle.block675
  %indvars.iv.ph = phi i64 [ %n.vec668, %middle.block675 ], [ 0, %.lr.ph.split.us465.preheader ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.us465.prol.loopexit, label %.lr.ph.split.us465.prol

.lr.ph.split.us465.prol:                          ; preds = %.lr.ph.split.us465.preheader685
  %i.ng = getelementptr [2 x i8], ptr %i.mk, i64 %indvars.iv.ph
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !29
  %i.ni = lshr i16 %i.nh, 1
  %i.nj = getelementptr [2 x i8], ptr %i.mm, i64 %indvars.iv.ph
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !29
  %i.nl = zext i16 %i.nk to i32
  %i.nm = getelementptr [2 x i8], ptr %i.mo, i64 %indvars.iv.ph
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !29
  %i.no = zext i16 %i.nn to i32
  %i.np = add nuw nsw i32 %i.no, %i.nl
  %i.nq = lshr i32 %i.np, 2
  %i.nr = trunc nuw nsw i32 %i.nq to i16
  %i.ns = add nuw i16 %i.ni, %i.nr
  %i.nt = getelementptr [2 x i8], ptr %i.mq, i64 %indvars.iv.ph
  store i16 %i.ns, ptr %i.nt, align 2, !tbaa !29
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.split.us465.prol.loopexit

.lr.ph.split.us465.prol.loopexit:                 ; preds = %.lr.ph.split.us465.prol, %.lr.ph.split.us465.preheader685
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.us465.preheader685 ], [ %indvars.iv.next.prol, %.lr.ph.split.us465.prol ]
  %i.nu = icmp eq i64 %indvars.iv.ph, %i.ly
  br i1 %i.nu, label %._crit_edge, label %.lr.ph.split.us465

.lr.ph.split.preheader:                           ; preds = %.preheader463
  %brmerge701 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx583
  br i1 %brmerge701, label %.lr.ph.split.preheader681, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ms, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert584.a = insertelement <8 x float> poison, float %i.mr, i64 0
  %broadcast.splat585.a = shufflevector <8 x float> %broadcast.splatinsert584.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert586 = insertelement <8 x float> poison, float %i.mt, i64 0
  %broadcast.splat587 = shufflevector <8 x float> %broadcast.splatinsert586, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.nv = getelementptr [2 x i8], ptr %i.mm, i64 %index
  %wide.load = load <8 x i16>, ptr %i.nv, align 2, !tbaa !29, !alias.scope !326
  %i.nw = uitofp <8 x i16> %wide.load to <8 x float>
  %i.nx = getelementptr [2 x i8], ptr %i.mk, i64 %index
  %wide.load592 = load <8 x i16>, ptr %i.nx, align 2, !tbaa !29, !alias.scope !327
  %i.ny = uitofp <8 x i16> %wide.load592 to <8 x float>
  %i.nz = getelementptr [2 x i8], ptr %i.mo, i64 %index
  %wide.load593 = load <8 x i16>, ptr %i.nz, align 2, !tbaa !29, !alias.scope !328
  %i.oa = uitofp <8 x i16> %wide.load593 to <8 x float>
  %i.ob = fmul <8 x float> %broadcast.splat, %i.ny
  %i.oc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nw, <8 x float> %broadcast.splat585.a, <8 x float> %i.ob)
  %i.od = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.oa, <8 x float> %broadcast.splat587, <8 x float> %i.oc) ; 2 uses
  %i.oe = fmul <8 x float> %i.od, splat (float 2.190000e+02)
  %i.of = fmul <8 x float> %i.oe, splat (float 3.906250e-03)
  %i.og = fadd <8 x float> %i.of, %broadcast.splat589.a
  %i.oh = select i1 %i.ka, <8 x float> %i.od, <8 x float> %i.og
  %i.oi = fadd <8 x float> %i.oh, splat (float 5.000000e-01)
  %i.oj = fptosi <8 x float> %i.oi to <8 x i32>   ; 2 uses
  %i.ok = icmp slt <8 x i32> %i.oj, zeroinitializer
  %i.ol = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat591, <8 x i32> %i.oj)
  %i.om = trunc <8 x i32> %i.ol to <8 x i16>
  %i.on = select <8 x i1> %i.ok, <8 x i16> zeroinitializer, <8 x i16> %i.om
  %i.oo = getelementptr [2 x i8], ptr %i.mq, i64 %index
  store <8 x i16> %i.on, ptr %i.oo, align 2, !tbaa !29, !alias.scope !329, !noalias !330
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.op = icmp eq i64 %index.next, %n.vec
  br i1 %i.op, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader681

.lr.ph.split.preheader681:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv514.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.preheader ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.preheader463
  br i1 %i.ka, label %iter.check, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %brmerge702 = select i1 %min.iters.check629, i1 true, i1 %i.mb
  br i1 %brmerge702, label %.lr.ph.split.us.split.preheader683, label %vector.body636

vector.body636:                                   ; preds = %.lr.ph.split.us.split.preheader, %vector.body636
  %index637 = phi i64 [ %index.next639, %vector.body636 ], [ 0, %.lr.ph.split.us.split.preheader ] ; 3 uses
  %i.oq = getelementptr [2 x i8], ptr %i.mk, i64 %index637
  %wide.load638 = load <8 x i16>, ptr %i.oq, align 2, !tbaa !29, !alias.scope !331
  %i.or = uitofp <8 x i16> %wide.load638 to <8 x float>
  %i.os = fmul nnan <8 x float> %i.or, splat (float 2.190000e+02)
  %i.ot = fmul nnan <8 x float> %i.os, splat (float 3.906250e-03)
  %i.ou = fadd <8 x float> %i.ot, %broadcast.splat633.a
  %i.ov = fadd <8 x float> %i.ou, splat (float 5.000000e-01)
  %i.ow = fptosi <8 x float> %i.ov to <8 x i32>   ; 2 uses
  %i.ox = icmp slt <8 x i32> %i.ow, zeroinitializer
  %i.oy = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat635, <8 x i32> %i.ow)
  %i.oz = trunc <8 x i32> %i.oy to <8 x i16>
  %i.pa = select <8 x i1> %i.ox, <8 x i16> zeroinitializer, <8 x i16> %i.oz
  %i.pb = getelementptr [2 x i8], ptr %i.mq, i64 %index637
  store <8 x i16> %i.pa, ptr %i.pb, align 2, !tbaa !29, !alias.scope !332, !noalias !331
  %index.next639 = add nuw i64 %index637, 8       ; 2 uses
  %i.pc = icmp eq i64 %index.next639, %n.vec631
  br i1 %i.pc, label %middle.block640, label %vector.body636, !llvm.loop !299

middle.block640:                                  ; preds = %vector.body636
  br i1 %cmp.n641, label %._crit_edge, label %.lr.ph.split.us.split.preheader683

.lr.ph.split.us.split.preheader683:               ; preds = %.lr.ph.split.us.split.preheader, %middle.block640
  %indvars.iv504.ph = phi i64 [ %n.vec631, %middle.block640 ], [ 0, %.lr.ph.split.us.split.preheader ]
  br label %.lr.ph.split.us.split

iter.check:                                       ; preds = %.lr.ph.split.us
  %brmerge703 = select i1 %min.iters.check603, i1 true, i1 %i.me
  br i1 %brmerge703, label %.lr.ph.split.us.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check604, label %vec.epilog.ph, label %vector.body607

vector.body607:                                   ; preds = %vector.main.loop.iter.check, %vector.body607
  %index608 = phi i64 [ %index.next611, %vector.body607 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.pd = getelementptr [2 x i8], ptr %i.mk, i64 %index608 ; 2 uses
  %i.pe = getelementptr i8, ptr %i.pd, i64 16
  %wide.load609 = load <8 x i16>, ptr %i.pd, align 2, !tbaa !29, !alias.scope !333
  %wide.load610 = load <8 x i16>, ptr %i.pe, align 2, !tbaa !29, !alias.scope !333
  %i.pf = getelementptr [2 x i8], ptr %i.mq, i64 %index608 ; 2 uses
  %i.pg = getelementptr i8, ptr %i.pf, i64 16
  store <8 x i16> %wide.load609, ptr %i.pf, align 2, !tbaa !29, !alias.scope !334, !noalias !333
  store <8 x i16> %wide.load610, ptr %i.pg, align 2, !tbaa !29, !alias.scope !334, !noalias !333
  %index.next611 = add nuw i64 %index608, 16      ; 2 uses
  %i.ph = icmp eq i64 %index.next611, %n.vec606
  br i1 %i.ph, label %middle.block612, label %vector.body607, !llvm.loop !303

middle.block612:                                  ; preds = %vector.body607
  br i1 %cmp.n613, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block612
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.split.us.preheader, label %vec.epilog.ph, !prof !166

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec606, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index615 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next617, %vec.epilog.vector.body ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK27Op_RRGGBBxx_HDR_to_YCbCr42018convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
  %i.dy = load i64, ptr %i.dt, align 8
  %i.dz = and i64 %i.dy, -2
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.dz) #19
  br label %_ZN5ErrorD2Ev.exit249

_ZN5ErrorD2Ev.exit249:                            ; preds = %bb.y, %_ZN5ErrorD2Ev.exit248, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.s ], [ %.pn.pn, %_ZN5ErrorD2Ev.exit248 ], [ %.pn.pn, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8
  %i.ec = trunc i8 %i.eb to i1
  br i1 %i.ec, label %bb.z, label %_ZN5ErrorD2Ev.exit250

bb.z:                                             ; preds = %_ZN5ErrorD2Ev.exit249
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !132
  %i.ef = load i64, ptr %i.ea, align 8
  %i.eg = and i64 %i.ef, -2
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eg) #19
  br label %_ZN5ErrorD2Ev.exit250

_ZN5ErrorD2Ev.exit250:                            ; preds = %bb.z, %_ZN5ErrorD2Ev.exit249, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.db, %bb.r ], [ %.pn.pn.pn, %_ZN5ErrorD2Ev.exit249 ], [ %.pn.pn.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %_ZN5ErrorD2Ev.exit251

bb.aa:                                            ; preds = %bb.q
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load i8, ptr %i.bh, align 8
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %bb.ab, label %_ZN5ErrorD2Ev.exit251

bb.ab:                                            ; preds = %bb.aa
  %i.ek = load ptr, ptr %i.cx, align 8, !tbaa !132
  %i.el = load i64, ptr %i.bh, align 8
  %i.em = and i64 %i.el, -2
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.em) #19
  br label %_ZN5ErrorD2Ev.exit251

bb.ac:                                            ; preds = %._crit_edge353, %bb.p
  %i.en = phi i8 [ %.pre, %._crit_edge353 ], [ %i.cv, %bb.p ]
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.eo, align 8, !tbaa !135
  %i.ep = trunc i8 %i.en to i1
  br i1 %i.ep, label %bb.ad, label %_ZN5ErrorD2Ev.exit252

bb.ad:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !132
  %i.es = load i64, ptr %i.bh, align 8
  %i.et = and i64 %i.es, -2
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.et) #19
  br label %_ZN5ErrorD2Ev.exit252

_ZN5ErrorD2Ev.exit252:                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ba

.critedge:                                        ; preds = %_ZN5ErrorD2Ev.exit245
  %i.eu = load i8, ptr %i.bh, align 8
  %i.ev = trunc i8 %i.eu to i1
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.critedge
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !132
  %i.ey = load i64, ptr %i.bh, align 8
  %i.ez = and i64 %i.ey, -2
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.ez) #19
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  switch i32 %i.j, label %bb.ar [
    i32 15, label %bb.ag
    i32 13, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  invoke void @_ZN14HeifPixelImage11add_channelE12heif_channeljjiPK20heif_security_limits23heif_component_datatype(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %14, ptr noundef nonnull align 8 dereferenceable(448) %i.ao, i32 noundef 6, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef %7, i32 noundef 0)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.fa = load i32, ptr %14, align 8, !tbaa !151
  %.not295 = icmp eq i32 %i.fa, 0
  br i1 %.not295, label %.critedge237, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fb = load i64, ptr %14, align 8
  store i64 %i.fb, ptr %0, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.fe = load i8, ptr %i.fd, align 8             ; 2 uses
  %i.ff = trunc i8 %i.fe to i1
  br i1 %i.ff, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false), !tbaa.struct !133
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !132
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !132
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %._crit_edge354 unwind label %bb.am

._crit_edge354:                                   ; preds = %bb.ak
  %.pre355 = load i8, ptr %i.fd, align 8
  br label %bb.ao

_ZN5ErrorD2Ev.exit251:                            ; preds = %bb.ab, %bb.aa, %_ZN5ErrorD2Ev.exit250
  %.pn228 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZN5ErrorD2Ev.exit250 ], [ %i.eh, %bb.aa ], [ %i.eh, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bd

bb.al:                                            ; preds = %bb.ag
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit256

bb.am:                                            ; preds = %bb.ak
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = load i8, ptr %i.fd, align 8
  %i.fn = trunc i8 %i.fm to i1
  br i1 %i.fn, label %bb.an, label %_ZN5ErrorD2Ev.exit256

bb.an:                                            ; preds = %bb.am
  %i.fo = load ptr, ptr %i.fg, align 8, !tbaa !132
  %i.fp = load i64, ptr %i.fd, align 8
  %i.fq = and i64 %i.fp, -2
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fq) #19
  br label %_ZN5ErrorD2Ev.exit256

bb.ao:                                            ; preds = %._crit_edge354, %bb.aj
  %i.fr = phi i8 [ %.pre355, %._crit_edge354 ], [ %i.fe, %bb.aj ]
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.fs, align 8, !tbaa !135
  %i.ft = trunc i8 %i.fr to i1
  br i1 %i.ft, label %bb.ap, label %_ZN5ErrorD2Ev.exit257

bb.ap:                                            ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !132
  %i.fw = load i64, ptr %i.fd, align 8
  %i.fx = and i64 %i.fw, -2
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fx) #19
  br label %_ZN5ErrorD2Ev.exit257

_ZN5ErrorD2Ev.exit257:                            ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ba

_ZN5ErrorD2Ev.exit256:                            ; preds = %bb.an, %bb.am, %bb.al
  %.pn230 = phi { ptr, i32 } [ %i.fk, %bb.al ], [ %i.fl, %bb.am ], [ %i.fl, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.bd

.critedge237:                                     ; preds = %bb.ah
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 8
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
  %scevgep563 = getelementptr i8, ptr %.0.i.i, i64 %i.je ; 7 uses
  switch i32 %i.j, label %.preheader297.preheader [
    i32 15, label %.preheader297.lr.ph.split.split.us
    i32 13, label %.preheader297.lr.ph.split.split.us
  ]

.preheader297.preheader:                          ; preds = %.preheader297.lr.ph.split
  %scevgep564 = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.jf = mul i64 %.0290, %i.jb                   ; 3 uses
  %i.jg = add nsw i64 %wide.trip.count340, -1
  %i.jh = zext nneg i32 %i.ap to i64
  %i.ji = mul nsw i64 %i.jg, %i.jh                ; 3 uses
  %i.jj = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.jf
  %i.jl = getelementptr i8, ptr %i.jk, i64 %i.ji
  %scevgep566 = getelementptr i8, ptr %.0.i.i.i, i64 %i.im
  %i.jm = add i64 %i.jf, %i.ji                    ; 2 uses
  %i.jn = getelementptr i8, ptr %.0.i.i.i, i64 %i.jm
  %i.jo = getelementptr i8, ptr %i.jn, i64 %i.im
  %scevgep568 = getelementptr i8, ptr %.0.i.i.i, i64 %i.iq
  %i.jp = getelementptr i8, ptr %.0.i.i.i, i64 %i.jm
  %i.jq = getelementptr i8, ptr %i.jp, i64 %i.iq
  %scevgep570 = getelementptr i8, ptr %.0.i.i.i, i64 %i.io
  %i.jr = getelementptr i8, ptr %.0.i.i.i, i64 %i.jf
  %i.js = getelementptr i8, ptr %i.jr, i64 %i.ji
  %i.jt = getelementptr i8, ptr %i.js, i64 %i.io
  %i.ju = insertelement <4 x ptr> poison, ptr %i.jl, i64 0
  %i.jv = insertelement <4 x ptr> %i.ju, ptr %i.jo, i64 1
  %i.jw = insertelement <4 x ptr> %i.jv, ptr %i.jq, i64 2
  %i.jx = insertelement <4 x ptr> %i.jw, ptr %i.jt, i64 3
  %i.jy = getelementptr i8, <4 x ptr> %i.jx, <4 x i64> <i64 1, i64 5, i64 1, i64 1>
  %i.jz = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.ka = shufflevector <4 x ptr> %i.jz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.kb = insertelement <4 x ptr> poison, ptr %scevgep564, i64 0
  %i.kc = insertelement <4 x ptr> %i.kb, ptr %scevgep566, i64 1
  %i.kd = insertelement <4 x ptr> %i.kc, ptr %scevgep568, i64 2
  %i.ke = insertelement <4 x ptr> %i.kd, ptr %scevgep570, i64 3
  %i.kf = insertelement <4 x ptr> poison, ptr %scevgep563, i64 0
  %i.kg = shufflevector <4 x ptr> %i.kf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check596 = icmp ult i32 %i.c, 8
  %i.kh = trunc i64 %i.ja to i32
  %mul560 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ap, i32 %i.kh)
  %mul.overflow561 = extractvalue { i32, i1 } %mul560, 1
  %i.ki = icmp ugt i64 %i.ja, 4294967295
  %i.kj = or i1 %mul.overflow561, %i.ki
  %i.kk = icmp ult <4 x ptr> %i.ka, %i.jy
  %i.kl = icmp ult <4 x ptr> %i.ke, %i.kg
  %stride.check537 = icmp samesign ugt i64 %.0291, 4611686018427387903
  %stride.check538 = icmp slt i64 %.0290, 0
  %i.km = and <4 x i1> %i.kk, %i.kl
  %i.kn = bitcast <4 x i1> %i.km to i4
  %i.ko = icmp ne i4 %i.kn, 0
  %op.rdx = or i1 %i.ko, %stride.check538
  %op.rdx617 = or i1 %op.rdx, %stride.check537
  %n.vec598 = and i64 %wide.trip.count340, 4294967288 ; 3 uses
  %broadcast.splatinsert599 = insertelement <8 x float> poison, float %i.iv, i64 0
  %broadcast.splat600 = shufflevector <8 x float> %broadcast.splatinsert599, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert601 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat602 = shufflevector <8 x float> %broadcast.splatinsert601, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert603 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat604 = shufflevector <8 x float> %broadcast.splatinsert603, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert605 = insertelement <8 x float> poison, float %i.hz, i64 0
  %broadcast.splat606 = shufflevector <8 x float> %broadcast.splatinsert605, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert607 = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat608 = shufflevector <8 x i32> %broadcast.splatinsert607, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n613 = icmp eq i64 %n.vec598, %wide.trip.count340
  br label %.preheader297

.preheader297.lr.ph.split.split.us:               ; preds = %.preheader297.lr.ph.split, %.preheader297.lr.ph.split
  %i.kp = mul i64 %.0292, %i.jb
  %i.kq = add i64 %i.kp, %wide.trip.count340
  %i.kr = shl i64 %i.kq, 1
  %scevgep465 = getelementptr i8, ptr %.0209, i64 %i.kr ; 4 uses
  %scevgep466 = getelementptr i8, ptr %.0.i.i.i, i64 %i.iz ; 4 uses
  %i.ks = mul i64 %.0290, %i.jb                   ; 3 uses
  %i.kt = add nsw i64 %wide.trip.count340, -1
  %i.ku = zext nneg i32 %i.ap to i64
  %i.kv = mul nsw i64 %i.kt, %i.ku                ; 3 uses
  %i.kw = add i64 %i.ks, %i.kv                    ; 2 uses
  %i.kx = getelementptr i8, ptr %.0.i.i.i, i64 %i.kw
  %i.ky = getelementptr i8, ptr %i.kx, i64 %i.iz
  %scevgep467 = getelementptr i8, ptr %i.ky, i64 1 ; 4 uses
  %scevgep468 = getelementptr i8, ptr %.0.i.i.i, i64 %i.im ; 4 uses
  %i.kz = getelementptr i8, ptr %.0.i.i.i, i64 %i.kw
  %i.la = getelementptr i8, ptr %i.kz, i64 %i.im
  %scevgep470 = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir ; 4 uses
  %i.lb = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.lc = getelementptr i8, ptr %i.lb, i64 %i.ks
  %i.ld = getelementptr i8, ptr %i.lc, i64 %i.kv
  %scevgep472 = getelementptr i8, ptr %.0.i.i.i, i64 %i.iq ; 4 uses
  %i.le = add i64 %i.ks, %i.kv                    ; 2 uses
  %i.lf = getelementptr i8, ptr %.0.i.i.i, i64 %i.le
  %i.lg = getelementptr i8, ptr %i.lf, i64 %i.iq  ; 2 uses
  %scevgep473 = getelementptr i8, ptr %i.lg, i64 1 ; 2 uses
  %scevgep474 = getelementptr i8, ptr %.0.i.i.i, i64 %i.io ; 4 uses
  %i.lh = getelementptr i8, ptr %.0.i.i.i, i64 %i.le
  %i.li = getelementptr i8, ptr %i.lh, i64 %i.io  ; 2 uses
  %i.lj = insertelement <4 x ptr> poison, ptr %i.la, i64 0
  %i.lk = insertelement <4 x ptr> %i.lj, ptr %i.ld, i64 1
  %i.ll = insertelement <4 x ptr> %i.lk, ptr %i.lg, i64 2
  %i.lm = insertelement <4 x ptr> %i.ll, ptr %i.li, i64 3 ; 2 uses
  %i.ln = getelementptr i8, <4 x ptr> %i.lm, <4 x i64> <i64 7, i64 1, i64 1, i64 1> ; 2 uses
  %i.lo = getelementptr i8, <4 x ptr> %i.lm, <4 x i64> <i64 7, i64 1, i64 1, i64 1> ; 2 uses
  %scevgep475 = getelementptr i8, ptr %i.li, i64 1 ; 2 uses
  br i1 %i.ii, label %.preheader297.us.us.preheader, label %.preheader297.us.preheader

.preheader297.us.preheader:                       ; preds = %.preheader297.lr.ph.split.split.us
  %min.iters.check = icmp ult i32 %i.c, 8
  %i.lp = trunc i64 %i.ja to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ap, i32 %i.lp)
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.lq = icmp ugt i64 %i.ja, 4294967295
  %i.lr = or i1 %mul.overflow, %i.lq
  %i.ls = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.lt = shufflevector <4 x ptr> %i.ls, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lu = insertelement <4 x ptr> poison, ptr %scevgep465, i64 0 ; 2 uses
  %i.lv = insertelement <4 x ptr> %i.lu, ptr %scevgep467, i64 1
  %i.lw = shufflevector <4 x ptr> %i.lv, <4 x ptr> %i.lo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lx = icmp ult <4 x ptr> %i.lt, %i.lw
  %i.ly = insertelement <4 x ptr> poison, ptr %.0209, i64 0 ; 2 uses
  %i.lz = insertelement <4 x ptr> %i.ly, ptr %scevgep466, i64 1
  %i.ma = insertelement <4 x ptr> %i.lz, ptr %scevgep468, i64 2
  %i.mb = insertelement <4 x ptr> %i.ma, ptr %scevgep470, i64 3
  %i.mc = insertelement <4 x ptr> poison, ptr %scevgep563, i64 0
  %i.md = shufflevector <4 x ptr> %i.mc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.me = icmp ult <4 x ptr> %i.mb, %i.md
  %i.mf = or i64 %.0292, %.0291
  %16 = icmp samesign ugt i64 %i.mf, 4611686018427387903
  %stride.check396 = icmp slt i64 %.0290, 0
  %i.mg = and <4 x i1> %i.lx, %i.me
  %bound0410 = icmp ult ptr %.0.i.i, %scevgep473
  %bound1411 = icmp ult ptr %scevgep472, %scevgep563
  %found.conflict412 = and i1 %bound0410, %bound1411
  %bound0416 = icmp ult ptr %.0.i.i, %scevgep475
  %bound1417 = icmp ult ptr %scevgep474, %scevgep563
  %found.conflict418 = and i1 %bound0416, %bound1417
  %bound0422 = icmp ult ptr %.0209, %scevgep467
  %bound1423 = icmp ult ptr %scevgep466, %scevgep465
  %found.conflict424 = and i1 %bound0422, %bound1423
  %i.mh = shufflevector <4 x ptr> %i.ly, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.mi = icmp ult <4 x ptr> %i.mh, %i.lo
  %i.mj = insertelement <4 x ptr> poison, ptr %scevgep468, i64 0
  %i.mk = insertelement <4 x ptr> %i.mj, ptr %scevgep470, i64 1
  %i.ml = insertelement <4 x ptr> %i.mk, ptr %scevgep472, i64 2
  %i.mm = insertelement <4 x ptr> %i.ml, ptr %scevgep474, i64 3
  %i.mn = shufflevector <4 x ptr> %i.lu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.mo = icmp ult <4 x ptr> %i.mm, %i.mn
  %i.mp = and <4 x i1> %i.mi, %i.mo
  %rdx.op632 = or <4 x i1> %i.mg, %i.mp
  %i.mq = bitcast <4 x i1> %rdx.op632 to i4
  %i.mr = icmp ne i4 %i.mq, 0
  %op.rdx639 = or i1 %i.mr, %found.conflict412
  %op.rdx643 = or i1 %found.conflict418, %found.conflict424
  %op.rdx644 = or i1 %stride.check396, %16
  %op.rdx645 = or i1 %op.rdx639, %op.rdx643
  %op.rdx646 = or i1 %op.rdx645, %op.rdx644
  %n.vec = and i64 %wide.trip.count340, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.iv, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert452 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat453 = shufflevector <8 x float> %broadcast.splatinsert452, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert454 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat455 = shufflevector <8 x float> %broadcast.splatinsert454, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert456 = insertelement <8 x float> poison, float %i.hz, i64 0
  %broadcast.splat457 = shufflevector <8 x float> %broadcast.splatinsert456, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert458 = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat459 = shufflevector <8 x i32> %broadcast.splatinsert458, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count340
  br label %.preheader297.us

.preheader297.us.us.preheader:                    ; preds = %.preheader297.lr.ph.split.split.us
  %min.iters.check542 = icmp ult i32 %i.c, 24
  %i.ms = trunc i64 %i.ja to i32
  %mul461 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ap, i32 %i.ms)
  %mul.overflow462 = extractvalue { i32, i1 } %mul461, 1
  %i.mt = icmp ugt i64 %i.ja, 4294967295
  %i.mu = or i1 %mul.overflow462, %i.mt
  %i.mv = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.mw = shufflevector <4 x ptr> %i.mv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.mx = insertelement <4 x ptr> poison, ptr %scevgep465, i64 0 ; 2 uses
  %i.my = insertelement <4 x ptr> %i.mx, ptr %scevgep467, i64 1
  %i.mz = shufflevector <4 x ptr> %i.my, <4 x ptr> %i.ln, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.na = icmp ult <4 x ptr> %i.mw, %i.mz
  %i.nb = insertelement <4 x ptr> poison, ptr %.0209, i64 0 ; 2 uses
  %i.nc = insertelement <4 x ptr> %i.nb, ptr %scevgep466, i64 1
  %i.nd = insertelement <4 x ptr> %i.nc, ptr %scevgep468, i64 2
  %i.ne = insertelement <4 x ptr> %i.nd, ptr %scevgep470, i64 3
  %i.nf = insertelement <4 x ptr> poison, ptr %scevgep563, i64 0
  %i.ng = shufflevector <4 x ptr> %i.nf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.nh = icmp ult <4 x ptr> %i.ne, %i.ng
  %i.ni = or i64 %.0292, %.0291
  %17 = icmp samesign ugt i64 %i.ni, 4611686018427387903
  %stride.check465 = icmp slt i64 %.0290, 0
  %i.nj = and <4 x i1> %i.na, %i.nh
  %bound0499 = icmp ult ptr %.0.i.i, %scevgep473
  %bound1500 = icmp ult ptr %scevgep472, %scevgep563
  %found.conflict501 = and i1 %bound0499, %bound1500
  %bound0505 = icmp ult ptr %.0.i.i, %scevgep475
  %bound1506 = icmp ult ptr %scevgep474, %scevgep563
  %found.conflict507 = and i1 %bound0505, %bound1506
  %bound0511 = icmp ult ptr %.0209, %scevgep467
  %bound1512 = icmp ult ptr %scevgep466, %scevgep465
  %found.conflict513 = and i1 %bound0511, %bound1512
  %i.nk = shufflevector <4 x ptr> %i.nb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.nl = icmp ult <4 x ptr> %i.nk, %i.ln
  %i.nm = insertelement <4 x ptr> poison, ptr %scevgep468, i64 0
  %i.nn = insertelement <4 x ptr> %i.nm, ptr %scevgep470, i64 1
  %i.no = insertelement <4 x ptr> %i.nn, ptr %scevgep472, i64 2
  %i.np = insertelement <4 x ptr> %i.no, ptr %scevgep474, i64 3
  %i.nq = shufflevector <4 x ptr> %i.mx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.nr = icmp ult <4 x ptr> %i.np, %i.nq
  %i.ns = and <4 x i1> %i.nl, %i.nr
  %rdx.op = or <4 x i1> %i.nj, %i.ns
  %i.nt = bitcast <4 x i1> %rdx.op to i4
  %i.nu = icmp ne i4 %i.nt, 0
  %op.rdx624 = or i1 %i.nu, %found.conflict501
  %op.rdx628 = or i1 %found.conflict507, %found.conflict513
  %op.rdx629 = or i1 %stride.check465, %17
  %op.rdx630 = or i1 %op.rdx624, %op.rdx628
  %op.rdx631 = or i1 %op.rdx630, %op.rdx629
  %n.vec544 = and i64 %wide.trip.count340, 4294967288 ; 3 uses
  %broadcast.splatinsert545 = insertelement <8 x float> poison, float %i.iv, i64 0
  %broadcast.splat546 = shufflevector <8 x float> %broadcast.splatinsert545, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert547 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat548 = shufflevector <8 x float> %broadcast.splatinsert547, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert549 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat550 = shufflevector <8 x float> %broadcast.splatinsert549, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert551 = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat552 = shufflevector <8 x i32> %broadcast.splatinsert551, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n557 = icmp eq i64 %n.vec544, %wide.trip.count340
  br label %.preheader297.us.us

.preheader297.us.us:                              ; preds = %.preheader297.us.us.preheader, %._crit_edge.split.us.us.split.us.us
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %._crit_edge.split.us.us.split.us.us ], [ 0, %.preheader297.us.us.preheader ] ; 4 uses
  %i.nv = mul nsw i64 %.0290, %indvars.iv331
  %i.nw = getelementptr i8, ptr %.0.i.i.i, i64 %i.nv ; 9 uses
  %i.nx = mul i64 %.0291, %indvars.iv331
  %i.ny = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.nx ; 2 uses
  %i.nz = mul i64 %.0292, %indvars.iv331
  %i.oa = getelementptr [2 x i8], ptr %.0209, i64 %i.nz ; 2 uses
  %brmerge = select i1 %min.iters.check542, i1 true, i1 %i.mu
  %brmerge657 = select i1 %brmerge, i1 true, i1 %op.rdx631
  br i1 %brmerge657, label %_Z10clip_f_u16fi.exit.us.us.us.us.preheader, label %vector.body553

vector.body553:                                   ; preds = %.preheader297.us.us, %vector.body553
  %index554 = phi i64 [ %index.next555, %vector.body553 ], [ 0, %.preheader297.us.us ] ; 4 uses
  %i.ob = trunc i64 %index554 to i32              ; 8 uses
  %i.oc = or disjoint i32 %i.ob, 1
  %i.od = or disjoint i32 %i.ob, 2
  %i.oe = or disjoint i32 %i.ob, 3
  %i.of = or disjoint i32 %i.ob, 4
  %i.og = or disjoint i32 %i.ob, 5
  %i.oh = or disjoint i32 %i.ob, 6
  %i.oi = or disjoint i32 %i.ob, 7
  %i.oj = mul i32 %i.ap, %i.ob
  %i.ok = mul i32 %i.ap, %i.oc
  %i.ol = mul i32 %i.ap, %i.od
  %i.om = mul i32 %i.ap, %i.oe
  %i.on = mul i32 %i.ap, %i.of
  %i.oo = mul i32 %i.ap, %i.og
  %i.op = mul i32 %i.ap, %i.oh
  %i.oq = mul i32 %i.ap, %i.oi
  %i.or = zext i32 %i.oj to i64
  %i.os = zext i32 %i.ok to i64
  %i.ot = zext i32 %i.ol to i64
  %i.ou = zext i32 %i.om to i64
  %i.ov = zext i32 %i.on to i64
  %i.ow = zext i32 %i.oo to i64
  %i.ox = zext i32 %i.op to i64
  %i.oy = zext i32 %i.oq to i64
  %i.oz = getelementptr i8, ptr %i.nw, i64 %i.or  ; 5 uses
  %i.pa = getelementptr i8, ptr %i.nw, i64 %i.os  ; 5 uses
  %i.pb = getelementptr i8, ptr %i.nw, i64 %i.ot  ; 5 uses
  %i.pc = getelementptr i8, ptr %i.nw, i64 %i.ou  ; 5 uses
  %i.pd = getelementptr i8, ptr %i.nw, i64 %i.ov  ; 5 uses
  %i.pe = getelementptr i8, ptr %i.nw, i64 %i.ow  ; 5 uses
  %i.pf = getelementptr i8, ptr %i.nw, i64 %i.ox  ; 5 uses
  %i.pg = getelementptr i8, ptr %i.nw, i64 %i.oy  ; 5 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.im ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.im ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.im ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.im ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.im ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.im ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.im ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.im ; 4 uses
  %i.pp = load i8, ptr %i.ph, align 1, !tbaa !132, !alias.scope !383
  %i.pq = load i8, ptr %i.pi, align 1, !tbaa !132, !alias.scope !383
  %i.pr = load i8, ptr %i.pj, align 1, !tbaa !132, !alias.scope !383
  %i.ps = load i8, ptr %i.pk, align 1, !tbaa !132, !alias.scope !383
  %i.pt = load i8, ptr %i.pl, align 1, !tbaa !132, !alias.scope !383
  %i.pu = load i8, ptr %i.pm, align 1, !tbaa !132, !alias.scope !383
  %i.pv = load i8, ptr %i.pn, align 1, !tbaa !132, !alias.scope !383
  %i.pw = load i8, ptr %i.po, align 1, !tbaa !132, !alias.scope !383
  %i.px = insertelement <8 x i8> poison, i8 %i.pp, i64 0
  %i.py = insertelement <8 x i8> %i.px, i8 %i.pq, i64 1
  %i.pz = insertelement <8 x i8> %i.py, i8 %i.pr, i64 2
  %i.qa = insertelement <8 x i8> %i.pz, i8 %i.ps, i64 3
  %i.qb = insertelement <8 x i8> %i.qa, i8 %i.pt, i64 4
  %i.qc = insertelement <8 x i8> %i.qb, i8 %i.pu, i64 5
  %i.qd = insertelement <8 x i8> %i.qc, i8 %i.pv, i64 6
  %i.qe = insertelement <8 x i8> %i.qd, i8 %i.pw, i64 7
  %i.qf = zext <8 x i8> %i.qe to <8 x i32>
  %i.qg = shl nuw nsw <8 x i32> %i.qf, splat (i32 8)
  %i.qh = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.io
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.io
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.io
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.io
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.io
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.io
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.io
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.io
  %i.qp = load i8, ptr %i.qh, align 1, !tbaa !132, !alias.scope !384
  %i.qq = load i8, ptr %i.qi, align 1, !tbaa !132, !alias.scope !384
  %i.qr = load i8, ptr %i.qj, align 1, !tbaa !132, !alias.scope !384
  %i.qs = load i8, ptr %i.qk, align 1, !tbaa !132, !alias.scope !384
  %i.qt = load i8, ptr %i.ql, align 1, !tbaa !132, !alias.scope !384
  %i.qu = load i8, ptr %i.qm, align 1, !tbaa !132, !alias.scope !384
  %i.qv = load i8, ptr %i.qn, align 1, !tbaa !132, !alias.scope !384
  %i.qw = load i8, ptr %i.qo, align 1, !tbaa !132, !alias.scope !384
  %i.qx = insertelement <8 x i8> poison, i8 %i.qp, i64 0
  %i.qy = insertelement <8 x i8> %i.qx, i8 %i.qq, i64 1
  %i.qz = insertelement <8 x i8> %i.qy, i8 %i.qr, i64 2
  %i.ra = insertelement <8 x i8> %i.qz, i8 %i.qs, i64 3
  %i.rb = insertelement <8 x i8> %i.ra, i8 %i.qt, i64 4
  %i.rc = insertelement <8 x i8> %i.rb, i8 %i.qu, i64 5
  %i.rd = insertelement <8 x i8> %i.rc, i8 %i.qv, i64 6
  %i.re = insertelement <8 x i8> %i.rd, i8 %i.qw, i64 7
  %i.rf = zext <8 x i8> %i.re to <8 x i32>
  %i.rg = or disjoint <8 x i32> %i.qg, %i.rf
  %i.rh = uitofp nneg <8 x i32> %i.rg to <8 x float>
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ph, i64 2
  %i.rj = getelementptr inbounds nuw i8, ptr %i.pi, i64 2
  %i.rk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  %i.rm = getelementptr inbounds nuw i8, ptr %i.pl, i64 2
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pm, i64 2
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  %i.rp = getelementptr inbounds nuw i8, ptr %i.po, i64 2
  %i.rq = load i8, ptr %i.ri, align 1, !tbaa !132, !alias.scope !383
  %i.rr = load i8, ptr %i.rj, align 1, !tbaa !132, !alias.scope !383
  %i.rs = load i8, ptr %i.rk, align 1, !tbaa !132, !alias.scope !383
  %i.rt = load i8, ptr %i.rl, align 1, !tbaa !132, !alias.scope !383
  %i.ru = load i8, ptr %i.rm, align 1, !tbaa !132, !alias.scope !383
  %i.rv = load i8, ptr %i.rn, align 1, !tbaa !132, !alias.scope !383
  %i.rw = load i8, ptr %i.ro, align 1, !tbaa !132, !alias.scope !383
  %i.rx = load i8, ptr %i.rp, align 1, !tbaa !132, !alias.scope !383
  %i.ry = insertelement <8 x i8> poison, i8 %i.rq, i64 0
  %i.rz = insertelement <8 x i8> %i.ry, i8 %i.rr, i64 1
  %i.sa = insertelement <8 x i8> %i.rz, i8 %i.rs, i64 2
  %i.sb = insertelement <8 x i8> %i.sa, i8 %i.rt, i64 3
  %i.sc = insertelement <8 x i8> %i.sb, i8 %i.ru, i64 4
  %i.sd = insertelement <8 x i8> %i.sc, i8 %i.rv, i64 5
  %i.se = insertelement <8 x i8> %i.sd, i8 %i.rw, i64 6
  %i.sf = insertelement <8 x i8> %i.se, i8 %i.rx, i64 7
  %i.sg = zext <8 x i8> %i.sf to <8 x i32>
  %i.sh = shl nuw nsw <8 x i32> %i.sg, splat (i32 8)
  %i.si = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.iq
  %i.sj = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.iq
  %i.sk = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.iq
  %i.sl = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.iq
  %i.sm = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.iq
  %i.sn = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.iq
  %i.so = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.iq
  %i.sp = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.iq
  %i.sq = load i8, ptr %i.si, align 1, !tbaa !132, !alias.scope !385
  %i.sr = load i8, ptr %i.sj, align 1, !tbaa !132, !alias.scope !385
  %i.ss = load i8, ptr %i.sk, align 1, !tbaa !132, !alias.scope !385
  %i.st = load i8, ptr %i.sl, align 1, !tbaa !132, !alias.scope !385
  %i.su = load i8, ptr %i.sm, align 1, !tbaa !132, !alias.scope !385
  %i.sv = load i8, ptr %i.sn, align 1, !tbaa !132, !alias.scope !385
  %i.sw = load i8, ptr %i.so, align 1, !tbaa !132, !alias.scope !385
  %i.sx = load i8, ptr %i.sp, align 1, !tbaa !132, !alias.scope !385
  %i.sy = insertelement <8 x i8> poison, i8 %i.sq, i64 0
  %i.sz = insertelement <8 x i8> %i.sy, i8 %i.sr, i64 1
  %i.ta = insertelement <8 x i8> %i.sz, i8 %i.ss, i64 2
  %i.tb = insertelement <8 x i8> %i.ta, i8 %i.st, i64 3
  %i.tc = insertelement <8 x i8> %i.tb, i8 %i.su, i64 4
  %i.td = insertelement <8 x i8> %i.tc, i8 %i.sv, i64 5
  %i.te = insertelement <8 x i8> %i.td, i8 %i.sw, i64 6
  %i.tf = insertelement <8 x i8> %i.te, i8 %i.sx, i64 7
  %i.tg = zext <8 x i8> %i.tf to <8 x i32>
  %i.th = or disjoint <8 x i32> %i.sh, %i.tg
  %i.ti = uitofp nneg <8 x i32> %i.th to <8 x float>
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.tk = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  %i.tl = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  %i.tm = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.tn = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  %i.to = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.tq = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.tr = load i8, ptr %i.tj, align 1, !tbaa !132, !alias.scope !383
  %i.ts = load i8, ptr %i.tk, align 1, !tbaa !132, !alias.scope !383
  %i.tt = load i8, ptr %i.tl, align 1, !tbaa !132, !alias.scope !383
  %i.tu = load i8, ptr %i.tm, align 1, !tbaa !132, !alias.scope !383
  %i.tv = load i8, ptr %i.tn, align 1, !tbaa !132, !alias.scope !383
  %i.tw = load i8, ptr %i.to, align 1, !tbaa !132, !alias.scope !383
  %i.tx = load i8, ptr %i.tp, align 1, !tbaa !132, !alias.scope !383
  %i.ty = load i8, ptr %i.tq, align 1, !tbaa !132, !alias.scope !383
  %i.tz = insertelement <8 x i8> poison, i8 %i.tr, i64 0
  %i.ua = insertelement <8 x i8> %i.tz, i8 %i.ts, i64 1
  %i.ub = insertelement <8 x i8> %i.ua, i8 %i.tt, i64 2
  %i.uc = insertelement <8 x i8> %i.ub, i8 %i.tu, i64 3
  %i.ud = insertelement <8 x i8> %i.uc, i8 %i.tv, i64 4
  %i.ue = insertelement <8 x i8> %i.ud, i8 %i.tw, i64 5
  %i.uf = insertelement <8 x i8> %i.ue, i8 %i.tx, i64 6
  %i.ug = insertelement <8 x i8> %i.uf, i8 %i.ty, i64 7
  %i.uh = zext <8 x i8> %i.ug to <8 x i32>
  %i.ui = shl nuw nsw <8 x i32> %i.uh, splat (i32 8)
  %i.uj = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.ir
  %i.uk = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.ir
  %i.ul = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ir
  %i.um = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.ir
  %i.un = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.ir
  %i.uo = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.ir
  %i.up = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.ir
  %i.uq = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.ir
  %i.ur = load i8, ptr %i.uj, align 1, !tbaa !132, !alias.scope !386
  %i.us = load i8, ptr %i.uk, align 1, !tbaa !132, !alias.scope !386
end_hunk_2
