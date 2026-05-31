inline.NumInlined: 3225
inline.NumDeleted: 991
begin_hunk_0_@_ZN11OpenImageIO4v3_18BmpInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecERKSA_:bb.a
  store i32 0, ptr %i.fk, align 8, !tbaa !58
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 0, ptr %i.fl, align 8, !tbaa !83
  %i.fm = load ptr, ptr %i.j, align 8, !tbaa !64
  store i8 0, ptr %i.fm, align 1, !tbaa !65
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !62 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !84
  %.not.i.i.i.i38 = icmp eq ptr %i.fq, %i.fo
  br i1 %.not.i.i.i.i38, label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE5clearEv.exit.i.i40, label %_ZSt8_DestroyIPN11OpenImageIO4v3_17bmp_pvt11color_tableES3_EvT_S5_RSaIT0_E.exit.i.i.i.i39

_ZSt8_DestroyIPN11OpenImageIO4v3_17bmp_pvt11color_tableES3_EvT_S5_RSaIT0_E.exit.i.i.i.i39: ; preds = %bb.x
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !84
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE5clearEv.exit.i.i40

_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE5clearEv.exit.i.i40: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_17bmp_pvt11color_tableES3_EvT_S5_RSaIT0_E.exit.i.i.i.i39, %bb.x
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i8 0, ptr %i.fr, align 8, !tbaa !59
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !61
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !85
  %i.fw = icmp eq ptr %i.ft, %i.fv
  br i1 %i.fw, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit.i.i41, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE5clearEv.exit.i.i40
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fy = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIhSaIhEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.fx) #28 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit.i.i41

_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit.i.i41: ; preds = %bb.y, %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE5clearEv.exit.i.i40
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !61
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !85
  %i.gd = icmp eq ptr %i.ga, %i.gc
  br i1 %i.gd, label %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit42, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit.i.i41
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.gf = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIhSaIhEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ge) #28 ; 0 uses
  br label %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit42

_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit42:    ; preds = %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit.i.i41, %bb.z
  call void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(472) %0)
  br label %bb.ba

bb.aa:                                            ; preds = %bb.w
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !93 ; 2 uses
  %i.gi = icmp eq i32 %i.gh, 0
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = icmp eq i32 %i.gk, 0
  %or.cond23 = select i1 %i.gi, i1 true, i1 %i.gl
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = icmp eq i32 %i.gn, 0
  %or.cond26 = select i1 %or.cond23, i1 true, i1 %i.go
  br i1 %or.cond26, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 31744, ptr %i.gg, align 4, !tbaa !93
  store i32 992, ptr %i.gj, align 4, !tbaa !94
  store i32 31, ptr %i.gm, align 8, !tbaa !95
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.gp = phi i32 [ %i.gh, %bb.aa ], [ 31744, %bb.ab ]
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @_ZN11OpenImageIO4v3_111calc_shiftsEjRjS1_(i32 noundef %i.gp, ptr noundef nonnull align 4 dereferenceable(4) %i.gq, ptr noundef nonnull align 4 dereferenceable(4) %i.gr)
  %i.gs = load i32, ptr %i.gj, align 4, !tbaa !94
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 444
  call void @_ZN11OpenImageIO4v3_111calc_shiftsEjRjS1_(i32 noundef %i.gs, ptr noundef nonnull align 4 dereferenceable(4) %i.gt, ptr noundef nonnull align 4 dereferenceable(4) %i.gu)
  %i.gv = load i32, ptr %i.gm, align 8, !tbaa !95
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @_ZN11OpenImageIO4v3_111calc_shiftsEjRjS1_(i32 noundef %i.gv, ptr noundef nonnull align 4 dereferenceable(4) %i.gw, ptr noundef nonnull align 4 dereferenceable(4) %i.gx)
  %i.gy = load i16, ptr %i.cq, align 2, !tbaa !86
  switch i16 %i.gy, label %bb.al [
    i16 32, label %bb.ad
    i16 24, label %bb.ad
    i16 16, label %bb.ae
    i16 8, label %bb.af
    i16 4, label %bb.aj
    i16 1, label %bb.ak
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.gz = load i32, ptr %i.eu, align 4, !tbaa !91
  %i.ha = load i32, ptr %i.fa, align 4, !tbaa !92
  %i.hb = mul nsw i32 %i.ha, %i.gz
  %i.hc = add nsw i32 %i.hb, 3
  %i.hd = and i32 %i.hc, -4
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !13
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.hg = load i32, ptr %i.eu, align 4, !tbaa !91
  %i.hh = shl i32 %i.hg, 1
  %i.hi = add nsw i32 %i.hh, 2
  %i.hj = and i32 %i.hi, -4
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !13
  %i.hm = load i32, ptr %i.gq, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.hm, ptr %i.f, align 4, !tbaa !3
  store ptr @.str.11, ptr %9, align 8, !tbaa !80
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 18, ptr %i.hn, align 8, !tbaa !82
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.cz, ptr noundef nonnull dead_on_return %9, i64 262, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.ho = load i32, ptr %i.eu, align 4, !tbaa !91
  %i.hp = add nsw i32 %i.ho, 3
  %i.hq = and i32 %i.hp, -4
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !13
  %i.ht = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18BmpInput16read_color_tableEv(ptr noundef nonnull align 8 dereferenceable(472) %0)
  br i1 %i.ht, label %bb.ag, label %bb.ba

bb.ag:                                            ; preds = %bb.af
  br i1 %.not, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hu = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18BmpInput23color_table_is_all_grayEv(ptr noundef nonnull align 8 dereferenceable(472) %0) ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.hw = zext i1 %i.hu to i8
  store i8 %i.hw, ptr %i.hv, align 8, !tbaa !59
  br i1 %i.hu, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  store i32 1, ptr %i.fa, align 4, !tbaa !92
  call void @_ZN11OpenImageIO4v3_19ImageSpec21default_channel_namesEv(ptr noundef nonnull align 8 dereferenceable(160) %i.cz) #28
  br label %bb.am

bb.aj:                                            ; preds = %bb.ac
  %i.hx = load i32, ptr %i.eu, align 4, !tbaa !91
  %i.hy = add nsw i32 %i.hx, 1
  %i.hz = sdiv i32 %i.hy, 2
  %i.ia = add nsw i32 %i.hz, 3
  %i.ib = and i32 %i.ia, -4
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !13
  %i.ie = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18BmpInput16read_color_tableEv(ptr noundef nonnull align 8 dereferenceable(472) %0)
  br i1 %i.ie, label %bb.am, label %bb.ba

bb.ak:                                            ; preds = %bb.ac
  %i.if = load i32, ptr %i.eu, align 4, !tbaa !91
  %i.ig = add nsw i32 %i.if, 7
  %i.ih = sdiv i32 %i.ig, 8
  %i.ii = add nsw i32 %i.ih, 3
  %i.ij = and i32 %i.ii, -4
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !13
  %i.im = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18BmpInput16read_color_tableEv(ptr noundef nonnull align 8 dereferenceable(472) %0)
  br i1 %i.im, label %bb.am, label %bb.ba

bb.al:                                            ; preds = %bb.ac
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJsEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.12, ptr noundef nonnull align 2 dereferenceable(2) %i.cq)
  br label %bb.ba

.critedge:                                        ; preds = %bb.ag
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i8 0, ptr %i.in, align 8, !tbaa !59
  br label %bb.am

bb.am:                                            ; preds = %.critedge, %bb.ak, %bb.aj, %bb.ah, %bb.ai, %bb.ae, %bb.ad
  %i.io = load i16, ptr %i.cq, align 2, !tbaa !86 ; 2 uses
  %i.ip = icmp slt i16 %i.io, 17
  br i1 %i.ip, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.iq = sext i16 %i.io to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 %i.iq, ptr %i.e, align 4, !tbaa !3
  store ptr @.str.13, ptr %8, align 8, !tbaa !80
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 16, ptr %i.ir, align 8, !tbaa !82
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.cz, ptr noundef nonnull dead_on_return %8, i64 263, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.is = load i32, ptr %i.bq, align 4, !tbaa !96
  switch i32 %i.is, label %bb.at [
    i32 12, label %bb.ap
    i32 40, label %bb.aq
    i32 108, label %bb.ar
    i32 124, label %bb.as
  ]

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 1, ptr %i.d, align 4, !tbaa !3
  store ptr @.str.14, ptr %7, align 8, !tbaa !80
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 11, ptr %i.it, align 8, !tbaa !82
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.cz, ptr noundef nonnull dead_on_return %7, i64 263, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 3, ptr %i.c, align 4, !tbaa !3
  store ptr @.str.14, ptr %6, align 8, !tbaa !80
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.iu, align 8, !tbaa !82
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.cz, ptr noundef nonnull dead_on_return %6, i64 263, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 4, ptr %i.b, align 4, !tbaa !3
  store ptr @.str.14, ptr %5, align 8, !tbaa !80
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 11, ptr %i.iv, align 8, !tbaa !82
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.cz, ptr noundef nonnull dead_on_return %5, i64 263, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 5, ptr %i.a, align 4, !tbaa !3
  store ptr @.str.14, ptr %4, align 8, !tbaa !80
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 11, ptr %i.iw, align 8, !tbaa !82
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.cz, ptr noundef nonnull dead_on_return %4, i64 263, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !97
  %.not17 = icmp eq i32 %i.iy, 0
  br i1 %.not17, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !84
  %i.jc = load ptr, ptr %i.iz, align 8, !tbaa !62
  %.not18 = icmp eq ptr %i.jb, %i.jc
  br i1 %.not18, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJsEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.15, ptr noundef nonnull align 2 dereferenceable(2) %i.cq)
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au, %bb.at
  store ptr @.str.16, ptr %17, align 8, !tbaa !80
  %i.jd = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 15, ptr %i.jd, align 8, !tbaa !82
  store ptr @.str.17, ptr %18, align 8, !tbaa !80
  %i.je = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 17, ptr %i.je, align 8, !tbaa !82
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.cz, ptr noundef nonnull dead_on_return %17, ptr noundef nonnull dead_on_return %18)
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !98
  %.off = add i32 %i.jg, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.jh = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18BmpInput14read_rle_imageEv(ptr noundef nonnull align 8 dereferenceable(472) %0)
  br i1 %i.jh, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.18)
  %i.ji = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18BmpInput5closeEv(ptr noundef nonnull align 8 dereferenceable(472) %0) ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw, %bb.ax
  %i.jj = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %i.cz) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit42, %bb.ak, %bb.aj, %bb.af, %bb.az, %bb.ay, %bb.av, %bb.al, %bb.a, %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit36, %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit31, %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit36 ], [ false, %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit31 ], [ false, %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit ], [ false, %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit42 ], [ false, %bb.al ], [ true, %bb.az ], [ false, %bb.ay ], [ false, %bb.av ], [ false, %bb.aj ], [ false, %bb.af ], [ false, %bb.ak ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i) #28
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.m, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  %i.s = load i64, ptr %i.q, align 8, !tbaa !65
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !76

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.l, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit
  %i.v = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.m, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #29
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.d
  ret void
}

declare void @_ZN11OpenImageIO4v3_110ImageInput28ioproxy_retrieve_from_configERKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEE8overflowEi:bb.a
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #3

declare noundef ptr @_ZNK11OpenImageIO4v3_18TypeDesc5c_strEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

declare void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 4611686018427387902
  %i.u = and i64 %i.t, 4611686018427387903        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.w = shl i64 %n.vec, 2
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = load i32, ptr %i.b, align 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 1
  store <4 x i32> %broadcast.splat, ptr %i.aa, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !794

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i32, ptr %i.b, align 1
  store i32 %i.ac, ptr %.06.i.i.i.i.i.i.i, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !795

_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !84
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.n, %1
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #30
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.af = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951) ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #31 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f ; 5 uses
  store i32 0, ptr %i.aj, align 1
  %i.ak = add nsw i64 %1, -1                      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE12_M_check_lenEmPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 4 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ak, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i30
  %i.ao = add i64 %1, 4611686018427387902
  %i.ap = and i64 %i.ao, 4611686018427387903      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check45 = icmp samesign ult i64 %i.ap, 7
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.i.i.i31.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %bb.g
  %n.vec48 = and i64 %i.aq, 9223372036854775800   ; 3 uses
  %i.ar = shl i64 %n.vec48, 2
  %i.as = getelementptr i8, ptr %i.am, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph46
  %index50 = phi i64 [ 0, %vector.ph46 ], [ %index.next54, %vector.body49 ] ; 2 uses
  %i.at = shl i64 %index50, 2
  %next.gep51 = getelementptr i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.au = load i32, ptr %i.aj, align 1
  %broadcast.splatinsert52 = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat53 = shufflevector <4 x i32> %broadcast.splatinsert52, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep51, i64 16
  store <4 x i32> %broadcast.splat53, ptr %next.gep51, align 1
  store <4 x i32> %broadcast.splat53, ptr %i.av, align 1
  %index.next54 = add nuw i64 %index50, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next54, %n.vec48
  br i1 %i.aw, label %middle.block55, label %vector.body49, !llvm.loop !796

middle.block55:                                   ; preds = %vector.body49
  %cmp.n56 = icmp eq i64 %i.aq, %n.vec48
  br i1 %cmp.n56, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i.i.i31.preheader:                 ; preds = %bb.g, %middle.block55
  %.06.i.i.i.i.i.i.i32.ph = phi ptr [ %i.am, %bb.g ], [ %i.as, %middle.block55 ]
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader ] ; 2 uses
  %i.ax = load i32, ptr %i.aj, align 1
  store i32 %i.ax, ptr %.06.i.i.i.i.i.i.i32, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !797

_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %middle.block55, %_ZNKSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE12_M_check_lenEmPKc.exit
  %i.az = icmp sgt i64 %i.f, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE13_M_deallocateEPS3_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ba = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE13_M_deallocateEPS3_m.exit38

_ZNSt12_Vector_baseIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE13_M_deallocateEPS3_m.exit38: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !84
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17bmp_pvt11color_tableEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE13_M_deallocateEPS3_m.exit38, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !44, i64 184}
!14 = !{!"_ZTSN11OpenImageIO4v3_18BmpInputE", !15, i64 0, !44, i64 184, !4, i64 192, !45, i64 196, !47, i64 212, !48, i64 336, !49, i64 368, !54, i64 392, !54, i64 416, !5, i64 440, !5, i64 452, !28, i64 464}
!15 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !16, i64 8, !35, i64 168}
!16 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !17, i64 64, !18, i64 72, !23, i64 96, !4, i64 120, !4, i64 124, !28, i64 128, !29, i64 136}
!17 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!18 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !12, i64 0}
!23 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !30, i64 0}
!30 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !12, i64 0}
!35 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !36, i64 0}
!36 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !37, i64 0}
!37 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !38, i64 0}
!38 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !39, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !40, i64 0, !42, i64 8}
!40 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !41, i64 0}
!41 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !12, i64 0}
!42 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !43, i64 0}
!43 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !12, i64 0}
!44 = !{!"long", !5, i64 0}
!45 = !{!"_ZTSN11OpenImageIO4v3_17bmp_pvt13BmpFileHeaderE", !46, i64 0, !4, i64 4, !46, i64 8, !46, i64 10, !4, i64 12}
!46 = !{!"short", !5, i64 0}
!47 = !{!"_ZTSN11OpenImageIO4v3_17bmp_pvt20DibInformationHeaderE", !4, i64 0, !4, i64 4, !4, i64 8, !46, i64 12, !46, i64 14, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !44, i64 8, !5, i64 16}
!49 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p1 _ZTSN11OpenImageIO4v3_17bmp_pvt11color_tableE", !12, i64 0}
!54 = !{!"_ZTSSt6vectorIhSaIhEE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!58 = !{!14, !4, i64 192}
!59 = !{!14, !28, i64 464}
!60 = !{!57, !11, i64 0}
!61 = !{!57, !11, i64 16}
!62 = !{!52, !53, i64 0}
!63 = !{!52, !53, i64 16}
!64 = !{!48, !11, i64 0}
!65 = !{!5, !5, i64 0}
!66 = !{!67, !68, i64 48}
!67 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !48, i64 8, !44, i64 40, !68, i64 48, !48, i64 56}
!68 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxy4ModeE", !5, i64 0}
!69 = !{!33, !34, i64 0}
!70 = !{!33, !34, i64 8}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!33, !34, i64 16}
!74 = !{!26, !27, i64 0}
!75 = !{!26, !27, i64 8}
!76 = distinct !{!76, !72}
!77 = !{!26, !27, i64 16}
!78 = !{!21, !22, i64 0}
!79 = !{!21, !22, i64 16}
!80 = !{!81, !11, i64 0}
!81 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !11, i64 0, !44, i64 8}
!82 = !{!81, !44, i64 8}
!83 = !{!48, !44, i64 8}
!84 = !{!52, !53, i64 8}
!85 = !{!57, !11, i64 8}
!86 = !{!14, !46, i64 226}
!87 = !{!14, !4, i64 220}
!88 = !{!14, !4, i64 216}
!89 = !{!14, !4, i64 236}
!90 = !{!14, !4, i64 240}
!91 = !{!15, !4, i64 20}
!92 = !{!15, !4, i64 68}
!93 = !{!14, !4, i64 252}
!94 = !{!14, !4, i64 260}
!95 = !{!14, !4, i64 256}
!96 = !{!14, !4, i64 212}
!97 = !{!14, !4, i64 244}
!98 = !{!14, !4, i64 228}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!101 = distinct !{!101, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!102 = !{!22, !22, i64 0}
!103 = !{!27, !27, i64 0}
!104 = !{!34, !34, i64 0}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_RKNS0_8TypeDescEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!107 = distinct !{!107, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_RKNS0_8TypeDescEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_KN11OpenImageIO4v3_18TypeDescEELi4ELi0ELy61713EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!110 = distinct !{!110, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_KN11OpenImageIO4v3_18TypeDescEELi4ELi0ELy61713EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!111 = !{!109, !106}
!112 = distinct !{!112, !72}
!113 = distinct !{!113, !72}
!114 = distinct !{null}
!115 = distinct !{!115, !72}
!116 = distinct !{!116, !72}
!117 = !{!118, !5, i64 0}
!118 = !{!"_ZTSN11OpenImageIO4v3_17bmp_pvt11color_tableE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!119 = !{!118, !5, i64 1}
!120 = !{!118, !5, i64 2}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKsEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!123 = distinct !{!123, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKsEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!124 = !{!46, !46, i64 0}
!125 = !{!15, !4, i64 24}
!126 = distinct !{!126, !72}
!127 = distinct !{!127, !72}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!130 = distinct !{!130, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!133 = distinct !{!133, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!136 = distinct !{!136, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!137 = !{!135, !132}
!138 = !{ptr @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii}
!139 = distinct !{!139, !72}
!140 = !{!14, !4, i64 208}
!141 = distinct !{!141, !72}
!142 = distinct !{!142, !72}
!143 = distinct !{!143, !72}
!144 = !{i8 0, i8 2}
!145 = !{}
!146 = distinct !{!146, !72}
end_hunk_1
