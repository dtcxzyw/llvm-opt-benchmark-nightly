Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/options_helper?download=true
inline.NumInlined: 4739
inline.NumDeleted: 2143
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7rocksdb14BuildDBOptionsERKNS_18ImmutableDBOptionsERKNS_16MutableDBOptionsERNS_9DBOptionsE:bb.a
  br i1 %.not8.i.i.i258, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i262, label %bb.at

bb.at:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i257
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 4 uses
  %i.hl = load atomic i64, ptr %i.hk acquire, align 8 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 4294967297
  %i.hn = trunc i64 %i.hl to i32                  ; 2 uses
  br i1 %i.hm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.hk, align 8, !tbaa !126
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i32 0, ptr %i.ho, align 4, !tbaa !127
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !129
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  tail call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #27, !inline_history !6
  %i.hs = load ptr, ptr %i.hj, align 8, !tbaa !129
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  tail call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #27, !inline_history !6
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i262

bb.av:                                            ; preds = %bb.at
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i9.i.i.i259 = icmp eq i8 %i.hv, 0
  br i1 %.not.i9.i.i.i259, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hw = add nsw i32 %i.hn, -1
  store i32 %i.hw, ptr %i.hk, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i260

bb.ax:                                            ; preds = %bb.av
  %i.hx = atomicrmw volatile add ptr %i.hk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i260

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i260: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i261 = phi i32 [ %i.hn, %bb.aw ], [ %i.hx, %bb.ax ]
  %i.hy = icmp eq i32 %.0.i.i.i.i.i261, 1
  br i1 %i.hy, label %bb.ay, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i262, !prof !78

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i260
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i262

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i262: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i260, %bb.au, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i257
  store ptr %i.hc, ptr %i.ha, align 8, !tbaa !124
  br label %_ZNSt10shared_ptrIN7rocksdb18WriteBufferManagerEEaSERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb18WriteBufferManagerEEaSERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN7rocksdb10StatisticsEEaSERKS2_.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i262
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !480
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !481
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !482
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !483
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ig = load i8, ptr %i.if, align 8, !tbaa !484, !range !138, !noundef !139
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 408
  store i8 %i.ig, ptr %i.ih, align 8, !tbaa !485
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.ik = load <2 x i64>, ptr %i.ii, align 8, !tbaa !154
  store <2 x i64> %i.ik, ptr %i.ij, align 8, !tbaa !154
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.im = load i8, ptr %i.il, align 8, !tbaa !486, !range !138, !noundef !139
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 432
  store i8 %i.im, ptr %i.in, align 8, !tbaa !487
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.iq = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %i.io) ; 0 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !488, !range !138, !noundef !139
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i8 %i.is, ptr %i.it, align 8, !tbaa !489
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !490
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !491
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.iz = load <4 x i8>, ptr %i.ix, align 1, !tbaa !54
  store <4 x i8> %i.iz, ptr %i.iy, align 8, !tbaa !54
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !492
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 488
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !493
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 496
  %i.jf = load <2 x i64>, ptr %i.jd, align 8, !tbaa !154
  store <2 x i64> %i.jf, ptr %i.je, align 8, !tbaa !154
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.jh = load i8, ptr %i.jg, align 8, !tbaa !494, !range !138, !noundef !139
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 512
  store i8 %i.jh, ptr %i.ji, align 8, !tbaa !495
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 353
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !496
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 513
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !497
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 354
  %i.jn = load i8, ptr %i.jm, align 2, !tbaa !498, !range !138, !noundef !139
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 514
  store i8 %i.jn, ptr %i.jo, align 2, !tbaa !499
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !156
  store ptr %i.jr, ptr %i.jq, align 8, !tbaa !156
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 528 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !124 ; 4 uses
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i264 = icmp eq ptr %i.ju, %i.jv
  br i1 %.not.i.i.i264, label %_ZNSt10shared_ptrIN7rocksdb5CacheEEaSERKS2_.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt10shared_ptrIN7rocksdb18WriteBufferManagerEEaSERKS2_.exit
  %.not7.i.i.i265 = icmp eq ptr %i.ju, null
  br i1 %.not7.i.i.i265, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i267, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 3 uses
  %i.jx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i266 = icmp eq i8 %i.jx, 0
  br i1 %.not.i.i.i.i266, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jy = load i32, ptr %i.jw, align 4, !tbaa !130
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jw, align 4, !tbaa !130
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i267

bb.bc:                                            ; preds = %bb.ba
  %i.ka = atomicrmw volatile add ptr %i.jw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i273 = load ptr, ptr %i.js, align 8, !tbaa !124
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i267

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i267: ; preds = %bb.bc, %bb.bb, %bb.az
  %i.kb = phi ptr [ %i.jv, %bb.az ], [ %i.jv, %bb.bb ], [ %.pr.pre.i.i.i273, %bb.bc ] ; 8 uses
  %.not8.i.i.i268 = icmp eq ptr %i.kb, null
  br i1 %.not8.i.i.i268, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i272, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i267
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 4 uses
  %i.kd = load atomic i64, ptr %i.kc acquire, align 8 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 4294967297
  %i.kf = trunc i64 %i.kd to i32                  ; 2 uses
  br i1 %i.ke, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.kc, align 8, !tbaa !126
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i32 0, ptr %i.kg, align 4, !tbaa !127
  %i.kh = load ptr, ptr %i.kb, align 8, !tbaa !129
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8
  tail call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #27, !inline_history !7
  %i.kk = load ptr, ptr %i.kb, align 8, !tbaa !129
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  tail call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #27, !inline_history !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i272

bb.bf:                                            ; preds = %bb.bd
  %i.kn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i9.i.i.i269 = icmp eq i8 %i.kn, 0
  br i1 %.not.i9.i.i.i269, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ko = add nsw i32 %i.kf, -1
  store i32 %i.ko, ptr %i.kc, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i270

bb.bh:                                            ; preds = %bb.bf
  %i.kp = atomicrmw volatile add ptr %i.kc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i270

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i270: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i271 = phi i32 [ %i.kf, %bb.bg ], [ %i.kp, %bb.bh ]
  %i.kq = icmp eq i32 %.0.i.i.i.i.i271, 1
  br i1 %i.kq, label %bb.bi, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i272, !prof !78

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i270
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i272

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i272: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i270, %bb.be, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i267
  store ptr %i.ju, ptr %i.js, align 8, !tbaa !124
  br label %_ZNSt10shared_ptrIN7rocksdb5CacheEEaSERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb5CacheEEaSERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN7rocksdb18WriteBufferManagerEEaSERKS2_.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i272
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !500
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 536
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !501
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.kx = load i8, ptr %i.kw, align 4, !tbaa !502, !range !138, !noundef !139
  %3 = load <8 x i8>, ptr %i.ku, align 8
  %i.ky = insertelement <8 x i8> %3, i8 %i.kx, i64 7
  %i.kz = shufflevector <8 x i8> %i.ky, <8 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 7, i32 3, i32 4, i32 5, i32 6>
  store <8 x i8> %i.kz, ptr %i.kv, align 8, !tbaa !71
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 391
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.lc = tail call <6 x i8> @llvm.masked.load.v6i8.p0(ptr nonnull align 1 %i.la, <6 x i1> <i1 true, i1 true, i1 true, i1 false, i1 false, i1 true>, <6 x i8> poison), !tbaa !54
  %i.ld = shufflevector <6 x i8> %i.lc, <6 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i8> %i.ld, ptr %i.lb, align 8, !tbaa !54
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 398
  %i.lf = load i8, ptr %i.le, align 2, !tbaa !503, !range !138, !noundef !139
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 556
  store i8 %i.lf, ptr %i.lg, align 4, !tbaa !504
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 397
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !505, !range !138, !noundef !139
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 290
  store i8 %i.li, ptr %i.lj, align 2, !tbaa !506
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 394
  %i.ll = load i8, ptr %i.lk, align 2, !tbaa !507, !range !138, !noundef !139
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 557
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !508
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !509
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 560
  store i64 %i.lo, ptr %i.lp, align 8, !tbaa !510
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.ls = load ptr, ptr %i.lq, align 8, !tbaa !157
  store ptr %i.ls, ptr %i.lr, align 8, !tbaa !157
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !124 ; 4 uses
  %i.lw = load ptr, ptr %i.lt, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i274 = icmp eq ptr %i.lv, %i.lw
  br i1 %.not.i.i.i274, label %_ZNSt10shared_ptrIN7rocksdb22FileChecksumGenFactoryEEaSERKS2_.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt10shared_ptrIN7rocksdb5CacheEEaSERKS2_.exit
  %.not7.i.i.i275 = icmp eq ptr %i.lv, null
  br i1 %.not7.i.i.i275, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i277, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 3 uses
  %i.ly = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i276 = icmp eq i8 %i.ly, 0
  br i1 %.not.i.i.i.i276, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lz = load i32, ptr %i.lx, align 4, !tbaa !130
  %i.ma = add nsw i32 %i.lz, 1
  store i32 %i.ma, ptr %i.lx, align 4, !tbaa !130
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i277

bb.bm:                                            ; preds = %bb.bk
  %i.mb = atomicrmw volatile add ptr %i.lx, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i283 = load ptr, ptr %i.lt, align 8, !tbaa !124
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i277

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i277: ; preds = %bb.bm, %bb.bl, %bb.bj
  %i.mc = phi ptr [ %i.lw, %bb.bj ], [ %i.lw, %bb.bl ], [ %.pr.pre.i.i.i283, %bb.bm ] ; 8 uses
  %.not8.i.i.i278 = icmp eq ptr %i.mc, null
  br i1 %.not8.i.i.i278, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i282, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i277
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 4 uses
  %i.me = load atomic i64, ptr %i.md acquire, align 8 ; 2 uses
  %i.mf = icmp eq i64 %i.me, 4294967297
  %i.mg = trunc i64 %i.me to i32                  ; 2 uses
  br i1 %i.mf, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.md, align 8, !tbaa !126
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  store i32 0, ptr %i.mh, align 4, !tbaa !127
  %i.mi = load ptr, ptr %i.mc, align 8, !tbaa !129
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8
  tail call void %i.mk(ptr noundef nonnull align 8 dereferenceable(16) %i.mc) #27, !inline_history !8
  %i.ml = load ptr, ptr %i.mc, align 8, !tbaa !129
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8
  tail call void %i.mn(ptr noundef nonnull align 8 dereferenceable(16) %i.mc) #27, !inline_history !8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i282

bb.bp:                                            ; preds = %bb.bn
  %i.mo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i9.i.i.i279 = icmp eq i8 %i.mo, 0
  br i1 %.not.i9.i.i.i279, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mp = add nsw i32 %i.mg, -1
  store i32 %i.mp, ptr %i.md, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i280

bb.br:                                            ; preds = %bb.bp
  %i.mq = atomicrmw volatile add ptr %i.md, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i280

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i280: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i281 = phi i32 [ %i.mg, %bb.bq ], [ %i.mq, %bb.br ]
  %i.mr = icmp eq i32 %.0.i.i.i.i.i281, 1
  br i1 %i.mr, label %bb.bs, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i282, !prof !78

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i280
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mc) #27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i282

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i282: ; preds = %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i280, %bb.bo, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i277
  store ptr %i.lv, ptr %i.lt, align 8, !tbaa !124
  br label %_ZNSt10shared_ptrIN7rocksdb22FileChecksumGenFactoryEEaSERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb22FileChecksumGenFactoryEEaSERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN7rocksdb5CacheEEaSERKS2_.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i282
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.mt = load i8, ptr %i.ms, align 8, !tbaa !511, !range !138, !noundef !139
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i8 %i.mt, ptr %i.mu, align 8, !tbaa !512
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !513
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 588
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !514
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !515
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 592
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !516
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 608
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.nc, ptr noundef nonnull align 8 dereferenceable(32) %i.nb)
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !517, !range !138, !noundef !139
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 600
  store i8 %i.ne, ptr %i.nf, align 8, !tbaa !518
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.nh = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.ni = load i64, ptr %i.ng, align 8, !tbaa !71
  store i64 %i.ni, ptr %i.nh, align 8, !tbaa !71
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.nk = load i8, ptr %i.nj, align 8, !tbaa !519
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 664
  store i8 %i.nk, ptr %i.nl, align 8, !tbaa !520
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.nn = load i8, ptr %i.nm, align 8, !tbaa !521, !range !138, !noundef !139
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 665
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !522
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.nq = load i8, ptr %i.np, align 8, !tbaa !523, !range !138, !noundef !139
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i8 %i.nq, ptr %i.nr, align 8, !tbaa !524
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !525, !range !138, !noundef !139
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 289
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !526
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.nw, ptr noundef nonnull align 8 dereferenceable(32) %i.nv)
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !527
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 704
  store i64 %i.ny, ptr %i.nz, align 8, !tbaa !528
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 712
  %i.oc = load <2 x i64>, ptr %i.oa, align 8, !tbaa !154
  store <2 x i64> %i.oc, ptr %i.ob, align 8, !tbaa !154
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !529
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 728
  store i64 %i.oe, ptr %i.of, align 8, !tbaa !530
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.oh = load i8, ptr %i.og, align 8, !tbaa !531
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 736
  store i8 %i.oh, ptr %i.oi, align 8, !tbaa !532
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 545
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !533
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 737
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !534
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.oo = load ptr, ptr %i.om, align 8, !tbaa !158
  store ptr %i.oo, ptr %i.on, align 8, !tbaa !158
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 656 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !124 ; 4 uses
  %i.os = load ptr, ptr %i.op, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i284 = icmp eq ptr %i.or, %i.os
  br i1 %.not.i.i.i284, label %_ZNSt10shared_ptrIN7rocksdb17CompactionServiceEEaSERKS2_.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt10shared_ptrIN7rocksdb22FileChecksumGenFactoryEEaSERKS2_.exit
  %.not7.i.i.i285 = icmp eq ptr %i.or, null
  br i1 %.not7.i.i.i285, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i287, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 3 uses
  %i.ou = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i286 = icmp eq i8 %i.ou, 0
  br i1 %.not.i.i.i.i286, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ov = load i32, ptr %i.ot, align 4, !tbaa !130
  %i.ow = add nsw i32 %i.ov, 1
  store i32 %i.ow, ptr %i.ot, align 4, !tbaa !130
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i287

bb.bw:                                            ; preds = %bb.bu
  %i.ox = atomicrmw volatile add ptr %i.ot, i32 1 acq_rel, align 4 ; 0 uses
end_hunk_0
