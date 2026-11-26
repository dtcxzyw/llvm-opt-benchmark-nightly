Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rgb2yuv?download=true
inline.NumInlined: 784
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK27Op_RRGGBBxx_HDR_to_YCbCr42018convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
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

bb.ac:                                            ; preds = %._crit_edge350, %bb.p
  %i.en = phi i8 [ %.pre, %._crit_edge350 ], [ %i.cv, %bb.p ]
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
          to label %._crit_edge351 unwind label %bb.am

._crit_edge351:                                   ; preds = %bb.ak
  %.pre352 = load i8, ptr %i.fd, align 8
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

bb.ao:                                            ; preds = %._crit_edge351, %bb.aj
  %i.fr = phi i8 [ %.pre352, %._crit_edge351 ], [ %i.fe, %bb.aj ]
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
  %.0290 = phi i64 [ %i.gk, %bb.as ], [ 0, %.noexc259 ] ; 9 uses
  %.0.i.i.i = phi ptr [ %i.gm, %bb.as ], [ null, %.noexc259 ] ; 18 uses
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
  %.0291 = phi i64 [ %i.gu, %bb.at ], [ 0, %.noexc260 ] ; 8 uses
  %.0.i.i = phi ptr [ %i.gt, %bb.at ], [ null, %.noexc260 ] ; 12 uses
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
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !168
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
  %i.io = zext nneg i32 %i.in to i64              ; 29 uses
  %i.ip = xor i32 %i.ie, 3
  %i.iq = zext nneg i32 %i.ip to i64              ; 29 uses
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
  %wide.trip.count342 = zext i32 %i.e to i64      ; 4 uses
  %wide.trip.count337 = zext i32 %i.c to i64      ; 13 uses
  %i.ja = add nsw i64 %wide.trip.count337, -1     ; 7 uses
  %i.jb = add nsw i64 %wide.trip.count342, -1     ; 4 uses
  %i.jc = mul i64 %.0290, %i.jb                   ; 5 uses
  %i.jd = zext nneg i32 %i.ap to i64
  %i.je = mul nsw i64 %i.ja, %i.jd                ; 5 uses
  %16 = add i64 %i.jc, %i.je                      ; 2 uses
  %17 = getelementptr i8, ptr %.0.i.i.i, i64 %16
  %18 = getelementptr i8, ptr %17, i64 %i.io      ; 2 uses
  %scevgep659 = getelementptr i8, ptr %18, i64 1  ; 4 uses
  %scevgep660 = getelementptr i8, ptr %.0.i.i.i, i64 %i.io ; 5 uses
  %19 = getelementptr i8, ptr %.0.i.i.i, i64 %16
  %20 = getelementptr i8, ptr %19, i64 %i.iq      ; 2 uses
  %scevgep661 = getelementptr i8, ptr %20, i64 1  ; 3 uses
  %scevgep662 = getelementptr i8, ptr %.0.i.i.i, i64 %i.iq ; 5 uses
  switch i32 %i.j, label %.preheader297.preheader [
    i32 15, label %.preheader297.lr.ph.split.split.us
    i32 13, label %.preheader297.lr.ph.split.split.us
  ]

.preheader297.preheader:                          ; preds = %.preheader297.lr.ph.split
  %i.jf = insertelement <2 x ptr> poison, ptr %20, i64 0
  %i.jg = insertelement <2 x ptr> %i.jf, ptr %18, i64 1
  %i.jh = getelementptr i8, <2 x ptr> %i.jg, i64 1
  %i.ji = getelementptr i8, ptr %.0.i.i.i, i64 %i.jc
  %i.jj = getelementptr i8, ptr %i.ji, i64 %i.je
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.im
  %scevgep664 = getelementptr i8, ptr %.0.i.i.i, i64 %i.im
  %i.jl = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.jm = getelementptr i8, ptr %i.jl, i64 %i.jc
  %i.jn = getelementptr i8, ptr %i.jm, i64 %i.je
  %i.jo = insertelement <2 x ptr> poison, ptr %i.jn, i64 0
  %i.jp = insertelement <2 x ptr> %i.jo, ptr %i.jk, i64 1
  %i.jq = getelementptr i8, <2 x ptr> %i.jp, <2 x i64> <i64 1, i64 5>
  %scevgep666 = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.jr = mul i64 %.0291, %i.jb
  %i.js = add i64 %i.jr, %wide.trip.count337
  %i.jt = shl i64 %i.js, 1
  %scevgep667 = getelementptr i8, ptr %.0.i.i, i64 %i.jt
  %i.ju = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.jv = shufflevector <4 x ptr> %i.ju, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jw = insertelement <4 x ptr> poison, ptr %scevgep666, i64 0
  %i.jx = insertelement <4 x ptr> %i.jw, ptr %scevgep664, i64 1
  %i.jy = insertelement <4 x ptr> %i.jx, ptr %scevgep662, i64 2
  %i.jz = insertelement <4 x ptr> %i.jy, ptr %scevgep660, i64 3
  %i.ka = insertelement <4 x ptr> poison, ptr %scevgep667, i64 0
  %i.kb = shufflevector <4 x ptr> %i.ka, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.kc = shufflevector <2 x ptr> %i.jq, <2 x ptr> %i.jh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %min.iters.check669 = icmp ult i32 %i.c, 8
  %i.kd = trunc i64 %i.ja to i32
  %mul630 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ap, i32 %i.kd)
  %mul.overflow631 = extractvalue { i32, i1 } %mul630, 1
  %i.ke = icmp ugt i64 %i.ja, 4294967295
  %i.kf = or i1 %mul.overflow631, %i.ke
  %i.kg = icmp ult <4 x ptr> %i.jv, %i.kc
  %i.kh = icmp ult <4 x ptr> %i.jz, %i.kb
  %stride.check674 = icmp samesign ugt i64 %.0291, 4611686018427387903
  %stride.check675 = icmp slt i64 %.0290, 0
  %i.ki = and <4 x i1> %i.kg, %i.kh
  %i.kj = bitcast <4 x i1> %i.ki to i4
  %i.kk = icmp ne i4 %i.kj, 0
  %op.rdx = or i1 %i.kk, %stride.check675
  %op.rdx706 = or i1 %op.rdx, %stride.check674
  %n.vec689 = and i64 %wide.trip.count337, 4294967288 ; 3 uses
  %broadcast.splatinsert690 = insertelement <8 x float> poison, float %i.iv, i64 0
  %broadcast.splat691 = shufflevector <8 x float> %broadcast.splatinsert690, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert692 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat693 = shufflevector <8 x float> %broadcast.splatinsert692, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert694 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat695 = shufflevector <8 x float> %broadcast.splatinsert694, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert696 = insertelement <8 x float> poison, float %i.hz, i64 0
  %broadcast.splat697 = shufflevector <8 x float> %broadcast.splatinsert696, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert698 = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat699 = shufflevector <8 x i32> %broadcast.splatinsert698, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n704 = icmp eq i64 %n.vec689, %wide.trip.count337
  br label %.preheader297

.preheader297.lr.ph.split.split.us:               ; preds = %.preheader297.lr.ph.split, %.preheader297.lr.ph.split
  %i.kl = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.km = getelementptr i8, ptr %i.kl, i64 %i.jc
  %i.kn = getelementptr i8, ptr %i.km, i64 %i.je  ; 2 uses
  %scevgep557.a = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir ; 4 uses
  %21 = add i64 %i.jc, %i.je                      ; 2 uses
  %i.ko = getelementptr i8, ptr %.0.i.i.i, i64 %21
  %i.kp = getelementptr i8, ptr %i.ko, i64 %i.im  ; 2 uses
  %scevgep559.a = getelementptr i8, ptr %.0.i.i.i, i64 %i.im ; 4 uses
  %i.kq = getelementptr i8, ptr %.0.i.i.i, i64 %21
  %i.kr = getelementptr i8, ptr %i.kq, i64 %i.iz
  %i.ks = insertelement <2 x ptr> poison, ptr %i.kn, i64 0
  %i.kt = insertelement <2 x ptr> %i.ks, ptr %scevgep661, i64 1 ; 2 uses
  %i.ku = getelementptr i8, <2 x ptr> %i.kt, <2 x i64> <i64 1, i64 0>
  %22 = insertelement <2 x ptr> poison, ptr %i.kp, i64 0
  %23 = insertelement <2 x ptr> %22, ptr %i.kn, i64 1
  %24 = getelementptr i8, <2 x ptr> %23, <2 x i64> <i64 7, i64 1>
  %25 = getelementptr i8, <2 x ptr> %i.kt, <2 x i64> <i64 1, i64 0>
  %scevgep558.a = getelementptr i8, ptr %i.kp, i64 7 ; 2 uses
  %scevgep560 = getelementptr i8, ptr %i.kr, i64 1 ; 4 uses
  %scevgep561 = getelementptr i8, ptr %.0.i.i.i, i64 %i.iz ; 4 uses
  %i.kv = mul i64 %.0292, %i.jb
  %i.kw = add i64 %i.kv, %wide.trip.count337
  %i.kx = shl i64 %i.kw, 1
  %scevgep562 = getelementptr i8, ptr %.0209, i64 %i.kx ; 4 uses
  %i.ky = mul i64 %.0291, %i.jb
  %i.kz = add i64 %i.ky, %wide.trip.count337
  %i.la = shl i64 %i.kz, 1
  %scevgep563 = getelementptr i8, ptr %.0.i.i, i64 %i.la ; 6 uses
  br i1 %i.ii, label %.preheader297.us.us.preheader, label %.preheader297.us.preheader

.preheader297.us.preheader:                       ; preds = %.preheader297.lr.ph.split.split.us
  %min.iters.check = icmp ult i32 %i.c, 8
  %i.lb = trunc i64 %i.ja to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ap, i32 %i.lb)
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.lc = icmp ugt i64 %i.ja, 4294967295
  %i.ld = or i1 %mul.overflow, %i.lc
  %i.le = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.lf = shufflevector <4 x ptr> %i.le, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lg = insertelement <4 x ptr> poison, ptr %scevgep562, i64 0 ; 2 uses
  %i.lh = insertelement <4 x ptr> %i.lg, ptr %scevgep560, i64 1
  %i.li = insertelement <4 x ptr> %i.lh, ptr %scevgep558.a, i64 2
  %i.lj = shufflevector <2 x ptr> %25, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.lk = shufflevector <4 x ptr> %i.li, <4 x ptr> %i.lj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ll = icmp ult <4 x ptr> %i.lf, %i.lk
  %i.lm = insertelement <4 x ptr> poison, ptr %.0209, i64 0 ; 2 uses
  %i.ln = insertelement <4 x ptr> %i.lm, ptr %scevgep561, i64 1
  %i.lo = insertelement <4 x ptr> %i.ln, ptr %scevgep559.a, i64 2
  %i.lp = insertelement <4 x ptr> %i.lo, ptr %scevgep557.a, i64 3
  %i.lq = insertelement <4 x ptr> poison, ptr %scevgep563, i64 0
  %i.lr = shufflevector <4 x ptr> %i.lq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ls = icmp ult <4 x ptr> %i.lp, %i.lr
  %i.lt = or i64 %.0292, %.0291
  %i.lu = icmp samesign ugt i64 %i.lt, 4611686018427387903
  %stride.check445 = icmp slt i64 %.0290, 0
  %i.lv = and <4 x i1> %i.ll, %i.ls
  %bound0454 = icmp ult ptr %.0.i.i, %scevgep661
  %bound1455 = icmp ult ptr %scevgep662, %scevgep563
  %found.conflict456 = and i1 %bound0454, %bound1455
  %bound0458 = icmp ult ptr %.0.i.i, %scevgep659
  %bound1459 = icmp ult ptr %scevgep660, %scevgep563
  %found.conflict460 = and i1 %bound0458, %bound1459
  %i.lw = shufflevector <4 x ptr> %i.lm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lx = insertelement <4 x ptr> poison, ptr %scevgep560, i64 0
  %i.ly = insertelement <4 x ptr> %i.lx, ptr %scevgep558.a, i64 1
  %i.lz = shufflevector <4 x ptr> %i.ly, <4 x ptr> %i.lj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ma = icmp ult <4 x ptr> %i.lw, %i.lz
  %i.mb = insertelement <4 x ptr> poison, ptr %scevgep561, i64 0
  %i.mc = insertelement <4 x ptr> %i.mb, ptr %scevgep559.a, i64 1
  %i.md = insertelement <4 x ptr> %i.mc, ptr %scevgep557.a, i64 2
  %i.me = insertelement <4 x ptr> %i.md, ptr %scevgep662, i64 3
  %i.mf = shufflevector <4 x ptr> %i.lg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.mg = icmp ult <4 x ptr> %i.me, %i.mf
  %i.mh = and <4 x i1> %i.ma, %i.mg
  %bound0478 = icmp ult ptr %.0209, %scevgep659
  %bound1479 = icmp ult ptr %scevgep660, %scevgep562
  %found.conflict480 = and i1 %bound0478, %bound1479
  %rdx.op712 = or <4 x i1> %i.lv, %i.mh
  %i.mi = bitcast <4 x i1> %rdx.op712 to i4
  %i.mj = icmp ne i4 %i.mi, 0
  %op.rdx713 = or i1 %i.mj, %found.conflict456
  %op.rdx714 = or i1 %found.conflict460, %found.conflict480
  %op.rdx715 = or i1 %stride.check445, %i.lu
  %op.rdx716 = or i1 %op.rdx713, %op.rdx714
  %op.rdx717 = or i1 %op.rdx716, %op.rdx715
  %n.vec = and i64 %wide.trip.count337, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.iv, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert482 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat483 = shufflevector <8 x float> %broadcast.splatinsert482, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert484 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat485 = shufflevector <8 x float> %broadcast.splatinsert484, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert486 = insertelement <8 x float> poison, float %i.hz, i64 0
  %broadcast.splat487 = shufflevector <8 x float> %broadcast.splatinsert486, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert488 = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat489 = shufflevector <8 x i32> %broadcast.splatinsert488, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count337
  br label %.preheader297.us

.preheader297.us.us.preheader:                    ; preds = %.preheader297.lr.ph.split.split.us
  %min.iters.check565 = icmp ult i32 %i.c, 24
  %i.mk = trunc i64 %i.ja to i32
  %mul491 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ap, i32 %i.mk)
  %mul.overflow492 = extractvalue { i32, i1 } %mul491, 1
  %i.ml = icmp ugt i64 %i.ja, 4294967295
  %i.mm = or i1 %mul.overflow492, %i.ml
  %i.mn = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.mo = shufflevector <4 x ptr> %i.mn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.mp = insertelement <4 x ptr> poison, ptr %scevgep562, i64 0 ; 2 uses
  %i.mq = insertelement <4 x ptr> %i.mp, ptr %scevgep560, i64 1
  %i.mr = shufflevector <2 x ptr> %24, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %26 = shufflevector <4 x ptr> %i.mq, <4 x ptr> %i.mr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ms = icmp ult <4 x ptr> %i.mo, %26
  %i.mt = insertelement <4 x ptr> poison, ptr %.0209, i64 0 ; 2 uses
  %i.mu = insertelement <4 x ptr> %i.mt, ptr %scevgep561, i64 1
  %i.mv = insertelement <4 x ptr> %i.mu, ptr %scevgep559.a, i64 2
  %i.mw = insertelement <4 x ptr> %i.mv, ptr %scevgep557.a, i64 3
  %i.mx = insertelement <4 x ptr> poison, ptr %scevgep563, i64 0
  %i.my = shufflevector <4 x ptr> %i.mx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.mz = icmp ult <4 x ptr> %i.mw, %i.my
  %i.na = or i64 %.0292, %.0291
  %i.nb = icmp samesign ugt i64 %i.na, 4611686018427387903
  %stride.check575 = icmp slt i64 %.0290, 0
  %i.nc = and <4 x i1> %i.ms, %i.mz
  %bound0585 = icmp ult ptr %.0.i.i, %scevgep661
  %bound1586 = icmp ult ptr %scevgep662, %scevgep563
  %found.conflict587 = and i1 %bound0585, %bound1586
  %bound0589 = icmp ult ptr %.0.i.i, %scevgep659
  %bound1590 = icmp ult ptr %scevgep660, %scevgep563
  %found.conflict591 = and i1 %bound0589, %bound1590
  %i.nd = shufflevector <4 x ptr> %i.mt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ne = insertelement <4 x ptr> poison, ptr %scevgep560, i64 0
  %27 = shufflevector <4 x ptr> %i.ne, <4 x ptr> %i.mr, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %28 = shufflevector <2 x ptr> %i.ku, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nf = shufflevector <4 x ptr> %27, <4 x ptr> %28, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ng = icmp ult <4 x ptr> %i.nd, %i.nf
  %i.nh = insertelement <4 x ptr> poison, ptr %scevgep561, i64 0
  %i.ni = insertelement <4 x ptr> %i.nh, ptr %scevgep559.a, i64 1
  %i.nj = insertelement <4 x ptr> %i.ni, ptr %scevgep557.a, i64 2
  %i.nk = insertelement <4 x ptr> %i.nj, ptr %scevgep662, i64 3
  %i.nl = shufflevector <4 x ptr> %i.mp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.nm = icmp ult <4 x ptr> %i.nk, %i.nl
  %i.nn = and <4 x i1> %i.ng, %i.nm
  %bound0609 = icmp ult ptr %.0209, %scevgep659
  %bound1610 = icmp ult ptr %scevgep660, %scevgep562
  %found.conflict611 = and i1 %bound0609, %bound1610
  %rdx.op = or <4 x i1> %i.nc, %i.nn
  %i.no = bitcast <4 x i1> %rdx.op to i4
  %i.np = icmp ne i4 %i.no, 0
  %op.rdx707 = or i1 %i.np, %found.conflict587
  %op.rdx708 = or i1 %found.conflict591, %found.conflict611
  %op.rdx709 = or i1 %stride.check575, %i.nb
  %op.rdx710 = or i1 %op.rdx707, %op.rdx708
  %op.rdx711 = or i1 %op.rdx710, %op.rdx709
  %n.vec614 = and i64 %wide.trip.count337, 4294967288 ; 3 uses
  %broadcast.splatinsert615 = insertelement <8 x float> poison, float %i.iv, i64 0
  %broadcast.splat616 = shufflevector <8 x float> %broadcast.splatinsert615, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert617 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat618 = shufflevector <8 x float> %broadcast.splatinsert617, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert619 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat620 = shufflevector <8 x float> %broadcast.splatinsert619, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert621 = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat622 = shufflevector <8 x i32> %broadcast.splatinsert621, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n627 = icmp eq i64 %n.vec614, %wide.trip.count337
  br label %.preheader297.us.us

.preheader297.us.us:                              ; preds = %.preheader297.us.us.preheader, %._crit_edge.split.us.us.split.us.us
  %indvars.iv329 = phi i64 [ %indvars.iv.next330, %._crit_edge.split.us.us.split.us.us ], [ 0, %.preheader297.us.us.preheader ] ; 4 uses
  %i.nq = mul nsw i64 %.0290, %indvars.iv329
  %i.nr = getelementptr i8, ptr %.0.i.i.i, i64 %i.nq ; 9 uses
  %i.ns = mul i64 %.0291, %indvars.iv329
  %i.nt = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.ns ; 2 uses
  %i.nu = mul i64 %.0292, %indvars.iv329
  %i.nv = getelementptr [2 x i8], ptr %.0209, i64 %i.nu ; 2 uses
  %brmerge = select i1 %min.iters.check565, i1 true, i1 %i.mm
  %brmerge728 = select i1 %brmerge, i1 true, i1 %op.rdx711
  br i1 %brmerge728, label %_Z10clip_f_u16fi.exit.us.us.us.us.preheader, label %vector.body623

vector.body623:                                   ; preds = %.preheader297.us.us, %vector.body623
  %index624 = phi i64 [ %index.next625, %vector.body623 ], [ 0, %.preheader297.us.us ] ; 4 uses
  %i.nw = trunc i64 %index624 to i32              ; 8 uses
  %i.nx = or disjoint i32 %i.nw, 1
  %i.ny = or disjoint i32 %i.nw, 2
  %i.nz = or disjoint i32 %i.nw, 3
  %i.oa = or disjoint i32 %i.nw, 4
  %i.ob = or disjoint i32 %i.nw, 5
  %i.oc = or disjoint i32 %i.nw, 6
  %i.od = or disjoint i32 %i.nw, 7
  %i.oe = mul i32 %i.ap, %i.nw
  %i.of = mul i32 %i.ap, %i.nx
  %i.og = mul i32 %i.ap, %i.ny
  %i.oh = mul i32 %i.ap, %i.nz
  %i.oi = mul i32 %i.ap, %i.oa
  %i.oj = mul i32 %i.ap, %i.ob
  %i.ok = mul i32 %i.ap, %i.oc
  %i.ol = mul i32 %i.ap, %i.od
  %i.om = zext i32 %i.oe to i64
  %i.on = zext i32 %i.of to i64
  %i.oo = zext i32 %i.og to i64
  %i.op = zext i32 %i.oh to i64
  %i.oq = zext i32 %i.oi to i64
  %i.or = zext i32 %i.oj to i64
  %i.os = zext i32 %i.ok to i64
  %i.ot = zext i32 %i.ol to i64
  %i.ou = getelementptr i8, ptr %i.nr, i64 %i.om  ; 5 uses
  %i.ov = getelementptr i8, ptr %i.nr, i64 %i.on  ; 5 uses
  %i.ow = getelementptr i8, ptr %i.nr, i64 %i.oo  ; 5 uses
  %i.ox = getelementptr i8, ptr %i.nr, i64 %i.op  ; 5 uses
  %i.oy = getelementptr i8, ptr %i.nr, i64 %i.oq  ; 5 uses
  %i.oz = getelementptr i8, ptr %i.nr, i64 %i.or  ; 5 uses
  %i.pa = getelementptr i8, ptr %i.nr, i64 %i.os  ; 5 uses
  %i.pb = getelementptr i8, ptr %i.nr, i64 %i.ot  ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.im ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.im ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.im ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.im ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.im ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.im ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.im ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.im ; 4 uses
  %i.pk = load i8, ptr %i.pc, align 1, !tbaa !132, !alias.scope !382
  %i.pl = load i8, ptr %i.pd, align 1, !tbaa !132, !alias.scope !382
  %i.pm = load i8, ptr %i.pe, align 1, !tbaa !132, !alias.scope !382
  %i.pn = load i8, ptr %i.pf, align 1, !tbaa !132, !alias.scope !382
  %i.po = load i8, ptr %i.pg, align 1, !tbaa !132, !alias.scope !382
  %i.pp = load i8, ptr %i.ph, align 1, !tbaa !132, !alias.scope !382
  %i.pq = load i8, ptr %i.pi, align 1, !tbaa !132, !alias.scope !382
  %i.pr = load i8, ptr %i.pj, align 1, !tbaa !132, !alias.scope !382
  %i.ps = insertelement <8 x i8> poison, i8 %i.pk, i64 0
  %i.pt = insertelement <8 x i8> %i.ps, i8 %i.pl, i64 1
  %i.pu = insertelement <8 x i8> %i.pt, i8 %i.pm, i64 2
  %i.pv = insertelement <8 x i8> %i.pu, i8 %i.pn, i64 3
  %i.pw = insertelement <8 x i8> %i.pv, i8 %i.po, i64 4
  %i.px = insertelement <8 x i8> %i.pw, i8 %i.pp, i64 5
  %i.py = insertelement <8 x i8> %i.px, i8 %i.pq, i64 6
  %i.pz = insertelement <8 x i8> %i.py, i8 %i.pr, i64 7
  %i.qa = zext <8 x i8> %i.pz to <8 x i32>
  %i.qb = shl nuw nsw <8 x i32> %i.qa, splat (i32 8)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.io
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.io
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.io
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.io
  %i.qg = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.io
  %i.qh = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.io
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.io
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.io
  %i.qk = load i8, ptr %i.qc, align 1, !tbaa !132, !alias.scope !383
  %i.ql = load i8, ptr %i.qd, align 1, !tbaa !132, !alias.scope !383
  %i.qm = load i8, ptr %i.qe, align 1, !tbaa !132, !alias.scope !383
  %i.qn = load i8, ptr %i.qf, align 1, !tbaa !132, !alias.scope !383
  %i.qo = load i8, ptr %i.qg, align 1, !tbaa !132, !alias.scope !383
  %i.qp = load i8, ptr %i.qh, align 1, !tbaa !132, !alias.scope !383
  %i.qq = load i8, ptr %i.qi, align 1, !tbaa !132, !alias.scope !383
  %i.qr = load i8, ptr %i.qj, align 1, !tbaa !132, !alias.scope !383
  %i.qs = insertelement <8 x i8> poison, i8 %i.qk, i64 0
  %i.qt = insertelement <8 x i8> %i.qs, i8 %i.ql, i64 1
  %i.qu = insertelement <8 x i8> %i.qt, i8 %i.qm, i64 2
  %i.qv = insertelement <8 x i8> %i.qu, i8 %i.qn, i64 3
  %i.qw = insertelement <8 x i8> %i.qv, i8 %i.qo, i64 4
  %i.qx = insertelement <8 x i8> %i.qw, i8 %i.qp, i64 5
  %i.qy = insertelement <8 x i8> %i.qx, i8 %i.qq, i64 6
  %i.qz = insertelement <8 x i8> %i.qy, i8 %i.qr, i64 7
  %i.ra = zext <8 x i8> %i.qz to <8 x i32>
  %i.rb = or disjoint <8 x i32> %i.qb, %i.ra
  %i.rc = uitofp nneg <8 x i32> %i.rb to <8 x float>
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pc, i64 2
  %i.re = getelementptr inbounds nuw i8, ptr %i.pd, i64 2
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pf, i64 2
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pg, i64 2
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ph, i64 2
  %i.rj = getelementptr inbounds nuw i8, ptr %i.pi, i64 2
  %i.rk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  %i.rl = load i8, ptr %i.rd, align 1, !tbaa !132, !alias.scope !382
  %i.rm = load i8, ptr %i.re, align 1, !tbaa !132, !alias.scope !382
  %i.rn = load i8, ptr %i.rf, align 1, !tbaa !132, !alias.scope !382
  %i.ro = load i8, ptr %i.rg, align 1, !tbaa !132, !alias.scope !382
  %i.rp = load i8, ptr %i.rh, align 1, !tbaa !132, !alias.scope !382
  %i.rq = load i8, ptr %i.ri, align 1, !tbaa !132, !alias.scope !382
  %i.rr = load i8, ptr %i.rj, align 1, !tbaa !132, !alias.scope !382
  %i.rs = load i8, ptr %i.rk, align 1, !tbaa !132, !alias.scope !382
  %i.rt = insertelement <8 x i8> poison, i8 %i.rl, i64 0
  %i.ru = insertelement <8 x i8> %i.rt, i8 %i.rm, i64 1
  %i.rv = insertelement <8 x i8> %i.ru, i8 %i.rn, i64 2
  %i.rw = insertelement <8 x i8> %i.rv, i8 %i.ro, i64 3
  %i.rx = insertelement <8 x i8> %i.rw, i8 %i.rp, i64 4
  %i.ry = insertelement <8 x i8> %i.rx, i8 %i.rq, i64 5
  %i.rz = insertelement <8 x i8> %i.ry, i8 %i.rr, i64 6
  %i.sa = insertelement <8 x i8> %i.rz, i8 %i.rs, i64 7
  %i.sb = zext <8 x i8> %i.sa to <8 x i32>
  %i.sc = shl nuw nsw <8 x i32> %i.sb, splat (i32 8)
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.iq
  %i.se = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.iq
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.iq
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.iq
  %i.sh = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.iq
  %i.si = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.iq
  %i.sj = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.iq
  %i.sk = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.iq
  %i.sl = load i8, ptr %i.sd, align 1, !tbaa !132, !alias.scope !384
  %i.sm = load i8, ptr %i.se, align 1, !tbaa !132, !alias.scope !384
  %i.sn = load i8, ptr %i.sf, align 1, !tbaa !132, !alias.scope !384
  %i.so = load i8, ptr %i.sg, align 1, !tbaa !132, !alias.scope !384
  %i.sp = load i8, ptr %i.sh, align 1, !tbaa !132, !alias.scope !384
  %i.sq = load i8, ptr %i.si, align 1, !tbaa !132, !alias.scope !384
  %i.sr = load i8, ptr %i.sj, align 1, !tbaa !132, !alias.scope !384
  %i.ss = load i8, ptr %i.sk, align 1, !tbaa !132, !alias.scope !384
  %i.st = insertelement <8 x i8> poison, i8 %i.sl, i64 0
  %i.su = insertelement <8 x i8> %i.st, i8 %i.sm, i64 1
  %i.sv = insertelement <8 x i8> %i.su, i8 %i.sn, i64 2
  %i.sw = insertelement <8 x i8> %i.sv, i8 %i.so, i64 3
  %i.sx = insertelement <8 x i8> %i.sw, i8 %i.sp, i64 4
  %i.sy = insertelement <8 x i8> %i.sx, i8 %i.sq, i64 5
  %i.sz = insertelement <8 x i8> %i.sy, i8 %i.sr, i64 6
  %i.ta = insertelement <8 x i8> %i.sz, i8 %i.ss, i64 7
  %i.tb = zext <8 x i8> %i.ta to <8 x i32>
  %i.tc = or disjoint <8 x i32> %i.sc, %i.tb
  %i.td = uitofp nneg <8 x i32> %i.tc to <8 x float>
  %i.te = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %i.tf = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.tk = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  %i.tl = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  %i.tm = load i8, ptr %i.te, align 1, !tbaa !132, !alias.scope !382
  %i.tn = load i8, ptr %i.tf, align 1, !tbaa !132, !alias.scope !382
  %i.to = load i8, ptr %i.tg, align 1, !tbaa !132, !alias.scope !382
  %i.tp = load i8, ptr %i.th, align 1, !tbaa !132, !alias.scope !382
  %i.tq = load i8, ptr %i.ti, align 1, !tbaa !132, !alias.scope !382
  %i.tr = load i8, ptr %i.tj, align 1, !tbaa !132, !alias.scope !382
  %i.ts = load i8, ptr %i.tk, align 1, !tbaa !132, !alias.scope !382
  %i.tt = load i8, ptr %i.tl, align 1, !tbaa !132, !alias.scope !382
  %i.tu = insertelement <8 x i8> poison, i8 %i.tm, i64 0
  %i.tv = insertelement <8 x i8> %i.tu, i8 %i.tn, i64 1
  %i.tw = insertelement <8 x i8> %i.tv, i8 %i.to, i64 2
  %i.tx = insertelement <8 x i8> %i.tw, i8 %i.tp, i64 3
  %i.ty = insertelement <8 x i8> %i.tx, i8 %i.tq, i64 4
  %i.tz = insertelement <8 x i8> %i.ty, i8 %i.tr, i64 5
  %i.ua = insertelement <8 x i8> %i.tz, i8 %i.ts, i64 6
  %i.ub = insertelement <8 x i8> %i.ua, i8 %i.tt, i64 7
  %i.uc = zext <8 x i8> %i.ub to <8 x i32>
  %i.ud = shl nuw nsw <8 x i32> %i.uc, splat (i32 8)
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.ir
end_hunk_0
begin_hunk_1_@llvm.umin.v2i32
!187 = !{!186, !184, !182, !180}
!188 = distinct !{!188, i1 true, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_"}
!189 = distinct !{!189, !188, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!190 = distinct !{!190, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!191 = distinct !{!191, !190, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!192 = distinct !{!192, i1 true, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!193 = distinct !{!193, !192, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!194 = distinct !{!194, i1 true, !"_ZNK5ErrorooERKS_"}
!195 = distinct !{!195, !194, !"_ZNK5ErrorooERKS_: argument 0"}
!196 = distinct !{!196, i1 true, !"_ZNK5ErrorooERKS_"}
!197 = distinct !{!197, !196, !"_ZNK5ErrorooERKS_: argument 0"}
!198 = distinct !{!198, i1 false, !"LVerDomain"}
!199 = distinct !{!199, !198}
!200 = distinct !{!200, !198}
!201 = distinct !{!201, !198}
!202 = distinct !{!202, !198}
!203 = distinct !{!203, !47, !164, !165}
!204 = distinct !{!204, !47, !164, !165}
!205 = distinct !{!205, i1 false, !"LVerDomain"}
!206 = distinct !{!206, !205}
!207 = distinct !{!207, !205}
!208 = distinct !{!208, !205}
!209 = distinct !{!209, !205}
!210 = distinct !{!210, !47, !164, !165}
!211 = distinct !{!211, !47, !164, !165}
!212 = distinct !{!212, i1 false, !"LVerDomain"}
!213 = distinct !{!213, !212}
!214 = distinct !{!214, !212}
!215 = distinct !{!215, !47, !164, !165}
!216 = distinct !{!216, !47, !164, !165}
!217 = distinct !{!217, i1 false, !"LVerDomain"}
!218 = distinct !{!218, !217}
!219 = distinct !{!219, !217}
!220 = distinct !{!220, !47, !164, !165}
!221 = distinct !{!221, !47, !164, !165}
!222 = distinct !{!222, !167}
!223 = distinct !{!223, !47, !164}
!224 = distinct !{!224, !47, !164}
!225 = distinct !{!225, !47, !164}
!226 = distinct !{!226, !47}
!227 = distinct !{!227, !47}
!228 = distinct !{!228, !47, !164}
!229 = distinct !{!229, !47}
!230 = distinct !{!230, !47}
!231 = !{!189}
!232 = !{!191}
!233 = !{!191, !189}
!234 = !{!193}
!235 = !{!193, !191, !189}
!236 = !{!195}
!237 = !{!197}
!238 = !{!199}
!239 = !{!200}
!240 = !{!201}
!241 = !{!202}
!242 = !{!199, !200, !201}
!243 = !{!"branch_weights", i32 8, i32 24}
!244 = !{!206}
!245 = !{!207}
!246 = !{!208}
!247 = !{!209}
!248 = !{!206, !207, !208}
!249 = !{!213}
!250 = !{!214}
!251 = !{!218}
!252 = !{!219}
!253 = !{!"branch_weights", i32 4, i32 28}
!254 = distinct !{null, null}
!255 = distinct !{!255, i1 true, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIP18ColorStateWithCostEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_"}
!256 = distinct !{!256, !255, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIP18ColorStateWithCostEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_: argument 0"}
!257 = distinct !{!257, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIP18ColorStateWithCostEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_"}
!258 = distinct !{!258, !257, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIP18ColorStateWithCostEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_: argument 0"}
!259 = distinct !{!259, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIP18ColorStateWithCostEESA_SA_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISC_SE_EESC_SD_SE_"}
!260 = distinct !{!260, !259, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIP18ColorStateWithCostEESA_SA_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISC_SE_EESC_SD_SE_: argument 0"}
!261 = distinct !{!261, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIP18ColorStateWithCostEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_"}
!262 = distinct !{!262, !261, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIP18ColorStateWithCostEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_: argument 0"}
!263 = distinct !{!263, i1 true, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIP18ColorStateWithCostEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_"}
!264 = distinct !{!264, !263, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIP18ColorStateWithCostEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_: argument 0"}
!265 = distinct !{!265, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIP18ColorStateWithCostEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_"}
!266 = distinct !{!266, !265, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIP18ColorStateWithCostEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_: argument 0"}
!267 = distinct !{!267, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIP18ColorStateWithCostEESA_SA_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISC_SE_EESC_SD_SE_"}
!268 = distinct !{!268, !267, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIP18ColorStateWithCostEESA_SA_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISC_SE_EESC_SD_SE_: argument 0"}
!269 = distinct !{!269, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIP18ColorStateWithCostEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_"}
!270 = distinct !{!270, !269, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIP18ColorStateWithCostEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_: argument 0"}
!271 = !{!262, !260, !258, !256}
!272 = !{!270, !268, !266, !264}
!273 = distinct !{!273, i1 true, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_"}
!274 = distinct !{!274, !273, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!275 = distinct !{!275, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!276 = distinct !{!276, !275, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!277 = distinct !{!277, i1 true, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!278 = distinct !{!278, !277, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!279 = distinct !{!279, i1 true, !"_ZNK5ErrorooERKS_"}
!280 = distinct !{!280, !279, !"_ZNK5ErrorooERKS_: argument 0"}
!281 = distinct !{!281, i1 true, !"_ZNK5ErrorooERKS_"}
!282 = distinct !{!282, !281, !"_ZNK5ErrorooERKS_: argument 0"}
!283 = distinct !{!283, i1 false, !"LVerDomain"}
!284 = distinct !{!284, !283}
!285 = distinct !{!285, !283}
!286 = distinct !{!286, !283}
!287 = distinct !{!287, !283}
!288 = distinct !{!288, !47, !164, !165}
!289 = distinct !{!289, i1 false, !"LVerDomain"}
!290 = distinct !{!290, !289}
!291 = distinct !{!291, !289}
!292 = distinct !{!292, !289}
!293 = distinct !{!293, !289}
!294 = distinct !{!294, !47, !164, !165}
!295 = distinct !{!295, i1 false, !"LVerDomain"}
!296 = distinct !{!296, !295}
!297 = distinct !{!297, !295}
!298 = distinct !{!298, !47, !164, !165}
!299 = distinct !{!299, i1 false, !"LVerDomain"}
!300 = distinct !{!300, !299}
!301 = distinct !{!301, !299}
!302 = distinct !{!302, !47, !164, !165}
!303 = distinct !{!303, !47, !164, !165}
!304 = distinct !{!304, !167}
!305 = distinct !{!305, !47, !164}
!306 = distinct !{!306, !47, !164}
!307 = distinct !{!307, !47, !164}
!308 = distinct !{!308, !47}
!309 = distinct !{!309, !47}
!310 = distinct !{!310, !47, !164}
!311 = distinct !{!311, !47}
!312 = distinct !{!312, !47}
!313 = !{!274}
!314 = !{!276}
!315 = !{!276, !274}
!316 = !{!278}
!317 = !{!278, !276, !274}
!318 = !{!280}
!319 = !{!282}
!320 = !{!284}
!321 = !{!285}
!322 = !{!286}
!323 = !{!287}
!324 = !{!284, !285, !286}
!325 = !{!290}
!326 = !{!291}
!327 = !{!292}
!328 = !{!293}
!329 = !{!290, !291, !292}
!330 = !{!296}
!331 = !{!297}
!332 = !{!300}
!333 = !{!301}
!334 = distinct !{!334, i1 true, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_"}
!335 = distinct !{!335, !334, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!336 = distinct !{!336, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!337 = distinct !{!337, !336, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!338 = distinct !{!338, i1 true, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!339 = distinct !{!339, !338, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!340 = distinct !{!340, i1 true, !"_ZNK5ErrorooERKS_"}
!341 = distinct !{!341, !340, !"_ZNK5ErrorooERKS_: argument 0"}
!342 = distinct !{!342, i1 true, !"_ZNK5ErrorooERKS_"}
!343 = distinct !{!343, !342, !"_ZNK5ErrorooERKS_: argument 0"}
!344 = distinct !{!344, i1 false, !"LVerDomain"}
!345 = distinct !{!345, !344}
!346 = distinct !{!346, !344}
!347 = distinct !{!347, !344}
!348 = distinct !{!348, !344}
!349 = distinct !{!349, !344}
!350 = distinct !{!350, !344}
!351 = distinct !{!351, !344}
!352 = distinct !{!352, !47, !164, !165}
!353 = distinct !{!353, !47, !164}
!354 = distinct !{!354, !47}
!355 = distinct !{!355, i1 false, !"LVerDomain"}
!356 = distinct !{!356, !355}
!357 = distinct !{!357, !355}
!358 = distinct !{!358, !355}
!359 = distinct !{!359, !355}
!360 = distinct !{!360, !355}
!361 = distinct !{!361, !355}
!362 = distinct !{!362, !355}
!363 = distinct !{!363, !47, !164, !165}
!364 = distinct !{!364, !47, !164}
!365 = distinct !{!365, i1 false, !"LVerDomain"}
!366 = distinct !{!366, !365}
!367 = distinct !{!367, !365}
!368 = distinct !{!368, !365}
!369 = distinct !{!369, !365}
!370 = distinct !{!370, !365}
!371 = distinct !{!371, !47, !164, !165}
!372 = distinct !{!372, !47, !164}
!373 = distinct !{!373, !47}
!374 = distinct !{!374, !47}
!375 = !{!335}
!376 = !{!337}
!377 = !{!337, !335}
!378 = !{!339}
!379 = !{!339, !337, !335}
!380 = !{!341}
!381 = !{!343}
!382 = !{!345}
!383 = !{!346}
!384 = !{!347}
!385 = !{!348}
!386 = !{!349}
!387 = !{!351, !350, !345, !348, !347, !346}
!388 = !{!350}
!389 = !{!351}
!390 = !{!350, !345, !348, !347, !346}
!391 = !{!356}
!392 = !{!357}
!393 = !{!358}
!394 = !{!359}
!395 = !{!360}
!396 = !{!362, !361, !356, !359, !358, !357}
!397 = !{!361}
!398 = !{!362}
!399 = !{!361, !356, !359, !358, !357}
!400 = !{!366}
!401 = !{!367}
!402 = !{!368}
!403 = !{!369}
!404 = !{!370}
!405 = !{!369, !366, !368, !367}
!406 = distinct !{!406, i1 true, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_"}
!407 = distinct !{!407, !406, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!408 = distinct !{!408, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!409 = distinct !{!409, !408, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!410 = distinct !{!410, i1 true, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!411 = distinct !{!411, !410, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!412 = distinct !{!412, i1 true, !"_ZNK5ErrorooERKS_"}
!413 = distinct !{!413, !412, !"_ZNK5ErrorooERKS_: argument 0"}
!414 = distinct !{!414, i1 true, !"_ZNK5ErrorooERKS_"}
!415 = distinct !{!415, !414, !"_ZNK5ErrorooERKS_: argument 0"}
!416 = distinct !{!416, !47}
!417 = distinct !{!417, !47}
!418 = distinct !{!418, !47}
!419 = distinct !{!419, !47}
!420 = distinct !{!420, !47}
!421 = distinct !{!421, !47}
!422 = distinct !{!422, !47}
!423 = distinct !{!423, !47}
!424 = distinct !{!424, !47}
!425 = distinct !{!425, !47}
!426 = distinct !{!426, i1 false, !"LVerDomain"}
!427 = distinct !{!427, !426}
!428 = distinct !{!428, !426}
!429 = distinct !{!429, !47, !164, !165}
!430 = distinct !{!430, !47, !164, !165}
!431 = distinct !{!431, !167}
!432 = distinct !{!432, !47, !164}
!433 = distinct !{!433, !47}
!434 = distinct !{!434, !167}
!435 = !{!407}
!436 = !{!409}
!437 = !{!409, !407}
!438 = !{!411}
!439 = !{!411, !409, !407}
!440 = !{!413}
!441 = !{!415}
!442 = !{!"float", !7, i64 0}
!443 = !{!442, !442, i64 0}
!444 = !{!427}
!445 = !{!428}
!446 = !{!"branch_weights", i32 8, i32 8}
!447 = distinct !{!447, i1 true, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_"}
!448 = distinct !{!448, !447, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!449 = distinct !{!449, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!450 = distinct !{!450, !449, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!451 = distinct !{!451, i1 true, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!452 = distinct !{!452, !451, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!453 = distinct !{!453, i1 true, !"_ZNK5ErrorooERKS_"}
!454 = distinct !{!454, !453, !"_ZNK5ErrorooERKS_: argument 0"}
!455 = distinct !{!455, i1 true, !"_ZNK5ErrorooERKS_"}
!456 = distinct !{!456, !455, !"_ZNK5ErrorooERKS_: argument 0"}
!457 = distinct !{!457, !47}
!458 = distinct !{!458, !47}
!459 = !{!448}
!460 = !{!450}
!461 = !{!450, !448}
!462 = !{!452}
!463 = !{!452, !450, !448}
!464 = !{!454}
!465 = !{!456}
!466 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI14HeifPixelImageNS_9allocatorIS1_EEED2Ev}
!467 = distinct !{null, null, null}
end_hunk_1
