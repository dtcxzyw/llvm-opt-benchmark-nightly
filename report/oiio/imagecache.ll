Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagecache?download=true
inline.NumInlined: 13633
inline.NumDeleted: 4658
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZNK11OpenImageIO4v3_114ImageCacheImpl12getattributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPv:bb.a
    i64 18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i318
    i64 15, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i334
    i64 23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i342
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i302: ; preds = %bb.al
  %i.hp = load i128, ptr %i.hn, align 1
  %i.hq = xor i128 %i.hp, 149478102136975460028172313620551660659
  %i.hr = getelementptr i8, ptr %i.hn, i64 16
  %i.hs = load i32, ptr %i.hr, align 1
  %i.ht = zext i32 %i.hs to i128
  %i.hu = xor i128 %i.ht, 1953393010
  %i.hv = or i128 %i.hq, %i.hu
  %i.hw = icmp ne i128 %i.hv, 0
  %i.hx = zext i1 %i.hw to i32
  %.not.i.i304 = icmp eq i32 %i.hx, 0
  br i1 %.not.i.i304, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit306, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i358

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit306: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i302
  %i.hy = and i64 %2, 255
  %i.hz = icmp eq i64 %i.hy, 9
  %i.ia = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i307 = select i1 %i.hz, i1 %i.ia, i1 false
  %.not.i308 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond979 = select i1 %or.cond.i307, i1 %.not.i308, i1 false
  br i1 %or.cond979, label %bb.am, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i358

bb.am:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit306
  %i.ib = call noundef i64 @_ZNK11OpenImageIO4v3_114ImageCacheImpl8heapsizeEv(ptr noundef nonnull align 64 dereferenceable(25240) %0)
  %i.ic = add i64 %i.ib, 25280
  store i64 %i.ic, ptr %3, align 8, !tbaa !746
  br label %bb.bn

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i310: ; preds = %bb.al
  %bcmp.i311 = call i32 @bcmp(ptr %i.hn, ptr nonnull @.str.198, i64 %i.ho)
  %.not.i.i312 = icmp eq i32 %bcmp.i311, 0
  br i1 %.not.i.i312, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit314, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit314: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i310
  %i.id = and i64 %2, 255
  %i.ie = icmp eq i64 %i.id, 9
  %i.if = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i315 = select i1 %i.ie, i1 %i.if, i1 false
  %.not.i316 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond980 = select i1 %or.cond.i315, i1 %.not.i316, i1 false
  br i1 %or.cond980, label %bb.an, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread

bb.an:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit314
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 25200
  %i.ih = load atomic i64, ptr %i.ig seq_cst, align 16
  store i64 %i.ih, ptr %3, align 8, !tbaa !746
  br label %bb.bn

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i318: ; preds = %bb.al
  %bcmp.i319 = call i32 @bcmp(ptr %i.hn, ptr nonnull @.str.199, i64 %i.ho)
  %.not.i.i320 = icmp eq i32 %bcmp.i319, 0
  br i1 %.not.i.i320, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit322, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i326

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit322: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i318
  %i.ii = and i64 %2, 255
  %i.ij = icmp eq i64 %i.ii, 7
  %i.ik = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i323 = select i1 %i.ij, i1 %i.ik, i1 false
  %.not.i324 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond981 = select i1 %or.cond.i323, i1 %.not.i324, i1 false
  br i1 %or.cond981, label %bb.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i326

bb.ao:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit322
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 25216
  %i.im = load atomic i32, ptr %i.il seq_cst, align 64
  store i32 %i.im, ptr %3, align 4, !tbaa !104
  br label %bb.bn

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i326: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i318, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit322
  %i.in = load i128, ptr %i.hn, align 1
  %i.io = xor i128 %i.in, 134846270911293712840547953953409692787
  %i.ip = getelementptr i8, ptr %i.hn, i64 16
  %i.iq = load i16, ptr %i.ip, align 1
  %i.ir = zext i16 %i.iq to i128
  %i.is = xor i128 %i.ir, 29806
  %i.it = or i128 %i.io, %i.is
  %i.iu = icmp ne i128 %i.it, 0
  %i.iv = zext i1 %i.iu to i32
  %.not.i.i328 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i328, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit330, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit330: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i326
  %i.iw = and i64 %2, 255
  %i.ix = icmp eq i64 %i.iw, 7
  %i.iy = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i331 = select i1 %i.ix, i1 %i.iy, i1 false
  %.not.i332 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond982 = select i1 %or.cond.i331, i1 %.not.i332, i1 false
  br i1 %or.cond982, label %bb.ap, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit330
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 25220
  %i.ja = load atomic i32, ptr %i.iz seq_cst, align 4
  store i32 %i.ja, ptr %3, align 4, !tbaa !104
  br label %bb.bn

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i334: ; preds = %bb.al
  %bcmp.i335 = call i32 @bcmp(ptr %i.hn, ptr nonnull @.str.201, i64 %i.ho)
  %.not.i.i336 = icmp eq i32 %bcmp.i335, 0
  br i1 %.not.i.i336, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit338, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit338: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i334
  %i.jb = and i64 %2, 255
  %i.jc = icmp eq i64 %i.jb, 7
  %i.jd = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i339 = select i1 %i.jc, i1 %i.jd, i1 false
  %.not.i340 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond983 = select i1 %or.cond.i339, i1 %.not.i340, i1 false
  br i1 %or.cond983, label %bb.aq, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread

bb.aq:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit338
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 25224
  %i.jf = load atomic i32, ptr %i.je seq_cst, align 8
  store i32 %i.jf, ptr %3, align 4, !tbaa !104
  br label %bb.bn

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i342: ; preds = %bb.al
  %bcmp.i343 = call i32 @bcmp(ptr %i.hn, ptr nonnull @.str.202, i64 %i.ho)
  %.not.i.i344 = icmp eq i32 %bcmp.i343, 0
  br i1 %.not.i.i344, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit346, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i350

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit346: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i342
  %i.jg = and i64 %2, 255
  %i.jh = icmp eq i64 %i.jg, 7
  %i.ji = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i347 = select i1 %i.jh, i1 %i.ji, i1 false
  %.not.i348 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond984 = select i1 %or.cond.i347, i1 %.not.i348, i1 false
  br i1 %or.cond984, label %bb.ar, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i350

bb.ar:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit346
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 25228
  %i.jk = load atomic i32, ptr %i.jj seq_cst, align 4
  store i32 %i.jk, ptr %3, align 4, !tbaa !104
  br label %bb.bn

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i350: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i342, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit346
  %i.jl = load i128, ptr %i.hn, align 1
  %i.jm = xor i128 %i.jl, 126875830850929720588513066187961234547
  %i.jn = getelementptr i8, ptr %i.hn, i64 7
  %i.jo = load i128, ptr %i.jn, align 1
  %i.jp = xor i128 %i.jo, 154763657756292772456393189957428014693
  %i.jq = or i128 %i.jm, %i.jp
  %i.jr = icmp ne i128 %i.jq, 0
  %i.js = zext i1 %i.jr to i32
  %.not.i.i352 = icmp eq i32 %i.js, 0
  br i1 %.not.i.i352, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit354, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit354: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i350
  %i.jt = and i64 %2, 255
  %i.ju = icmp eq i64 %i.jt, 7
  %i.jv = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i355 = select i1 %i.ju, i1 %i.jv, i1 false
  %.not.i356 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond985 = select i1 %or.cond.i355, i1 %.not.i356, i1 false
  br i1 %or.cond985, label %bb.as, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit354
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 25232
  %i.jx = load atomic i32, ptr %i.jw seq_cst, align 16
  store i32 %i.jx, ptr %3, align 4, !tbaa !104
  br label %bb.bn

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i358: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i302, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit306
  %bcmp.i359 = call i32 @bcmp(ptr nonnull %i.hn, ptr nonnull @.str.204, i64 %i.ho)
  %.not.i.i360 = icmp eq i32 %bcmp.i359, 0
  br i1 %.not.i.i360, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i358
  %i.jy = and i64 %2, 255
  %i.jz = icmp eq i64 %i.jy, 7
  %i.ka = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i363 = select i1 %i.jz, i1 %i.ka, i1 false
  %.not.i364 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond986 = select i1 %or.cond.i363, i1 %.not.i364, i1 false
  br i1 %or.cond986, label %bb.at, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread

bb.at:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 25236
  %i.kc = load atomic i32, ptr %i.kb seq_cst, align 4
  store i32 %i.kc, ptr %3, align 4, !tbaa !104
  br label %bb.bn

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i334, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit338, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i326, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit330, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i310, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit314, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i350, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit354, %bb.al, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i358
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %8, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.kd, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ke, i8 0, i64 136, i1 false)
  store float 1.000000e+00, ptr %i.kf, align 8, !tbaa !745
  %i.kg = getelementptr inbounds nuw i8, ptr %8, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kg, i8 0, i64 32, i1 false)
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl10mergestatsERNS0_20ImageCacheStatisticsE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef nonnull align 8 dereferenceable(232) %8)
  %i.kh = load ptr, ptr %1, align 8, !tbaa !693   ; 22 uses
  %i.ki = load i64, ptr %i.b, align 8, !tbaa !694 ; 18 uses
  switch i64 %i.ki, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498.thread [
    i64 20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i366
    i64 32, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i374
    i64 27, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i382
    i64 15, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i398
    i64 14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i406
    i64 17, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i422
    i64 16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430
    i64 18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i438
    i64 22, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i446
    i64 19, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i462
    i64 24, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i494
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i366: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %i.kj = load i128, ptr %i.kh, align 1
  %i.kk = xor i128 %i.kj, 132088896896915612305211386699748308083
  %i.kl = getelementptr i8, ptr %i.kh, i64 16
  %i.km = load i32, ptr %i.kl, align 1
  %i.kn = zext i32 %i.km to i128
  %i.ko = xor i128 %i.kn, 1936485473
  %i.kp = or i128 %i.kk, %i.ko
  %i.kq = icmp ne i128 %i.kp, 0
  %i.kr = zext i1 %i.kq to i32
  %.not.i.i368 = icmp eq i32 %i.kr, 0
  br i1 %.not.i.i368, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit370, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i390

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit370: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i366
  %i.ks = and i64 %2, 255
  %i.kt = icmp eq i64 %i.ks, 9
  %i.ku = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i371 = select i1 %i.kt, i1 %i.ku, i1 false
  %.not.i372 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond987 = select i1 %or.cond.i371, i1 %.not.i372, i1 false
  br i1 %or.cond987, label %bb.au, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i390

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit370
  %i.kv = load i64, ptr %8, align 8, !tbaa !1209
  store i64 %i.kv, ptr %3, align 8, !tbaa !746
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i374: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %bcmp.i375 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.206, i64 %i.ki)
  %.not.i.i376 = icmp eq i32 %bcmp.i375, 0
  br i1 %.not.i.i376, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit378, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit378: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i374
  %i.kw = and i64 %2, 255
  %i.kx = icmp eq i64 %i.kw, 9
  %i.ky = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i379 = select i1 %i.kx, i1 %i.ky, i1 false
  %.not.i380 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond988 = select i1 %or.cond.i379, i1 %.not.i380, i1 false
  br i1 %or.cond988, label %bb.av, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.av:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit378
  %i.kz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !1208
  store i64 %i.la, ptr %3, align 8, !tbaa !746
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i382: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %bcmp.i383 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.207, i64 %i.ki)
  %.not.i.i384 = icmp eq i32 %bcmp.i383, 0
  br i1 %.not.i.i384, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit386, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i510

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit386: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i382
  %i.lb = and i64 %2, 255
  %i.lc = icmp eq i64 %i.lb, 7
  %i.ld = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i387 = select i1 %i.lc, i1 %i.ld, i1 false
  %.not.i388 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond989 = select i1 %or.cond.i387, i1 %.not.i388, i1 false
  br i1 %or.cond989, label %bb.aw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i510

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit386
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !747
  store i32 %i.lf, ptr %3, align 4, !tbaa !104
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i390: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i366, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit370
  %bcmp.i391 = call i32 @bcmp(ptr nonnull %i.kh, ptr nonnull @.str.208, i64 %i.ki)
  %.not.i.i392 = icmp eq i32 %bcmp.i391, 0
  br i1 %.not.i.i392, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit394, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i478

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit394: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i390
  %i.lg = and i64 %2, 255
  %i.lh = icmp eq i64 %i.lg, 9
  %i.li = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i395 = select i1 %i.lh, i1 %i.li, i1 false
  %.not.i396 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond990 = select i1 %or.cond.i395, i1 %.not.i396, i1 false
  br i1 %or.cond990, label %bb.ax, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i478

bb.ax:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit394
  %i.lj = load i64, ptr %i.kd, align 8, !tbaa !1202
  store i64 %i.lj, ptr %3, align 8, !tbaa !746
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i398: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %bcmp.i399 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.209, i64 %i.ki)
  %.not.i.i400 = icmp eq i32 %bcmp.i399, 0
  br i1 %.not.i.i400, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit402, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i414

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit402: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i398
  %i.lk = and i64 %2, 255
  %i.ll = icmp eq i64 %i.lk, 9
  %i.lm = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i403 = select i1 %i.ll, i1 %i.lm, i1 false
  %.not.i404 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond991 = select i1 %or.cond.i403, i1 %.not.i404, i1 false
  br i1 %or.cond991, label %bb.ay, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i414

bb.ay:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit402
  %i.ln = load i64, ptr %i.kd, align 8, !tbaa !1202
  store i64 %i.ln, ptr %3, align 8, !tbaa !746
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i406: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %bcmp.i407 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.210, i64 %i.ki)
  %.not.i.i408 = icmp eq i32 %bcmp.i407, 0
  br i1 %.not.i.i408, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit410, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit410: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i406
  %i.lo = and i64 %2, 255
  %i.lp = icmp eq i64 %i.lo, 9
  %i.lq = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i411 = select i1 %i.lp, i1 %i.lq, i1 false
  %.not.i412 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond992 = select i1 %or.cond.i411, i1 %.not.i412, i1 false
  br i1 %or.cond992, label %bb.az, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.az:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit410
  %i.lr = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !1203
  store i64 %i.ls, ptr %3, align 8, !tbaa !746
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i414: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i398, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit402
  %bcmp.i415 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.211, i64 %i.ki)
  %.not.i.i416 = icmp eq i32 %bcmp.i415, 0
  br i1 %.not.i.i416, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit418, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit418: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i414
  %i.lt = and i64 %2, 255
  %i.lu = icmp eq i64 %i.lt, 9
  %i.lv = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i419 = select i1 %i.lu, i1 %i.lv, i1 false
  %.not.i420 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond993 = select i1 %or.cond.i419, i1 %.not.i420, i1 false
  br i1 %or.cond993, label %bb.ba, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit418
  %i.lw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !748
  store i64 %i.lx, ptr %3, align 8, !tbaa !746
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i422: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %bcmp.i423 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.212, i64 %i.ki)
  %.not.i.i424 = icmp eq i32 %bcmp.i423, 0
  br i1 %.not.i.i424, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit426, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit426: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i422
  %i.ly = and i64 %2, 255
  %i.lz = icmp eq i64 %i.ly, 7
  %i.ma = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i427 = select i1 %i.lz, i1 %i.ma, i1 false
  %.not.i428 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond994 = select i1 %or.cond.i427, i1 %.not.i428, i1 false
  br i1 %or.cond994, label %bb.bb, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit426
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !749
  store i32 %i.mc, ptr %3, align 4, !tbaa !104
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %bcmp.i431 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.213, i64 %i.ki)
  %.not.i.i432 = icmp eq i32 %bcmp.i431, 0
  br i1 %.not.i.i432, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430
  %i.md = and i64 %2, 255
  %i.me = icmp eq i64 %i.md, 11
  %i.mf = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i435 = select i1 %i.me, i1 %i.mf, i1 false
  %.not.i436 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond995 = select i1 %or.cond.i435, i1 %.not.i436, i1 false
  br i1 %or.cond995, label %bb.bc, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.bc:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434
  %i.mg = load double, ptr %i.ke, align 8, !tbaa !1205
  %i.mh = fptrunc double %i.mg to float
  store float %i.mh, ptr %3, align 4, !tbaa !714
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i438: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %bcmp.i439 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.214, i64 %i.ki)
  %.not.i.i440 = icmp eq i32 %bcmp.i439, 0
  br i1 %.not.i.i440, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit442, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit442: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i438
  %i.mi = and i64 %2, 255
  %i.mj = icmp eq i64 %i.mi, 11
  %i.mk = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i443 = select i1 %i.mj, i1 %i.mk, i1 false
  %.not.i444 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond996 = select i1 %or.cond.i443, i1 %.not.i444, i1 false
  br i1 %or.cond996, label %bb.bd, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.bd:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit442
  %i.ml = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !1206
  %i.mn = fptrunc double %i.mm to float
  store float %i.mn, ptr %3, align 4, !tbaa !714
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i446: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %bcmp.i447 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.215, i64 %i.ki)
  %.not.i.i448 = icmp eq i32 %bcmp.i447, 0
  br i1 %.not.i.i448, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit450, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i454

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit450: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i446
  %i.mo = and i64 %2, 255
  %i.mp = icmp eq i64 %i.mo, 11
  %i.mq = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i451 = select i1 %i.mp, i1 %i.mq, i1 false
  %.not.i452 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond997 = select i1 %or.cond.i451, i1 %.not.i452, i1 false
  br i1 %or.cond997, label %bb.be, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i454

bb.be:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit450
  %i.mr = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !1207
  %i.mt = fptrunc double %i.ms to float
  store float %i.mt, ptr %3, align 4, !tbaa !714
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i454: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i446, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit450
  %i.mu = load i128, ptr %i.kh, align 1
  %i.mv = xor i128 %i.mu, 146762448802386433135755872325483983987
  %i.mw = getelementptr i8, ptr %i.kh, i64 6
  %i.mx = load i128, ptr %i.mw, align 1
  %i.my = xor i128 %i.mx, 134820126804858151152259495331008703593
  %i.mz = or i128 %i.mv, %i.my
  %i.na = icmp ne i128 %i.mz, 0
  %i.nb = zext i1 %i.na to i32
  %.not.i.i456 = icmp eq i32 %i.nb, 0
  br i1 %.not.i.i456, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit458, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i486

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit458: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i454
  %i.nc = and i64 %2, 255
  %i.nd = icmp eq i64 %i.nc, 11
  %i.ne = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i459 = select i1 %i.nd, i1 %i.ne, i1 false
  %.not.i460 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond998 = select i1 %or.cond.i459, i1 %.not.i460, i1 false
  br i1 %or.cond998, label %bb.bf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i486

bb.bf:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit458
  %i.nf = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !1210
  %i.nh = fptrunc double %i.ng to float
  store float %i.nh, ptr %3, align 4, !tbaa !714
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i462: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %bcmp.i463 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.217, i64 %i.ki)
  %.not.i.i464 = icmp eq i32 %bcmp.i463, 0
  br i1 %.not.i.i464, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit466, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i470

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit466: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i462
  %i.ni = and i64 %2, 255
  %i.nj = icmp eq i64 %i.ni, 11
  %i.nk = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i467 = select i1 %i.nj, i1 %i.nk, i1 false
  %.not.i468 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond999 = select i1 %or.cond.i467, i1 %.not.i468, i1 false
  br i1 %or.cond999, label %bb.bg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i470

bb.bg:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit466
  %i.nl = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !1204
  %i.nn = fptrunc double %i.nm to float
  store float %i.nn, ptr %3, align 4, !tbaa !714
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i470: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i462, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit466
  %i.no = load i128, ptr %i.kh, align 1
  %i.np = xor i128 %i.no, 154685772825259182144576106724514165875
  %i.nq = getelementptr i8, ptr %i.kh, i64 3
  %i.nr = load i128, ptr %i.nq, align 1
  %i.ns = xor i128 %i.nr, 134820126804855723856534680693933226612
  %i.nt = or i128 %i.np, %i.ns
  %i.nu = icmp ne i128 %i.nt, 0
  %i.nv = zext i1 %i.nu to i32
  %.not.i.i472 = icmp eq i32 %i.nv, 0
  br i1 %.not.i.i472, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit474, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit474: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i470
  %i.nw = and i64 %2, 255
  %i.nx = icmp eq i64 %i.nw, 11
  %i.ny = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i475 = select i1 %i.nx, i1 %i.ny, i1 false
  %.not.i476 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond1000 = select i1 %or.cond.i475, i1 %.not.i476, i1 false
  br i1 %or.cond1000, label %bb.bh, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.bh:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit474
  %i.nz = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !1211
  %i.ob = fptrunc double %i.oa to float
  store float %i.ob, ptr %3, align 4, !tbaa !714
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i478: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i390, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit394
  %bcmp.i479 = call i32 @bcmp(ptr nonnull %i.kh, ptr nonnull @.str.219, i64 %i.ki)
  %.not.i.i480 = icmp eq i32 %bcmp.i479, 0
  br i1 %.not.i.i480, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit482, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit482: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i478
  %i.oc = and i64 %2, 255
  %i.od = icmp eq i64 %i.oc, 9
  %i.oe = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i483 = select i1 %i.od, i1 %i.oe, i1 false
  %.not.i484 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond1001 = select i1 %or.cond.i483, i1 %.not.i484, i1 false
  br i1 %or.cond1001, label %bb.bi, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.bi:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit482
  %i.of = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.og = load i64, ptr %i.of, align 8, !tbaa !2243
  store i64 %i.og, ptr %3, align 8, !tbaa !746
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i486: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i454, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit458
  %bcmp.i487 = call i32 @bcmp(ptr nonnull %i.kh, ptr nonnull @.str.220, i64 %i.ki)
  %.not.i.i488 = icmp eq i32 %bcmp.i487, 0
  br i1 %.not.i.i488, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit490, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit490: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i486
  %i.oh = and i64 %2, 255
  %i.oi = icmp eq i64 %i.oh, 9
  %i.oj = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i491 = select i1 %i.oi, i1 %i.oj, i1 false
  %.not.i492 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond1002 = select i1 %or.cond.i491, i1 %.not.i492, i1 false
  br i1 %or.cond1002, label %bb.bj, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.bj:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit490
  %i.ok = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !2244
  store i64 %i.ol, ptr %3, align 8, !tbaa !746
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i494: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  %bcmp.i495 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.221, i64 %i.ki)
  %.not.i.i496 = icmp eq i32 %bcmp.i495, 0
  br i1 %.not.i.i496, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i494
  %i.om = and i64 %2, 255
  %i.on = icmp eq i64 %i.om, 9
  %i.oo = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i499 = select i1 %i.on, i1 %i.oo, i1 false
  %.not.i500 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond1003 = select i1 %or.cond.i499, i1 %.not.i500, i1 false
  br i1 %or.cond1003, label %bb.bk, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.bk:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498
  %i.op = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !2245
  store i64 %i.oq, ptr %3, align 8, !tbaa !746
  br label %.thread933

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498.thread: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  switch i64 %i.ki, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread [
    i64 25, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i502
    i64 27, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i510
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i502: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498.thread
  %bcmp.i503 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.222, i64 %i.ki)
  %.not.i.i504 = icmp eq i32 %bcmp.i503, 0
  br i1 %.not.i.i504, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit506, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit506: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i502
  %i.or = and i64 %2, 255
  %i.os = icmp eq i64 %i.or, 9
  %i.ot = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i507 = select i1 %i.os, i1 %i.ot, i1 false
  %.not.i508 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond1004 = select i1 %or.cond.i507, i1 %.not.i508, i1 false
  br i1 %or.cond1004, label %bb.bl, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.bl:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit506
  %i.ou = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !1248
  store i64 %i.ov, ptr %3, align 8, !tbaa !746
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i510: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i382, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit386, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498.thread
  %bcmp.i511 = call i32 @bcmp(ptr %i.kh, ptr nonnull @.str.223, i64 %i.ki)
  %.not.i.i512 = icmp eq i32 %bcmp.i511, 0
  br i1 %.not.i.i512, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i510
  %i.ow = and i64 %2, 255
  %i.ox = icmp eq i64 %i.ow, 9
  %i.oy = icmp eq i8 %.sroa.57.0.extract.trunc, 1
  %or.cond.i515 = select i1 %i.ox, i1 %i.oy, i1 false
  %.not.i516 = icmp eq i64 %.sroa.116861.0.extract.shift, 0
  %or.cond1005 = select i1 %or.cond.i515, i1 %.not.i516, i1 false
  br i1 %or.cond1005, label %bb.bm, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread

bb.bm:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514
  %i.oz = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !1248
  store i64 %i.pa, ptr %3, align 8, !tbaa !746
  br label %.thread933

.thread933:                                       ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.bn

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i494, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i502, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit506, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i486, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit490, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i478, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit482, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i470, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit474, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i438, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit442, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i422, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit426, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i414, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit418, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i406, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit410, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i374, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit378, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498.thread, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i510
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit282.thread, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread, %.thread933, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit293, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.critedge6, %.critedge2, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.177 = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.t ], [ true, %bb.u ], [ true, %.critedge2 ], [ true, %.critedge6 ], [ true, %bb.ab ], [ true, %bb.ac ], [ true, %bb.ad ], [ true, %bb.ae ], [ true, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit293 ], [ true, %bb.am ], [ true, %bb.an ], [ true, %bb.ao ], [ true, %bb.ap ], [ true, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ], [ true, %.thread933 ], [ false, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread ], [ false, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit282.thread ]
  ret i1 %.177
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN9Imath_3_18Matrix44IfEaSERKS1_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #4 align 2 !guid !2246 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !714
  store float %i.a, ptr %0, align 4, !tbaa !714
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !714
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !714
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !714
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.f, ptr %i.g, align 4, !tbaa !714
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !714
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.i, ptr %i.j, align 4, !tbaa !714
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !714
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.l, ptr %i.m, align 4, !tbaa !714
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !714
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.o, ptr %i.p, align 4, !tbaa !714
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !714
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.r, ptr %i.s, align 4, !tbaa !714
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load float, ptr %i.t, align 4, !tbaa !714
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.u, ptr %i.v, align 4, !tbaa !714
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !714
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.x, ptr %i.y, align 4, !tbaa !714
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aa = load float, ptr %i.z, align 4, !tbaa !714
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.aa, ptr %i.ab, align 4, !tbaa !714
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !714
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ad, ptr %i.ae, align 4, !tbaa !714
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = load float, ptr %i.af, align 4, !tbaa !714
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.ag, ptr %i.ah, align 4, !tbaa !714
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !714
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.aj, ptr %i.ak, align 4, !tbaa !714
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.am = load float, ptr %i.al, align 4, !tbaa !714
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.am, ptr %i.an, align 4, !tbaa !714
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !714
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ap, ptr %i.aq, align 4, !tbaa !714
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.as = load float, ptr %i.ar, align 4, !tbaa !714
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.as, ptr %i.at, align 4, !tbaa !714
  ret ptr %0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil11starts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl20find_tile_main_cacheERKNS0_6TileIDERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !2247 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1208
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !1208
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8704
  %i.e = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8retrieveERKS2_RS5_b(ptr noundef nonnull align 64 dereferenceable(16448) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true)
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !1099   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 78 ; 2 uses
  %i.h = load volatile i8, ptr %i.g, align 2, !tbaa !1125, !range !977, !noundef !908
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK11OpenImageIO4v3_114ImageCacheTile17wait_pixels_readyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i
  %.sroa.0.02.i = phi i32 [ %.sroa.0.1.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i ], [ 1, %bb.b ] ; 5 uses
  %.not.i.i = icmp sgt i32 %.sroa.0.02.i, 16
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = icmp sgt i32 %.sroa.0.02.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.03.i.i.i = phi i32 [ %i.k, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !1054
  %i.k = add nuw nsw i32 %.03.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.k, %.sroa.0.02.i
  br i1 %exitcond.not.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i:           ; preds = %.lr.ph.i.i.i, %bb.c
  %i.l = shl nsw i32 %.sroa.0.02.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = tail call noundef i32 @sched_yield() #5  ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i: ; preds = %bb.d, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.02.i, %bb.d ], [ %i.l, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i ]
  %i.n = load volatile i8, ptr %i.g, align 2, !tbaa !1125, !range !977, !noundef !908
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZNK11OpenImageIO4v3_114ImageCacheTile17wait_pixels_readyEv.exit.loopexit, label %.lr.ph.i, !llvm.loop !13

_ZNK11OpenImageIO4v3_114ImageCacheTile17wait_pixels_readyEv.exit.loopexit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !1099
  br label %_ZNK11OpenImageIO4v3_114ImageCacheTile17wait_pixels_readyEv.exit

_ZNK11OpenImageIO4v3_114ImageCacheTile17wait_pixels_readyEv.exit: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheTile17wait_pixels_readyEv.exit.loopexit, %bb.b
  %i.p = phi ptr [ %.pre, %_ZNK11OpenImageIO4v3_114ImageCacheTile17wait_pixels_readyEv.exit.loopexit ], [ %i.f, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store atomic i32 1, ptr %i.q seq_cst, align 4
  br label %bb.k

.critedge:                                        ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !747
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !747
  %i.u = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #47 ; 9 uses
  store atomic i32 0, ptr %i.u seq_cst, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !1151
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.x, align 4, !tbaa !1122
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 77
  store i8 0, ptr %i.y, align 1, !tbaa !1115
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 78
  store volatile i8 0, ptr %i.z, align 2, !tbaa !1125
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i32 1, ptr %i.aa, align 8, !tbaa !1152
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1092
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !907, !nonnull !908, !align !909 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 25216
  %i.ag = atomicrmw add ptr %i.af, i32 1 seq_cst, align 4 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 25224 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 25220
  %i.aj = atomicrmw add ptr %i.ai, i32 1 seq_cst, align 4
  %i.ak = add i32 %i.aj, 1                        ; 2 uses
  br label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.e, %.critedge
  %i.al = load atomic i32, ptr %i.ah seq_cst, align 8 ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.al, %i.ak
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.am = cmpxchg weak ptr %i.ah, i32 %i.al, i32 %i.ak seq_cst seq_cst, align 4
  %i.an = extractvalue { i32, i1 } %i.am, 1
  br i1 %i.an, label %bb.f, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

bb.f:                                             ; preds = %bb.e, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 25200
  %i.ap = atomicrmw or ptr %i.ao, i64 0 seq_cst, align 8 ; 0 uses
  %i.aq = atomicrmw add ptr %i.u, i32 1 seq_cst, align 4 ; 0 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !1099  ; 7 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !1099
  %.not.i.i19 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i19, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = atomicrmw add ptr %i.ar, i32 -1 seq_cst, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.h, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1092
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 272
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !907, !nonnull !908, !align !909 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1114
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 25220
  %i.bb = atomicrmw add ptr %i.ba, i32 -1 seq_cst, align 4 ; 0 uses
end_hunk_0
