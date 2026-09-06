Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 343
begin_hunk_0_@_ZL29getTargetConstantBitsFromNodeN4llvm7SDValueEjRNS_5APIntERNS_15SmallVectorImplIS1_EEbb:bb.a
  %i.ji = icmp ult i32 %i.jc, 65
  br i1 %i.ji, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit340
  store i64 0, ptr %26, align 8, !tbaa !358
  br label %_ZN4llvm5APIntC2Ejmbb.exit341

bb.bv:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit340
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %26, i64 noundef 0, i1 noundef zeroext false) #38
  br label %_ZN4llvm5APIntC2Ejmbb.exit341

_ZN4llvm5APIntC2Ejmbb.exit341:                    ; preds = %bb.bu, %bb.bv
  %i.jj = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %i.jj, ptr %25, align 8, !tbaa !84
  %i.jk = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store i32 0, ptr %i.jk, align 8, !tbaa !634
  %i.jl = getelementptr inbounds nuw i8, ptr %25, i64 12
  store i32 64, ptr %i.jl, align 4, !tbaa !635
  call void @_ZN4llvm15SmallVectorImplINS_5APIntEE6assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(1040) %25, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %26)
  %i.jm = load i32, ptr %i.jh, align 8, !tbaa !644
  %i.jn = icmp ugt i32 %i.jm, 64
  br i1 %i.jn, label %bb.bw, label %_ZN4llvm5APIntD2Ev.exit342

bb.bw:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit341
  %i.jo = load ptr, ptr %26, align 8, !tbaa !358  ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %_ZN4llvm5APIntD2Ev.exit342, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZdaPv(ptr noundef nonnull %i.jo) #41
  br label %_ZN4llvm5APIntD2Ev.exit342

_ZN4llvm5APIntD2Ev.exit342:                       ; preds = %_ZN4llvm5APIntC2Ejmbb.exit341, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  %i.jq = load ptr, ptr %25, align 8, !tbaa !84
  %i.jr = call fastcc noundef zeroext i1 @"_ZZL29getTargetConstantBitsFromNodeN4llvm7SDValueEjRNS_5APIntERNS_15SmallVectorImplIS1_EEbbENK3$_2clEPKNS_8ConstantES2_S2_j"(ptr noundef nonnull %i.ja, ptr noundef nonnull align 8 dereferenceable(12) %i.jq, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 noundef 0) ; 2 uses
  br i1 %i.jr, label %bb.by, label %bb.cf

bb.by:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit342
  %i.js = load i32, ptr %i.jf, align 8, !tbaa !644
  %i.jt = icmp ult i32 %i.js, 65
  %i.ju = load ptr, ptr %24, align 8
  %.in.i.i = select i1 %i.jt, ptr %24, ptr %i.ju
  %i.jv = load i64, ptr %.in.i.i, align 8, !tbaa !358
  %i.jw = and i64 %i.jv, 1
  %.not537 = icmp eq i64 %i.jw, 0
  br i1 %.not537, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZN4llvm5APInt7setBitsEjj(ptr noundef nonnull align 8 dereferenceable(12) %24, i32 noundef 0, i32 noundef %i.je)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.jx = load ptr, ptr %25, align 8, !tbaa !84   ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !644
  %.not283 = icmp eq i32 %i.jz, %i.jc
  br i1 %.not283, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %27, ptr noundef nonnull align 8 dereferenceable(12) %i.jx, i32 noundef %i.jc) #38
  %i.ka = load ptr, ptr %25, align 8, !tbaa !84   ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !644
  %i.kd = icmp ult i32 %i.kc, 65
  br i1 %i.kd, label %_ZN4llvm5APIntD2Ev.exit343, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ke = load ptr, ptr %i.ka, align 8, !tbaa !358 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %_ZN4llvm5APIntD2Ev.exit343, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZdaPv(ptr noundef nonnull %i.ke) #41
  br label %_ZN4llvm5APIntD2Ev.exit343

_ZN4llvm5APIntD2Ev.exit343:                       ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.kg = load i64, ptr %27, align 8
  store i64 %i.kg, ptr %i.ka, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !644
  store i32 %i.ki, ptr %i.kb, align 8, !tbaa !644
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  %.pre585 = load ptr, ptr %25, align 8, !tbaa !84
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit343, %bb.ca
  %i.kj = phi ptr [ %.pre585, %_ZN4llvm5APIntD2Ev.exit343 ], [ %i.jx, %bb.ca ]
  %i.kk = add i32 %i.je, -1
  %i.kl = zext i32 %i.kk to i64
  call void @_ZN4llvm15SmallVectorImplINS_5APIntEE6appendEmRKS1_(ptr noundef nonnull align 8 dereferenceable(16) %25, i64 noundef %i.kl, ptr noundef nonnull align 8 dereferenceable(12) %i.kj)
  %i.km = load ptr, ptr %25, align 8, !tbaa !84
  %i.kn = load i32, ptr %i.jk, align 8, !tbaa !634
  %i.ko = zext i32 %i.kn to i64
  %i.kp = call fastcc noundef zeroext i1 @"_ZZL29getTargetConstantBitsFromNodeN4llvm7SDValueEjRNS_5APIntERNS_15SmallVectorImplIS1_EEbbENK3$_1clES2_NS_8ArrayRefIS1_EE"(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(12) %24, ptr %i.km, i64 %i.ko)
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit342, %bb.ce
  %.10 = phi i1 [ %i.kp, %bb.ce ], [ %.4499, %_ZN4llvm5APIntD2Ev.exit342 ] ; 2 uses
  call void @_ZN4llvm11SmallVectorINS_5APIntELj64EED2Ev(ptr noundef nonnull align 8 dead_on_return(1040) dereferenceable(1040) %25) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  %i.kq = load i32, ptr %i.jf, align 8, !tbaa !644
  %i.kr = icmp ugt i32 %i.kq, 64
  br i1 %i.kr, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.ks = load ptr, ptr %24, align 8, !tbaa !358  ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %i.ks) #41
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br i1 %i.jr, label %.thread502, label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZL32getTargetConstantPoolFromBasePtrN4llvm7SDValueE.exit.i, %bb.bq, %_ZL28getTargetConstantFromBasePtrN4llvm7SDValueE.exit, %bb.bl, %bb.ci
  %.14.ph = phi i1 [ %.10, %bb.ci ], [ %.4499, %bb.bl ], [ %.4499, %_ZL28getTargetConstantFromBasePtrN4llvm7SDValueE.exit ], [ %.4499, %bb.bq ], [ %.4499, %_ZL32getTargetConstantPoolFromBasePtrN4llvm7SDValueE.exit.i ]
  %.pr = load i32, ptr %i.ab, align 8, !tbaa !469
  br label %bb.cj

bb.cj:                                            ; preds = %thread-pre-split, %.thread504
  %i.ku = phi i32 [ %.pr, %thread-pre-split ], [ %i.ig, %.thread504 ]
  %.14 = phi i1 [ %.14.ph, %thread-pre-split ], [ %.4499, %.thread504 ] ; 2 uses
  %i.kv = icmp eq i32 %i.ku, 824
  br i1 %i.kv, label %bb.ck, label %.thread526

bb.ck:                                            ; preds = %bb.cj
  %i.kw = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4llvm9MemSDNode10getBasePtrEv(ptr noundef nonnull align 8 dereferenceable(112) %.fca.0.extract204)
  %.sroa.0121.0.copyload = load ptr, ptr %i.kw, align 8, !tbaa !466 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0121.0.copyload, i64 24
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !469 ; 2 uses
  %i.kz = and i32 %i.ky, -2
  %switch.i.i345 = icmp eq i32 %i.kz, 988
  br i1 %switch.i.i345, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0121.0.copyload, i64 40
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !639
  %.sroa.0.0.copyload.i.i350 = load ptr, ptr %i.lb, align 8, !tbaa !466 ; 2 uses
  %.phi.trans.insert.i.i351 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i350, i64 24
  %.pre.i.i352 = load i32, ptr %.phi.trans.insert.i.i351, align 8, !tbaa !469
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.lc = phi i32 [ %.pre.i.i352, %bb.cl ], [ %i.ky, %bb.ck ]
  %.sroa.0.0.i.i346 = phi ptr [ %.sroa.0.0.copyload.i.i350, %bb.cl ], [ %.sroa.0121.0.copyload, %bb.ck ] ; 2 uses
  switch i32 %i.lc, label %.thread526 [
    i32 43, label %_ZL32getTargetConstantPoolFromBasePtrN4llvm7SDValueE.exit.i347
    i32 18, label %_ZL32getTargetConstantPoolFromBasePtrN4llvm7SDValueE.exit.i347
  ]

_ZL32getTargetConstantPoolFromBasePtrN4llvm7SDValueE.exit.i347: ; preds = %bb.cm, %bb.cm
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i346, i64 96
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !658
  %.not8.i348 = icmp eq i32 %i.le, 0
  br i1 %.not8.i348, label %_ZL28getTargetConstantFromBasePtrN4llvm7SDValueE.exit353, label %.thread526

_ZL28getTargetConstantFromBasePtrN4llvm7SDValueE.exit353: ; preds = %_ZL32getTargetConstantPoolFromBasePtrN4llvm7SDValueE.exit.i347
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i346, i64 88
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !358 ; 3 uses
  %.not284 = icmp eq ptr %i.lg, null
  br i1 %.not284, label %.thread526, label %bb.cn

bb.cn:                                            ; preds = %_ZL28getTargetConstantFromBasePtrN4llvm7SDValueE.exit353
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !629 ; 3 uses
  %i.lj = call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.li) #39 ; 2 uses
  %.fca.0.extract107 = extractvalue { i64, i8 } %i.lj, 0
  %.fca.1.extract108 = extractvalue { i64, i8 } %i.lj, 1
  %i.lk = trunc nuw i8 %.fca.1.extract108 to i1
  br i1 %i.lk, label %bb.co, label %_ZNK4llvm8TypeSizecvmEv.exit354

bb.co:                                            ; preds = %bb.cn
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit354:                  ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  %i.ll = getelementptr inbounds nuw i8, ptr %.fca.0.extract204, i64 88
  %.sroa.0.0.copyload.i355 = load i16, ptr %i.ll, align 8, !tbaa !346
  %.sroa.21.0..sroa_idx.i356 = getelementptr inbounds nuw i8, ptr %.fca.0.extract204, i64 96
  %.sroa.21.0.copyload.i357 = load ptr, ptr %.sroa.21.0..sroa_idx.i356, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i355, ptr %28, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %.sroa.21.0.copyload.i357, ptr %i.lm, align 8
  %i.ln = call { i64, i8 } @_ZNK4llvm3EVT18getStoreSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %28) ; 2 uses
  %.fca.1.extract100 = extractvalue { i64, i8 } %i.ln, 1
  %i.lo = trunc nuw i8 %.fca.1.extract100 to i1
  br i1 %i.lo, label %bb.cp, label %_ZNK4llvm8TypeSizecvmEv.exit360

bb.cp:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit354
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit360:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit354
  %.fca.0.extract99 = extractvalue { i64, i8 } %i.ln, 0
  %i.lp = trunc i64 %.fca.0.extract99 to i32      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  %i.lq = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lr = load i32, ptr %i.lq, align 8
  %i.ls = and i32 %i.lr, 254
  %spec.select.i361 = icmp eq i32 %i.ls, 18
  br i1 %spec.select.i361, label %bb.cq, label %.thread502

bb.cq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit360
  %i.lt = trunc i64 %.fca.0.extract107 to i32
  %i.lu = urem i32 %i.lt, %i.lp
  %.not285 = icmp eq i32 %i.lu, 0
  br i1 %.not285, label %bb.cr, label %.thread502

bb.cr:                                            ; preds = %bb.cq
  %i.lv = load i32, ptr %i.d, align 4, !tbaa !241 ; 2 uses
  %i.lw = urem i32 %i.lv, %i.lp
  %i.lx = udiv i32 %i.lv, %i.lp                   ; 4 uses
  %.not286 = icmp eq i32 %i.lw, 0
  br i1 %.not286, label %bb.cs, label %.thread502

bb.cs:                                            ; preds = %bb.cr
  %i.ly = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.li) #39 ; 4 uses
  %i.lz = udiv i32 %i.lp, %i.ly                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.ma = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 5 uses
  store i32 %i.lz, ptr %i.ma, align 8, !tbaa !644
  %i.mb = icmp ult i32 %i.lz, 65
  br i1 %i.mb, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i64 0, ptr %29, align 8, !tbaa !358
  br label %_ZN4llvm5APIntC2Ejmbb.exit362

bb.cu:                                            ; preds = %bb.cs
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %29, i64 noundef 0, i1 noundef zeroext false) #38
  br label %_ZN4llvm5APIntC2Ejmbb.exit362

_ZN4llvm5APIntC2Ejmbb.exit362:                    ; preds = %bb.ct, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  %i.mc = mul i32 %i.lx, %i.lz
  %i.md = zext i32 %i.mc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #38
  %i.me = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store i32 %i.ly, ptr %i.me, align 8, !tbaa !644
  %i.mf = icmp ult i32 %i.ly, 65
  br i1 %i.mf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit362
  store i64 0, ptr %31, align 8, !tbaa !358
  br label %_ZN4llvm5APIntC2Ejmbb.exit363

bb.cw:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit362
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %31, i64 noundef 0, i1 noundef zeroext false) #38
  br label %_ZN4llvm5APIntC2Ejmbb.exit363

_ZN4llvm5APIntC2Ejmbb.exit363:                    ; preds = %bb.cv, %bb.cw
  %i.mg = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %i.mg, ptr %30, align 8, !tbaa !84
  %i.mh = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i32 0, ptr %i.mh, align 8, !tbaa !634
  %i.mi = getelementptr inbounds nuw i8, ptr %30, i64 12
  store i32 64, ptr %i.mi, align 4, !tbaa !635
  call void @_ZN4llvm15SmallVectorImplINS_5APIntEE6assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(1040) %30, i64 noundef %i.md, ptr noundef nonnull align 8 dereferenceable(12) %31)
  %i.mj = load i32, ptr %i.me, align 8, !tbaa !644
  %i.mk = icmp ugt i32 %i.mj, 64
  br i1 %i.mk, label %bb.cx, label %_ZN4llvm5APIntD2Ev.exit364

bb.cx:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit363
  %i.ml = load ptr, ptr %31, align 8, !tbaa !358  ; 2 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %_ZN4llvm5APIntD2Ev.exit364, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @_ZdaPv(ptr noundef nonnull %i.ml) #41
  br label %_ZN4llvm5APIntD2Ev.exit364

_ZN4llvm5APIntD2Ev.exit364:                       ; preds = %_ZN4llvm5APIntC2Ejmbb.exit363, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  %.not287554 = icmp ugt i32 %i.ly, %i.lp
  br i1 %.not287554, label %._crit_edge557, label %.lr.ph556

.lr.ph556:                                        ; preds = %_ZN4llvm5APIntD2Ev.exit364
  %.not288550 = icmp eq i32 %i.lx, 1
  %i.mn = zext i32 %i.lz to i64
  br label %bb.cz

bb.cz:                                            ; preds = %.lr.ph556, %._crit_edge553
  %indvars.iv573.a = phi i64 [ 0, %.lr.ph556 ], [ %indvars.iv.next574.a, %._crit_edge553 ] ; 4 uses
  %i.mo = trunc nuw i64 %indvars.iv573.a to i32   ; 3 uses
  %i.mp = call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, i32 noundef %i.mo) #38
  %i.mq = load ptr, ptr %30, align 8, !tbaa !84
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.mq, i64 %indvars.iv573.a
  %i.ms = call fastcc noundef zeroext i1 @"_ZZL29getTargetConstantBitsFromNodeN4llvm7SDValueEjRNS_5APIntERNS_15SmallVectorImplIS1_EEbbENK3$_2clEPKNS_8ConstantES2_S2_j"(ptr noundef %i.mp, ptr noundef nonnull align 8 dereferenceable(12) %i.mr, ptr noundef nonnull align 8 dereferenceable(12) %29, i32 noundef %i.mo)
  br i1 %i.ms, label %.preheader, label %.loopexit542

.preheader:                                       ; preds = %bb.cz
  br i1 %.not288550, label %._crit_edge553, label %.lr.ph552

._crit_edge553:                                   ; preds = %_ZN4llvm5APIntaSERKS0_.exit, %.preheader
  %indvars.iv.next574.a = add nuw nsw i64 %indvars.iv573.a, 1 ; 2 uses
  %.not287 = icmp eq i64 %indvars.iv.next574.a, %i.mn
  br i1 %.not287, label %._crit_edge557, label %bb.cz, !llvm.loop !1484

.lr.ph552:                                        ; preds = %.preheader, %_ZN4llvm5APIntaSERKS0_.exit
  %indvars.iv570 = phi i64 [ %indvars.iv.next571, %_ZN4llvm5APIntaSERKS0_.exit ], [ 1, %.preheader ] ; 2 uses
  %i.mt = load ptr, ptr %30, align 8, !tbaa !84   ; 2 uses
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %indvars.iv573.a ; 3 uses
  %49 = trunc nuw i64 %indvars.iv570 to i32
  %i.mv = mul i32 %i.lz, %49
  %i.mw = add i32 %i.mv, %i.mo
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.mx ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !644
  %i.nb = icmp ult i32 %i.na, 65
  br i1 %i.nb, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %.lr.ph552
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !644 ; 2 uses
  %i.ne = icmp ult i32 %i.nd, 65
  br i1 %i.ne, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.nf = load i64, ptr %i.mu, align 8, !tbaa !358
  store i64 %i.nf, ptr %i.my, align 8, !tbaa !358
  store i32 %i.nd, ptr %i.mz, align 8, !tbaa !644
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.dc:                                            ; preds = %bb.da, %.lr.ph552
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.my, ptr noundef nonnull align 8 dereferenceable(12) %i.mu) #38
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %bb.db, %bb.dc
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next571 to i32
  %.not288 = icmp eq i32 %i.lx, %indvars
  br i1 %.not288, label %._crit_edge553, label %.lr.ph552, !llvm.loop !1485

._crit_edge557:                                   ; preds = %._crit_edge553, %_ZN4llvm5APIntD2Ev.exit364
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #38
  %i.ng = load i32, ptr %i.ma, align 8, !tbaa !644
  %i.nh = mul i32 %i.ng, %i.lx
  call void @_ZN4llvm5APInt8getSplatEjRKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %32, i32 noundef %i.nh, ptr noundef nonnull align 8 dereferenceable(12) %29) #38
  %i.ni = load i32, ptr %i.ma, align 8, !tbaa !644
  %i.nj = icmp ult i32 %i.ni, 65
  br i1 %i.nj, label %_ZN4llvm5APIntD2Ev.exit366, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge557
  %i.nk = load ptr, ptr %29, align 8, !tbaa !358  ; 2 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %_ZN4llvm5APIntD2Ev.exit366, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZdaPv(ptr noundef nonnull %i.nk) #41
  br label %_ZN4llvm5APIntD2Ev.exit366

_ZN4llvm5APIntD2Ev.exit366:                       ; preds = %bb.de, %bb.dd, %._crit_edge557
  %i.nm = load i64, ptr %32, align 8
  store i64 %i.nm, ptr %29, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !644
  store i32 %i.no, ptr %i.ma, align 8, !tbaa !644
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  %i.np = load ptr, ptr %30, align 8, !tbaa !84
  %i.nq = load i32, ptr %i.mh, align 8, !tbaa !634
  %i.nr = zext i32 %i.nq to i64
  %i.ns = call fastcc noundef zeroext i1 @"_ZZL29getTargetConstantBitsFromNodeN4llvm7SDValueEjRNS_5APIntERNS_15SmallVectorImplIS1_EEbbENK3$_1clES2_NS_8ArrayRefIS1_EE"(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(12) %29, ptr %i.np, i64 %i.nr)
  br label %.loopexit542

.loopexit542:                                     ; preds = %bb.cz, %_ZN4llvm5APIntD2Ev.exit366
  %.16 = phi i1 [ %i.ns, %_ZN4llvm5APIntD2Ev.exit366 ], [ false, %bb.cz ]
  call void @_ZN4llvm11SmallVectorINS_5APIntELj64EED2Ev(ptr noundef nonnull align 8 dead_on_return(1040) dereferenceable(1040) %30) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  %i.nt = load i32, ptr %i.ma, align 8, !tbaa !644
  %i.nu = icmp ugt i32 %i.nt, 64
  br i1 %i.nu, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %.loopexit542
  %i.nv = load ptr, ptr %29, align 8, !tbaa !358  ; 2 uses
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZdaPv(ptr noundef nonnull %i.nv) #41
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %.loopexit542
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br label %.thread502

.thread526:                                       ; preds = %_ZL32getTargetConstantPoolFromBasePtrN4llvm7SDValueE.exit.i347, %bb.cm, %_ZL28getTargetConstantFromBasePtrN4llvm7SDValueE.exit353, %bb.cj
  %i.nx = load i32, ptr %i.ab, align 8, !tbaa !469 ; 2 uses
  switch i32 %i.nx, label %thread-pre-split531 [
    i32 986, label %bb.di
    i32 166, label %bb.dv
  ]

bb.di:                                            ; preds = %.thread526
  %i.ny = getelementptr inbounds nuw i8, ptr %.fca.0.extract204, i64 40 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !639
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !473 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !469
  %i.od = icmp eq i32 %i.oc, 174
  br i1 %i.od, label %bb.dj, label %.thread502

bb.dj:                                            ; preds = %bb.di
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 40
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !639
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !473
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !469
  switch i32 %i.oi, label %.thread502 [
    i32 37, label %bb.dk
    i32 12, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj, %bb.dj
  %i.oj = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.ok = trunc i64 %i.oj to i32                  ; 4 uses
  %i.ol = load i32, ptr %i.d, align 4, !tbaa !241
  %i.om = udiv i32 %i.ol, %i.ok                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  %i.on = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store i32 %i.om, ptr %i.on, align 8, !tbaa !644
  %i.oo = icmp ult i32 %i.om, 65
  br i1 %i.oo, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i64 0, ptr %33, align 8, !tbaa !358
  br label %_ZN4llvm5APIntC2Ejmbb.exit368

bb.dm:                                            ; preds = %bb.dk
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %33, i64 noundef 0, i1 noundef zeroext false) #38
  br label %_ZN4llvm5APIntC2Ejmbb.exit368

_ZN4llvm5APIntC2Ejmbb.exit368:                    ; preds = %bb.dl, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  %i.op = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %i.op, ptr %34, align 8, !tbaa !84
  %i.oq = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store i32 0, ptr %i.oq, align 8, !tbaa !634
  %i.or = getelementptr inbounds nuw i8, ptr %34, i64 12
  store i32 64, ptr %i.or, align 4, !tbaa !635
  %i.os = load ptr, ptr %i.ny, align 8, !tbaa !639
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !473
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 40
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !639
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !473
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 88
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !655
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %35, ptr noundef nonnull align 8 dereferenceable(12) %i.oz, i32 noundef %i.ok) #38
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(12) %35)
  %i.pa = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !644
  %i.pc = icmp ugt i32 %i.pb, 64
  br i1 %i.pc, label %bb.dn, label %_ZN4llvm5APIntD2Ev.exit369

bb.dn:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit368
  %i.pd = load ptr, ptr %35, align 8, !tbaa !358  ; 2 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %_ZN4llvm5APIntD2Ev.exit369, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZdaPv(ptr noundef nonnull %i.pd) #41
  br label %_ZN4llvm5APIntD2Ev.exit369

_ZN4llvm5APIntD2Ev.exit369:                       ; preds = %_ZN4llvm5APIntC2Ejmbb.exit368, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  %i.pf = add i32 %i.om, -1
  %i.pg = zext i32 %i.pf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #38
  %i.ph = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store i32 %i.ok, ptr %i.ph, align 8, !tbaa !644
  %i.pi = icmp ult i32 %i.ok, 65
  br i1 %i.pi, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit369
  store i64 0, ptr %36, align 8, !tbaa !358
  br label %_ZN4llvm5APIntC2Ejmbb.exit370

bb.dq:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit369
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %36, i64 noundef 0, i1 noundef zeroext false) #38
  br label %_ZN4llvm5APIntC2Ejmbb.exit370

_ZN4llvm5APIntC2Ejmbb.exit370:                    ; preds = %bb.dp, %bb.dq
  call void @_ZN4llvm15SmallVectorImplINS_5APIntEE6appendEmRKS1_(ptr noundef nonnull align 8 dereferenceable(16) %34, i64 noundef %i.pg, ptr noundef nonnull align 8 dereferenceable(12) %36)
  %i.pj = load i32, ptr %i.ph, align 8, !tbaa !644
  %i.pk = icmp ugt i32 %i.pj, 64
  br i1 %i.pk, label %bb.dr, label %_ZN4llvm5APIntD2Ev.exit371

bb.dr:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit370
  %i.pl = load ptr, ptr %36, align 8, !tbaa !358  ; 2 uses
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %_ZN4llvm5APIntD2Ev.exit371, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_ZdaPv(ptr noundef nonnull %i.pl) #41
  br label %_ZN4llvm5APIntD2Ev.exit371

_ZN4llvm5APIntD2Ev.exit371:                       ; preds = %_ZN4llvm5APIntC2Ejmbb.exit370, %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  %i.pn = load ptr, ptr %34, align 8, !tbaa !84
  %i.po = load i32, ptr %i.oq, align 8, !tbaa !634
  %i.pp = zext i32 %i.po to i64
  %i.pq = call fastcc noundef zeroext i1 @"_ZZL29getTargetConstantBitsFromNodeN4llvm7SDValueEjRNS_5APIntERNS_15SmallVectorImplIS1_EEbbENK3$_1clES2_NS_8ArrayRefIS1_EE"(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(12) %33, ptr %i.pn, i64 %i.pp)
  call void @_ZN4llvm11SmallVectorINS_5APIntELj64EED2Ev(ptr noundef nonnull align 8 dead_on_return(1040) dereferenceable(1040) %34) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  %i.pr = load i32, ptr %i.on, align 8, !tbaa !644
  %i.ps = icmp ugt i32 %i.pr, 64
  br i1 %i.ps, label %bb.dt, label %_ZN4llvm5APIntD2Ev.exit372

bb.dt:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit371
  %i.pt = load ptr, ptr %33, align 8, !tbaa !358  ; 2 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %_ZN4llvm5APIntD2Ev.exit372, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @_ZdaPv(ptr noundef nonnull %i.pt) #41
  br label %_ZN4llvm5APIntD2Ev.exit372

_ZN4llvm5APIntD2Ev.exit372:                       ; preds = %_ZN4llvm5APIntD2Ev.exit371, %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  br label %.thread502

bb.dv:                                            ; preds = %.thread526
  %i.pv = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.pw = trunc i64 %i.pv to i32                  ; 3 uses
  %i.px = load i32, ptr %i.a, align 4, !tbaa !241
  %i.py = icmp uge i32 %i.px, %i.pw               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38
  %i.pz = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i32 1, ptr %i.pz, align 8, !tbaa !644
  store i64 0, ptr %37, align 8, !tbaa !358
end_hunk_0
begin_hunk_1_@_ZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbj:bb.a
bb.ar:                                            ; preds = %bb.aq
  %i.fg = getelementptr inbounds nuw i8, ptr %.2.val.i.i.i.i.i, i64 56
  %.sroa.018.022.i.i.i.i113.i.i.i.i.i = load ptr, ptr %i.fg, align 8, !tbaa !467 ; 2 uses
  %.not23.i.i.i.i114.i.i.i.i.i = icmp eq ptr %.sroa.018.022.i.i.i.i113.i.i.i.i.i, null
  br i1 %.not23.i.i.i.i114.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit", label %.lr.ph.i.i.i.i115.i.i.i.i.i

bb.as:                                            ; preds = %.lr.ph.i.i.i.i115.i.i.i.i.i
  %.214.i.i.i.i118.i.i.i.i.i = select i1 %i.fk, i32 0, i32 %.01224.i.i.i.i117.i.i.i.i.i ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i.i116.i.i.i.i.i, i64 32
  %.sroa.018.0.i.i.i.i120.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !tbaa !467 ; 2 uses
  %.not.i.i.i.i121.i.i.i.i.i = icmp eq ptr %.sroa.018.0.i.i.i.i120.i.i.i.i.i, null
  br i1 %.not.i.i.i.i121.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit123.i.i.i.i.i", label %.lr.ph.i.i.i.i115.i.i.i.i.i

.lr.ph.i.i.i.i115.i.i.i.i.i:                      ; preds = %bb.ar, %bb.as
  %.sroa.018.025.i.i.i.i116.i.i.i.i.i = phi ptr [ %.sroa.018.0.i.i.i.i120.i.i.i.i.i, %bb.as ], [ %.sroa.018.022.i.i.i.i113.i.i.i.i.i, %bb.ar ] ; 2 uses
  %.01224.i.i.i.i117.i.i.i.i.i = phi i32 [ %.214.i.i.i.i118.i.i.i.i.i, %bb.as ], [ 1, %bb.ar ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i.i116.i.i.i.i.i, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !468
  %i.fk = icmp eq i32 %i.fj, %.2.val30.i.i.i.i.i  ; 2 uses
  %i.fl = icmp eq i32 %.01224.i.i.i.i117.i.i.i.i.i, 0
  %cond.i.i.i.not.i119.i.i.i.i.i = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %cond.i.i.i.not.i119.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit", label %bb.as

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit123.i.i.i.i.i": ; preds = %bb.as
  %.not132.i.i.i.i.i = icmp eq i32 %.214.i.i.i.i118.i.i.i.i.i, 0
  br i1 %.not132.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.thread", label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1155": ; preds = %.lr.ph.i.i.i.i73.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 48
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1156": ; preds = %.lr.ph.i.i.i.i59.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 32
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1157": ; preds = %.lr.ph.i.i.i.i45.i.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit53.i.i.i.i.i"
  %i.fp = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1181": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit67.i.i.i.i.i"
  %i.fq = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 32
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1183": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit81.i.i.i.i.i"
  %i.fr = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 48
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1185": ; preds = %bb.n
  %i.fs = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1187": ; preds = %bb.m
  %i.ft = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1189": ; preds = %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1191": ; preds = %bb.o
  %i.fv = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1193": ; preds = %bb.s
  %i.fw = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 32
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1195": ; preds = %bb.r
  %i.fx = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 32
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1197": ; preds = %bb.u
  %i.fy = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 32
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1199": ; preds = %bb.t
  %i.fz = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 32
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1201": ; preds = %bb.x
  %i.ga = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 48
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1203": ; preds = %bb.w
  %i.gb = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 48
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1205": ; preds = %bb.z
  %i.gc = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 48
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1207": ; preds = %bb.y
  %i.gd = getelementptr inbounds nuw i8, ptr %.029217.i.i.i.i.i, i64 48
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %bb.i, %bb.j, %bb.k, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i87.i.i.i.i.i, %.lr.ph.i.i.i.i101.i.i.i.i.i, %.lr.ph.i.i.i.i115.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1181", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1183", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1185", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1187", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1189", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1191", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1193", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1195", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1197", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1199", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1201", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1203", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1205", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1207", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1157", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1156", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1155", %bb.ac, %bb.ad, %bb.ae, %bb.af, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit95.i.i.i.i.i", %bb.ai, %bb.aj, %bb.ak, %bb.al, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit109.i.i.i.i.i", %bb.ao, %bb.ap, %bb.aq, %bb.ar, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit123.i.i.i.i.i"
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit109.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %bb.ad ], [ %.029.lcssa.i.i.i.i.i, %bb.ac ], [ %.029.lcssa.i.i.i.i.i, %bb.af ], [ %i.fu, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1189" ], [ %.1.i.i.i.i.i, %bb.aj ], [ %.029.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit95.i.i.i.i.i" ], [ %.2.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit123.i.i.i.i.i" ], [ %i.fm, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1155" ], [ %.1.i.i.i.i.i, %bb.ak ], [ %.029.lcssa.i.i.i.i.i, %.lr.ph.i.i.i.i87.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.ai ], [ %i.fo, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1157" ], [ %.1.i.i.i.i.i, %bb.al ], [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i101.i.i.i.i.i ], [ %.2.i.i.i.i.i, %bb.ap ], [ %.029217.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i, %bb.ao ], [ %i.fn, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1156" ], [ %.029.lcssa.i.i.i.i.i, %bb.ae ], [ %.2.i.i.i.i.i, %bb.aq ], [ %.2.i.i.i.i.i, %bb.ar ], [ %i.ft, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1187" ], [ %.2.i.i.i.i.i, %.lr.ph.i.i.i.i115.i.i.i.i.i ], [ %i.fy, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1197" ], [ %i.gd, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1207" ], [ %i.gb, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1203" ], [ %i.fz, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1199" ], [ %i.fv, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1191" ], [ %i.fr, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1183" ], [ %i.fw, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1193" ], [ %i.gc, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1205" ], [ %i.fs, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1185" ], [ %i.ga, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1201" ], [ %i.fx, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1195" ], [ %i.fp, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit" ], [ %i.fq, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.loopexit1159.split.loop.exit1181" ], [ %.029217.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit.i.i.i.i.i" ], [ %.029217.i.i.i.i.i, %bb.k ], [ %.029217.i.i.i.i.i, %bb.j ], [ %.029217.i.i.i.i.i, %bb.i ], [ %.029217.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ge = icmp eq ptr %i.x, %.028.i.i.i.i.i
  br i1 %i.ge, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.thread", label %bb.ay

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.thread": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL24EltsFromConsecutiveLoadsN4llvm3EVTENS2_8ArrayRefINS2_7SDValueEEERKNS2_5SDLocERNS2_12SelectionDAGERKNS2_12X86SubtargetEbjE3$_0EclIPKS5_EEbT_.exit123.i.i.i.i.i", %._crit_edge.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  %i.gf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.gf, ptr %18, align 8, !tbaa !84
  %i.gg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  store i32 0, ptr %i.gg, align 8, !tbaa !634
  %i.gh = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  store i32 16, ptr %i.gh, align 4, !tbaa !635
  %.not5821053 = icmp eq i64 %3, 0
  br i1 %.not5821053, label %._crit_edge1056, label %.lr.ph1055

._crit_edge1056.loopexit:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.pre1104 = load ptr, ptr %18, align 8, !tbaa !84
  %.pre1105 = load i32, ptr %i.gg, align 8, !tbaa !634
  %i.gi = zext i32 %.pre1105 to i64
  br label %._crit_edge1056

._crit_edge1056:                                  ; preds = %._crit_edge1056.loopexit, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.thread"
  %i.gj = phi i64 [ %i.gi, %._crit_edge1056.loopexit ], [ 0, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.thread" ]
  %i.gk = phi ptr [ %.pre1104, %._crit_edge1056.loopexit ], [ %i.gf, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.thread" ]
  %.sroa.0448.0.copyload = load i16, ptr %17, align 8, !tbaa !346
  %.sroa.2450.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !472
  %i.gl = add nuw nsw i32 %8, 1
  %i.gm = call fastcc { ptr, i32 } @_ZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbj(i16 %.sroa.0448.0.copyload, ptr %.sroa.2450.0.copyload, ptr %i.gk, i64 %i.gj, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull align 8 dereferenceable(519752) %6, i1 noundef zeroext %7, i32 noundef %i.gl) ; 2 uses
  %.fca.0.extract444 = extractvalue { ptr, i32 } %i.gm, 0 ; 2 uses
  %.not922 = icmp eq ptr %.fca.0.extract444, null
  br i1 %.not922, label %.critedge584, label %bb.aw

.lr.ph1055:                                       ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.thread", %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.01054 = phi ptr [ %i.gz, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %2, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit.thread" ] ; 3 uses
  %.sroa.0460.0.copyload = load ptr, ptr %.01054, align 8, !tbaa !466 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0460.0.copyload, i64 24
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !469
  %i.gp = icmp eq i32 %i.go, 55
  br i1 %i.gp, label %bb.at, label %_ZN4llvm17peekThroughFreezeENS_7SDValueE.exit

bb.at:                                            ; preds = %.lr.ph1055
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0460.0.copyload, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !639 ; 2 uses
  %.sroa.0.0.in.sroa.speculate.load..i = load ptr, ptr %i.gr, align 8, !tbaa !466
  br label %_ZN4llvm17peekThroughFreezeENS_7SDValueE.exit

_ZN4llvm17peekThroughFreezeENS_7SDValueE.exit:    ; preds = %.lr.ph1055, %bb.at
  %.pn921 = phi ptr [ %i.gr, %bb.at ], [ %.01054, %.lr.ph1055 ]
  %.sroa.0.0.in.sroa.speculated.i = phi ptr [ %.sroa.0.0.in.sroa.speculate.load..i, %bb.at ], [ %.sroa.0460.0.copyload, %.lr.ph1055 ] ; 2 uses
  %.sroa.3.0.i.in = getelementptr inbounds nuw i8, ptr %.pn921, i64 8
  %.sroa.3.0.i = load i32, ptr %.sroa.3.0.i.in, align 8, !tbaa !241 ; 2 uses
  %i.gs = load i32, ptr %i.gg, align 8, !tbaa !634 ; 2 uses
  %i.gt = load i32, ptr %i.gh, align 4, !tbaa !635
  %.not.i606 = icmp ult i32 %i.gs, %i.gt
  br i1 %.not.i606, label %bb.av, label %bb.au, !prof !636

bb.au:                                            ; preds = %_ZN4llvm17peekThroughFreezeENS_7SDValueE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr %.sroa.0.0.in.sroa.speculated.i, i32 %.sroa.3.0.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.av:                                            ; preds = %_ZN4llvm17peekThroughFreezeENS_7SDValueE.exit
  %i.gu = zext i32 %i.gs to i64
  %i.gv = load ptr, ptr %18, align 8, !tbaa !84
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.gu ; 2 uses
  store ptr %.sroa.0.0.in.sroa.speculated.i, ptr %i.gw, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %.sroa.3.0.i, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.gx = load i32, ptr %i.gg, align 8, !tbaa !634
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gg, align 8, !tbaa !634
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.au, %bb.av
  %i.gz = getelementptr inbounds nuw i8, ptr %.01054, i64 16 ; 2 uses
  %.not582 = icmp eq ptr %i.gz, %i.x
  br i1 %.not582, label %._crit_edge1056.loopexit, label %.lr.ph1055

bb.aw:                                            ; preds = %._crit_edge1056
  %.fca.1.extract445 = extractvalue { ptr, i32 } %i.gm, 1
  %i.ha = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getFreezeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr nonnull %.fca.0.extract444, i32 %.fca.1.extract445) #38 ; 2 uses
  %.fca.0.extract437 = extractvalue { ptr, i32 } %i.ha, 0
  %.fca.1.extract438 = extractvalue { ptr, i32 } %i.ha, 1
  br label %.critedge584

.critedge584:                                     ; preds = %._crit_edge1056, %bb.aw
  %.sroa.36.0 = phi i32 [ %.fca.1.extract438, %bb.aw ], [ 0, %._crit_edge1056 ]
  %.sroa.0837.0 = phi ptr [ %.fca.0.extract437, %bb.aw ], [ null, %._crit_edge1056 ]
  %i.hb = load ptr, ptr %18, align 8, !tbaa !84   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gf
  br i1 %i.hc, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %.critedge584
  call void @free(ptr noundef %i.hb) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit: ; preds = %.critedge584, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %bb.hf

bb.ay:                                            ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL24EltsFromConsecutiveLoadsNS_3EVTES3_RKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjE3$_0EEbOT_T0_.exit"
  %i.hd = trunc i64 %3 to i32                     ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  %i.he = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 6 uses
  store i32 %i.hd, ptr %i.he, align 8, !tbaa !644, !alias.scope !1605
  %i.hf = icmp ult i32 %i.hd, 65
  %i.hg = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 10 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 7 uses
  br i1 %i.hf, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i64 0, ptr %19, align 8, !tbaa !358, !alias.scope !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  store i32 %i.hd, ptr %i.hg, align 8, !tbaa !644, !alias.scope !1606
  store i64 0, ptr %20, align 8, !tbaa !358, !alias.scope !1607
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  store i32 %i.hd, ptr %i.hh, align 8, !tbaa !644, !alias.scope !1608
  store i64 0, ptr %21, align 8, !tbaa !358, !alias.scope !1609
  br label %_ZN4llvm5APInt7getZeroEj.exit608

bb.ba:                                            ; preds = %bb.ay
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %19, i64 noundef 0, i1 noundef zeroext false) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  store i32 %i.hd, ptr %i.hg, align 8, !tbaa !644, !alias.scope !1607
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %20, i64 noundef 0, i1 noundef zeroext false) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  store i32 %i.hd, ptr %i.hh, align 8, !tbaa !644, !alias.scope !1609
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %21, i64 noundef 0, i1 noundef zeroext false) #38
  br label %_ZN4llvm5APInt7getZeroEj.exit608

_ZN4llvm5APInt7getZeroEj.exit608:                 ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  %i.hi = and i64 %3, 4294967295                  ; 7 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  store ptr %i.hj, ptr %22, align 8, !tbaa !84
  %i.hk = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %22, i64 12
  store i32 8, ptr %i.hl, align 4, !tbaa !635
  %i.hm = icmp samesign ugt i64 %i.hi, 8
  br i1 %i.hm, label %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit, label %_ZSt6fill_nIPPN4llvm10LoadSDNodeEmS2_ET_S4_T0_RKT1_.exit.i.i

_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit: ; preds = %_ZN4llvm5APInt7getZeroEj.exit608
  store i32 0, ptr %i.hk, align 8, !tbaa !634
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull %i.hj, i64 noundef %i.hi, i64 noundef 8) #38
  %i.hn = load ptr, ptr %22, align 8, !tbaa !84
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hi, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.hn, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !737
  store i32 %i.hd, ptr %i.hk, align 8, !tbaa !634
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  %i.ho = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  store ptr %i.ho, ptr %23, align 8, !tbaa !84
  %i.hp = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i32 8, ptr %i.hq, align 4, !tbaa !635
  store i32 0, ptr %i.hp, align 8, !tbaa !634
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull %i.ho, i64 noundef %i.hi, i64 noundef 8) #38
  %i.hr = load ptr, ptr %23, align 8, !tbaa !84
  call void @llvm.memset.p0.i64(ptr align 8 %i.hr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !673
  br label %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit

_ZSt6fill_nIPPN4llvm10LoadSDNodeEmS2_ET_S4_T0_RKT1_.exit.i.i: ; preds = %_ZN4llvm5APInt7getZeroEj.exit608
  %.not.i609 = icmp eq i64 %i.hi, 0
  br i1 %.not.i609, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i.thread, label %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit1062

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i.thread:   ; preds = %_ZSt6fill_nIPPN4llvm10LoadSDNodeEmS2_ET_S4_T0_RKT1_.exit.i.i
  store i32 %i.hd, ptr %i.hk, align 8, !tbaa !634
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  %i.hs = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %i.hs, ptr %23, align 8, !tbaa !84
  %i.ht = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i32 8, ptr %i.hu, align 4, !tbaa !635
  br label %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit

_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit1062: ; preds = %_ZSt6fill_nIPPN4llvm10LoadSDNodeEmS2_ET_S4_T0_RKT1_.exit.i.i
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.hi, 3    ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hj, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !737
  store i32 %i.hd, ptr %i.hk, align 8, !tbaa !634
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  %i.hv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  store ptr %i.hv, ptr %23, align 8, !tbaa !84
  %i.hw = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i32 8, ptr %i.hw, align 4, !tbaa !635
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hv, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !673
  %i.hx = getelementptr inbounds nuw i8, ptr %23, i64 8
  br label %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit

_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit:         ; preds = %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit1062, %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i.thread
  %i.hy = phi ptr [ %i.hp, %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit ], [ %i.ht, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i.thread ], [ %i.hx, %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit1062 ]
  %i.hz = phi ptr [ %i.ho, %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit ], [ %i.hs, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i.thread ], [ %i.hv, %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit.loopexit1062 ]
  store i32 %i.hd, ptr %i.hy, align 8, !tbaa !634
  %.not5701006.not = icmp eq i32 %i.hd, 0         ; 3 uses
  br i1 %.not5701006.not, label %_ZN4llvm5APInt6setBitEj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 8
  %wide.trip.count = and i64 %3, 4294967295
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.ca
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ca ] ; 13 uses
  %.05431008 = phi i32 [ -1, %.lr.ph ], [ %.3546.ph, %bb.ca ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %.sroa.0408.0.copyload = load ptr, ptr %i.ic, align 8, !tbaa !466
  %.sroa.2409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %.sroa.2409.0.copyload = load i32, ptr %.sroa.2409.0..sroa_idx, align 8, !tbaa !241
  %i.id = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0408.0.copyload, i32 %.sroa.2409.0.copyload) #38 ; 2 uses
  %.fca.0.extract404 = extractvalue { ptr, i32 } %i.id, 0 ; 7 uses
  %.fca.1.extract405 = extractvalue { ptr, i32 } %i.id, 1 ; 4 uses
  %.not568 = icmp eq ptr %.fca.0.extract404, null
  br i1 %.not568, label %_ZN4llvm5APInt6setBitEj.exit.thread877, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ie = getelementptr inbounds nuw i8, ptr %.fca.0.extract404, i64 24
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !469
  %i.ig = add i32 %i.if, -53
  %spec.select.i.i = icmp ult i32 %i.ig, 2
  br i1 %spec.select.i.i, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.ih = and i64 %indvars.iv, 63
  %i.ii = shl nuw i64 1, %i.ih                    ; 2 uses
  %i.ij = load i32, ptr %i.hh, align 8, !tbaa !644
  %i.ik = icmp ult i32 %i.ij, 65
  br i1 %i.ik, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.il = load i64, ptr %21, align 8, !tbaa !358
  %i.im = or i64 %i.il, %i.ii
  store i64 %i.im, ptr %21, align 8, !tbaa !358
  br label %bb.ca

bb.bf:                                            ; preds = %bb.bd
  %i.in = load ptr, ptr %21, align 8, !tbaa !358
  %i.io = lshr i64 %indvars.iv, 6
  %i.ip = and i64 %i.io, 67108863
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.ip ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !673
  %i.is = or i64 %i.ir, %i.ii
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !673
  br label %bb.ca

bb.bg:                                            ; preds = %bb.bc
  %i.it = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr nonnull %.fca.0.extract404, i32 %.fca.1.extract405) #38
  br i1 %i.it, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit:       ; preds = %bb.bg
  %i.iu = call noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr nonnull %.fca.0.extract404, i32 %.fca.1.extract405) #38
  br i1 %i.iu, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit
  %i.iv = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef nonnull %.fca.0.extract404) #38
  br i1 %i.iv, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread, label %bb.bk

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread: ; preds = %bb.bg, %bb.bh, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit
  %i.iw = and i64 %indvars.iv, 63
  %i.ix = shl nuw i64 1, %i.iw                    ; 2 uses
  %i.iy = load i32, ptr %i.hg, align 8, !tbaa !644
  %i.iz = icmp ult i32 %i.iy, 65
  br i1 %i.iz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread
  %i.ja = load i64, ptr %20, align 8, !tbaa !358
  %i.jb = or i64 %i.ja, %i.ix
  store i64 %i.jb, ptr %20, align 8, !tbaa !358
  br label %bb.ca

bb.bj:                                            ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread
  %i.jc = load ptr, ptr %20, align 8, !tbaa !358
  %i.jd = lshr i64 %indvars.iv, 6
  %i.je = and i64 %i.jd, 67108863
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.je ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !673
  %i.jh = or i64 %i.jg, %i.ix
  store i64 %i.jh, ptr %i.jf, align 8, !tbaa !673
  br label %bb.ca

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.ji = getelementptr inbounds nuw i8, ptr %.fca.0.extract404, i64 48
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !470
  %i.jk = zext i32 %.fca.1.extract405 to i64
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.jk ; 2 uses
  %.sroa.0.0.copyload.i.i.i621 = load i16, ptr %i.jl, align 8, !tbaa !346 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i.i621, ptr %15, align 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.ia, align 8
  %.not.i.i622 = icmp eq i16 %.sroa.0.0.copyload.i.i.i621, 0
  br i1 %.not.i.i622, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jm = zext i16 %.sroa.0.0.copyload.i.i.i621 to i64
  %i.jn = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.jm ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.jo, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.jn, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
end_hunk_1
begin_hunk_2_@_ZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbj:bb.a

bb.ca:                                            ; preds = %bb.bf, %bb.bj, %bb.be, %bb.bi, %bb.by, %bb.bz
  %.3546.ph = phi i32 [ %i.ky, %bb.bz ], [ %i.ky, %bb.by ], [ %.05431008, %bb.bi ], [ %.05431008, %bb.be ], [ %.05431008, %bb.bj ], [ %.05431008, %bb.bf ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4llvm5APInt6setBitEj.exit, label %bb.bb, !llvm.loop !1588

_ZN4llvm5APInt6setBitEj.exit:                     ; preds = %bb.ca, %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit
  %.0543.lcssa = phi i32 [ -1, %_ZN4llvm11SmallVectorIlLj8EEC2EmRKl.exit ], [ %.3546.ph, %bb.ca ] ; 3 uses
  %i.ll = load i32, ptr %i.hh, align 8, !tbaa !644
  %i.lm = icmp ult i32 %i.ll, 65                  ; 2 uses
  br i1 %i.lm, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit
  %i.ln = load i64, ptr %21, align 8, !tbaa !358
  %i.lo = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ln)
  %i.lp = trunc nuw nsw i64 %i.lo to i32
  br label %_ZNK4llvm5APInt8popcountEv.exit

bb.cc:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit
  %i.lq = call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %21) #39
  br label %_ZNK4llvm5APInt8popcountEv.exit

_ZNK4llvm5APInt8popcountEv.exit:                  ; preds = %bb.cb, %bb.cc
  %.0.i = phi i32 [ %i.lp, %bb.cb ], [ %i.lq, %bb.cc ]
  %i.lr = icmp eq i32 %.0.i, %i.hd
  br i1 %i.lr, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZNK4llvm5APInt8popcountEv.exit
  %.sroa.0380.0.copyload = load i16, ptr %17, align 8, !tbaa !346
  %.sroa.2382.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !472
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.ls = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0380.0.copyload, ptr %.sroa.2382.0.copyload) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  %.fca.0.extract376 = extractvalue { ptr, i32 } %i.ls, 0
  %.fca.1.extract377 = extractvalue { ptr, i32 } %i.ls, 1
  br label %_ZN4llvm5APInt6setBitEj.exit.thread877

bb.ce:                                            ; preds = %_ZNK4llvm5APInt8popcountEv.exit
  %i.lt = load i32, ptr %i.hg, align 8, !tbaa !644
  %i.lu = icmp ult i32 %i.lt, 65
  br i1 %i.lu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.lv = load i64, ptr %20, align 8, !tbaa !358
  %i.lw = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.lv)
  %i.lx = trunc nuw nsw i64 %i.lw to i32
  br label %_ZNK4llvm5APInt8popcountEv.exit635

bb.cg:                                            ; preds = %bb.ce
  %i.ly = call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %20) #39
  br label %_ZNK4llvm5APInt8popcountEv.exit635

_ZNK4llvm5APInt8popcountEv.exit635:               ; preds = %bb.cf, %bb.cg
  %.0.i634 = phi i32 [ %i.lx, %bb.cf ], [ %i.ly, %bb.cg ]
  br i1 %i.lm, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_ZNK4llvm5APInt8popcountEv.exit635
  %i.lz = load i64, ptr %21, align 8, !tbaa !358
  %i.ma = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.lz)
  %i.mb = trunc nuw nsw i64 %i.ma to i32
  br label %_ZNK4llvm5APInt8popcountEv.exit637

bb.ci:                                            ; preds = %_ZNK4llvm5APInt8popcountEv.exit635
  %i.mc = call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %21) #39
  br label %_ZNK4llvm5APInt8popcountEv.exit637

_ZNK4llvm5APInt8popcountEv.exit637:               ; preds = %bb.ch, %bb.ci
  %.0.i636 = phi i32 [ %i.mb, %bb.ch ], [ %i.mc, %bb.ci ]
  %i.md = add i32 %.0.i636, %.0.i634
  %i.me = icmp eq i32 %i.md, %i.hd
  br i1 %i.me, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %_ZNK4llvm5APInt8popcountEv.exit637
  %i.mf = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  %.sroa.0373.0.copyload = load i16, ptr %17, align 8, !tbaa !346 ; 2 uses
  %.sroa.2375.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !472 ; 2 uses
  br i1 %i.mf, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.mg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0373.0.copyload, ptr %.sroa.2375.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract369 = extractvalue { ptr, i32 } %i.mg, 0
  %.fca.1.extract370 = extractvalue { ptr, i32 } %i.mg, 1
  br label %_ZN4llvm5APInt6setBitEj.exit.thread877

bb.cl:                                            ; preds = %bb.cj
  %i.mh = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %5, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0373.0.copyload, ptr %.sroa.2375.0.copyload, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract362 = extractvalue { ptr, i32 } %i.mh, 0
  %.fca.1.extract363 = extractvalue { ptr, i32 } %i.mh, 1
  br label %_ZN4llvm5APInt6setBitEj.exit.thread877

bb.cm:                                            ; preds = %_ZNK4llvm5APInt8popcountEv.exit637
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !685 ; 6 uses
  %i.mk = load i32, ptr %i.he, align 8, !tbaa !644 ; 2 uses
  %i.ml = icmp ult i32 %i.mk, 65
  br i1 %i.ml, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.mm = load i64, ptr %19, align 8, !tbaa !358
  %i.mn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mm, i1 false)
  %i.mo = trunc nuw nsw i64 %i.mn to i32
  %..i = call i32 @llvm.umin.i32(i32 %i.mk, i32 %i.mo)
  br label %_ZNK4llvm5APInt11countr_zeroEv.exit

bb.co:                                            ; preds = %bb.cm
  %i.mp = call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %19) #39
  br label %_ZNK4llvm5APInt11countr_zeroEv.exit

_ZNK4llvm5APInt11countr_zeroEv.exit:              ; preds = %bb.cn, %bb.co
  %.0.i638 = phi i32 [ %..i, %bb.cn ], [ %i.mp, %bb.co ] ; 5 uses
  %i.mq = sext i32 %.0.i638 to i64                ; 4 uses
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.mq ; 3 uses
  %.sroa.0354.0.copyload = load ptr, ptr %i.mr, align 8, !tbaa !466
  %.sroa.2355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %.sroa.2355.0.copyload = load i32, ptr %.sroa.2355.0..sroa_idx, align 8, !tbaa !241
  %i.ms = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0354.0.copyload, i32 %.sroa.2355.0.copyload) #38 ; 2 uses
  %.fca.0.extract350 = extractvalue { ptr, i32 } %i.ms, 0
  %.fca.1.extract351 = extractvalue { ptr, i32 } %i.ms, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.mt = getelementptr inbounds nuw i8, ptr %.fca.0.extract350, i64 48
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !470
  %i.mv = zext i32 %.fca.1.extract351 to i64
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.mu, i64 %i.mv ; 2 uses
  %.sroa.0.0.copyload.i.i639 = load i16, ptr %i.mw, align 8, !tbaa !346
  %.sroa.21.0..sroa_idx.i.i640 = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.sroa.21.0.copyload.i.i641 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i640, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i639, ptr %24, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i641, ptr %i.mx, align 8
  %i.my = load ptr, ptr %22, align 8, !tbaa !84
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mq
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !737 ; 9 uses
  %i.nb = call { i64, i8 } @_ZNK4llvm3EVT18getStoreSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %24) ; 2 uses
  %.fca.1.extract337 = extractvalue { i64, i8 } %i.nb, 1
  %i.nc = trunc nuw i8 %.fca.1.extract337 to i1
  br i1 %i.nc, label %bb.cp, label %_ZNK4llvm8TypeSizecvmEv.exit644

bb.cp:                                            ; preds = %_ZNK4llvm5APInt11countr_zeroEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit644:                  ; preds = %_ZNK4llvm5APInt11countr_zeroEv.exit
  %.fca.0.extract336 = extractvalue { i64, i8 } %i.nb, 0
  %i.nd = trunc i64 %.fca.0.extract336 to i32     ; 6 uses
  %i.ne = lshr i32 %i.nd, 3                       ; 2 uses
  %i.nf = add nsw i32 %.0543.lcssa, 1
  %i.ng = sub i32 %i.nf, %.0.i638                 ; 2 uses
  %i.nh = mul i32 %i.ng, %i.nd                    ; 7 uses
  %i.ni = load ptr, ptr %23, align 8, !tbaa !84
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.mq
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !673
  %.not571 = icmp eq i64 %i.nk, 0
  br i1 %.not571, label %.preheader924, label %bb.gw

.preheader924:                                    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit644
  %.not572.not1010.not = icmp slt i32 %.0.i638, %.0543.lcssa
  br i1 %.not572.not1010.not, label %.lr.ph1014, label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread"

.lr.ph1014:                                       ; preds = %.preheader924
  %i.nl = zext nneg i32 %i.ne to i64              ; 2 uses
  %sext = shl i64 %3, 32
  %i.nm = ashr exact i64 %sext, 32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.na, i64 88
  %.sroa.21.0..sroa_idx.i.i647 = getelementptr inbounds nuw i8, ptr %i.na, i64 96
  %i.no = getelementptr inbounds nuw i8, ptr %12, i64 8
  %wide.trip.count1090 = sext i32 %.0543.lcssa to i64
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1014, %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882"
  %indvars.iv1088 = phi i64 [ %i.mq, %.lr.ph1014 ], [ %indvars.iv.next1089, %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882" ]
  %.05491011 = phi i1 [ true, %.lr.ph1014 ], [ %.1550, %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882" ] ; 4 uses
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, 1 ; 8 uses
  %i.np = and i64 %indvars.iv.next1089, 63
  %i.nq = shl nuw i64 1, %i.np                    ; 2 uses
  %i.nr = load i32, ptr %i.he, align 8, !tbaa !644
  %i.ns = icmp ult i32 %i.nr, 65                  ; 2 uses
  %i.nt = load ptr, ptr %19, align 8              ; 2 uses
  %i.nu = lshr i64 %indvars.iv.next1089, 6
  %i.nv = and i64 %i.nu, 67108863                 ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.nv
  %.in.i.i = select i1 %i.ns, ptr %19, ptr %i.nw
  %i.nx = load i64, ptr %.in.i.i, align 8, !tbaa !358
  %i.ny = and i64 %i.nx, %i.nq
  %.not906 = icmp eq i64 %i.ny, 0
  br i1 %.not906, label %bb.db, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nz = load ptr, ptr %22, align 8, !tbaa !84   ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv.next1089
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !737 ; 3 uses
  %i.oc = load ptr, ptr %23, align 8, !tbaa !84   ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next1089
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !673 ; 3 uses
  %.not.i645 = icmp eq i64 %i.oe, 0
  br i1 %.not.i645, label %._crit_edge.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.of = srem i64 %i.oe, %i.nl
  %i.og = sdiv i64 %i.oe, %i.nl
  %i.oh = icmp eq i64 %i.of, 0
  br i1 %i.oh, label %bb.ct, label %._crit_edge.i

bb.ct:                                            ; preds = %bb.cs
  %i.oi = sub nsw i64 %indvars.iv.next1089, %i.og ; 6 uses
  %i.oj = icmp sgt i64 %i.oi, -1
  %i.ok = icmp slt i64 %i.oi, %i.nm
  %or.cond901 = and i1 %i.oj, %i.ok
  br i1 %or.cond901, label %bb.cu, label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread"

bb.cu:                                            ; preds = %bb.ct
  %i.ol = and i64 %i.oi, 63
  %i.om = shl nuw i64 1, %i.ol
  %i.on = lshr i64 %i.oi, 6
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.on
  %.in.i.i.i = select i1 %i.ns, ptr %19, ptr %i.oo
  %i.op = load i64, ptr %.in.i.i.i, align 8, !tbaa !358
  %i.oq = and i64 %i.op, %i.om
  %.not29.i = icmp eq i64 %i.oq, 0
  br i1 %.not29.i, label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread", label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.oi
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !737
  %i.ot = icmp eq ptr %i.os, %i.ob
  br i1 %i.ot, label %.split, label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread"

.split:                                           ; preds = %bb.cv
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.oi
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !673
  %i.ow = icmp eq i64 %i.ov, 0
  br i1 %i.ow, label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882", label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread"

._crit_edge.i:                                    ; preds = %bb.cs, %bb.cr
  %i.ox = trunc i64 %indvars.iv.next1089 to i32
  %i.oy = sub i32 %i.ox, %.0.i638                 ; 3 uses
  %i.oz = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG30areNonVolatileConsecutiveLoadsEPNS_10LoadSDNodeES2_ji(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef %i.ob, ptr noundef %i.na, i32 noundef %i.ne, i32 noundef %i.oy) #38
  br i1 %i.oz, label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882", label %bb.cw

bb.cw:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %.sroa.0.0.copyload.i.i646 = load i16, ptr %i.nn, align 8, !tbaa !346 ; 3 uses
  %.sroa.21.0.copyload.i.i648 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i647, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i646, ptr %12, align 8
  store ptr %.sroa.21.0.copyload.i.i648, ptr %i.no, align 8
  %.not.i.i649 = icmp eq i16 %.sroa.0.0.copyload.i.i646, 0
  br i1 %.not.i.i649, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pa = zext i16 %.sroa.0.0.copyload.i.i646 to i64
  %i.pb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.pa ; 2 uses
  %i.pc = getelementptr i8, ptr %i.pb, i64 -16
  %.sroa.0.0.copyload.i.i.i650 = load i64, ptr %i.pc, align 16
  %.sroa.2.0..sroa_idx.i.i.i651 = getelementptr i8, ptr %i.pb, i64 -8
  %.sroa.2.0.copyload.i.i.i652 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i651, align 8
  %.fca.0.insert.i.i.i653 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i650, 0
  %.fca.1.insert.i.i.i654 = insertvalue { i64, i8 } %.fca.0.insert.i.i.i653, i8 %.sroa.2.0.copyload.i.i.i652, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

bb.cy:                                            ; preds = %bb.cw
  %i.pd = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i:            ; preds = %bb.cy, %bb.cx
  %.pn.i.i655 = phi { i64, i8 } [ %.fca.1.insert.i.i.i654, %bb.cx ], [ %i.pd, %bb.cy ] ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i8 } %.pn.i.i655, 1
  %i.pe = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.pe, label %bb.cz, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.cz:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  %.fca.0.extract.i = extractvalue { i64, i8 } %.pn.i.i655, 0
  %i.pf = trunc i64 %.fca.0.extract.i to i32      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %i.pg = mul i32 %i.oy, %i.nd
  %i.ph = urem i32 %i.pg, %i.pf
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %bb.da, label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread"

bb.da:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.pj = urem i32 %i.pf, %i.nd
  %i.pk = udiv i32 %i.pf, %i.nd
  %i.pl = icmp eq i32 %i.pj, 0
  br i1 %i.pl, label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit", label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread"

"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit": ; preds = %bb.da
  %i.pm = lshr i32 %i.pf, 3
  %i.pn = udiv i32 %i.oy, %i.pk
  %i.po = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG30areNonVolatileConsecutiveLoadsEPNS_10LoadSDNodeES2_ji(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef %i.ob, ptr noundef nonnull %i.na, i32 noundef %i.pm, i32 noundef %i.pn) #38
  br i1 %i.po, label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882", label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread"

bb.db:                                            ; preds = %bb.cq
  %i.pp = load i32, ptr %i.hg, align 8, !tbaa !644
  %i.pq = icmp ult i32 %i.pp, 65
  %i.pr = load ptr, ptr %20, align 8
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %i.nv
  %.in.i.i656 = select i1 %i.pq, ptr %20, ptr %i.ps
  %i.pt = load i64, ptr %.in.i.i656, align 8, !tbaa !358
  %i.pu = and i64 %i.pt, %i.nq
  %.not907 = icmp eq i64 %i.pu, 0
  %spec.select = select i1 %.not907, i1 %.05491011, i1 false
  br label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882"

"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882": ; preds = %._crit_edge.i, %.split, %bb.db, %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit"
  %.1550 = phi i1 [ %.05491011, %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit" ], [ %spec.select, %bb.db ], [ %.05491011, %.split ], [ %.05491011, %._crit_edge.i ] ; 2 uses
  %exitcond1091.not = icmp eq i64 %indvars.iv.next1089, %wide.trip.count1090
  br i1 %exitcond1091.not, label %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread", label %bb.cq, !llvm.loop !1589

"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread": ; preds = %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit", %.split, %bb.cv, %bb.cu, %bb.ct, %bb.da, %_ZNK4llvm8TypeSizecvmEv.exit.i, %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882", %.preheader924
  %.not572.not.lcssa = phi i1 [ true, %.preheader924 ], [ true, %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882" ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ false, %bb.da ], [ false, %bb.ct ], [ false, %bb.cu ], [ false, %bb.cv ], [ false, %.split ], [ false, %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit" ]
  %.2551 = phi i1 [ true, %.preheader924 ], [ %.1550, %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread882" ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ false, %bb.da ], [ false, %bb.ct ], [ false, %bb.cu ], [ false, %bb.cv ], [ false, %.split ], [ false, %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  store ptr %5, ptr %25, align 8, !tbaa !739
  %i.pv = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %4, ptr %i.pv, align 8, !tbaa !741
  %i.pw = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %22, ptr %i.pw, align 8, !tbaa !1610
  %i.px = getelementptr inbounds nuw i8, ptr %i.na, i64 104 ; 5 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.px, align 8
  %i.py = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.pz = inttoptr i64 %i.py to ptr
  %i.qa = load i16, ptr %17, align 8, !tbaa !642  ; 2 uses
  %.not.i657 = icmp eq i16 %i.qa, 0
  br i1 %.not.i657, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread"
  %i.qb = zext i16 %i.qa to i64
  %i.qc = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.qb ; 2 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 -16
  %.sroa.0.0.copyload.i.i658 = load i64, ptr %i.qd, align 16
  %.sroa.2.0..sroa_idx.i.i659 = getelementptr i8, ptr %i.qc, i64 -8
  %.sroa.2.0.copyload.i.i660 = load i8, ptr %.sroa.2.0..sroa_idx.i.i659, align 8
  %.fca.0.insert.i.i661 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i658, 0
  %.fca.1.insert.i.i662 = insertvalue { i64, i8 } %.fca.0.insert.i.i661, i8 %.sroa.2.0.copyload.i.i660, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit664

bb.dd:                                            ; preds = %"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_1clEPNS_10LoadSDNodeEi.exit.thread"
  %i.qe = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit664

_ZNK4llvm3EVT13getSizeInBitsEv.exit664:           ; preds = %bb.dc, %bb.dd
  %.pn.i663 = phi { i64, i8 } [ %.fca.1.insert.i.i662, %bb.dc ], [ %i.qe, %bb.dd ] ; 2 uses
  %.fca.1.extract315 = extractvalue { i64, i8 } %.pn.i663, 1
  %i.qf = trunc nuw i8 %.fca.1.extract315 to i1
  br i1 %i.qf, label %bb.de, label %_ZNK4llvm8TypeSizecvmEv.exit665

bb.de:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit664
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit665:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit664
  %.fca.0.extract314 = extractvalue { i64, i8 } %.pn.i663, 0
  %i.qg = lshr i64 %.fca.0.extract314, 3
  %i.qh = trunc i64 %i.qg to i32
  %i.qi = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 5 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !694
  %i.qk = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !465
  %i.qm = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ql) #38
  %i.qn = call noundef zeroext i1 @_ZNK4llvm18MachinePointerInfo17isDereferenceableEjRNS_11LLVMContextERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(21) %i.pz, i32 noundef %i.qh, ptr noundef nonnull align 8 dereferenceable(8) %i.qj, ptr noundef nonnull align 8 dereferenceable(912) %i.qm) #38
  %i.qo = icmp eq i32 %.0.i638, 0                 ; 2 uses
  br i1 %i.qo, label %bb.df, label %.critedge587

bb.df:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit665
  %i.qp = icmp eq i32 %i.ng, %i.hd
  %or.cond = or i1 %i.qp, %i.qn
  %or.cond585 = and i1 %or.cond, %.not572.not.lcssa
  br i1 %or.cond585, label %bb.dg, label %.critedge587

bb.dg:                                            ; preds = %bb.df
  br i1 %7, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %.sroa.0311.0.copyload = load i16, ptr %17, align 8, !tbaa !346 ; 3 uses
  %.sroa.2313.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !472
  %.not.i.i.i666 = icmp eq i16 %.sroa.0311.0.copyload, 1
  %i.qq = icmp eq ptr %.sroa.2313.0.copyload, null
  %.not4.i.i = select i1 %.not.i.i.i666, i1 %i.qq, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.not.i.i667 = icmp eq i16 %.sroa.0311.0.copyload, 0
  br i1 %.not.i.i667, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.di
  %i.qr = getelementptr inbounds nuw i8, ptr %i.mj, i64 112
  %i.qs = zext i16 %.sroa.0311.0.copyload to i64  ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.qs
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !338
  %.not.i668.not = icmp eq ptr %i.qu, null
  br i1 %.not.i668.not, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.dh
  %.pre-phi.i = phi i64 [ %i.qs, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ 1, %bb.dh ]
  %i.qv = getelementptr inbounds nuw [537 x i8], ptr %i.mj, i64 %.pre-phi.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 6500
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !236
  %i.qy = icmp eq i8 %i.qx, 0
  br i1 %i.qy, label %bb.dj, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

bb.dj:                                            ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, %bb.dg
  %i.qz = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.ra = load i8, ptr %i.qz, align 8
  %i.rb = and i8 %i.ra, 16
  %.not908 = icmp eq i8 %i.rb, 0
  br i1 %.not908, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.0.copyload.i.i.i.i.i.i.i670 = load i64, ptr %i.px, align 8
  %i.rc = and i64 %.0.copyload.i.i.i.i.i.i.i670, -5
  %i.rd = inttoptr i64 %i.rc to ptr
  %i.re = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.rd) #38
  %i.rf = icmp ugt i8 %i.re, 4
  br i1 %i.rf, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.rg = call noundef zeroext i1 @_ZNK4llvm3EVT14is256BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  br i1 %i.rg, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.rh = getelementptr inbounds nuw i8, ptr %6, i64 360
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !343
  %i.rj = icmp sgt i32 %i.ri, 7
  br i1 %i.rj, label %bb.dn, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj
  %i.rk = icmp eq i32 %i.hd, 1
  br i1 %i.rk, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %.sroa.0307.0.copyload = load i16, ptr %17, align 8, !tbaa !346
  %.sroa.2309.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !472
  %.sroa.0304.0.copyload = load ptr, ptr %i.mr, align 8, !tbaa !466
  %.sroa.2305.0.copyload = load i32, ptr %.sroa.2355.0..sroa_idx, align 8, !tbaa !241
  %i.rl = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0307.0.copyload, ptr %.sroa.2309.0.copyload, ptr %.sroa.0304.0.copyload, i32 %.sroa.2305.0.copyload) #38 ; 2 uses
  %.fca.0.extract300 = extractvalue { ptr, i32 } %i.rl, 0
  %.fca.1.extract301 = extractvalue { ptr, i32 } %i.rl, 1
  br label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

bb.dp:                                            ; preds = %bb.dn
  %i.rm = load i32, ptr %i.hg, align 8, !tbaa !644 ; 2 uses
  %i.rn = icmp ult i32 %i.rm, 65
  br i1 %i.rn, label %.split884, label %_ZNK4llvm5APIntntEv.exit

.split884:                                        ; preds = %bb.dp
  %i.ro = load i64, ptr %20, align 8, !tbaa !358
  %i.rp = icmp eq i64 %i.ro, 0
  br i1 %i.rp, label %bb.dq, label %bb.dr

_ZNK4llvm5APIntntEv.exit:                         ; preds = %bb.dp
  %i.rq = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %20) #39
  %i.rr = icmp eq i32 %i.rq, %i.rm
  br i1 %i.rr, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.split884, %_ZNK4llvm5APIntntEv.exit
  %.sroa.0297.0.copyload = load i16, ptr %17, align 8, !tbaa !346
  %.sroa.2299.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !472
  %i.rs = getelementptr i8, ptr %i.na, i64 40
  %.val604 = load ptr, ptr %i.rs, align 8, !tbaa !639
  %.val605 = load i64, ptr %i.px, align 8
  %i.rt = call fastcc { ptr, i32 } @"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_2clES0_PNS_10LoadSDNodeE"(ptr noundef nonnull align 8 dereferenceable(24) %25, i16 %.sroa.0297.0.copyload, ptr %.sroa.2299.0.copyload, ptr %.val604, i64 %.val605) ; 2 uses
  %.fca.0.extract293 = extractvalue { ptr, i32 } %i.rt, 0
  %.fca.1.extract294 = extractvalue { ptr, i32 } %i.rt, 1
  br label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

bb.dr:                                            ; preds = %.split884, %_ZNK4llvm5APIntntEv.exit
  br i1 %7, label %.critedge587, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ru = load i16, ptr %17, align 8, !tbaa !642  ; 2 uses
  %.not.i671 = icmp eq i16 %i.ru, 0
  br i1 %.not.i671, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split885

.split885:                                        ; preds = %bb.ds
  %i.rv = add i16 %i.ru, -19
  %spec.select.i.i672 = icmp ult i16 %i.rv, 197
  br i1 %spec.select.i.i672, label %bb.dt, label %.critedge587

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.ds
  %i.rw = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #39
  br i1 %i.rw, label %bb.dt, label %.critedge587

bb.dt:                                            ; preds = %.split885, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.rx = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %17) ; 5 uses
  %i.ry = urem i32 %i.rx, %i.hd
  %i.rz = udiv i32 %i.rx, %i.hd                   ; 3 uses
  %.not574 = icmp eq i32 %i.ry, 0
  br i1 %.not574, label %bb.du, label %.critedge587

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.sa = zext i32 %i.rx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i32 -1, ptr %i.a, align 4, !tbaa !241
  call void @_ZN4llvm11SmallVectorIiLj4EEC2EmRKi(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %i.sa, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %.not5751035 = icmp ult i32 %i.rx, %i.hd
  %i.sb = load ptr, ptr %26, align 8              ; 6 uses
  %i.sc = zext i32 %i.rz to i64                   ; 6 uses
  %48 = add nsw i64 %i.sc, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.rz, 8
  %49 = trunc i64 %48 to i32
  %50 = icmp ugt i64 %48, 4294967295
  %n.vec = and i64 %i.sc, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.sc
  %xtraiter = and i64 %i.sc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.dw

bb.dv:                                            ; preds = %.loopexit923
  %.sroa.0269.0.copyload = load i16, ptr %17, align 8, !tbaa !346
  %.sroa.2271.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !472
  %i.sd = getelementptr i8, ptr %i.na, i64 40
  %.val602 = load ptr, ptr %i.sd, align 8, !tbaa !639
  %.val603 = load i64, ptr %i.px, align 8
  %i.se = call fastcc { ptr, i32 } @"_ZZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbjENK3$_2clES0_PNS_10LoadSDNodeE"(ptr noundef nonnull align 8 dereferenceable(24) %25, i16 %.sroa.0269.0.copyload, ptr %.sroa.2271.0.copyload, ptr %.val602, i64 %.val603) ; 2 uses
  %.fca.0.extract265 = extractvalue { ptr, i32 } %i.se, 0
  %.fca.1.extract266 = extractvalue { ptr, i32 } %i.se, 1
  %i.sf = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  %.sroa.0259.0.copyload = load i16, ptr %17, align 8, !tbaa !346 ; 2 uses
  %.sroa.2261.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !472 ; 2 uses
  br i1 %i.sf, label %bb.dy, label %bb.dz

bb.dw:                                            ; preds = %bb.du, %.loopexit923
  %.05541038 = phi i32 [ 0, %bb.du ], [ %i.ui, %.loopexit923 ] ; 4 uses
  %i.sg = and i32 %.05541038, 63
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = shl nuw i64 1, %i.sh                    ; 2 uses
  %i.sj = load i32, ptr %i.hh, align 8, !tbaa !644
  %i.sk = icmp ult i32 %i.sj, 65
  %i.sl = load ptr, ptr %21, align 8
  %i.sm = lshr i32 %.05541038, 6
  %i.sn = zext nneg i32 %i.sm to i64              ; 2 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.sn
  %.in.i.i673 = select i1 %i.sk, ptr %21, ptr %i.so
  %i.sp = load i64, ptr %.in.i.i673, align 8, !tbaa !358
  %i.sq = and i64 %i.sp, %i.si
  %.not909 = icmp eq i64 %i.sq, 0
  br i1 %.not909, label %bb.dx, label %.loopexit923

bb.dx:                                            ; preds = %bb.dw
  %i.sr = load i32, ptr %i.hg, align 8, !tbaa !644
  %i.ss = icmp ult i32 %i.sr, 65
  %i.st = load ptr, ptr %20, align 8
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.sn
  %.in.i.i674 = select i1 %i.ss, ptr %20, ptr %i.su
  %i.sv = load i64, ptr %.in.i.i674, align 8, !tbaa !358
  %i.sw = and i64 %i.sv, %i.si
  %.not910 = icmp eq i64 %i.sw, 0
  %i.sx = select i1 %.not910, i32 0, i32 %i.rx    ; 6 uses
  br i1 %.not5751035, label %.loopexit923, label %.lr.ph1037

.lr.ph1037:                                       ; preds = %bb.dx
  %51 = mul i32 %.05541038, %i.rz                 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph1037
  %52 = xor i32 %51, -1
  %53 = icmp ult i32 %52, %49
  %i.sy = or i1 %53, %50
  br i1 %i.sy, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.sx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sz = insertelement <4 x i32> poison, i32 %51, i64 0
  %i.ta = shufflevector <4 x i32> %i.sz, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> %i.ta, %broadcast.splat
  %invariant.op1345 = add <4 x i32> %i.ta, %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tb = trunc i64 %index to i32                 ; 2 uses
  %i.tc = insertelement <4 x i32> poison, i32 %i.tb, i64 0
  %i.td = shufflevector <4 x i32> %i.tc, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.te = or disjoint <4 x i32> %i.td, <i32 0, i32 1, i32 2, i32 3>
  %i.tf = add i32 %51, %i.tb
  %i.tg = or disjoint <4 x i32> %i.td, <i32 4, i32 5, i32 6, i32 7>
  %.reass = add <4 x i32> %i.te, %invariant.op
  %.reass1346 = add <4 x i32> %i.tg, %invariant.op1345
  %i.th = zext i32 %i.tf to i64
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  store <4 x i32> %.reass, ptr %i.ti, align 4, !tbaa !241
  store <4 x i32> %.reass1346, ptr %i.tj, align 4, !tbaa !241
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.tk = icmp eq i64 %index.next, %n.vec
  br i1 %i.tk, label %middle.block, label %vector.body, !llvm.loop !1590

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit923, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph1037, %middle.block
  %indvars.iv1092.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph1037 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv1092.prol = phi i64 [ %indvars.iv.next1093.prol, %scalar.ph.prol ], [ %indvars.iv1092.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.tl = trunc nuw i64 %indvars.iv1092.prol to i32
  %i.tm = add i32 %51, %i.tl                      ; 2 uses
  %i.tn = add i32 %i.tm, %i.sx
  %i.to = zext i32 %i.tm to i64
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.to
  store i32 %i.tn, ptr %i.tp, align 4, !tbaa !241
  %indvars.iv.next1093.prol = add nuw nsw i64 %indvars.iv1092.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1591

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1092.unr = phi i64 [ %indvars.iv1092.ph, %scalar.ph.preheader ], [ %indvars.iv.next1093.prol, %scalar.ph.prol ]
  %54 = sub nsw i64 %indvars.iv1092.ph, %i.sc
  %i.tq = icmp ugt i64 %54, -4
  br i1 %i.tq, label %.loopexit923, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op1347 = add i32 1, %51
  %invariant.op1349 = add i32 2, %51
  %invariant.op1351 = add i32 3, %51
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv1092 = phi i64 [ %indvars.iv1092.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next1093.3, %scalar.ph ] ; 5 uses
  %i.tr = trunc nuw i64 %indvars.iv1092 to i32
  %i.ts = add i32 %51, %i.tr                      ; 2 uses
  %i.tt = add i32 %i.ts, %i.sx
  %i.tu = zext i32 %i.ts to i64
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.tu
  store i32 %i.tt, ptr %i.tv, align 4, !tbaa !241
  %i.tw = trunc i64 %indvars.iv1092 to i32
  %.reass1348 = add i32 %i.tw, %invariant.op1347  ; 2 uses
  %i.tx = add i32 %.reass1348, %i.sx
  %i.ty = zext i32 %.reass1348 to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.ty
  store i32 %i.tx, ptr %i.tz, align 4, !tbaa !241
  %i.ua = trunc i64 %indvars.iv1092 to i32
  %.reass1350 = add i32 %i.ua, %invariant.op1349  ; 2 uses
  %i.ub = add i32 %.reass1350, %i.sx
  %i.uc = zext i32 %.reass1350 to i64
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.uc
  store i32 %i.ub, ptr %i.ud, align 4, !tbaa !241
  %i.ue = trunc i64 %indvars.iv1092 to i32
  %.reass1352 = add i32 %i.ue, %invariant.op1351  ; 2 uses
  %i.uf = add i32 %.reass1352, %i.sx
  %i.ug = zext i32 %.reass1352 to i64
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.ug
  store i32 %i.uf, ptr %i.uh, align 4, !tbaa !241
  %indvars.iv.next1093.3 = add nuw nsw i64 %indvars.iv1092, 4 ; 2 uses
  %.not575.3 = icmp eq i64 %indvars.iv.next1093.3, %i.sc
  br i1 %.not575.3, label %.loopexit923, label %scalar.ph, !llvm.loop !1592

.loopexit923:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.dx, %bb.dw
  %i.ui = add nuw i32 %.05541038, 1               ; 2 uses
  %exitcond1095.not = icmp eq i32 %i.ui, %i.hd
  br i1 %exitcond1095.not, label %bb.dv, label %bb.dw, !llvm.loop !1593

bb.dy:                                            ; preds = %bb.dv
  %i.uj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0259.0.copyload, ptr %.sroa.2261.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #38
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dv
  %i.uk = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %5, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0259.0.copyload, ptr %.sroa.2261.0.copyload, i1 noundef zeroext false) #38
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.pn = phi { ptr, i32 } [ %i.uj, %bb.dy ], [ %i.uk, %bb.dz ] ; 2 uses
  %.sroa.5263.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.0262.0 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.0245.0.copyload = load i16, ptr %17, align 8, !tbaa !346
  %.sroa.2247.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !472
  store ptr %.sroa.0262.0, ptr %27, align 8, !tbaa !466
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 %.sroa.5263.0, ptr %.sroa.5263.0..sroa_idx, align 8, !tbaa !241
  %i.ul = load ptr, ptr %26, align 8, !tbaa !84
  store ptr %i.ul, ptr %28, align 8, !tbaa !692
  %i.um = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !634
  %i.up = zext i32 %i.uo to i64
  store i64 %i.up, ptr %i.um, align 8, !tbaa !693
  %i.uq = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0245.0.copyload, ptr %.sroa.2247.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.fca.0.extract265, i32 %.fca.1.extract266, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %27, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %28) #38 ; 2 uses
  %.fca.0.extract238 = extractvalue { ptr, i32 } %i.uq, 0
  %.fca.1.extract239 = extractvalue { ptr, i32 } %i.uq, 1
  %i.ur = load ptr, ptr %26, align 8, !tbaa !84   ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ut = icmp eq ptr %i.ur, %i.us
  br i1 %i.ut, label %_ZN4llvm11SmallVectorIiLj4EED2Ev.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @free(ptr noundef %i.ur) #38
  br label %_ZN4llvm11SmallVectorIiLj4EED2Ev.exit

_ZN4llvm11SmallVectorIiLj4EED2Ev.exit:            ; preds = %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

.critedge587:                                     ; preds = %.split885, %bb.dt, %bb.dr, %_ZNK4llvm3EVT8isVectorEv.exit, %bb.df, %_ZNK4llvm8TypeSizecvmEv.exit665
  %i.uu = call noundef zeroext i1 @_ZNK4llvm3EVT14is256BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  br i1 %i.uu, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %.critedge587
  %i.uv = call noundef zeroext i1 @_ZNK4llvm3EVT14is512BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  br i1 %i.uv, label %bb.ed, label %.critedge591

bb.ed:                                            ; preds = %bb.ec, %.critedge587
  %i.uw = lshr i32 %i.hd, 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %29, ptr noundef nonnull align 8 dereferenceable(12) %21, i32 noundef %i.uw, i32 noundef %i.uw) #38
  %i.ux = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %29)
  %i.uy = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !644
  %i.va = icmp ugt i32 %i.uz, 64
  br i1 %i.va, label %bb.ee, label %_ZN4llvm5APIntD2Ev.exit

bb.ee:                                            ; preds = %bb.ed
  %i.vb = load ptr, ptr %29, align 8, !tbaa !358  ; 2 uses
  %i.vc = icmp eq ptr %i.vb, null
  br i1 %i.vc, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZdaPv(ptr noundef nonnull %i.vb) #41
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.ed, %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br i1 %i.ux, label %bb.eg, label %.critedge591

bb.eg:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.vd = load ptr, ptr %i.qi, align 8, !tbaa !694
  %i.ve = call { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %17) ; 2 uses
  %i.vf = extractvalue { i16, ptr } %i.ve, 0
  %i.vg = extractvalue { i16, ptr } %i.ve, 1
  %i.vh = call { i16, ptr } @_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.vd, i16 %i.vf, ptr %i.vg, i32 noundef %i.uw, i1 noundef zeroext false) ; 2 uses
  %i.vi = extractvalue { i16, ptr } %i.vh, 0
  %i.vj = extractvalue { i16, ptr } %i.vh, 1
  %i.vk = zext nneg i32 %i.uw to i64
  %i.vl = sub i64 %3, %i.vk
  %i.vm = add nuw nsw i32 %8, 1
  %i.vn = call fastcc { ptr, i32 } @_ZL24EltsFromConsecutiveLoadsN4llvm3EVTENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEbj(i16 %i.vi, ptr %i.vj, ptr %2, i64 %i.vl, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull align 8 dereferenceable(519752) %6, i1 noundef zeroext %7, i32 noundef %i.vm) ; 2 uses
  %.fca.0.extract220 = extractvalue { ptr, i32 } %i.vn, 0 ; 2 uses
  %.not911 = icmp eq ptr %.fca.0.extract220, null
  br i1 %.not911, label %.critedge591, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.fca.1.extract221 = extractvalue { ptr, i32 } %i.vn, 1
  %.sroa.0217.0.copyload = load i16, ptr %17, align 8, !tbaa !346 ; 2 uses
  %.sroa.2219.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !472 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.vo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 %.sroa.0217.0.copyload, ptr %.sroa.2219.0.copyload) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %.fca.0.extract210 = extractvalue { ptr, i32 } %i.vo, 0
  %.fca.1.extract211 = extractvalue { ptr, i32 } %i.vo, 1
  store ptr %.fca.0.extract210, ptr %30, align 8
  %.sroa.2213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.fca.1.extract211, ptr %.sroa.2213.0..sroa_idx, align 8
  store ptr %.fca.0.extract220, ptr %31, align 8, !tbaa !466
  %.sroa.6785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.fca.1.extract221, ptr %.sroa.6785.0..sroa_idx, align 8, !tbaa !241
  %i.vp = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %4, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract206 = extractvalue { ptr, i32 } %i.vp, 0
  %.fca.1.extract207 = extractvalue { ptr, i32 } %i.vp, 1
  store ptr %.fca.0.extract206, ptr %32, align 8
  %.sroa.2209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 %.fca.1.extract207, ptr %.sroa.2209.0..sroa_idx, align 8
  %i.vq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0217.0.copyload, ptr %.sroa.2219.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32) #38 ; 2 uses
  %.fca.0.extract202 = extractvalue { ptr, i32 } %i.vq, 0
  %.fca.1.extract203 = extractvalue { ptr, i32 } %i.vq, 1
  br label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

.critedge591:                                     ; preds = %bb.eg, %_ZN4llvm5APIntD2Ev.exit, %bb.ec
  %or.cond14 = and i1 %i.qo, %.2551
  br i1 %or.cond14, label %bb.ei, label %.critedge594

bb.ei:                                            ; preds = %.critedge591
  switch i32 %i.nh, label %.critedge594 [
    i32 16, label %bb.ej
    i32 32, label %bb.ek
    i32 64, label %bb.ek
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.vr = getelementptr inbounds nuw i8, ptr %6, i64 420
  %i.vs = load i8, ptr %i.vr, align 4, !tbaa !364, !range !80, !noundef !81
  %i.vt = trunc nuw i8 %i.vs to i1
  br i1 %i.vt, label %bb.ek, label %.critedge594

bb.ek:                                            ; preds = %bb.ei, %bb.ei, %bb.ej
  %i.vu = call noundef zeroext i1 @_ZNK4llvm3EVT14is128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  br i1 %i.vu, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.vv = call noundef zeroext i1 @_ZNK4llvm3EVT14is256BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  br i1 %i.vv, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.vw = call noundef zeroext i1 @_ZNK4llvm3EVT14is512BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  br i1 %i.vw, label %bb.en, label %.critedge594

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ek
  %i.vx = call noundef zeroext i1 @_ZNK4llvm3EVT15isFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  br i1 %i.vx, label %bb.eo, label %bb.et

bb.eo:                                            ; preds = %bb.en
  %i.vy = call i32 @llvm.fshl.i32(i32 %i.nh, i32 %i.nh, i32 28)
  switch i32 %i.vy, label %.unreachabledefault.i [
    i32 1, label %_ZN4llvm3MVT18getFloatingPointVTEj.exit
    i32 2, label %bb.ep
    i32 4, label %bb.eq
    i32 5, label %bb.er
    i32 8, label %bb.es
  ]

bb.ep:                                            ; preds = %bb.eo
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

bb.eq:                                            ; preds = %bb.eo
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

bb.er:                                            ; preds = %bb.eo
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

.unreachabledefault.i:                            ; preds = %bb.eo
  unreachable

bb.es:                                            ; preds = %bb.eo
  %i.vz = icmp eq i32 %i.nh, 128
  call void @llvm.assume(i1 %i.vz)
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

bb.et:                                            ; preds = %bb.en
  %i.wa = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.nh)
  %i.wb = icmp eq i32 %i.wa, 1
  br i1 %i.wb, label %.split.i, label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

.split.i:                                         ; preds = %bb.et
  %i.wc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.nh, i1 true)
  %switch.idx.cast.i = trunc nuw nsw i32 %i.wc to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

_ZN4llvm3MVT18getFloatingPointVTEj.exit:          ; preds = %.split.i, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo
  %.sroa.0200.0 = phi i16 [ 13, %bb.eo ], [ 17, %bb.es ], [ 14, %bb.ep ], [ 15, %bb.eq ], [ 16, %bb.er ], [ %switch.offset.i, %.split.i ], [ 0, %bb.et ] ; 2 uses
  %i.wd = load i16, ptr %17, align 8, !tbaa !642  ; 2 uses
  %.not.i678 = icmp eq i16 %i.wd, 0
  br i1 %.not.i678, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZN4llvm3MVT18getFloatingPointVTEj.exit
  %i.we = zext i16 %i.wd to i64
end_hunk_2
begin_hunk_3_@_ZL19LowerCONCAT_VECTORSN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  %.fca.0.extract12.us.i = extractvalue { ptr, i32 } %i.gk, 0
  %.fca.1.extract13.us.i = extractvalue { ptr, i32 } %i.gk, 1
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0129.0.copyload.us.i, i32 %.sroa.5.0.copyload.us.i, ptr %.fca.0.extract12.us.i, i32 %.fca.1.extract13.us.i) #38
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0132.0181.us.i, i64 16 ; 2 uses
  %.not169.us.i = icmp eq ptr %i.gl, %i.ge
  br i1 %.not169.us.i, label %._crit_edge184.i, label %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.us.i

._crit_edge184.i:                                 ; preds = %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.i, %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.us.i, %bb.ah
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !639 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !473
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !468
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !470
  %i.gt = zext i32 %i.gq to i64
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gt
  %.sroa.0.0.copyload.i.i.i125.i = load i16, ptr %i.gu, align 8, !tbaa !346 ; 2 uses
  %i.gv = add i16 %.sroa.0.0.copyload.i.i.i125.i, -163
  %spec.select.i.i126.i = icmp ult i16 %i.gv, 53
  br i1 %spec.select.i.i126.i, label %bb.ai, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i28

bb.ai:                                            ; preds = %._crit_edge184.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i28:   ; preds = %._crit_edge184.i
  br i1 %.not171.i, label %._crit_edge190.i, label %.lr.ph189.i

.lr.ph189.i:                                      ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i28
  %i.gw = zext i16 %.sroa.0.0.copyload.i.i.i125.i to i64
  %i.gx = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 -2
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !340
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ha = zext i16 %i.dp to i64
  %i.hb = zext i16 %i.gz to i64
  br label %bb.aj

_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.i: ; preds = %.lr.ph183.i, %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.i
  %.sroa.0132.0181.i = phi ptr [ %i.hi, %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.i ], [ %.val168.i, %.lr.ph183.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0132.0181.i, i64 32
  %.sroa.0129.0.copyload.i = load ptr, ptr %i.hc, align 8, !tbaa !466 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0132.0181.i, i64 40
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !241 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.copyload.i, i64 48
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !470
  %i.hf = zext i32 %.sroa.5.0.copyload.i to i64
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %i.hf
  %.sroa.0.0.copyload.i.i.i127.i = load i16, ptr %i.hg, align 8, !tbaa !346
  %.val.i27 = load i32, ptr %i.gf, align 8, !tbaa !343
  %i.hh = call fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %.sroa.0.0.copyload.i.i.i127.i, i32 %.val.i27, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %35) ; 2 uses
  %.fca.0.extract12.i = extractvalue { ptr, i32 } %i.hh, 0
  %.fca.1.extract13.i = extractvalue { ptr, i32 } %i.hh, 1
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0129.0.copyload.i, i32 %.sroa.5.0.copyload.i, ptr %.fca.0.extract12.i, i32 %.fca.1.extract13.i) #38
  %i.hi = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0132.0181.i) #39 ; 2 uses
  %.not169.i = icmp eq ptr %i.hi, %i.dt
  br i1 %.not169.i, label %._crit_edge184.i, label %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.i

._crit_edge190.loopexit.i:                        ; preds = %bb.al
  %i.hj = insertvalue { ptr, i32 } poison, ptr %.sroa.0103.2.i, 0
  %i.hk = insertvalue { ptr, i32 } %i.hj, i32 %.sroa.7.2.i, 1
  br label %._crit_edge190.i

bb.aj:                                            ; preds = %bb.al, %.lr.ph189.i
  %indvars.iv196.i = phi i64 [ 0, %.lr.ph189.i ], [ %indvars.iv.next197.i, %bb.al ] ; 4 uses
  %.sroa.7.1188.i = phi i32 [ %.sroa.7.0.i, %.lr.ph189.i ], [ %.sroa.7.2.i, %bb.al ] ; 2 uses
  %.sroa.0103.1187.i = phi ptr [ %.sroa.0103.0.i, %.lr.ph189.i ], [ %.sroa.0103.2.i, %bb.al ] ; 2 uses
  %i.hl = trunc nuw nsw i64 %indvars.iv196.i to i32
  %i.hm = shl nuw i32 1, %i.hl
  %i.hn = and i32 %i.hm, %.0110.lcssa203210.i
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %.sroa.0103.1187.i, ptr %13, align 8, !tbaa !466
  store i32 %.sroa.7.1188.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !241
  %i.hp = load ptr, ptr %i.gm, align 8, !tbaa !639
  %i.hq = getelementptr inbounds nuw [40 x i8], ptr %i.hp, i64 %indvars.iv196.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i64 16, i1 false), !tbaa.struct !684
  %i.hr = mul nuw nsw i64 %indvars.iv196.i, %i.hb
  %i.hs = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(12) %35, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.hs, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.hs, 1
  store ptr %.fca.0.extract1.i, ptr %15, align 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.ht = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #38 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ht, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ht, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.0103.2.i = phi ptr [ %.sroa.0103.1187.i, %bb.aj ], [ %.fca.0.extract.i, %bb.ak ] ; 2 uses
  %.sroa.7.2.i = phi i32 [ %.sroa.7.1188.i, %bb.aj ], [ %.fca.1.extract.i, %bb.ak ] ; 2 uses
  %indvars.iv.next197.i = add nuw nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %.not119.i = icmp eq i64 %indvars.iv.next197.i, %i.ha
  br i1 %.not119.i, label %._crit_edge190.loopexit.i, label %bb.aj, !llvm.loop !1964

._crit_edge190.i:                                 ; preds = %._crit_edge190.loopexit.i, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i28, %_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit.i31
  %.fca.1.insert.merged.i29 = phi { ptr, i32 } [ %i.ft, %_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit.i31 ], [ %.pn.i, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i28 ], [ %i.hk, %._crit_edge190.loopexit.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.hv = load ptr, ptr %i.du, align 8, !tbaa !680
  call void @_ZNSt8_Rb_treeIN4llvm7SDValueES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hu, ptr noundef %i.hv)
  %i.hw = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.dq
  br i1 %i.hx, label %_ZL22LowerAVXCONCAT_VECTORSN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge190.i
  call void @free(ptr noundef %i.hw) #38
  br label %_ZL22LowerAVXCONCAT_VECTORSN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit

_ZL22LowerAVXCONCAT_VECTORSN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit: ; preds = %._crit_edge190.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.an

bb.an:                                            ; preds = %_ZL22LowerAVXCONCAT_VECTORSN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit, %_ZL23LowerCONCAT_VECTORSvXi1N4llvm7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGE.exit
  %.pn = phi { ptr, i32 } [ %.fca.1.insert.merged.i, %_ZL23LowerCONCAT_VECTORSvXi1N4llvm7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGE.exit ], [ %.fca.1.insert.merged.i29, %_ZL22LowerAVXCONCAT_VECTORSN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL19lowerVECTOR_SHUFFLEN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(519752) %2, ptr noundef nonnull align 8 dereferenceable(920) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.1144", align 8 ; 8 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 15 uses
  %14 = alloca %"class.llvm::SmallVector.429", align 8 ; 10 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %16 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %17 = alloca %"class.llvm::APInt", align 8      ; 18 uses
  %18 = alloca %"class.llvm::APInt", align 8      ; 25 uses
  %19 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %20 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %21 = alloca %"class.llvm::SmallVector.416", align 8 ; 10 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %23 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %24 = alloca %"class.llvm::SmallVector.701", align 8 ; 13 uses
  %25 = alloca %"class.llvm::SmallVector.1101", align 8 ; 12 uses
  %26 = alloca %class.anon.1263, align 8          ; 7 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !470  ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.b, align 8, !tbaa !346 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i, ptr %12, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !746  ; 9 uses
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.f = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.f, 53
  br i1 %spec.select.i.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #39
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.86) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %.split.i.i
  %i.h = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.i = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !340
  %i.l = zext i16 %i.k to i32
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  %i.m = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #39
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, %bb.c
  %i.n = phi i32 [ %i.l, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i ], [ %i.m, %bb.c ] ; 20 uses
  %i.o = zext i32 %i.n to i64                     ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !639  ; 5 uses
  %.sroa.0435.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !466 ; 8 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !241 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.0391.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !466 ; 10 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !241 ; 8 uses
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %.sroa.32.0.copyload = load i32, ptr %.sroa.32.0..sroa_idx, align 4 ; 6 uses
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.s
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.t, align 8, !tbaa !346 ; 20 uses
  %i.u = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i = icmp ult i16 %i.u, 53
  br i1 %spec.select.i.i, label %bb.d, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.d:                                             ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  %i.v = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 4 uses
  %i.w = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !340
  %i.z = zext i16 %i.y to i32                     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !674
  store i64 %i.ab, ptr %13, align 8, !tbaa !674
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !675
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !677
  %i.af = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.v
  %i.ag = getelementptr i8, ptr %i.af, i64 -2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !346 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 2                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0435.0.copyload, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !469
  %i.al = add i32 %i.ak, -53                      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0391.0.copyload, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !469
  %i.ao = add i32 %i.an, -53                      ; 2 uses
  %spec.select.i.i282 = icmp ult i32 %i.ao, 2     ; 2 uses
  %i.ap = or i32 %i.ao, %i.al
  %or.cond = icmp ult i32 %i.ap, 2
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %.fca.0.extract211 = extractvalue { ptr, i32 } %i.aq, 0
  br label %bb.da

bb.f:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %spec.select.i.i281 = icmp ult i32 %i.al, 2
  br i1 %spec.select.i.i281, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG24getCommutedVectorShuffleERKNS_19ShuffleVectorSDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(96) %0) #38 ; 2 uses
  %.fca.0.extract205 = extractvalue { ptr, i32 } %i.ar, 0
  br label %bb.da

bb.h:                                             ; preds = %bb.f
  br i1 %spec.select.i.i282, label %bb.i, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"

bb.i:                                             ; preds = %bb.h
  %.idx1.i = shl nuw nsw i64 %i.o, 2              ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx1.i
  %i.at = lshr i64 %i.o, 2                        ; 2 uses
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.i
  %i.au = and i64 %.idx1.i, 17179869168
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.au
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i
  %.063.i.i.i.i.i.i = phi i64 [ %i.az, %bb.m ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02962.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.m ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i.i.i = load i32, ptr %.02962.i.i.i.i.i.i, align 4, !tbaa !241
  %.not48.i.i.i.i.i.i = icmp slt i32 %.029.val39.i.i.i.i.i.i, %i.z
  br i1 %.not48.i.i.i.i.i.i, label %bb.j, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 4
  %.val37.i.i.i.i.i.i = load i32, ptr %i.av, align 4, !tbaa !241
  %.not49.i.i.i.i.i.i = icmp slt i32 %.val37.i.i.i.i.i.i, %i.z
  br i1 %.not49.i.i.i.i.i.i, label %bb.k, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit"

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 8
  %.val35.i.i.i.i.i.i = load i32, ptr %i.aw, align 4, !tbaa !241
  %.not50.i.i.i.i.i.i = icmp slt i32 %.val35.i.i.i.i.i.i, %i.z
  br i1 %.not50.i.i.i.i.i.i, label %bb.l, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit545"

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 12
  %.val33.i.i.i.i.i.i = load i32, ptr %i.ax, align 4, !tbaa !241
  %.not51.i.i.i.i.i.i = icmp slt i32 %.val33.i.i.i.i.i.i, %i.z
  br i1 %.not51.i.i.i.i.i.i, label %bb.m, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit547"

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 16
  %i.az = add nsw i64 %.063.i.i.i.i.i.i, -1
  %i.ba = icmp sgt i64 %.063.i.i.i.i.i.i, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !1967

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.m
  %i.bb = and i32 %i.n, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.i
  %.pre-phi69.i.i.i.i.i.i = phi i32 [ %i.bb, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.n, %bb.i ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.e, %bb.i ] ; 5 uses
  switch i32 %.pre-phi69.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread" [
    i32 3, label %bb.n
    i32 2, label %bb.p
    i32 1, label %bb.r
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i.i, align 4, !tbaa !241
  %.not.i.i.i.i.i.i = icmp slt i32 %.029.val.i.i.i.i.i.i, %i.z
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.o ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i.i, align 4, !tbaa !241
  %.not46.i.i.i.i.i.i = icmp slt i32 %.1.val.i.i.i.i.i.i, %i.z
  br i1 %.not46.i.i.i.i.i.i, label %bb.q, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.q ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i.i, align 4, !tbaa !241
  %.not47.i.i.i.i.i.i = icmp slt i32 %.2.val.i.i.i.i.i.i, %i.z
  br i1 %.not47.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 4
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit545": ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit547": ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 12
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit545", %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit547", %bb.n, %bb.p, %bb.r
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.p ], [ %.029.lcssa.i.i.i.i.i.i, %bb.n ], [ %.2.i.i.i.i.i.i, %bb.r ], [ %i.bg, %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit547" ], [ %i.bf, %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit545" ], [ %i.be, %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02962.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not465.a = icmp eq ptr %i.as, %.028.i.i.i.i.i.i
  br i1 %.not465.a, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", label %bb.s

bb.s:                                             ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bh, ptr %14, align 8, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !634
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 8, ptr %i.bj, align 4, !tbaa !635
  %i.bk = icmp ugt i32 %i.n, 8
  br i1 %i.bk, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i: ; preds = %bb.s
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %i.bh, i64 noundef %i.o, i64 noundef 4) #38
  %.pre8.pre.i.i = load i32, ptr %i.bi, align 8, !tbaa !634
  %i.bl = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %14, align 8, !tbaa !84
  br label %bb.t

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.s
  %.not.i.i.i283 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i283, label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i
  %i.bm = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ %i.bh, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.bl, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 4 %i.e, i64 %.idx1.i, i1 false)
  %.pre.i.i = load i32, ptr %i.bi, align 8, !tbaa !634
  %.pre497.a = load ptr, ptr %14, align 8, !tbaa !84
end_hunk_3
begin_hunk_4_@_ZL19lowerVECTOR_SHUFFLEN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
pred.store.continue578:                           ; preds = %pred.store.if577, %pred.store.continue576
  %i.cp = extractelement <4 x i1> %i.ci, i64 2
  br i1 %i.cp, label %pred.store.if579, label %pred.store.continue580

pred.store.if579:                                 ; preds = %pred.store.continue578
  store i32 -1, ptr %next.gep566, align 4, !tbaa !241
  br label %pred.store.continue580

pred.store.continue580:                           ; preds = %pred.store.if579, %pred.store.continue578
  %i.cq = extractelement <4 x i1> %i.ci, i64 3
  br i1 %i.cq, label %pred.store.if581, label %pred.store.continue582

pred.store.if581:                                 ; preds = %pred.store.continue580
  store i32 -1, ptr %next.gep567, align 4, !tbaa !241
  br label %pred.store.continue582

pred.store.continue582:                           ; preds = %pred.store.if581, %pred.store.continue580
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !1968

middle.block:                                     ; preds = %pred.store.continue582
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader619

.lr.ph.preheader619:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0262483.ph = phi ptr [ %i.bo, %.lr.ph.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.w, %middle.block
  %.pre498.a = load i32, ptr %i.bi, align 8, !tbaa !634
  %i.cs = zext i32 %.pre498.a to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit
  %i.ct = phi i64 [ %i.cs, %._crit_edge.loopexit ], [ 0, %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit ]
  store ptr %.sroa.0391.0.copyload, ptr %15, align 8, !tbaa !466
  %.sroa.23.0..sroa_idx402.a = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.sroa.23.0.copyload, ptr %.sroa.23.0..sroa_idx402.a, align 8, !tbaa !241
  %.sroa.32.0..sroa_idx420.a = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %.sroa.32.0.copyload, ptr %.sroa.32.0..sroa_idx420.a, align 4
  store ptr %i.bo, ptr %16, align 8, !tbaa !692
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !693
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %.sroa.0435.0.copyload, i32 %.sroa.21.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %16) #38 ; 2 uses
  %.fca.0.extract187 = extractvalue { ptr, i32 } %i.cv, 0
  %i.cw = load ptr, ptr %14, align 8, !tbaa !84   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.bh
  br i1 %i.cx, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.cw) #38
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit:            ; preds = %._crit_edge, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.da

.lr.ph:                                           ; preds = %.lr.ph.preheader619, %bb.w
  %.0262483 = phi ptr [ %i.cz, %bb.w ], [ %.0262483.ph, %.lr.ph.preheader619 ] ; 3 uses
  %i.cy = load i32, ptr %.0262483, align 4, !tbaa !241
  %.not269 = icmp slt i32 %i.cy, %i.z
  br i1 %.not269, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  store i32 -1, ptr %.0262483, align 4, !tbaa !241
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph
  %i.cz = getelementptr inbounds nuw i8, ptr %.0262483, i64 4 ; 2 uses
  %.not268 = icmp eq ptr %i.cz, %i.bs
  br i1 %.not268, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1969

"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 8 uses
  store i32 1, ptr %i.da, align 8, !tbaa !644
  store i64 0, ptr %17, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  %i.db = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 9 uses
  store i32 1, ptr %i.db, align 8, !tbaa !644
  store i64 0, ptr %18, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %i.n, ptr %i.dc, align 8, !tbaa !644, !alias.scope !1981
  %i.dd = icmp ult i32 %i.n, 65
  br i1 %i.dd, label %_ZN4llvm5APInt7getZeroEj.exit.i.thread, label %_ZN4llvm5APInt7getZeroEj.exit.i

_ZN4llvm5APInt7getZeroEj.exit.i.thread:           ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"
  store i64 0, ptr %6, align 8, !tbaa !358, !alias.scope !1981
  br label %_ZN4llvm5APIntaSEOS0_.exit.i

_ZN4llvm5APInt7getZeroEj.exit.i:                  ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIiEEZL19lowerVECTOR_SHUFFLENS_7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %6, i64 noundef 0, i1 noundef zeroext false) #38
  %.pre499.a = load i32, ptr %i.db, align 8, !tbaa !644
  %i.de = icmp ult i32 %.pre499.a, 65
  br i1 %i.de, label %_ZN4llvm5APIntaSEOS0_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm5APInt7getZeroEj.exit.i
  %i.df = load ptr, ptr %18, align 8, !tbaa !358  ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN4llvm5APIntaSEOS0_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.df) #41
  br label %_ZN4llvm5APIntaSEOS0_.exit.i

_ZN4llvm5APIntaSEOS0_.exit.i:                     ; preds = %_ZN4llvm5APInt7getZeroEj.exit.i.thread, %bb.y, %bb.x, %_ZN4llvm5APInt7getZeroEj.exit.i
  %i.dh = load i64, ptr %6, align 8               ; 2 uses
  store i64 %i.dh, ptr %18, align 8
  %i.di = load i32, ptr %i.dc, align 8, !tbaa !644 ; 3 uses
  store i32 %i.di, ptr %i.db, align 8, !tbaa !644
  store i32 0, ptr %i.dc, align 8, !tbaa !644
  %i.dj = load i32, ptr %i.da, align 8, !tbaa !644
  %i.dk = icmp ult i32 %i.dj, 65
  %i.dl = icmp ult i32 %i.di, 65
  %or.cond141.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond141.i, label %_ZN4llvm5APIntaSERKS0_.exit.thread.i, label %_ZN4llvm5APIntaSERKS0_.exit.i

_ZN4llvm5APIntaSERKS0_.exit.thread.i:             ; preds = %_ZN4llvm5APIntaSEOS0_.exit.i
  store i64 %i.dh, ptr %17, align 8, !tbaa !358
  store i32 %i.di, ptr %i.da, align 8, !tbaa !644
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntaSERKS0_.exit.i:                    ; preds = %_ZN4llvm5APIntaSEOS0_.exit.i
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(12) %18) #38
  %.pre.i = load i32, ptr %i.dc, align 8, !tbaa !644
  %i.dm = icmp ugt i32 %.pre.i, 64
  br i1 %i.dm, label %bb.z, label %_ZN4llvm5APIntD2Ev.exit.i

bb.z:                                             ; preds = %_ZN4llvm5APIntaSERKS0_.exit.i
  %i.dn = load ptr, ptr %6, align 8, !tbaa !358   ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #41
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.aa, %bb.z, %_ZN4llvm5APIntaSERKS0_.exit.i, %_ZN4llvm5APIntaSERKS0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.dp = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0435.0.copyload, i32 %.sroa.21.0.copyload) #38 ; 2 uses
  %.fca.0.extract59.i = extractvalue { ptr, i32 } %i.dp, 0 ; 3 uses
  %.fca.1.extract60.i = extractvalue { ptr, i32 } %i.dp, 1
  %i.dq = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0391.0.copyload, i32 %.sroa.23.0.copyload) #38
  %.fca.0.extract51.i = extractvalue { ptr, i32 } %i.dq, 0 ; 2 uses
  %i.dr = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.fca.0.extract59.i) #38
  %i.ds = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.fca.0.extract51.i) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.dt = getelementptr inbounds nuw i8, ptr %.fca.0.extract59.i, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !470
  %i.dv = zext i32 %.fca.1.extract60.i to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dv ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.dw, align 8, !tbaa !346 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i.i.i, ptr %5, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i.i, ptr %i.dx, align 8
  %.not.i.i.i284 = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i284, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.dy = zext i16 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.dz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dy ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -16
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %i.ea, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.dz, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.fca.0.insert.i.i4.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i.i, 0
  %.fca.1.insert.i.i5.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i.i, i8 %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i

bb.ac:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.eb = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #39
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i:   ; preds = %bb.ac, %bb.ab
  %.pn.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i.i, %bb.ab ], [ %i.eb, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %.fca.1.extract.i = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %i.ec = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.ec, label %bb.ad, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.ad:                                            ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i
  %.fca.0.extract.i = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %i.ed = trunc i64 %.fca.0.extract.i to i32
  %i.ee = sdiv i32 %i.ed, %i.n                    ; 4 uses
  %i.ef = icmp sgt i32 %i.n, 0
  br i1 %i.ef, label %.lr.ph153.i, label %_ZL30computeZeroableShuffleElementsN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_5APIntES4_.exit

.lr.ph153.i:                                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.rhs.trunc.i = trunc nuw i32 %i.n to i16
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit.i, %.lr.ph153.i
  %indvars.iv157.i = phi i64 [ 0, %.lr.ph153.i ], [ %indvars.iv.next158.i, %_ZN4llvm5APInt6setBitEj.exit.i ] ; 18 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv157.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !241 ; 4 uses
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.en = and i64 %indvars.iv157.i, 63
  %i.eo = shl nuw i64 1, %i.en                    ; 2 uses
  %i.ep = load i32, ptr %i.da, align 8, !tbaa !644
  %i.eq = icmp ult i32 %i.ep, 65
  br i1 %i.eq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.er = load i64, ptr %17, align 8, !tbaa !358
  %i.es = or i64 %i.er, %i.eo
  store i64 %i.es, ptr %17, align 8, !tbaa !358
  br label %_ZN4llvm5APInt6setBitEj.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.et = load ptr, ptr %17, align 8, !tbaa !358
  %i.eu = lshr i64 %indvars.iv157.i, 6
  %i.ev = and i64 %i.eu, 67108863
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ev ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !673
  %i.ey = or i64 %i.ex, %i.eo
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !673
  br label %_ZN4llvm5APInt6setBitEj.exit.i

bb.ai:                                            ; preds = %bb.ae
  %i.ez = icmp slt i32 %i.el, %i.n                ; 2 uses
  %or.cond.i = and i1 %i.dr, %i.ez
  %i.fa = icmp sge i32 %i.el, %i.n
  %or.cond3.i = and i1 %i.ds, %i.fa
  %or.cond100.i = or i1 %or.cond.i, %or.cond3.i
  br i1 %or.cond100.i, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fb = and i64 %indvars.iv157.i, 63
  %i.fc = shl nuw i64 1, %i.fb                    ; 2 uses
  %i.fd = load i32, ptr %i.db, align 8, !tbaa !644
  %i.fe = icmp ult i32 %i.fd, 65
  br i1 %i.fe, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load i64, ptr %18, align 8, !tbaa !358
  %i.fg = or i64 %i.ff, %i.fc
  store i64 %i.fg, ptr %18, align 8, !tbaa !358
  br label %_ZN4llvm5APInt6setBitEj.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.fh = load ptr, ptr %18, align 8, !tbaa !358
  %i.fi = lshr i64 %indvars.iv157.i, 6
  %i.fj = and i64 %i.fi, 67108863
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fj ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !673
  %i.fm = or i64 %i.fl, %i.fc
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !673
  br label %_ZN4llvm5APInt6setBitEj.exit.i

bb.am:                                            ; preds = %bb.ai
  %.sroa.0126.0.copyload.i = select i1 %i.ez, ptr %.fca.0.extract59.i, ptr %.fca.0.extract51.i ; 4 uses
  %i.fn = urem i32 %i.el, %i.n                    ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0126.0.copyload.i, i64 24
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !469
  %.not.i285 = icmp eq i32 %i.fp, 162
  br i1 %.not.i285, label %bb.an, label %_ZN4llvm5APInt6setBitEj.exit.i

bb.an:                                            ; preds = %bb.am
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0126.0.copyload.i, i64 64
  %i.fr = load i16, ptr %i.fq, align 8, !tbaa !678 ; 2 uses
  %i.fs = zext i16 %i.fr to i32                   ; 4 uses
  %i.ft = urem i32 %i.n, %i.fs
  %i.fu = udiv i32 %i.n, %i.fs                    ; 3 uses
  %i.fv = icmp eq i32 %i.ft, 0
  br i1 %i.fv, label %bb.ao, label %bb.bl

bb.ao:                                            ; preds = %bb.an
  %i.fw = udiv i32 %i.fn, %i.fu
  %i.fx = urem i32 %i.fn, %i.fu
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0126.0.copyload.i, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !639
  %i.ga = zext nneg i32 %i.fw to i64
  %i.gb = getelementptr inbounds nuw [40 x i8], ptr %i.fz, i64 %i.ga ; 2 uses
  %.sroa.0123.0.copyload.i = load ptr, ptr %i.gb, align 8, !tbaa !466 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !241 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0123.0.copyload.i, i64 24 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !469
  %i.ge = add i32 %i.gd, -53
  %spec.select.i.i.i = icmp ult i32 %i.ge, 2
  br i1 %spec.select.i.i.i, label %bb.ap, label %_ZN4llvm5APInt6setBitEj.exit102.i

bb.ap:                                            ; preds = %bb.ao
  %i.gf = and i64 %indvars.iv157.i, 63
  %i.gg = shl nuw i64 1, %i.gf                    ; 2 uses
  %i.gh = load i32, ptr %i.da, align 8, !tbaa !644
  %i.gi = icmp ult i32 %i.gh, 65
  br i1 %i.gi, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gj = load i64, ptr %17, align 8, !tbaa !358
  %i.gk = or i64 %i.gj, %i.gg
  store i64 %i.gk, ptr %17, align 8, !tbaa !358
  br label %_ZN4llvm5APInt6setBitEj.exit102.i

bb.ar:                                            ; preds = %bb.ap
  %i.gl = load ptr, ptr %17, align 8, !tbaa !358
  %i.gm = lshr i64 %indvars.iv157.i, 6
  %i.gn = and i64 %i.gm, 67108863
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gn ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !673
  %i.gq = or i64 %i.gp, %i.gg
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !673
  br label %_ZN4llvm5APInt6setBitEj.exit102.i

_ZN4llvm5APInt6setBitEj.exit102.i:                ; preds = %bb.ar, %bb.aq, %bb.ao
  %i.gr = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr nonnull %.sroa.0123.0.copyload.i, i32 %.sroa.7.0.copyload.i) #38
  br i1 %i.gr, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.i, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.i

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.i:     ; preds = %_ZN4llvm5APInt6setBitEj.exit102.i
  %i.gs = call noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr nonnull %.sroa.0123.0.copyload.i, i32 %.sroa.7.0.copyload.i) #38
  br i1 %i.gs, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.i, label %bb.au

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.i: ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.i, %_ZN4llvm5APInt6setBitEj.exit102.i
  %i.gt = and i64 %indvars.iv157.i, 63
  %i.gu = shl nuw i64 1, %i.gt                    ; 2 uses
  %i.gv = load i32, ptr %i.db, align 8, !tbaa !644
  %i.gw = icmp ult i32 %i.gv, 65
  br i1 %i.gw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.i
  %i.gx = load i64, ptr %18, align 8, !tbaa !358
  %i.gy = or i64 %i.gx, %i.gu
  store i64 %i.gy, ptr %18, align 8, !tbaa !358
  br label %_ZN4llvm5APInt6setBitEj.exit.i

bb.at:                                            ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.i
  %i.gz = load ptr, ptr %18, align 8, !tbaa !358
  %i.ha = lshr i64 %indvars.iv157.i, 6
  %i.hb = and i64 %i.ha, 67108863
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hb ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !673
  %i.he = or i64 %i.hd, %i.gu
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !673
  br label %_ZN4llvm5APInt6setBitEj.exit.i

bb.au:                                            ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.i
  %i.hf = load i32, ptr %i.gc, align 8, !tbaa !469
  switch i32 %i.hf, label %_ZN4llvm5APInt6setBitEj.exit.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 38, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 13, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.au, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0123.0.copyload.i, i64 88
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !655 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !644 ; 2 uses
  store i32 %i.hk, ptr %i.ei, align 8, !tbaa !644
  %i.hl = icmp ult i32 %i.hk, 65
  br i1 %i.hl, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.hm = load i64, ptr %i.hi, align 8, !tbaa !358
  store i64 %i.hm, ptr %7, align 8, !tbaa !358
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

bb.aw:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %i.hi) #38
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.hn = urem i32 %i.fn, %i.fu
  %i.ho = mul nsw i32 %i.hn, %i.ee
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef %i.ee, i32 noundef %i.ho) #38
  %i.hp = load i32, ptr %i.ei, align 8, !tbaa !644
  %i.hq = icmp ult i32 %i.hp, 65
  br i1 %i.hq, label %_ZN4llvm5APIntD2Ev.exit105.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.hr = load ptr, ptr %7, align 8, !tbaa !358   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %_ZN4llvm5APIntD2Ev.exit105.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.hr) #41
  br label %_ZN4llvm5APIntD2Ev.exit105.i

_ZN4llvm5APIntD2Ev.exit105.i:                     ; preds = %bb.ay, %bb.ax, %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.ht = load i64, ptr %8, align 8               ; 3 uses
  store i64 %i.ht, ptr %7, align 8
  %i.hu = load i32, ptr %i.ej, align 8, !tbaa !644 ; 4 uses
  store i32 %i.hu, ptr %i.ei, align 8, !tbaa !644
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.hv = icmp ult i32 %i.hu, 65
  br i1 %i.hv, label %_ZNK4llvm5APInteqEm.exit.i, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %_ZN4llvm5APIntD2Ev.exit105.i
  %i.hw = inttoptr i64 %i.ht to ptr               ; 2 uses
  %i.hx = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %7) #39
  %i.hy = sub i32 %i.hu, %i.hx
  %i.hz = icmp ult i32 %i.hy, 65
  br i1 %i.hz, label %_ZNK4llvm5APInteqEm.exit.ithread-pre-split, label %_ZN4llvm5APInt6setBitEj.exit107.thread.i

_ZNK4llvm5APInteqEm.exit.ithread-pre-split:       ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.i.pr = load i64, ptr %i.hw, align 8, !tbaa !358
  br label %_ZNK4llvm5APInteqEm.exit.i

_ZNK4llvm5APInteqEm.exit.i:                       ; preds = %_ZNK4llvm5APInteqEm.exit.ithread-pre-split, %_ZN4llvm5APIntD2Ev.exit105.i
  %.0.i.i.i = phi i64 [ %.0.i.i.i.pr, %_ZNK4llvm5APInteqEm.exit.ithread-pre-split ], [ %i.ht, %_ZN4llvm5APIntD2Ev.exit105.i ]
  %i.ia = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.ia, label %bb.az, label %_ZN4llvm5APInt6setBitEj.exit107.i

bb.az:                                            ; preds = %_ZNK4llvm5APInteqEm.exit.i
  %i.ib = and i64 %indvars.iv157.i, 63
  %i.ic = shl nuw i64 1, %i.ib                    ; 2 uses
  %i.id = load i32, ptr %i.db, align 8, !tbaa !644
  %i.ie = icmp ult i32 %i.id, 65
  br i1 %i.ie, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.if = load i64, ptr %18, align 8, !tbaa !358
  %i.ig = or i64 %i.if, %i.ic
  store i64 %i.ig, ptr %18, align 8, !tbaa !358
  br label %_ZN4llvm5APInt6setBitEj.exit107.i

bb.bb:                                            ; preds = %bb.az
  %i.ih = load ptr, ptr %18, align 8, !tbaa !358
  %i.ii = lshr i64 %indvars.iv157.i, 6
  %i.ij = and i64 %i.ii, 67108863
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.ij ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !673
  %i.im = or i64 %i.il, %i.ic
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !673
  br label %_ZN4llvm5APInt6setBitEj.exit107.i

_ZN4llvm5APInt6setBitEj.exit107.i:                ; preds = %bb.bb, %bb.ba, %_ZNK4llvm5APInteqEm.exit.i
  %i.in = icmp ugt i32 %i.hu, 64
  br i1 %i.in, label %_ZN4llvm5APInt6setBitEj.exit107._ZN4llvm5APInt6setBitEj.exit107.thread_crit_edge.i, label %_ZN4llvm5APIntD2Ev.exit108.i

_ZN4llvm5APInt6setBitEj.exit107._ZN4llvm5APInt6setBitEj.exit107.thread_crit_edge.i: ; preds = %_ZN4llvm5APInt6setBitEj.exit107.i
  %.pre163.i = load ptr, ptr %7, align 8, !tbaa !358
  br label %_ZN4llvm5APInt6setBitEj.exit107.thread.i

_ZN4llvm5APInt6setBitEj.exit107.thread.i:         ; preds = %_ZN4llvm5APInt6setBitEj.exit107._ZN4llvm5APInt6setBitEj.exit107.thread_crit_edge.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.io = phi ptr [ %.pre163.i, %_ZN4llvm5APInt6setBitEj.exit107._ZN4llvm5APInt6setBitEj.exit107.thread_crit_edge.i ], [ %i.hw, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ] ; 2 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %_ZN4llvm5APIntD2Ev.exit108.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit107.thread.i
  call void @_ZdaPv(ptr noundef nonnull %i.io) #41
  br label %_ZN4llvm5APIntD2Ev.exit108.i

_ZN4llvm5APIntD2Ev.exit108.i:                     ; preds = %bb.bc, %_ZN4llvm5APInt6setBitEj.exit107.thread.i, %_ZN4llvm5APInt6setBitEj.exit107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %_ZN4llvm5APInt6setBitEj.exit.i

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.au, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0123.0.copyload.i, i64 88
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !668
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24 ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !358, !noalias !1982
  %.not.i.i = icmp eq ptr %i.it, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.is) #38
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i

bb.be:                                            ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.is) #38
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i:       ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.iu = mul nsw i32 %i.fx, %i.ee
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.ee, i32 noundef %i.iu) #38
  %i.iv = load i32, ptr %i.eg, align 8, !tbaa !644
  %i.iw = icmp ult i32 %i.iv, 65
  br i1 %i.iw, label %_ZN4llvm5APIntD2Ev.exit111.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i
  %i.ix = load ptr, ptr %9, align 8, !tbaa !358   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %_ZN4llvm5APIntD2Ev.exit111.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdaPv(ptr noundef nonnull %i.ix) #41
  br label %_ZN4llvm5APIntD2Ev.exit111.i

_ZN4llvm5APIntD2Ev.exit111.i:                     ; preds = %bb.bg, %bb.bf, %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i
  %i.iz = load i64, ptr %10, align 8              ; 3 uses
  store i64 %i.iz, ptr %9, align 8
  %i.ja = load i32, ptr %i.eh, align 8, !tbaa !644 ; 4 uses
  store i32 %i.ja, ptr %i.eg, align 8, !tbaa !644
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.jb = icmp ult i32 %i.ja, 65
  br i1 %i.jb, label %_ZNK4llvm5APInteqEm.exit115.i, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i112.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i112.i:     ; preds = %_ZN4llvm5APIntD2Ev.exit111.i
  %i.jc = inttoptr i64 %i.iz to ptr               ; 2 uses
  %i.jd = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %9) #39
  %i.je = sub i32 %i.ja, %i.jd
  %i.jf = icmp ult i32 %i.je, 65
  br i1 %i.jf, label %_ZNK4llvm5APInteqEm.exit115.ithread-pre-split, label %_ZN4llvm5APInt6setBitEj.exit116.thread.i

_ZNK4llvm5APInteqEm.exit115.ithread-pre-split:    ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i112.i
  %.0.i.i114.i.pr = load i64, ptr %i.jc, align 8, !tbaa !358
  br label %_ZNK4llvm5APInteqEm.exit115.i

_ZNK4llvm5APInteqEm.exit115.i:                    ; preds = %_ZNK4llvm5APInteqEm.exit115.ithread-pre-split, %_ZN4llvm5APIntD2Ev.exit111.i
  %.0.i.i114.i = phi i64 [ %.0.i.i114.i.pr, %_ZNK4llvm5APInteqEm.exit115.ithread-pre-split ], [ %i.iz, %_ZN4llvm5APIntD2Ev.exit111.i ]
  %i.jg = icmp eq i64 %.0.i.i114.i, 0
  br i1 %i.jg, label %bb.bh, label %_ZN4llvm5APInt6setBitEj.exit116.i

bb.bh:                                            ; preds = %_ZNK4llvm5APInteqEm.exit115.i
  %i.jh = and i64 %indvars.iv157.i, 63
  %i.ji = shl nuw i64 1, %i.jh                    ; 2 uses
  %i.jj = load i32, ptr %i.db, align 8, !tbaa !644
  %i.jk = icmp ult i32 %i.jj, 65
  br i1 %i.jk, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jl = load i64, ptr %18, align 8, !tbaa !358
  %i.jm = or i64 %i.jl, %i.ji
  store i64 %i.jm, ptr %18, align 8, !tbaa !358
  br label %_ZN4llvm5APInt6setBitEj.exit116.i

bb.bj:                                            ; preds = %bb.bh
  %i.jn = load ptr, ptr %18, align 8, !tbaa !358
  %i.jo = lshr i64 %indvars.iv157.i, 6
  %i.jp = and i64 %i.jo, 67108863
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jp ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !673
  %i.js = or i64 %i.jr, %i.ji
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !673
  br label %_ZN4llvm5APInt6setBitEj.exit116.i

_ZN4llvm5APInt6setBitEj.exit116.i:                ; preds = %bb.bj, %bb.bi, %_ZNK4llvm5APInteqEm.exit115.i
  %i.jt = icmp ugt i32 %i.ja, 64
  br i1 %i.jt, label %_ZN4llvm5APInt6setBitEj.exit116._ZN4llvm5APInt6setBitEj.exit116.thread_crit_edge.i, label %_ZN4llvm5APIntD2Ev.exit117.i

_ZN4llvm5APInt6setBitEj.exit116._ZN4llvm5APInt6setBitEj.exit116.thread_crit_edge.i: ; preds = %_ZN4llvm5APInt6setBitEj.exit116.i
  %.pre162.i = load ptr, ptr %9, align 8, !tbaa !358
  br label %_ZN4llvm5APInt6setBitEj.exit116.thread.i

_ZN4llvm5APInt6setBitEj.exit116.thread.i:         ; preds = %_ZN4llvm5APInt6setBitEj.exit116._ZN4llvm5APInt6setBitEj.exit116.thread_crit_edge.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i112.i
  %i.ju = phi ptr [ %.pre162.i, %_ZN4llvm5APInt6setBitEj.exit116._ZN4llvm5APInt6setBitEj.exit116.thread_crit_edge.i ], [ %i.jc, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i112.i ] ; 2 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %_ZN4llvm5APIntD2Ev.exit117.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit116.thread.i
  call void @_ZdaPv(ptr noundef nonnull %i.ju) #41
  br label %_ZN4llvm5APIntD2Ev.exit117.i

_ZN4llvm5APIntD2Ev.exit117.i:                     ; preds = %bb.bk, %_ZN4llvm5APInt6setBitEj.exit116.thread.i, %_ZN4llvm5APInt6setBitEj.exit116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %_ZN4llvm5APInt6setBitEj.exit.i

bb.bl:                                            ; preds = %bb.an
  %i.jw = urem i32 %i.fs, %i.n
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %31, label %_ZN4llvm5APInt6setBitEj.exit.i

31:                                               ; preds = %bb.bl
  %.not155.i = icmp ugt i32 %i.n, %i.fs
  br i1 %.not155.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %31
  %32 = udiv i16 %i.fr, %.rhs.trunc.i             ; 2 uses
  %.zext.i = zext i16 %32 to i32
  %i.jy = mul nuw nsw i32 %i.fn, %.zext.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0126.0.copyload.i, i64 40
  %i.ka = zext nneg i32 %i.jy to i64
  %i.kb = zext i16 %32 to i64
  br label %bb.bm

._crit_edge.i:                                    ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit119.i
  br i1 %i.ki, label %._crit_edge.thread.i, label %_ZN4llvm5APInt6setBitEj.exit120.i

bb.bm:                                            ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit119.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit119.i ] ; 2 uses
  %.090144.i = phi i1 [ true, %.lr.ph.i ], [ %i.km, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit119.i ] ; 2 uses
  %.091143.i = phi i1 [ true, %.lr.ph.i ], [ %i.ki, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit119.i ]
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !639
  %i.kd = getelementptr inbounds nuw [40 x i8], ptr %i.kc, i64 %indvars.iv.i
  %i.ke = getelementptr inbounds nuw [40 x i8], ptr %i.kd, i64 %i.ka ; 2 uses
  %.sroa.0.0.copyload122.i = load ptr, ptr %i.ke, align 8, !tbaa !466 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !241 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload122.i, i64 24
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !469
  %i.kh = add i32 %i.kg, -53
  %spec.select.i.i118.i = icmp ult i32 %i.kh, 2
  %i.ki = and i1 %.091143.i, %spec.select.i.i118.i ; 2 uses
  %i.kj = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0.0.copyload122.i, i32 %.sroa.5.0.copyload.i) #38
  br i1 %i.kj, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit119.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kk = call noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr nonnull %.sroa.0.0.copyload122.i, i32 %.sroa.5.0.copyload.i) #38
  %i.kl = and i1 %.090144.i, %i.kk
  br label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit119.i

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit119.i:  ; preds = %bb.bn, %bb.bm
  %i.km = phi i1 [ %.090144.i, %bb.bm ], [ %i.kl, %bb.bn ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kn = icmp samesign ult i64 %indvars.iv.next.i, %i.kb
  br i1 %i.kn, label %bb.bm, label %._crit_edge.i, !llvm.loop !1974

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %31
  %.090.lcssa176.i = phi i1 [ %i.km, %._crit_edge.i ], [ true, %31 ] ; 2 uses
  %i.ko = and i64 %indvars.iv157.i, 63
  %i.kp = shl nuw i64 1, %i.ko                    ; 4 uses
  %i.kq = load i32, ptr %i.da, align 8, !tbaa !644
  %i.kr = icmp ult i32 %i.kq, 65
  br i1 %i.kr, label %.split177.i, label %.split.i

.split177.i:                                      ; preds = %._crit_edge.thread.i
  %i.ks = load i64, ptr %17, align 8, !tbaa !358
  %i.kt = or i64 %i.ks, %i.kp
  store i64 %i.kt, ptr %17, align 8, !tbaa !358
  br i1 %.090.lcssa176.i, label %bb.bo, label %_ZN4llvm5APInt6setBitEj.exit.i

.split.i:                                         ; preds = %._crit_edge.thread.i
  %i.ku = load ptr, ptr %17, align 8, !tbaa !358
  %i.kv = lshr i64 %indvars.iv157.i, 6
  %i.kw = and i64 %i.kv, 67108863
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kw ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !673
  %i.kz = or i64 %i.ky, %i.kp
  store i64 %i.kz, ptr %i.kx, align 8, !tbaa !673
  br i1 %.090.lcssa176.i, label %bb.bo, label %_ZN4llvm5APInt6setBitEj.exit.i

_ZN4llvm5APInt6setBitEj.exit120.i:                ; preds = %._crit_edge.i
  br i1 %i.km, label %_ZN4llvm5APInt6setBitEj.exit120.i._crit_edge, label %_ZN4llvm5APInt6setBitEj.exit.i

_ZN4llvm5APInt6setBitEj.exit120.i._crit_edge:     ; preds = %_ZN4llvm5APInt6setBitEj.exit120.i
  %.pre504 = and i64 %indvars.iv157.i, 63
  %.pre505 = shl nuw i64 1, %.pre504
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit120.i._crit_edge, %.split.i, %.split177.i
  %.pre-phi506 = phi i64 [ %.pre505, %_ZN4llvm5APInt6setBitEj.exit120.i._crit_edge ], [ %i.kp, %.split.i ], [ %i.kp, %.split177.i ] ; 2 uses
  %i.la = load i32, ptr %i.db, align 8, !tbaa !644
  %i.lb = icmp ult i32 %i.la, 65
  br i1 %i.lb, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.lc = load i64, ptr %18, align 8, !tbaa !358
  %i.ld = or i64 %i.lc, %.pre-phi506
  store i64 %i.ld, ptr %18, align 8, !tbaa !358
  br label %_ZN4llvm5APInt6setBitEj.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.le = load ptr, ptr %18, align 8, !tbaa !358
  %i.lf = lshr i64 %indvars.iv157.i, 6
  %i.lg = and i64 %i.lf, 67108863
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lg ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !673
  %i.lj = or i64 %i.li, %.pre-phi506
  store i64 %i.lj, ptr %i.lh, align 8, !tbaa !673
  br label %_ZN4llvm5APInt6setBitEj.exit.i

_ZN4llvm5APInt6setBitEj.exit.i:                   ; preds = %bb.bq, %bb.bp, %_ZN4llvm5APInt6setBitEj.exit120.i, %.split.i, %.split177.i, %bb.bl, %_ZN4llvm5APIntD2Ev.exit117.i, %_ZN4llvm5APIntD2Ev.exit108.i, %bb.au, %bb.at, %bb.as, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.ag
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next158.i, %i.o
  br i1 %exitcond.not.i, label %_ZL30computeZeroableShuffleElementsN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_5APIntES4_.exit, label %bb.ae, !llvm.loop !1975

_ZL30computeZeroableShuffleElementsN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_5APIntES4_.exit: ; preds = %_ZN4llvm5APInt6setBitEj.exit.i, %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  %i.lk = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.ll = load i32, ptr %i.da, align 8, !tbaa !644 ; 3 uses
  store i32 %i.ll, ptr %i.lk, align 8, !tbaa !644
  %i.lm = icmp ult i32 %i.ll, 65
  br i1 %i.lm, label %_ZN4llvm5APIntC2ERKS0_.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %_ZL30computeZeroableShuffleElementsN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_5APIntES4_.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(12) %17) #38
  %.pr = load i32, ptr %i.lk, align 8, !tbaa !644, !noalias !1983 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  %i.ln = icmp ult i32 %.pr, 65
  br i1 %i.ln, label %_ZN4llvm5APIntC2ERKS0_.exit.thread, label %bb.br

_ZN4llvm5APIntC2ERKS0_.exit.thread:               ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %_ZL30computeZeroableShuffleElementsN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_5APIntES4_.exit
  %.sink = phi ptr [ %17, %_ZL30computeZeroableShuffleElementsN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_5APIntES4_.exit ], [ %20, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %i.lo = phi i32 [ %i.ll, %_ZL30computeZeroableShuffleElementsN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_5APIntES4_.exit ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %.pre500.a = load i64, ptr %.sink, align 8, !tbaa !358
  %i.lp = load i64, ptr %18, align 8, !tbaa !358, !noalias !1983
  %i.lq = or i64 %.pre500.a, %i.lp                ; 2 uses
  store i64 %i.lq, ptr %20, align 8, !tbaa !358, !noalias !1983
  br label %_ZN4llvm5APIntD2Ev.exit

bb.br:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(12) %18) #38, !noalias !1983
  %.pre.i286 = load i32, ptr %i.lk, align 8, !tbaa !644, !noalias !1983
  %.pre1.i = load i64, ptr %20, align 8, !noalias !1983
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.br, %_ZN4llvm5APIntC2ERKS0_.exit.thread
  %i.lr = phi i64 [ %i.lq, %_ZN4llvm5APIntC2ERKS0_.exit.thread ], [ %.pre1.i, %bb.br ] ; 2 uses
  %i.ls = phi i32 [ %i.lo, %_ZN4llvm5APIntC2ERKS0_.exit.thread ], [ %.pre.i286, %bb.br ] ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i32 %i.ls, ptr %i.lt, align 8, !tbaa !644, !alias.scope !1983
  store i64 %i.lr, ptr %19, align 8, !alias.scope !1983
  store i32 0, ptr %i.lk, align 8, !tbaa !644, !noalias !1983
  %i.lu = icmp eq i32 %i.ls, 0
  br i1 %i.lu, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.lv = icmp ult i32 %i.ls, 65
  br i1 %i.lv, label %_ZNK4llvm5APInt9isAllOnesEv.exit, label %.split

.split:                                           ; preds = %bb.bs
  %i.lw = call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %19) #39
  %i.lx = icmp eq i32 %i.lw, %i.ls
  br i1 %i.lx, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, label %bb.bt

_ZNK4llvm5APInt9isAllOnesEv.exit:                 ; preds = %bb.bs
  %i.ly = sub nuw nsw i32 64, %i.ls
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = lshr i64 -1, %i.lz
  %i.mb = icmp eq i64 %i.lr, %i.ma
  br i1 %i.mb, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, label %bb.bt

_ZNK4llvm5APInt9isAllOnesEv.exit.thread:          ; preds = %_ZN4llvm5APIntD2Ev.exit, %.split, %_ZNK4llvm5APInt9isAllOnesEv.exit
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 360
  %.val272 = load i32, ptr %i.mc, align 8, !tbaa !343
  %i.md = call fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %.sroa.0.0.copyload.i.i.i, i32 %.val272, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %13) ; 2 uses
  %.fca.0.extract174 = extractvalue { ptr, i32 } %i.md, 0
  br label %bb.ct

bb.bt:                                            ; preds = %.split, %_ZNK4llvm5APInt9isAllOnesEv.exit
  br i1 %spec.select.i.i282, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.me = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.0391.0.copyload) #38
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.bu, %bb.bt
  %i.mf = phi i1 [ false, %bb.bt ], [ %i.me, %bb.bu ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  %i.mg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.mg, ptr %21, align 8, !tbaa !84
  %i.mh = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i32 0, ptr %i.mh, align 8, !tbaa !634
  %i.mi = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 16, ptr %i.mi, align 4, !tbaa !635
  %i.mj = add i16 %.sroa.0.0.copyload.i.i.i, -19  ; 2 uses
  %spec.select.i.i.i287 = icmp ult i16 %i.mj, 197
  %spec.select = select i1 %spec.select.i.i.i287, i16 %i.ah, i16 %.sroa.0.0.copyload.i.i.i
  %i.mk = zext i16 %spec.select to i64
  %i.ml = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 -16
  %.sroa.0.0.copyload.i.i288 = load i64, ptr %i.mm, align 16 ; 2 uses
  %i.mn = icmp ugt i64 %.sroa.0.0.copyload.i.i288, 63
  %or.cond4 = or i1 %i.ai, %i.mn
  br i1 %or.cond4, label %.critedge, label %bb.bv

bb.bv:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 3 uses
  %.val277 = load i32, ptr %i.mo, align 8, !tbaa !343
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 395 ; 2 uses
  %.val278 = load i8, ptr %i.mp, align 1
  %i.mq = call fastcc noundef zeroext i1 @_ZL25canCombineAsMaskOperationN4llvm7SDValueERKNS_12X86SubtargetE(ptr %.sroa.0435.0.copyload, i32 %.sroa.21.0.copyload, i32 %.val277, i8 %.val278)
  br i1 %i.mq, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val275 = load i32, ptr %i.mo, align 8, !tbaa !343
  %.val276 = load i8, ptr %i.mp, align 1
  %i.mr = call fastcc noundef zeroext i1 @_ZL25canCombineAsMaskOperationN4llvm7SDValueERKNS_12X86SubtargetE(ptr %.sroa.0391.0.copyload, i32 %.sroa.23.0.copyload, i32 %.val275, i8 %.val276)
  br i1 %i.mr, label %.critedge, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ms = call fastcc noundef zeroext i1 @_ZL23canWidenShuffleElementsN4llvm8ArrayRefIiEERKNS_5APIntEbRNS_15SmallVectorImplIiEE(ptr %i.e, i64 %i.o, ptr noundef nonnull align 8 dereferenceable(12) %19, i1 noundef zeroext %i.mf, ptr noundef nonnull align 8 dereferenceable(16) %21)
  br i1 %i.ms, label %bb.by, label %.critedge

bb.by:                                            ; preds = %bb.bx
  %i.mt = call fastcc { ptr, i32 } @_ZL23lowerShuffleAsBroadcastRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.0435.0.copyload, i32 %.sroa.21.0.copyload, ptr %.sroa.0391.0.copyload, i32 %.sroa.23.0.copyload, ptr %i.e, i64 %i.o, ptr noundef nonnull align 8 dereferenceable(519752) %2, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract153 = extractvalue { ptr, i32 } %i.mt, 0 ; 2 uses
  %.not466.a = icmp eq ptr %.fca.0.extract153, null
  br i1 %.not466.a, label %bb.bz, label %bb.cr

bb.bz:                                            ; preds = %bb.by
  %i.mu = add i16 %.sroa.0.0.copyload.i.i.i, -12
  %or.cond.i289 = icmp ult i16 %i.mu, 7
  %i.mv = add i16 %.sroa.0.0.copyload.i.i.i, -105
  %or.cond3.i290 = icmp ult i16 %i.mv, 58
  %or.cond4.i = or i1 %or.cond.i289, %or.cond3.i290
  %i.mw = add i16 %.sroa.0.0.copyload.i.i.i, -195
  %spec.select.i = icmp ult i16 %i.mw, 21
  %i.mx = or i1 %spec.select.i, %or.cond4.i
  %.tr267 = trunc nuw nsw i64 %.sroa.0.0.copyload.i.i288 to i32
  %i.my = shl nuw nsw i32 %.tr267, 1              ; 4 uses
  br i1 %i.mx, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit294, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit298

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit294:     ; preds = %bb.bz
  %i.mz = call i32 @llvm.fshl.i32(i32 %i.my, i32 %i.my, i32 28)
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr i8, ptr @switch.table._ZL19lowerVECTOR_SHUFFLEN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE, i64 %i.na
  %switch.gep = getelementptr i8, ptr %i.nb, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit298:     ; preds = %bb.bz
  %i.nc = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.my)
  %i.nd = icmp eq i32 %i.nc, 1
  br i1 %i.nd, label %switch.lookup.i, label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

switch.lookup.i:                                  ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit298
  %i.ne = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.my, i1 true)
  %switch.idx.cast.i = trunc nuw nsw i32 %i.ne to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

_ZN4llvm3MVT18getFloatingPointVTEj.exit:          ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit294, %switch.lookup.i, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit298
  %.sroa.0152.0 = phi i16 [ %switch.ext, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit294 ], [ 0, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit298 ], [ %switch.offset.i, %switch.lookup.i ]
  %i.nf = lshr i32 %i.z, 1                        ; 4 uses
  %i.ng = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0152.0, i32 noundef %i.nf) ; 6 uses
  %.not.i301 = icmp eq i16 %i.ng, 0
  br i1 %.not.i301, label %.critedge, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %_ZN4llvm3MVT18getFloatingPointVTEj.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !685
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 112
  %i.nk = zext i16 %i.ng to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nk
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !338
  %.not467 = icmp eq ptr %i.nm, null
  br i1 %.not467, label %.critedge, label %bb.ca

bb.ca:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %.not484 = icmp ne i32 %i.nf, 0
  %or.cond491.not = and i1 %.not484, %i.mf
  br i1 %or.cond491.not, label %.lr.ph487, label %.critedge489

.lr.ph487:                                        ; preds = %bb.ca
  %i.nn = load ptr, ptr %21, align 8, !tbaa !84   ; 2 uses
  %i.no = zext nneg i32 %i.nf to i64              ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph487
  %indvars.iv.ph = phi i64 [ %indvars.iv.next536, %.thread ], [ 0, %.lr.ph487 ]
  %.0263486.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph487 ]
  br label %bb.cb

._crit_edge488:                                   ; preds = %bb.cc
  br i1 %.0263486.ph, label %._crit_edge488.thread, label %.critedge489

bb.cb:                                            ; preds = %.outer, %bb.cc
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cc ], [ %indvars.iv.ph, %.outer ] ; 5 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !241
  %i.nr = icmp eq i32 %i.nq, -2
  br i1 %i.nr, label %.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.no
  br i1 %.not, label %._crit_edge488, label %bb.cb, !llvm.loop !1978

.thread:                                          ; preds = %bb.cb
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv
end_hunk_4
begin_hunk_5_@_ZL23combineINSERT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE:bb.a

.critedge486:                                     ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.nk = call fastcc { ptr, i32 } @_ZL17getBROADCAST_LOADjRKN4llvm5SDLocENS_3EVTES3_PNS_9MemSDNodeEjRNS_12SelectionDAGE(i32 noundef 824, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i, ptr null, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull %i.mx, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(920) %1) ; 2 uses
  %.fca.0.extract80 = extractvalue { ptr, i32 } %i.nk, 0 ; 3 uses
  %.fca.1.extract81 = extractvalue { ptr, i32 } %i.nk, 1 ; 2 uses
  store ptr %.fca.0.extract80, ptr %30, align 8, !tbaa !466
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.fca.1.extract81, ptr %.sroa.30.0..sroa_idx, align 8, !tbaa !241
  %i.nl = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract74 = extractvalue { ptr, i32 } %i.nl, 0
  %.fca.1.extract75 = extractvalue { ptr, i32 } %i.nl, 1
  store ptr %.fca.0.extract74, ptr %31, align 8
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.fca.1.extract75, ptr %.sroa.277.0..sroa_idx, align 8
  %i.nm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31) #38 ; 2 uses
  %.fca.0.extract70 = extractvalue { ptr, i32 } %i.nm, 0
  %.fca.1.extract71 = extractvalue { ptr, i32 } %i.nm, 1
  %i.nn = call { ptr, i32 } @_ZN4llvm14TargetLowering15DAGCombinerInfo9CombineToEPNS_6SDNodeENS_7SDValueES4_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.mx, ptr %.fca.0.extract70, i32 %.fca.1.extract71, ptr %.fca.0.extract80, i32 1, i1 noundef zeroext true) #38 ; 0 uses
  br label %.critedge27

.critedge23:                                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit..critedge23_crit_edge, %_ZNK4llvm7SDValue9hasOneUseEv.exit558.thread, %bb.az, %bb.ay
  %i.no = phi ptr [ %.pre754, %_ZNK4llvm8TypeSizecvmEv.exit..critedge23_crit_edge ], [ %i.lo, %_ZNK4llvm7SDValue9hasOneUseEv.exit558.thread ], [ %.pre755, %bb.az ], [ %.pre755, %bb.ay ] ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !469
  %i.nr = add i32 %i.nq, -53
  %spec.select.i.i562 = icmp ult i32 %i.nr, 2
  br i1 %spec.select.i.i562, label %bb.bn, label %bb.bc

bb.bc:                                            ; preds = %.critedge23
  %i.ns = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef nonnull %i.no) #38
  %.sroa.045.0.copyload.pre756 = load ptr, ptr %6, align 8, !tbaa !466 ; 2 uses
  br i1 %i.ns, label %bb.bn, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.bc
  %i.nt = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i563 = icmp ult i16 %i.nt, 197
  %spec.select = select i1 %spec.select.i.i.i563, i16 %i.j, i16 %.sroa.0.0.copyload.i.i
  %i.nu = zext i16 %spec.select to i64
  %i.nv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.nu
  %i.nw = getelementptr i8, ptr %i.nv, i64 -16
  %.sroa.0.0.copyload.i.i564 = load i64, ptr %i.nw, align 16
  %i.nx = trunc i64 %.sroa.0.0.copyload.i.i564 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #38
  %i.ny = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  store i32 1, ptr %i.ny, align 8, !tbaa !644
  store i64 0, ptr %32, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  %i.nz = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  store i32 1, ptr %i.nz, align 8, !tbaa !644
  store i64 0, ptr %33, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  %i.oa = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %i.oa, ptr %34, align 8, !tbaa !84
  %i.ob = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store i32 0, ptr %i.ob, align 8, !tbaa !634
  %i.oc = getelementptr inbounds nuw i8, ptr %34, i64 12
  store i32 16, ptr %i.oc, align 4, !tbaa !635
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  %i.od = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %i.od, ptr %35, align 8, !tbaa !84
  %i.oe = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 0, ptr %i.oe, align 8, !tbaa !634
  %i.of = getelementptr inbounds nuw i8, ptr %35, i64 12
  store i32 16, ptr %i.of, align 4, !tbaa !635
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.257.0.copyload = load i32, ptr %.sroa.257.0..sroa_idx, align 8, !tbaa !241
  %i.og = call fastcc noundef zeroext i1 @_ZL29getTargetConstantBitsFromNodeN4llvm7SDValueEjRNS_5APIntERNS_15SmallVectorImplIS1_EEbb(ptr %.sroa.045.0.copyload.pre756, i32 %.sroa.257.0.copyload, i32 noundef %i.nx, ptr noundef nonnull align 8 dereferenceable(12) %32, ptr noundef nonnull align 8 dereferenceable(16) %34, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.og, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %.sroa.053.0.copyload = load ptr, ptr %7, align 8, !tbaa !466
  %.sroa.254.0.copyload = load i32, ptr %i.ad, align 8, !tbaa !241
  %i.oh = call fastcc noundef zeroext i1 @_ZL29getTargetConstantBitsFromNodeN4llvm7SDValueEjRNS_5APIntERNS_15SmallVectorImplIS1_EEbb(ptr %.sroa.053.0.copyload, i32 %.sroa.254.0.copyload, i32 noundef %i.nx, ptr noundef nonnull align 8 dereferenceable(12) %33, ptr noundef nonnull align 8 dereferenceable(16) %35, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.oh, label %.critedge488, label %bb.bi

.critedge488:                                     ; preds = %bb.bd
  call void @_ZN4llvm5APInt10insertBitsERKS0_j(ptr noundef nonnull align 8 dereferenceable(12) %32, ptr noundef nonnull align 8 dereferenceable(12) %33, i32 noundef %i.ml) #38
  %i.oi = load ptr, ptr %34, align 8, !tbaa !84
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.oi, i64 %.0.i.i.i.i
  %i.ok = call noundef ptr @_ZN4llvm4copyIRNS_11SmallVectorINS_5APIntELj16EEEPS2_EET0_OT_S6_(ptr noundef nonnull align 8 dereferenceable(272) %35, ptr noundef %i.oj) ; 0 uses
  %i.ol = load ptr, ptr %34, align 8, !tbaa !84
  %i.om = load i32, ptr %i.ob, align 8, !tbaa !634
  %i.on = zext i32 %i.om to i64
  %i.oo = call fastcc { ptr, i32 } @_ZL14getConstVectorN4llvm8ArrayRefINS_5APIntEEERKS1_NS_3MVTERNS_12SelectionDAGERKNS_5SDLocE(ptr %i.ol, i64 %i.on, ptr noundef nonnull align 8 dereferenceable(12) %32, i16 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %5) ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.oo, 0
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.oo, 1
  call void @_ZN4llvm11SmallVectorINS_5APIntELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %35) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  call void @_ZN4llvm11SmallVectorINS_5APIntELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %34) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  %i.op = load i32, ptr %i.nz, align 8, !tbaa !644
  %i.oq = icmp ugt i32 %i.op, 64
  br i1 %i.oq, label %bb.be, label %_ZN4llvm5APIntD2Ev.exit

bb.be:                                            ; preds = %.critedge488
  %i.or = load ptr, ptr %33, align 8, !tbaa !358  ; 2 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %_ZN4llvm5APIntD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZdaPv(ptr noundef nonnull %i.or) #41
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.critedge488, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  %i.ot = load i32, ptr %i.ny, align 8, !tbaa !644
  %i.ou = icmp ugt i32 %i.ot, 64
  br i1 %i.ou, label %bb.bg, label %_ZN4llvm5APIntD2Ev.exit565

bb.bg:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ov = load ptr, ptr %32, align 8, !tbaa !358  ; 2 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %_ZN4llvm5APIntD2Ev.exit565, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.ov) #41
  br label %_ZN4llvm5APIntD2Ev.exit565

_ZN4llvm5APIntD2Ev.exit565:                       ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  br label %.critedge27

bb.bi:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %bb.bd
  call void @_ZN4llvm11SmallVectorINS_5APIntELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %35) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  call void @_ZN4llvm11SmallVectorINS_5APIntELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %34) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  %i.ox = load i32, ptr %i.nz, align 8, !tbaa !644
  %i.oy = icmp ugt i32 %i.ox, 64
  br i1 %i.oy, label %bb.bj, label %_ZN4llvm5APIntD2Ev.exit566

bb.bj:                                            ; preds = %bb.bi
  %i.oz = load ptr, ptr %33, align 8, !tbaa !358  ; 2 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %_ZN4llvm5APIntD2Ev.exit566, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.oz) #41
  br label %_ZN4llvm5APIntD2Ev.exit566

_ZN4llvm5APIntD2Ev.exit566:                       ; preds = %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  %i.pb = load i32, ptr %i.ny, align 8, !tbaa !644
  %i.pc = icmp ugt i32 %i.pb, 64
  br i1 %i.pc, label %bb.bl, label %_ZN4llvm5APIntD2Ev.exit567

bb.bl:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit566
  %i.pd = load ptr, ptr %32, align 8, !tbaa !358  ; 2 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %_ZN4llvm5APIntD2Ev.exit567, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZdaPv(ptr noundef nonnull %i.pd) #41
  br label %_ZN4llvm5APIntD2Ev.exit567

_ZN4llvm5APIntD2Ev.exit567:                       ; preds = %_ZN4llvm5APIntD2Ev.exit566, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  %.sroa.045.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !466
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit567, %bb.bc, %.critedge23
  %.sroa.045.0.copyload = phi ptr [ %.sroa.045.0.copyload.pre, %_ZN4llvm5APIntD2Ev.exit567 ], [ %.sroa.045.0.copyload.pre756, %bb.bc ], [ %i.no, %.critedge23 ]
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.246.0.copyload = load i32, ptr %.sroa.246.0..sroa_idx, align 8, !tbaa !241
  %i.pf = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.045.0.copyload, i32 %.sroa.246.0.copyload) #38
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.pf, 0
  %i.pg = getelementptr inbounds nuw i8, ptr %.fca.0.extract41, i64 24
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !469
  %i.pi = call fastcc noundef zeroext i1 @_ZL15isTargetShufflej(i32 noundef %i.ph)
  br i1 %i.pi, label %.preheader, label %.critedge25

.preheader:                                       ; preds = %bb.bn, %.critedge.i
  %.sroa.0.0.i.in = phi ptr [ %i.pm, %.critedge.i ], [ %7, %bb.bn ]
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.i.in, align 8, !tbaa !466 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !469 ; 2 uses
  switch i32 %i.pk, label %"_ZZL23combineINSERT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit" [
    i32 248, label %.critedge.i
    i32 167, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %.preheader, %.preheader
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 40
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !639
  br label %.preheader, !llvm.loop !3502

"_ZZL23combineINSERT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit": ; preds = %.preheader
  %i.pn = call fastcc noundef zeroext i1 @_ZL15isTargetShufflej(i32 noundef %i.pk)
  br i1 %i.pn, label %bb.bo, label %.critedge25

bb.bo:                                            ; preds = %"_ZZL23combineINSERT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit"
  %i.po = call fastcc { ptr, i32 } @_ZL29combineX86ShufflesRecursivelyN4llvm7SDValueERNS_12SelectionDAGERKNS_12X86SubtargetE(ptr nonnull %0, i32 0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(519752) %3) ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.po, 0 ; 2 uses
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.po, 1
  %.not739 = icmp eq ptr %.fca.0.extract28, null
  br i1 %.not739, label %.critedge25, label %.critedge27

.critedge25:                                      ; preds = %bb.bn, %bb.bo, %"_ZZL23combineINSERT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit"
  %i.pp = zext i16 %i.as to i64                   ; 2 uses
  %i.pq = urem i64 %.0.i.i.i.i, %i.pp
  %i.pr = udiv i64 %.0.i.i.i.i, %i.pp
  %i.ps = icmp eq i64 %i.pq, 0
  br i1 %i.ps, label %bb.bp, label %.critedge27

bb.bp:                                            ; preds = %.critedge25
  %i.pt = load ptr, ptr %6, align 8, !tbaa !473   ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !469
  %i.pw = icmp ne i32 %i.pv, 316
  %.not4.i = icmp eq ptr %i.pt, null
  %.not.i570 = or i1 %.not4.i, %i.pw
  br i1 %.not.i570, label %.critedge27, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.py = load i16, ptr %i.px, align 8
  %i.pz = and i16 %i.py, 3968
  %or.cond728 = icmp eq i16 %i.pz, 0
  br i1 %or.cond728, label %bb.br, label %.critedge27

bb.br:                                            ; preds = %bb.bq
  %i.qa = load ptr, ptr %7, align 8, !tbaa !473   ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !469
  %i.qd = icmp ne i32 %i.qc, 316
  %.not4.i571 = icmp eq ptr %i.qa, null
  %.not.i572 = or i1 %.not4.i571, %i.qd
  br i1 %.not.i572, label %.critedge27, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.qf = load i16, ptr %i.qe, align 8
  %i.qg = and i16 %i.qf, 3968
  %or.cond730 = icmp eq i16 %i.qg, 0
  br i1 %or.cond730, label %bb.bt, label %.critedge27

bb.bt:                                            ; preds = %bb.bs
  %i.qh = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %7) ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.qh, 1
  %i.qi = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.qi, label %bb.bu, label %_ZNK4llvm8TypeSizecvmEv.exit574

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit574:                  ; preds = %bb.bt
  %.fca.0.extract = extractvalue { i64, i8 } %i.qh, 0
  %i.qj = lshr i64 %.fca.0.extract, 3
  %i.qk = trunc i64 %i.qj to i32
  %i.ql = trunc i64 %i.pr to i32
  %i.qm = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG30areNonVolatileConsecutiveLoadsEPNS_10LoadSDNodeES2_ji(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull %i.qa, ptr noundef nonnull %i.pt, i32 noundef %i.qk, i32 noundef %i.ql) #38
  br i1 %i.qm, label %bb.bv, label %.critedge27

bb.bv:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit574
  %.sroa.0707.0.copyload711 = load ptr, ptr %6, align 8, !tbaa !466
  %.sroa.30.0.copyload713 = load i32, ptr %.sroa.246.0..sroa_idx, align 8, !tbaa !241
  br label %.critedge27

.critedge27:                                      ; preds = %bb.br, %bb.bs, %bb.bp, %bb.bq, %bb.bv, %bb.bo, %.critedge25, %_ZNK4llvm8TypeSizecvmEv.exit574, %_ZN4llvm5APIntD2Ev.exit565, %.critedge486, %bb.am, %bb.ar, %bb.ax, %bb.au, %bb.ap
  %.sroa.30.1 = phi i32 [ %.fca.1.extract143, %bb.am ], [ %.fca.1.extract129, %bb.ap ], [ %.fca.1.extract122, %bb.ar ], [ %.fca.1.extract117, %bb.au ], [ %.fca.1.extract108, %bb.ax ], [ %.fca.1.extract81, %.critedge486 ], [ %.fca.1.extract49, %_ZN4llvm5APIntD2Ev.exit565 ], [ %.fca.1.extract29, %bb.bo ], [ %.sroa.30.0.copyload713, %bb.bv ], [ 0, %bb.bs ], [ 0, %bb.br ], [ 0, %.critedge25 ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit574 ], [ 0, %bb.bp ], [ 0, %bb.bq ]
  %.sroa.0707.1 = phi ptr [ %.fca.0.extract142, %bb.am ], [ %.fca.0.extract128, %bb.ap ], [ %.fca.0.extract121, %bb.ar ], [ %.fca.0.extract116, %bb.au ], [ %.fca.0.extract107, %bb.ax ], [ %.fca.0.extract80, %.critedge486 ], [ %.fca.0.extract48, %_ZN4llvm5APIntD2Ev.exit565 ], [ %.fca.0.extract28, %bb.bo ], [ %.sroa.0707.0.copyload711, %bb.bv ], [ null, %bb.bs ], [ null, %bb.br ], [ null, %.critedge25 ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit574 ], [ null, %bb.bp ], [ null, %bb.bq ]
  %i.qn = load ptr, ptr %26, align 8, !tbaa !84   ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.kt
  br i1 %i.qo, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %.critedge27
  call void @free(ptr noundef %i.qn) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit: ; preds = %.critedge27, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %.thread719

.critedge490:                                     ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.kc, %bb.ai ], [ %i.km, %bb.aj ] ; 2 uses
  %.sroa.0707.2 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.30.2 = extractvalue { ptr, i32 } %.pn, 1
  %i.qp = load ptr, ptr %19, align 8, !tbaa !84   ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit575, label %bb.bx

bb.bx:                                            ; preds = %.critedge490
  call void @free(ptr noundef %i.qp) #38
  br label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit575

_ZN4llvm11SmallVectorIiLj64EED2Ev.exit575:        ; preds = %.critedge490, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  %i.qs = load ptr, ptr %16, align 8, !tbaa !84   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.qu = icmp eq ptr %i.qs, %i.qt
  br i1 %i.qu, label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit576, label %bb.by

bb.by:                                            ; preds = %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit575
  call void @free(ptr noundef %i.qs) #38
  br label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit576

_ZN4llvm11SmallVectorIiLj64EED2Ev.exit576:        ; preds = %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit575, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %.thread719

.thread719:                                       ; preds = %bb.t, %bb.s, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread718, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit576, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit, %.critedge476, %.critedge474, %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit, %bb.z, %bb.l, %bb.h, %bb.f
  %.sroa.30.3 = phi i32 [ %.fca.1.extract371, %bb.f ], [ %.fca.1.extract359, %bb.h ], [ %.fca.1.extract344, %bb.l ], [ %.fca.1.extract273, %.critedge476 ], [ %.fca.1.extract324, %.critedge474 ], [ %.fca.1.extract265, %bb.z ], [ %.sroa.30.1, %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit ], [ %.sroa.30.2, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit576 ], [ %.fca.1.extract227, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread718 ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ 0, %bb.s ], [ 0, %bb.t ]
  %.sroa.0707.3 = phi ptr [ %.fca.0.extract370, %bb.f ], [ %.fca.0.extract358, %bb.h ], [ %.fca.0.extract343, %bb.l ], [ %.fca.0.extract272, %.critedge476 ], [ %.fca.0.extract323, %.critedge474 ], [ %.fca.0.extract264, %bb.z ], [ %.sroa.0707.1, %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit ], [ %.sroa.0707.2, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit576 ], [ %.fca.0.extract226, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread718 ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ null, %bb.s ], [ null, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.bz

bb.bz:                                            ; preds = %bb.a, %.thread719
  %.sroa.30.4 = phi i32 [ %.sroa.30.3, %.thread719 ], [ 0, %bb.a ]
  %.sroa.0707.4 = phi ptr [ %.sroa.0707.3, %.thread719 ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0707.4, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.30.4, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"class.llvm::ArrayRef.422", align 8 ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SmallVector.701", align 8 ; 8 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 44 uses
  %i.a = alloca i32, align 4                      ; 24 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 12 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 60 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %class.anon.1886, align 8          ; 4 uses
  %22 = alloca %"class.llvm::SmallVector.1144", align 8 ; 11 uses
  %23 = alloca %"class.llvm::SmallVector.1144", align 8 ; 12 uses
  %24 = alloca %"class.llvm::SmallVector.726", align 8 ; 11 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %26 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %29 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %30 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %31 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %48 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %52 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !470
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 8, !tbaa !346 ; 32 uses
  %.not998 = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not998, label %bb.dc, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !473
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !655  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !644
  %i.n = icmp ult i32 %i.m, 65
  %i.o = load ptr, ptr %i.k, align 8
  %spec.select.i.i.i.i = select i1 %i.n, ptr %i.k, ptr %i.o
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !358
  %i.p = trunc i64 %.0.i.i.i.i to i32
  store i32 %i.p, ptr %i.a, align 4, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.q = load ptr, ptr %11, align 8, !tbaa !473   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !468
end_hunk_5
begin_hunk_6_@_ZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE:bb.a
  %i.bh = zext i16 %.sroa.0.0.copyload.i.i691 to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !338
  %i.bk = icmp ne ptr %i.bj, null
  %i.bl = icmp eq i32 %i.ai, 256
  %or.cond = and i1 %i.bl, %i.bk
  br i1 %or.cond, label %bb.j, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

bb.j:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !469
  %i.bo = icmp eq i32 %i.bn, 193
  br i1 %i.bo, label %bb.k, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !639 ; 2 uses
  %.sroa.0526.0.copyload = load ptr, ptr %i.bq, align 8, !tbaa !466
  %.sroa.2527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.2527.0.copyload = load i32, ptr %.sroa.2527.0..sroa_idx, align 8, !tbaa !241
  %i.br = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0526.0.copyload, i32 %.sroa.2527.0.copyload) #38 ; 2 uses
  %.fca.0.extract7.i = extractvalue { ptr, i32 } %i.br, 0 ; 2 uses
  %.fca.1.extract8.i = extractvalue { ptr, i32 } %i.br, 1
  %i.bs = call noundef zeroext i1 @_ZN4llvm12isBitwiseNotENS_7SDValueEb(ptr %.fca.0.extract7.i, i32 %.fca.1.extract8.i, i1 noundef zeroext false) #38
  br i1 %i.bs, label %"_ZZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit", label %"_ZZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit.thread"

"_ZZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit": ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %.fca.0.extract7.i, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !639 ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %i.bu, align 8, !tbaa !466
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !241
  %i.bv = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.03.0.copyload.i, i32 %.sroa.4.0.copyload.i) #38
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !469
  %i.by = icmp eq i32 %i.bx, 165
  br i1 %i.by, label %.critedge675, label %"_ZZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit.thread"

"_ZZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit.thread": ; preds = %bb.k, %"_ZZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit"
  %i.bz = load ptr, ptr %11, align 8, !tbaa !473
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !639 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %.sroa.0523.0.copyload = load ptr, ptr %i.cc, align 8, !tbaa !466
  %.sroa.2524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %.sroa.2524.0.copyload = load i32, ptr %.sroa.2524.0..sroa_idx, align 8, !tbaa !241
  %i.cd = call fastcc noundef zeroext i1 @"_ZZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE"(ptr %.sroa.0523.0.copyload, i32 %.sroa.2524.0.copyload)
  br i1 %i.cd, label %.critedge675, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

.critedge675:                                     ; preds = %"_ZZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit.thread", %"_ZZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit"
  %.sroa.0519.0.copyload = load ptr, ptr %11, align 8, !tbaa !466
  %.sroa.2520.0.copyload = load i32, ptr %i.r, align 8, !tbaa !241
  %i.ce = call fastcc { ptr, i32 } @_ZL13splitVectorOpN4llvm7SDValueERNS_12SelectionDAGERKNS_5SDLocE(ptr readonly %.sroa.0519.0.copyload, i32 %.sroa.2520.0.copyload, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %13) ; 2 uses
  %.fca.0.extract515 = extractvalue { ptr, i32 } %i.ce, 0
  %.fca.1.extract516 = extractvalue { ptr, i32 } %i.ce, 1
  store ptr %.fca.0.extract515, ptr %14, align 8
  %.sroa.2518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract516, ptr %.sroa.2518.0..sroa_idx, align 8
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.cg) #38 ; 2 uses
  %.fca.0.extract511 = extractvalue { ptr, i32 } %i.ch, 0
  %.fca.1.extract512 = extractvalue { ptr, i32 } %i.ch, 1
  br label %.thread986

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit, %"_ZZL24combineEXTRACT_SUBVECTORPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEENK3$_1clENS_7SDValueE.exit.thread", %bb.j, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !1130
  %i.ck = icmp slt i32 %i.cj, 2
  br i1 %i.ck, label %.thread986, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !639 ; 2 uses
  %.sroa.0127.0.copyload.i = load ptr, ptr %i.cl, align 8, !tbaa !466 ; 3 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !241
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0127.0.copyload.i, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !469
  %.not.i700 = icmp eq i32 %i.cn, 220
  br i1 %.not.i700, label %bb.m, label %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0127.0.copyload.i, i64 40 ; 5 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !639
  %.sroa.071.0.copyload.i = load ptr, ptr %i.cp, align 8, !tbaa !466
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.cq, ptr %10, align 8, !tbaa !84
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.cr, align 8, !tbaa !634
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 3, ptr %i.cs, align 4, !tbaa !635
  %i.ct = call fastcc noundef zeroext i1 @_ZL16collectConcatOpsPN4llvm6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGE(ptr noundef readonly %.sroa.071.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(920) %1)
  %i.cu = load ptr, ptr %10, align 8, !tbaa !84   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cq
  br i1 %i.cv, label %_ZL19isFreeToSplitVectorN4llvm7SDValueERNS_12SelectionDAGE.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.cu) #38
  br label %_ZL19isFreeToSplitVectorN4llvm7SDValueERNS_12SelectionDAGE.exit.i

_ZL19isFreeToSplitVectorN4llvm7SDValueERNS_12SelectionDAGE.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br i1 %i.ct, label %bb.o, label %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread

bb.o:                                             ; preds = %_ZL19isFreeToSplitVectorN4llvm7SDValueERNS_12SelectionDAGE.exit.i
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !470
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.cw, align 8, !tbaa !346 ; 3 uses
  %i.cx = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i703 = icmp ult i16 %i.cx, 144
  br i1 %spec.select.i.i.i703, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.i, label %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit.i:           ; preds = %bb.o
  %i.cy = zext nneg i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.cz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.da, align 16
  %i.db = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 128
  br i1 %i.db, label %bb.p, label %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread

bb.p:                                             ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.i
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !639 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !473
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !468
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !470
  %i.di = zext i32 %i.df to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.di
  %.sroa.0.0.copyload.i.i.i89.i = load i16, ptr %i.dj, align 8, !tbaa !346 ; 2 uses
  %i.dk = add i16 %.sroa.0.0.copyload.i.i.i89.i, -19
  %spec.select.i.i90.i = icmp ult i16 %i.dk, 144
  br i1 %spec.select.i.i90.i, label %_ZNK4llvm3MVT14is256BitVectorEv.exit.i, label %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread

_ZNK4llvm3MVT14is256BitVectorEv.exit.i:           ; preds = %bb.p
  %i.dl = zext nneg i16 %.sroa.0.0.copyload.i.i.i89.i to i64
  %i.dm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -16
  %.sroa.0.0.copyload.i.i.i91.i = load i64, ptr %i.dn, align 16
  switch i64 %.sroa.0.0.copyload.i.i.i91.i, label %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread [
    i64 256, label %bb.q
    i64 512, label %bb.q
  ]

bb.q:                                             ; preds = %_ZNK4llvm3MVT14is256BitVectorEv.exit.i, %_ZNK4llvm3MVT14is256BitVectorEv.exit.i
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !639 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !473
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !468
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !470
  %i.du = zext i32 %i.dr to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.du
  %.sroa.0.0.copyload.i.i.i94.i = load i16, ptr %i.dv, align 8, !tbaa !346 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0127.0.copyload.i, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !470
  %i.dy = zext i32 %.sroa.10.0.copyload.i to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.dy
  %.sroa.0.0.copyload.i.i.i95.i = load i16, ptr %i.dz, align 8, !tbaa !346 ; 2 uses
  %i.ea = add i16 %.sroa.0.0.copyload.i.i.i95.i, -163
  %spec.select.i.i96.i = icmp ult i16 %i.ea, 53
  br i1 %spec.select.i.i96.i, label %bb.r, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i704

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i704:  ; preds = %bb.q
  %i.eb = zext i16 %.sroa.0.0.copyload.i.i.i95.i to i64 ; 2 uses
  %i.ec = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 -2
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !340 ; 4 uses
  %i.ef = zext i16 %i.ee to i32
  %i.eg = add i16 %.sroa.0.0.copyload.i.i.i94.i, -163
  %spec.select.i.i97.i = icmp ult i16 %i.eg, 53
  br i1 %spec.select.i.i97.i, label %bb.s, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit98.i

bb.s:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i704
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit98.i:   ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i704
  %i.eh = zext i16 %.sroa.0.0.copyload.i.i.i94.i to i64 ; 2 uses
  %i.ei = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -2
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !340 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !473
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 88
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !655 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !644
  %i.es = icmp ult i32 %i.er, 65
  %i.et = load ptr, ptr %i.ep, align 8
  %spec.select.i.i.i.i.i = select i1 %i.es, ptr %i.ep, ptr %i.et
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !358
  %i.eu = trunc i64 %.0.i.i.i.i.i to i32          ; 3 uses
  %i.ev = urem i16 %i.ee, %i.ek
  %i.ew = udiv i16 %i.ee, %i.ek
  %i.ex = icmp eq i16 %i.ev, 0
  br i1 %i.ex, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit98.i
  %.zext140.i = zext i16 %i.ew to i32
  %i.ey = mul i32 %.zext140.i, %i.eu
  br label %.thread136.i

bb.u:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit98.i
  %i.ez = udiv i16 %i.ek, %i.ee
  %.zext146.i = zext i16 %i.ez to i32             ; 2 uses
  %i.fa = urem i32 %i.eu, %.zext146.i
  %i.fb = udiv i32 %i.eu, %.zext146.i
  %.not88.i = icmp eq i32 %i.fa, 0
  br i1 %.not88.i, label %.thread136.i, label %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread

.thread136.i:                                     ; preds = %bb.u, %bb.t
  %.1.i = phi i32 [ %i.ey, %bb.t ], [ %i.fb, %bb.u ] ; 3 uses
  %i.fc = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.eh ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 -16
  %.sroa.0.0.copyload.i.i705 = load i64, ptr %i.fd, align 16
  %.sroa.2.0..sroa_idx.i.i706 = getelementptr i8, ptr %i.fc, i64 -8
  %.sroa.2.0.copyload.i.i707 = load i8, ptr %.sroa.2.0..sroa_idx.i.i706, align 8
  %i.fe = trunc nuw i8 %.sroa.2.0.copyload.i.i707 to i1
  br i1 %i.fe, label %bb.v, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.v:                                             ; preds = %.thread136.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %.thread136.i
  %.sroa.2.0..sroa_idx.i100.i = getelementptr i8, ptr %i.cz, i64 -8
  %.sroa.2.0.copyload.i101.i = load i8, ptr %.sroa.2.0..sroa_idx.i100.i, align 8
  %i.ff = trunc nuw i8 %.sroa.2.0.copyload.i101.i to i1
  br i1 %i.ff, label %bb.w, label %_ZNK4llvm8TypeSizecvmEv.exit104.i

bb.w:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit104.i:                ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.fg = lshr i64 %.sroa.0.0.copyload.i.i705, 7
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = udiv i32 %i.ef, %i.fh
  %i.fj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.eb
  %i.fk = getelementptr i8, ptr %i.fj, i64 -2
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !346
  %i.fm = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.fl, i32 noundef %i.fi)
  %i.fn = load ptr, ptr %i.co, align 8, !tbaa !639 ; 2 uses
  %.sroa.036.0.copyload.i = load ptr, ptr %i.fn, align 8, !tbaa !466
  %.sroa.237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.sroa.237.0.copyload.i = load i32, ptr %.sroa.237.0..sroa_idx.i, align 8, !tbaa !241
  %i.fo = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr %.sroa.036.0.copyload.i, i32 %.sroa.237.0.copyload.i, i32 noundef %.1.i, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef 128) ; 2 uses
  %.fca.0.extract32.i = extractvalue { ptr, i32 } %i.fo, 0 ; 2 uses
  %.fca.1.extract33.i = extractvalue { ptr, i32 } %i.fo, 1 ; 2 uses
  %i.fp = load ptr, ptr %i.co, align 8, !tbaa !639 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %.sroa.026.0.copyload.i = load ptr, ptr %i.fq, align 8, !tbaa !466
  %.sroa.227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %.sroa.227.0.copyload.i = load i32, ptr %.sroa.227.0..sroa_idx.i, align 8, !tbaa !241
  %i.fr = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr %.sroa.026.0.copyload.i, i32 %.sroa.227.0.copyload.i, i32 noundef %.1.i, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef 128) ; 2 uses
  %.fca.0.extract22.i = extractvalue { ptr, i32 } %i.fr, 0
  %.fca.1.extract23.i = extractvalue { ptr, i32 } %i.fr, 1
  %i.fs = load ptr, ptr %i.co, align 8, !tbaa !639 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 80
  %.sroa.017.0.copyload.i = load ptr, ptr %i.ft, align 8, !tbaa !466
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 88
  %.sroa.218.0.copyload.i = load i32, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !241
  %i.fu = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr %.sroa.017.0.copyload.i, i32 %.sroa.218.0.copyload.i, i32 noundef %.1.i, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef 128) ; 2 uses
  %.fca.0.extract13.i = extractvalue { ptr, i32 } %i.fu, 0
  %.fca.1.extract14.i = extractvalue { ptr, i32 } %i.fu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.fca.0.extract13.i, ptr %8, align 8
  %.sroa.2108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract14.i, ptr %.sroa.2108.0..sroa_idx.i, align 8
  store ptr %.fca.0.extract22.i, ptr %9, align 8
  %.sroa.2110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract23.i, ptr %.sroa.2110.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.fv = getelementptr inbounds nuw i8, ptr %.fca.0.extract32.i, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !470
  %i.fx = zext i32 %.fca.1.extract33.i to i64
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.fx ; 2 uses
  %.sroa.0.0.copyload.i.i.i105.i = load i16, ptr %i.fy, align 8, !tbaa !346 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i.i105.i, ptr %6, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i.i, ptr %i.fz, align 8
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i105.i, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit104.i
  %i.ga = add i16 %.sroa.0.0.copyload.i.i.i105.i, -19
  %spec.select.i.i.i.i708 = icmp ult i16 %i.ga, 197
  br label %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit

bb.y:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit104.i
  %i.gb = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #39
  br label %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit

_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit: ; preds = %bb.x, %bb.y
  %i.gc = phi i1 [ %spec.select.i.i.i.i708, %bb.x ], [ %i.gb, %bb.y ]
  %i.gd = select i1 %i.gc, i32 220, i32 219
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  store ptr %.fca.0.extract32.i, ptr %7, align 8, !tbaa !466
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract33.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !241
  %i.ge = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %i.fm, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, i32 0) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract4.i = extractvalue { ptr, i32 } %i.ge, 0
  %.fca.1.extract5.i = extractvalue { ptr, i32 } %i.ge, 1
  %i.gf = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr %.fca.0.extract4.i, i32 %.fca.1.extract5.i) #38 ; 2 uses
  %.fca.0.extract.i709 = extractvalue { ptr, i32 } %i.gf, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.gf, 1
  %.not999 = icmp eq ptr %.fca.0.extract.i709, null
  br i1 %.not999, label %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread, label %.thread986

_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread: ; preds = %bb.p, %bb.o, %_ZNK4llvm3MVT14is256BitVectorEv.exit.i, %bb.u, %_ZNK4llvm3MVT14is128BitVectorEv.exit.i, %_ZL19isFreeToSplitVectorN4llvm7SDValueERNS_12SelectionDAGE.exit.i, %bb.l, %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit
  %i.gg = load ptr, ptr %11, align 8, !tbaa !473
  %i.gh = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %i.gg) #38
  br i1 %i.gh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread
  %.val688 = load i32, ptr %i.be, align 8, !tbaa !343
  %i.gi = call fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %.sroa.0.0.copyload.i, i32 %.val688, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %13) ; 2 uses
  %.fca.0.extract495 = extractvalue { ptr, i32 } %i.gi, 0
  %.fca.1.extract496 = extractvalue { ptr, i32 } %i.gi, 1
  br label %.thread986

bb.aa:                                            ; preds = %_ZL27narrowExtractedVectorSelectPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.thread
  %i.gj = load ptr, ptr %11, align 8, !tbaa !473
  %i.gk = call noundef zeroext i1 @_ZN4llvm3ISD20isBuildVectorAllOnesEPKNS_6SDNodeE(ptr noundef %i.gj) #38
  br i1 %i.gk, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.gl = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i710 = icmp ult i16 %i.gl, 197
  br i1 %spec.select.i.i710, label %bb.ac, label %_ZNK4llvm3MVT13getScalarTypeEv.exit

bb.ac:                                            ; preds = %bb.ab
  %i.gm = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.y
  %i.gn = getelementptr i8, ptr %i.gm, i64 -2
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !346
  br label %_ZNK4llvm3MVT13getScalarTypeEv.exit

_ZNK4llvm3MVT13getScalarTypeEv.exit:              ; preds = %bb.ab, %bb.ac
  %.sroa.0.0.i = phi i16 [ %i.go, %bb.ac ], [ %.sroa.0.0.copyload.i, %bb.ab ]
  %i.gp = icmp eq i16 %.sroa.0.0.i, 2
  br i1 %i.gp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK4llvm3MVT13getScalarTypeEv.exit
  %i.gq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract490 = extractvalue { ptr, i32 } %i.gq, 0
  %.fca.1.extract491 = extractvalue { ptr, i32 } %i.gq, 1
  br label %.thread986

bb.ae:                                            ; preds = %_ZNK4llvm3MVT13getScalarTypeEv.exit
  %i.gr = call fastcc { ptr, i32 } @_ZL13getOnesVectorN4llvm3EVTERNS_12SelectionDAGERKNS_5SDLocE(i16 %.sroa.0.0.copyload.i, ptr null, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %13) ; 2 uses
  %.fca.0.extract485 = extractvalue { ptr, i32 } %i.gr, 0
  %.fca.1.extract486 = extractvalue { ptr, i32 } %i.gr, 1
  br label %.thread986

bb.af:                                            ; preds = %bb.aa
  %i.gs = load ptr, ptr %11, align 8, !tbaa !473  ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !469 ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 162
  br i1 %i.gv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !639
  %i.gy = load i32, ptr %i.a, align 4, !tbaa !241
  %i.gz = zext i32 %i.gy to i64
  %i.ha = zext i16 %i.am to i64
  %i.hb = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %i.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.hb, ptr %5, align 8, !tbaa !467
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ha, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !673
  %i.hc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_5SDUseEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.422") align 8 %5) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.fca.0.extract478 = extractvalue { ptr, i32 } %i.hc, 0
  %.fca.1.extract479 = extractvalue { ptr, i32 } %i.hc, 1
  br label %.thread986

bb.ah:                                            ; preds = %bb.af
  %i.hd = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.y
  %i.he = getelementptr i8, ptr %i.hd, i64 -2
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !346 ; 3 uses
  %i.hg = icmp eq i16 %i.hf, 2
  br i1 %i.hg, label %.critedge, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit716

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit716: ; preds = %bb.ah
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.y
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !338
  %i.hk = icmp ne ptr %i.hj, null
  %i.hl = icmp eq i32 %i.gu, 166
  %or.cond993 = and i1 %i.hl, %i.hk
  br i1 %or.cond993, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit716
  %i.hm = load i32, ptr %i.r, align 8, !tbaa !468
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gs, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.hn, align 8, !tbaa !467 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %.critedge, label %.lr.ph.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.hr, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.ho, align 8, !tbaa !467 ; 2 uses
  %.not.i.i717 = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i717, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai, %bb.aj
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.aj ], [ %.sroa.018.022.i.i, %bb.ai ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !468
  %i.hr = icmp ne i32 %i.hq, %i.hm                ; 2 uses
  %i.hs = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.hr, i1 true, i1 %i.hs
  br i1 %cond.i.i, label %bb.aj, label %.critedge

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.aj
  %i.ht = icmp eq i32 %.214.i.i, 0
  br i1 %i.ht, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !639 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %.sroa.0900.0.copyload = load ptr, ptr %i.hw, align 8, !tbaa !466 ; 2 uses
  %.sroa.6902.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 48 ; 2 uses
  %i.hx = load <2 x i32>, ptr %.sroa.6902.0..sroa_idx, align 8
  %.sroa.6902.0.copyload = load i32, ptr %.sroa.6902.0..sroa_idx, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0900.0.copyload, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !470
  %i.ia = zext i32 %.sroa.6902.0.copyload to i64
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.hz, i64 %i.ia ; 2 uses
  %.sroa.0.0.copyload.i.i718 = load i16, ptr %i.ib, align 8, !tbaa !346
  %.sroa.21.0..sroa_idx.i.i719 = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.sroa.21.0.copyload.i.i720 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i719, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i718, ptr %16, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sroa.21.0.copyload.i.i720, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !473
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 88
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !655 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !644
  %i.ik = icmp ult i32 %i.ij, 65
  %i.il = load ptr, ptr %i.ih, align 8
  %spec.select.i.i.i.i.i723 = select i1 %i.ik, ptr %i.ih, ptr %i.il
  %.0.i.i.i.i.i724 = load i64, ptr %spec.select.i.i.i.i.i723, align 8, !tbaa !358 ; 3 uses
  %i.im = load i32, ptr %i.a, align 4, !tbaa !241 ; 2 uses
  %i.in = zext i32 %i.im to i64
  %.not = icmp ult i64 %.0.i.i.i.i.i724, %i.in
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.io = add i32 %i.im, %i.an
  %i.ip = zext i32 %i.io to i64
  %i.iq = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
  %i.ir = zext i32 %i.iq to i64
  %i.is = add i64 %.0.i.i.i.i.i724, %i.ir
  %.not668 = icmp ugt i64 %i.is, %i.ip
  br i1 %.not668, label %bb.am, label %.critedge677

.critedge677:                                     ; preds = %bb.al
  %i.it = load i32, ptr %i.a, align 4, !tbaa !241
  %i.iu = zext i32 %i.it to i64
  %i.iv = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.iu, ptr noundef nonnull align 8 dereferenceable(12) %13, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract466 = extractvalue { ptr, i32 } %i.iv, 0
  %.fca.1.extract467 = extractvalue { ptr, i32 } %i.iv, 1
  store ptr %.fca.0.extract466, ptr %17, align 8
  %.sroa.2469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract467, ptr %.sroa.2469.0..sroa_idx, align 8
  %i.iw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #38 ; 2 uses
  %.fca.0.extract462 = extractvalue { ptr, i32 } %i.iw, 0
  %.fca.1.extract463 = extractvalue { ptr, i32 } %i.iw, 1
  store ptr %.fca.0.extract462, ptr %18, align 8, !tbaa !466
  %.sroa.4472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract463, ptr %.sroa.4472.0..sroa_idx, align 8, !tbaa !241
  store ptr %.sroa.0900.0.copyload, ptr %19, align 8, !tbaa !466
  %.sroa.6902.0..sroa_idx903 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x i32> %i.hx, ptr %.sroa.6902.0..sroa_idx903, align 8
  %i.ix = load i32, ptr %i.a, align 4, !tbaa !241
  %i.iy = zext i32 %i.ix to i64
  %i.iz = sub i64 %.0.i.i.i.i.i724, %i.iy
  %i.ja = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.iz, ptr noundef nonnull align 8 dereferenceable(12) %13, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract457 = extractvalue { ptr, i32 } %i.ja, 0
  %.fca.1.extract458 = extractvalue { ptr, i32 } %i.ja, 1
  store ptr %.fca.0.extract457, ptr %20, align 8
  %.sroa.2460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract458, ptr %.sroa.2460.0..sroa_idx, align 8
  %i.jb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #38 ; 2 uses
  %.fca.0.extract453 = extractvalue { ptr, i32 } %i.jb, 0
  %.fca.1.extract454 = extractvalue { ptr, i32 } %i.jb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %.thread986

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.ai, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit716, %bb.ah, %bb.am, %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.jc = load i32, ptr %i.a, align 4, !tbaa !241
  %.not669 = icmp eq i32 %i.jc, 0
  br i1 %.not669, label %.critedge..critedge679_crit_edge, label %bb.an

.critedge..critedge679_crit_edge:                 ; preds = %.critedge
  %.pre = load ptr, ptr %11, align 8, !tbaa !473
  br label %.critedge679

bb.an:                                            ; preds = %.critedge
  %i.jd = zext i16 %i.am to i64
  store ptr %i.b, ptr %21, align 8, !tbaa !662
  %i.je = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %11, ptr %i.je, align 8, !tbaa !687
  %i.jf = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.a, ptr %i.jf, align 8, !tbaa !662
  %i.jg = call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofINS_10iota_rangeIjEEZL24combineEXTRACT_SUBVECTORPNS_6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetEE3$_0EEbOT_T0_"(i64 0, i64 %i.jd, ptr noundef nonnull byval(%class.anon.1886) align 8 %21)
  %.pre1005 = load ptr, ptr %11, align 8, !tbaa !466 ; 2 uses
  br i1 %i.jg, label %bb.ao, label %.critedge679

bb.ao:                                            ; preds = %bb.an
  %.sroa.2450.0.copyload = load i32, ptr %i.r, align 8, !tbaa !241
  %i.jh = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr %.pre1005, i32 %.sroa.2450.0.copyload, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef %i.ac) ; 2 uses
  %.fca.0.extract445 = extractvalue { ptr, i32 } %i.jh, 0
  %.fca.1.extract446 = extractvalue { ptr, i32 } %i.jh, 1
  br label %.thread986

.critedge679:                                     ; preds = %.critedge..critedge679_crit_edge, %bb.an
  %i.ji = phi ptr [ %.pre, %.critedge..critedge679_crit_edge ], [ %.pre1005, %bb.an ] ; 11 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !469 ; 3 uses
  %i.jl = icmp eq i32 %i.jk, 824
  br i1 %i.jl, label %bb.ap, label %_ZNK4llvm7SDValue9hasOneUseEv.exit743.thread

bb.ap:                                            ; preds = %.critedge679
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 88
  %.sroa.0.0.copyload.i726 = load i16, ptr %i.jm, align 8, !tbaa !346
  %.sroa.21.0..sroa_idx.i727 = getelementptr inbounds nuw i8, ptr %i.ji, i64 96
  %.sroa.21.0.copyload.i728 = load ptr, ptr %.sroa.21.0..sroa_idx.i727, align 8, !tbaa !472
  %.not.i.i731 = icmp eq i16 %.sroa.0.0.copyload.i726, %.sroa.0.0.copyload.i
  %i.jn = icmp eq ptr %.sroa.21.0.copyload.i728, null
  %.not4.i = select i1 %.not.i.i731, i1 %i.jn, i1 false
  br i1 %.not4.i, label %bb.aq, label %_ZNK4llvm7SDValue9hasOneUseEv.exit743.thread

bb.aq:                                            ; preds = %bb.ap
  %i.jo = load i32, ptr %i.r, align 8, !tbaa !468
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  %.sroa.018.022.i.i732 = load ptr, ptr %i.jp, align 8, !tbaa !467 ; 2 uses
  %.not23.i.i733 = icmp eq ptr %.sroa.018.022.i.i732, null
  br i1 %.not23.i.i733, label %_ZNK4llvm7SDValue9hasOneUseEv.exit743.thread, label %.lr.ph.i.i734

bb.ar:                                            ; preds = %.lr.ph.i.i734
  %.214.i.i737 = select i1 %i.jt, i32 %.01224.i.i736, i32 0 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i735, i64 32
  %.sroa.018.0.i.i741 = load ptr, ptr %i.jq, align 8, !tbaa !467 ; 2 uses
  %.not.i.i742 = icmp eq ptr %.sroa.018.0.i.i741, null
  br i1 %.not.i.i742, label %_ZNK4llvm7SDValue9hasOneUseEv.exit743, label %.lr.ph.i.i734

.lr.ph.i.i734:                                    ; preds = %bb.aq, %bb.ar
  %.sroa.018.025.i.i735 = phi ptr [ %.sroa.018.0.i.i741, %bb.ar ], [ %.sroa.018.022.i.i732, %bb.aq ] ; 2 uses
  %.01224.i.i736 = phi i32 [ %.214.i.i737, %bb.ar ], [ 1, %bb.aq ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i735, i64 8
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !468
  %i.jt = icmp ne i32 %i.js, %i.jo                ; 2 uses
  %i.ju = icmp ne i32 %.01224.i.i736, 0
  %cond.i.i738 = select i1 %i.jt, i1 true, i1 %i.ju
  br i1 %cond.i.i738, label %bb.ar, label %_ZNK4llvm7SDValue9hasOneUseEv.exit743.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit743:            ; preds = %bb.ar
  %i.jv = icmp eq i32 %.214.i.i737, 0
  br i1 %i.jv, label %.critedge681, label %_ZNK4llvm7SDValue9hasOneUseEv.exit743.thread

.critedge681:                                     ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit743
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !639 ; 2 uses
  %.sroa.0434.0.copyload = load ptr, ptr %i.jx, align 8, !tbaa !466
  %.sroa.2435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %.sroa.2435.0.copyload = load i32, ptr %.sroa.2435.0..sroa_idx, align 8, !tbaa !241
  %i.jy = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4llvm9MemSDNode10getBasePtrEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ji)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ji, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.jz, align 8
  %i.ka = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.kb = inttoptr i64 %i.ka to ptr
  %i.kc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.copyload.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %.sroa.0434.0.copyload, i32 %.sroa.2435.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.jy, ptr noundef %i.kb) #38 ; 2 uses
  %.fca.0.extract430 = extractvalue { ptr, i32 } %i.kc, 0 ; 2 uses
  %.fca.1.extract431 = extractvalue { ptr, i32 } %i.kc, 1
  %i.kd = call { ptr, i32 } @_ZN4llvm12SelectionDAG28makeEquivalentMemoryOrderingENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %i.ji, i32 1, ptr %.fca.0.extract430, i32 1) #38 ; 0 uses
  br label %.thread986

_ZNK4llvm7SDValue9hasOneUseEv.exit743.thread:     ; preds = %.lr.ph.i.i734, %bb.aq, %_ZNK4llvm7SDValue9hasOneUseEv.exit743, %bb.ap, %.critedge679
  %i.ke = urem i32 %i.ai, %i.ac
  %i.kf = udiv i32 %i.ai, %i.ac                   ; 3 uses
  %i.kg = icmp eq i32 %i.ke, 0
  br i1 %i.kg, label %bb.as, label %bb.bh

bb.as:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit743.thread
  %i.kh = load i32, ptr %i.a, align 4, !tbaa !241
  %i.ki = urem i32 %i.kh, %i.an
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.at, label %bb.bh

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  %i.kk = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.kk, ptr %22, align 8, !tbaa !84
  %i.kl = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i32 0, ptr %i.kl, align 8, !tbaa !634
  %i.km = getelementptr inbounds nuw i8, ptr %22, i64 12
  store i32 32, ptr %i.km, align 4, !tbaa !635
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  %i.kn = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  store ptr %i.kn, ptr %23, align 8, !tbaa !84
  %i.ko = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 0, ptr %i.ko, align 8, !tbaa !634
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i32 32, ptr %i.kp, align 4, !tbaa !635
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.kq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store ptr %i.kq, ptr %24, align 8, !tbaa !84
  %i.kr = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 0, ptr %i.kr, align 8, !tbaa !634
  %i.ks = getelementptr inbounds nuw i8, ptr %24, i64 12
  store i32 2, ptr %i.ks, align 4, !tbaa !635
  %.sroa.2418.0.copyload = load i32, ptr %i.r, align 8, !tbaa !241
  %i.kt = call fastcc noundef zeroext i1 @_ZL22getTargetShuffleInputsN4llvm7SDValueERNS_15SmallVectorImplIS0_EERNS1_IiEERKNS_12SelectionDAGEjb(ptr %i.ji, i32 %.sroa.2418.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 0, i1 noundef zeroext true)
  br i1 %i.kt, label %bb.au, label %.critedge684

bb.au:                                            ; preds = %bb.at
  %i.ku = load ptr, ptr %22, align 8, !tbaa !84
  %i.kv = load i32, ptr %i.kl, align 8, !tbaa !634
  %i.kw = zext i32 %i.kv to i64
  %i.kx = call fastcc noundef zeroext i1 @_ZL20scaleShuffleElementsN4llvm8ArrayRefIiEEjRNS_15SmallVectorImplIiEE(ptr %i.ku, i64 %i.kw, i32 noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(16) %23)
  br i1 %i.kx, label %bb.av, label %.critedge684

bb.av:                                            ; preds = %bb.au
  %i.ky = load i32, ptr %i.a, align 4, !tbaa !241
  %i.kz = udiv i32 %i.ky, %i.an
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %i.lb = load ptr, ptr %23, align 8, !tbaa !84
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.la ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !241
  switch i32 %i.ld, label %bb.ay [
    i32 -1, label %bb.aw
    i32 -2, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.le = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i, ptr null) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %.critedge683

bb.ax:                                            ; preds = %bb.av
  %.val = load i32, ptr %i.be, align 8, !tbaa !343
  %i.lf = call fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %.sroa.0.0.copyload.i, i32 %.val, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %13)
  br label %.critedge683

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %i.lg = load i32, ptr %i.lc, align 4, !tbaa !241
  %i.lh = udiv i32 %i.lg, %i.kf
  %i.li = zext i32 %i.lh to i64
  %i.lj = load ptr, ptr %24, align 8, !tbaa !84
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %i.li
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %i.lk, i64 16, i1 false), !tbaa.struct !684
  %i.ll = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %25) ; 2 uses
  %.fca.1.extract400 = extractvalue { i64, i8 } %i.ll, 1
  %i.lm = trunc nuw i8 %.fca.1.extract400 to i1
  br i1 %i.lm, label %bb.az, label %_ZNK4llvm8TypeSizecvmEv.exit746

bb.az:                                            ; preds = %bb.ay
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit746:                  ; preds = %bb.ay
  %.fca.0.extract399 = extractvalue { i64, i8 } %i.ll, 0
  %i.ln = and i64 %.fca.0.extract540, 4294967295
  %.not1000 = icmp eq i64 %.fca.0.extract399, %i.ln
  br i1 %.not1000, label %bb.ba, label %.critedge684.critedge

bb.ba:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit746
  %i.lo = load ptr, ptr %23, align 8, !tbaa !84
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.la
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !241
  %i.lr = urem i32 %i.lq, %i.kf
  %i.ls = mul i32 %i.lr, %i.an
  %.sroa.0392.0.copyload = load i16, ptr %12, align 8, !tbaa !346
  %.sroa.2394.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !472
  %.sroa.0389.0.copyload = load ptr, ptr %25, align 8, !tbaa !466
  %.sroa.2390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.2390.0.copyload = load i32, ptr %.sroa.2390.0..sroa_idx, align 8, !tbaa !241
  %i.lt = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0392.0.copyload, ptr %.sroa.2394.0.copyload, ptr %.sroa.0389.0.copyload, i32 %.sroa.2390.0.copyload) #38 ; 2 uses
  %.fca.0.extract385 = extractvalue { ptr, i32 } %i.lt, 0
  %.fca.1.extract386 = extractvalue { ptr, i32 } %i.lt, 1
  %i.lu = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr %.fca.0.extract385, i32 %.fca.1.extract386, i32 noundef %i.ls, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  br label %.critedge683

.critedge684.critedge:                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit746
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  br label %.critedge684

.critedge684:                                     ; preds = %.critedge684.critedge, %bb.au, %bb.at
  %i.lv = load ptr, ptr %24, align 8, !tbaa !84   ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.kq
  br i1 %i.lw, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %.critedge684
  call void @free(ptr noundef %i.lv) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit: ; preds = %.critedge684, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %i.lx = load ptr, ptr %23, align 8, !tbaa !84   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.kn
  br i1 %i.ly, label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit
  call void @free(ptr noundef %i.lx) #38
  br label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit

_ZN4llvm11SmallVectorIiLj32EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  %i.lz = load ptr, ptr %22, align 8, !tbaa !84   ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.kk
  br i1 %i.ma, label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit747, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit
  call void @free(ptr noundef %i.lz) #38
  br label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit747

_ZN4llvm11SmallVectorIiLj32EED2Ev.exit747:        ; preds = %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  %.pre1006 = load ptr, ptr %11, align 8, !tbaa !473 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1006, i64 24
  %.pre1007 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !469
  br label %bb.bh

.critedge683:                                     ; preds = %bb.ba, %bb.aw, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.le, %bb.aw ], [ %i.lf, %bb.ax ], [ %i.lu, %bb.ba ] ; 2 uses
  %.sroa.0967.0 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.36.0 = extractvalue { ptr, i32 } %.pn, 1
  %i.mb = load ptr, ptr %24, align 8, !tbaa !84   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.kq
  br i1 %i.mc, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit748, label %bb.be

bb.be:                                            ; preds = %.critedge683
  call void @free(ptr noundef %i.mb) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit748

_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit748: ; preds = %.critedge683, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %i.md = load ptr, ptr %23, align 8, !tbaa !84   ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.kn
  br i1 %i.me, label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit749, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit748
  call void @free(ptr noundef %i.md) #38
  br label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit749

_ZN4llvm11SmallVectorIiLj32EED2Ev.exit749:        ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit748, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  %i.mf = load ptr, ptr %22, align 8, !tbaa !84   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.kk
  br i1 %i.mg, label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit750, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit749
  call void @free(ptr noundef %i.mf) #38
  br label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit750

_ZN4llvm11SmallVectorIiLj32EED2Ev.exit750:        ; preds = %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit749, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %.thread986

bb.bh:                                            ; preds = %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit747, %bb.as, %_ZNK4llvm7SDValue9hasOneUseEv.exit743.thread
  %i.mh = phi i32 [ %.pre1007, %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit747 ], [ %i.jk, %bb.as ], [ %i.jk, %_ZNK4llvm7SDValue9hasOneUseEv.exit743.thread ] ; 12 uses
  %i.mi = phi ptr [ %.pre1006, %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit747 ], [ %i.ji, %bb.as ], [ %i.ji, %_ZNK4llvm7SDValue9hasOneUseEv.exit743.thread ] ; 5 uses
  %i.mj = load i32, ptr %i.r, align 8, !tbaa !468
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 56
  %.sroa.018.022.i.i751 = load ptr, ptr %i.mk, align 8, !tbaa !467 ; 2 uses
  %.not23.i.i752 = icmp eq ptr %.sroa.018.022.i.i751, null
  br i1 %.not23.i.i752, label %_ZNK4llvm7SDValue9hasOneUseEv.exit762.thread, label %.lr.ph.i.i753

bb.bi:                                            ; preds = %.lr.ph.i.i753
  %.214.i.i756 = select i1 %i.mo, i32 %.01224.i.i755, i32 0 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i754, i64 32
  %.sroa.018.0.i.i760 = load ptr, ptr %i.ml, align 8, !tbaa !467 ; 2 uses
  %.not.i.i761 = icmp eq ptr %.sroa.018.0.i.i760, null
  br i1 %.not.i.i761, label %_ZNK4llvm7SDValue9hasOneUseEv.exit762, label %.lr.ph.i.i753

.lr.ph.i.i753:                                    ; preds = %bb.bh, %bb.bi
end_hunk_6
begin_hunk_7_@_ZL10combineMulPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE:bb.a
  %.sroa.11.2.i = phi i32 [ 0, %bb.bz ], [ %.sroa.11.1.i, %bb.cn ], [ 0, %bb.cc ], [ 0, %bb.cb ]
  %.sroa.0189.2.i = phi ptr [ null, %bb.bz ], [ %.sroa.0189.1.i, %bb.cn ], [ null, %bb.cc ], [ null, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %_ZNK4llvm3EVT8isVectorEv.exit535

thread-pre-split:                                 ; preds = %bb.bx, %.split
  %i.ny = load ptr, ptr %i.e, align 8
  %i.nz = icmp ne ptr %i.ny, null
  %i.oa = add i16 %i.jw, -9
  %i.ob = icmp ult i16 %i.oa, -2
  %or.cond = select i1 %i.ob, i1 true, i1 %i.nz
  br i1 %or.cond, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %thread-pre-split
  %i.oc = add i16 %i.jw, -19
  %spec.select.i.i534 = icmp ult i16 %i.oc, 197
  br i1 %spec.select.i.i534, label %bb.cp, label %_ZNK4llvm3EVT8isVectorEv.exit535

bb.cp:                                            ; preds = %bb.co
  %i.od = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %37)
  br i1 %i.od, label %bb.cq, label %_ZNK4llvm3EVT8isVectorEv.exit535

bb.cq:                                            ; preds = %bb.cp, %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #38
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !639 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 40
  %.sroa.0364.0.copyload = load ptr, ptr %i.og, align 8, !tbaa !466
  %.sroa.2365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  %.sroa.2365.0.copyload = load i32, ptr %.sroa.2365.0..sroa_idx, align 8, !tbaa !241
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %39, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0364.0.copyload, i32 %.sroa.2365.0.copyload, i32 noundef 0) #38
  %i.oh = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 11 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !644 ; 3 uses
  %i.ok = icmp ult i32 %i.oj, 65
  br i1 %i.ok, label %.split678, label %_ZNK4llvm9KnownBits10isConstantEv.exit

.split678:                                        ; preds = %bb.cq
  %i.ol = load i64, ptr %39, align 8, !tbaa !358
  %i.om = load i64, ptr %i.oh, align 8, !tbaa !358
  %i.on = xor i64 %i.om, %i.ol
  %i.oo = icmp eq i32 %i.oj, 0
  %i.op = sub nuw nsw i32 64, %i.oj
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = lshr i64 -1, %i.oq
  %.0.i.i.i = select i1 %i.oo, i64 0, i64 %i.or
  %i.os = icmp eq i64 %i.on, %.0.i.i.i
  br i1 %i.os, label %bb.cr, label %.critedge475

_ZNK4llvm9KnownBits10isConstantEv.exit:           ; preds = %bb.cq
  %i.ot = call noundef zeroext i1 @_ZNK4llvm5APInt19isInverseOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(12) %i.oh) #39
  br i1 %i.ot, label %bb.cr, label %.critedge475

bb.cr:                                            ; preds = %.split678, %_ZNK4llvm9KnownBits10isConstantEv.exit
  %i.ou = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 3 uses
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !644 ; 2 uses
  %i.ow = icmp ult i32 %i.ov, 65
  br i1 %i.ow, label %.split679, label %_ZNK4llvm5APInt6isZeroEv.exit

.split679:                                        ; preds = %bb.cr
  %i.ox = load i64, ptr %i.oh, align 8, !tbaa !358
  %i.oy = icmp eq i64 %i.ox, 0
  br i1 %i.oy, label %bb.cs, label %bb.ct

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.cr
  %i.oz = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.oh) #39
  %i.pa = icmp eq i32 %i.oz, %i.ov
  br i1 %i.pa, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.split679, %_ZNK4llvm5APInt6isZeroEv.exit
  %.sroa.0357.0.copyload = load i16, ptr %37, align 8, !tbaa !346
  %.sroa.2359.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !472
  %i.pb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %.sroa.0357.0.copyload, ptr %.sroa.2359.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract353 = extractvalue { ptr, i32 } %i.pb, 0
  %.fca.1.extract354 = extractvalue { ptr, i32 } %i.pb, 1
  br label %.critedge475

bb.ct:                                            ; preds = %.split679, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.pc = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %i.oh)
  br i1 %i.pc, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.pd = load ptr, ptr %i.oe, align 8, !tbaa !639 ; 2 uses
  %.sroa.0350.0.copyload = load ptr, ptr %i.pd, align 8, !tbaa !466
  %.sroa.2351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %.sroa.2351.0.copyload = load i32, ptr %.sroa.2351.0..sroa_idx, align 8, !tbaa !241
  %.sroa.0347.0.copyload = load i16, ptr %37, align 8, !tbaa !346
  %.sroa.2349.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !472
  %i.pe = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getNegativeENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0350.0.copyload, i32 %.sroa.2351.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %.sroa.0347.0.copyload, ptr %.sroa.2349.0.copyload) #38 ; 2 uses
  %.fca.0.extract343 = extractvalue { ptr, i32 } %i.pe, 0
  %.fca.1.extract344 = extractvalue { ptr, i32 } %i.pe, 1
  br label %.critedge475

bb.cv:                                            ; preds = %bb.ct
  %i.pf = load i32, ptr %i.ou, align 8, !tbaa !644
  %i.pg = icmp ult i32 %i.pf, 65
  %i.ph = load ptr, ptr %i.oh, align 8
  %spec.select.i = select i1 %i.pg, ptr %i.oh, ptr %i.ph
  %.0.i536 = load i64, ptr %spec.select.i, align 8, !tbaa !358
  %i.pi = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i536)
  %or.cond705 = icmp ne i64 %i.pi, 1
  %i.pj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL23MulConstantOptimization, i64 120), align 8, !range !80
  %i.pk = trunc nuw i8 %i.pj to i1
  %or.cond707 = select i1 %or.cond705, i1 %i.pk, i1 false
  br i1 %or.cond707, label %bb.cw, label %.critedge475

bb.cw:                                            ; preds = %bb.cv
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !465
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !650, !nonnull !81, !align !238
  %i.po = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.pn, i32 noundef 19) #38
  br i1 %i.po, label %.critedge475, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pp = load i32, ptr %i.jt, align 8, !tbaa !1130
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %.critedge475, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ps = load i8, ptr %i.pr, align 4, !tbaa !3621, !range !80, !noundef !81
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %.critedge475, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pu = load i32, ptr %i.ou, align 8, !tbaa !644 ; 3 uses
  %i.pv = icmp ult i32 %i.pu, 65
  br i1 %i.pv, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.pw = load i64, ptr %i.oh, align 8
  %i.px = icmp eq i32 %i.pu, 0
  %i.py = sub nuw nsw i32 64, %i.pu
  %i.pz = zext nneg i32 %i.py to i64              ; 2 uses
  %i.qa = shl i64 %i.pw, %i.pz
  %i.qb = ashr exact i64 %i.qa, %i.pz
  %.0.i.i539 = select i1 %i.px, i64 0, i64 %i.qb
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

bb.db:                                            ; preds = %bb.cz
  %i.qc = load ptr, ptr %i.oh, align 8, !tbaa !358 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !673
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

_ZNK4llvm5APInt12getSExtValueEv.exit:             ; preds = %bb.da, %bb.db
  %spec.select.i552 = phi ptr [ %i.oh, %bb.da ], [ %i.qc, %bb.db ]
  %.0.i538 = phi i64 [ %.0.i.i539, %bb.da ], [ %i.qd, %bb.db ] ; 4 uses
  %i.qe = icmp slt i64 %.0.i538, 0                ; 4 uses
  %i.qf = call i64 @llvm.abs.i64(i64 %.0.i538, i1 true) ; 16 uses
  %i.qg = load i16, ptr %37, align 8, !tbaa !642  ; 9 uses
  %i.qh = load ptr, ptr %i.e, align 8
  %i.qi = icmp eq ptr %i.qh, null
  %i.qj = add i16 %i.qg, -7
  %i.qk = icmp ult i16 %i.qj, 2
  %or.cond708 = select i1 %i.qk, i1 %i.qi, i1 false
  br i1 %or.cond708, label %bb.dc, label %.thread684

bb.dc:                                            ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit
  switch i64 %i.qf, label %bb.df [
    i64 9, label %bb.dd
    i64 5, label %bb.dd
    i64 3, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc, %bb.dc, %bb.dc
  %i.ql = load ptr, ptr %i.oe, align 8, !tbaa !639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %i.ql, i64 16, i1 false), !tbaa.struct !684
  %i.qm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.qf, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %i.qg, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract294 = extractvalue { ptr, i32 } %i.qm, 0
  %.fca.1.extract295 = extractvalue { ptr, i32 } %i.qm, 1
  store ptr %.fca.0.extract294, ptr %41, align 8
  %.sroa.2297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.fca.1.extract295, ptr %.sroa.2297.0..sroa_idx, align 8
  %i.qn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 755, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %i.qg, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %40, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41) #38 ; 2 uses
  %.fca.0.extract290 = extractvalue { ptr, i32 } %i.qn, 0 ; 2 uses
  %.fca.1.extract291 = extractvalue { ptr, i32 } %i.qn, 1 ; 2 uses
  br i1 %i.qe, label %bb.de, label %.critedge475

bb.de:                                            ; preds = %bb.dd
  %.sroa.0281.0.copyload = load i16, ptr %37, align 8, !tbaa !346
  %.sroa.2283.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !472
  %i.qo = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getNegativeENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.fca.0.extract290, i32 %.fca.1.extract291, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %.sroa.0281.0.copyload, ptr %.sroa.2283.0.copyload) #38 ; 2 uses
  %.fca.0.extract277 = extractvalue { ptr, i32 } %i.qo, 0
  %.fca.1.extract278 = extractvalue { ptr, i32 } %i.qo, 1
  br label %.critedge475

bb.df:                                            ; preds = %bb.dc
  %i.qp = urem i64 %i.qf, 9
  %i.qq = udiv i64 %i.qf, 9
  %i.qr = icmp eq i64 %i.qp, 0
  br i1 %i.qr, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qs = urem i64 %i.qf, 5
  %i.qt = udiv i64 %i.qf, 5
  %i.qu = icmp eq i64 %i.qs, 0
  br i1 %i.qu, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qv = urem i64 %i.qf, 3
  %i.qw = udiv i64 %i.qf, 3
  %i.qx = icmp eq i64 %i.qv, 0
  br i1 %i.qx, label %bb.di, label %.thread680

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  %.0642 = phi i64 [ %i.qt, %bb.dg ], [ %i.qq, %bb.df ], [ %i.qw, %bb.dh ] ; 8 uses
  %.0641 = phi i64 [ 5, %bb.dg ], [ 9, %bb.df ], [ 3, %bb.dh ] ; 5 uses
  %.not = icmp eq i64 %.0642, 0
  br i1 %.not, label %.thread680, label %_ZN4llvm13isPowerOf2_64Em.exit544

_ZN4llvm13isPowerOf2_64Em.exit544:                ; preds = %bb.di
  %i.qy = call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %.0642)
  %i.qz = icmp samesign ult i64 %i.qy, 2
  %i.ra = icmp sgt i64 %.0.i538, -1               ; 2 uses
  br i1 %i.qz, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %_ZN4llvm13isPowerOf2_64Em.exit544
  br i1 %i.ra, label %bb.dk, label %.thread680

bb.dk:                                            ; preds = %bb.dj
  switch i64 %.0642, label %.thread680 [
    i64 9, label %_ZN4llvm13isPowerOf2_64Em.exit549
    i64 5, label %_ZN4llvm13isPowerOf2_64Em.exit549
    i64 3, label %_ZN4llvm13isPowerOf2_64Em.exit549
  ]

bb.dl:                                            ; preds = %_ZN4llvm13isPowerOf2_64Em.exit544
  br i1 %i.ra, label %bb.dm, label %.critedge472

bb.dm:                                            ; preds = %bb.dl
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !477 ; 3 uses
  %.not.i.i547 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i547, label %.critedge472, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.dm
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !478
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.dn, label %.critedge472

bb.dn:                                            ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !476
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !469
  %.not721 = icmp eq i32 %i.rj, 59
  br i1 %.not721, label %_ZN4llvm13isPowerOf2_64Em.exit549, label %.critedge472

.critedge472:                                     ; preds = %bb.dm, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %bb.dl, %bb.dn
  br label %_ZN4llvm13isPowerOf2_64Em.exit549

_ZN4llvm13isPowerOf2_64Em.exit549:                ; preds = %bb.dk, %bb.dk, %bb.dk, %.critedge472, %bb.dn
  %.1643 = phi i64 [ %.0641, %.critedge472 ], [ %.0642, %bb.dn ], [ %.0642, %bb.dk ], [ %.0642, %bb.dk ], [ %.0642, %bb.dk ] ; 3 uses
  %.1 = phi i64 [ %.0642, %.critedge472 ], [ %.0641, %bb.dn ], [ %.0641, %bb.dk ], [ %.0641, %bb.dk ], [ %.0641, %bb.dk ] ; 3 uses
  %i.rk = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.1)
  %i.rl = icmp samesign ult i64 %i.rk, 2
  %i.rm = load ptr, ptr %i.oe, align 8, !tbaa !639 ; 2 uses
  br i1 %i.rl, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZN4llvm13isPowerOf2_64Em.exit549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %i.rm, i64 16, i1 false), !tbaa.struct !684
  %i.rn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.1, i1 true)
  %i.ro = xor i64 %i.rn, 63
  %i.rp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.ro, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 5, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract267 = extractvalue { ptr, i32 } %i.rp, 0
  %.fca.1.extract268 = extractvalue { ptr, i32 } %i.rp, 1
  store ptr %.fca.0.extract267, ptr %43, align 8
  %.sroa.2270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %.fca.1.extract268, ptr %.sroa.2270.0..sroa_idx, align 8
  %i.rq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %i.qg, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %42, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %43) #38
  br label %_ZN4llvm13isPowerOf2_64Em.exit551

bb.dp:                                            ; preds = %_ZN4llvm13isPowerOf2_64Em.exit549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %i.rm, i64 16, i1 false), !tbaa.struct !684
  %i.rr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %.1, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %i.qg, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract250 = extractvalue { ptr, i32 } %i.rr, 0
  %.fca.1.extract251 = extractvalue { ptr, i32 } %i.rr, 1
  store ptr %.fca.0.extract250, ptr %45, align 8
  %.sroa.2253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 %.fca.1.extract251, ptr %.sroa.2253.0..sroa_idx, align 8
  %i.rs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 755, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %i.qg, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %45) #38
  br label %_ZN4llvm13isPowerOf2_64Em.exit551

_ZN4llvm13isPowerOf2_64Em.exit551:                ; preds = %bb.dp, %bb.do
  %.pn = phi { ptr, i32 } [ %i.rs, %bb.dp ], [ %i.rq, %bb.do ] ; 2 uses
  %storemerge465 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %storemerge = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %i.rt = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.1643)
  %i.ru = icmp samesign ult i64 %i.rt, 2
  %.sroa.0240.0.copyload = load i16, ptr %37, align 8, !tbaa !346 ; 3 uses
  %.sroa.2242.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !472 ; 3 uses
  br i1 %i.ru, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %_ZN4llvm13isPowerOf2_64Em.exit551
  store ptr %storemerge465, ptr %46, align 8, !tbaa !466
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 %storemerge, ptr %.sroa.50.0..sroa_idx, align 8, !tbaa !241
  %.sroa.81.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 12
  store i32 0, ptr %.sroa.81.0..sroa_idx, align 4
  %i.rv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.1643, i1 true)
  %i.rw = xor i64 %i.rv, 63
  %i.rx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.rw, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 5, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract236 = extractvalue { ptr, i32 } %i.rx, 0
  %.fca.1.extract237 = extractvalue { ptr, i32 } %i.rx, 1
  store ptr %.fca.0.extract236, ptr %47, align 8
  %.sroa.2239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 %.fca.1.extract237, ptr %.sroa.2239.0..sroa_idx, align 8
  %i.ry = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %.sroa.0240.0.copyload, ptr %.sroa.2242.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47) #38
  br label %bb.ds

bb.dr:                                            ; preds = %_ZN4llvm13isPowerOf2_64Em.exit551
  store ptr %storemerge465, ptr %48, align 8, !tbaa !466
  %.sroa.50.0..sroa_idx614 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i32 %storemerge, ptr %.sroa.50.0..sroa_idx614, align 8, !tbaa !241
  %.sroa.81.0..sroa_idx624 = getelementptr inbounds nuw i8, ptr %48, i64 12
  store i32 0, ptr %.sroa.81.0..sroa_idx624, align 4
  %i.rz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %.1643, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %.sroa.0240.0.copyload, ptr %.sroa.2242.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract219 = extractvalue { ptr, i32 } %i.rz, 0
  %.fca.1.extract220 = extractvalue { ptr, i32 } %i.rz, 1
  store ptr %.fca.0.extract219, ptr %49, align 8
  %.sroa.2222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i32 %.fca.1.extract220, ptr %.sroa.2222.0..sroa_idx, align 8
  %i.sa = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 755, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %.sroa.0240.0.copyload, ptr %.sroa.2242.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %48, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %49) #38
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn468 = phi { ptr, i32 } [ %i.sa, %bb.dr ], [ %i.ry, %bb.dq ] ; 2 uses
  %storemerge469 = extractvalue { ptr, i32 } %.pn468, 0 ; 2 uses
  %storemerge467 = extractvalue { ptr, i32 } %.pn468, 1 ; 2 uses
  br i1 %i.qe, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %.sroa.0206.0.copyload = load i16, ptr %37, align 8, !tbaa !346
  %.sroa.2208.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !472
  %i.sb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getNegativeENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %storemerge469, i32 %storemerge467, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %.sroa.0206.0.copyload, ptr %.sroa.2208.0.copyload) #38 ; 2 uses
  %.fca.0.extract202 = extractvalue { ptr, i32 } %i.sb, 0
  %.fca.1.extract203 = extractvalue { ptr, i32 } %i.sb, 1
  br label %bb.dv

.thread680:                                       ; preds = %bb.dh, %bb.dk, %bb.dj, %bb.di
  %i.sc = getelementptr inbounds nuw i8, ptr %3, i64 548
  %i.sd = load i8, ptr %i.sc, align 4, !tbaa !3622, !range !80, !noundef !81
  %i.se = trunc nuw i8 %i.sd to i1
  br i1 %i.se, label %.split689, label %bb.du

bb.du:                                            ; preds = %.thread680
  %.0.i553 = load i64, ptr %spec.select.i552, align 8, !tbaa !358
  %i.sf = call fastcc { ptr, i32 } @_ZL17combineMulSpecialmPN4llvm6SDNodeERNS_12SelectionDAGENS_3EVTERKNS_5SDLocE(i64 noundef %.0.i553, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %i.qg, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %38) ; 2 uses
  %.fca.0.extract192 = extractvalue { ptr, i32 } %i.sf, 0
  %.fca.1.extract193 = extractvalue { ptr, i32 } %i.sf, 1
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dt, %bb.ds, %bb.du
  %.sroa.50.1 = phi i32 [ %.fca.1.extract203, %bb.dt ], [ %storemerge467, %bb.ds ], [ %.fca.1.extract193, %bb.du ] ; 2 uses
  %.sroa.0605.1 = phi ptr [ %.fca.0.extract202, %bb.dt ], [ %storemerge469, %bb.ds ], [ %.fca.0.extract192, %bb.du ] ; 2 uses
  %.not722 = icmp eq ptr %.sroa.0605.1, null
  br i1 %.not722, label %..thread684_crit_edge, label %.critedge475

..thread684_crit_edge:                            ; preds = %bb.dv
  %.pre = load i16, ptr %37, align 8, !tbaa !642
  br label %.thread684

.thread684:                                       ; preds = %..thread684_crit_edge, %_ZNK4llvm5APInt12getSExtValueEv.exit
  %i.sg = phi i16 [ %.pre, %..thread684_crit_edge ], [ %i.qg, %_ZNK4llvm5APInt12getSExtValueEv.exit ] ; 2 uses
  %.sroa.50.1687 = phi i32 [ %.sroa.50.1, %..thread684_crit_edge ], [ 0, %_ZNK4llvm5APInt12getSExtValueEv.exit ] ; 3 uses
  %.not.i554 = icmp eq i16 %i.sg, 0
  br i1 %.not.i554, label %_ZNK4llvm3EVT8isVectorEv.exit556, label %.split689

.split689:                                        ; preds = %.thread680, %.thread684
  %.sroa.50.1687757 = phi i32 [ %.sroa.50.1687, %.thread684 ], [ 0, %.thread680 ] ; 2 uses
  %i.sh = phi i16 [ %i.sg, %.thread684 ], [ %i.qg, %.thread680 ] ; 3 uses
  %i.si = add i16 %i.sh, -19
  %spec.select.i.i555 = icmp ult i16 %i.si, 197
  br i1 %spec.select.i.i555, label %bb.dw, label %bb.dx

_ZNK4llvm3EVT8isVectorEv.exit556:                 ; preds = %.thread684
  %i.sj = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  br i1 %i.sj, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.split689, %_ZNK4llvm3EVT8isVectorEv.exit556
  %.not.i554759 = phi i1 [ false, %.split689 ], [ true, %_ZNK4llvm3EVT8isVectorEv.exit556 ]
  %.sroa.50.1687756 = phi i32 [ %.sroa.50.1687757, %.split689 ], [ %.sroa.50.1687, %_ZNK4llvm3EVT8isVectorEv.exit556 ]
  %i.sk = phi i16 [ %i.sh, %.split689 ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit556 ] ; 2 uses
  %.sroa.10582.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !472
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit556, %.split689, %bb.dw
  %.not.i554758 = phi i1 [ %.not.i554759, %bb.dw ], [ false, %.split689 ], [ true, %_ZNK4llvm3EVT8isVectorEv.exit556 ] ; 3 uses
  %.sroa.50.1687755 = phi i32 [ %.sroa.50.1687756, %bb.dw ], [ %.sroa.50.1687757, %.split689 ], [ %.sroa.50.1687, %_ZNK4llvm3EVT8isVectorEv.exit556 ] ; 5 uses
  %i.sl = phi i16 [ %i.sk, %bb.dw ], [ %i.sh, %.split689 ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit556 ] ; 9 uses
  %.sroa.10582.0 = phi ptr [ %.sroa.10582.0.copyload, %bb.dw ], [ null, %.split689 ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit556 ] ; 6 uses
  %.sroa.0581.0 = phi i16 [ %i.sk, %bb.dw ], [ 5, %.split689 ], [ 5, %_ZNK4llvm3EVT8isVectorEv.exit556 ] ; 6 uses
  %i.sm = add nsw i64 %i.qf, -1                   ; 2 uses
  %i.sn = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.sm)
  %or.cond710 = icmp eq i64 %i.sn, 1
  br i1 %or.cond710, label %bb.dy, label %_ZN4llvm13isPowerOf2_64Em.exit558.thread

bb.dy:                                            ; preds = %bb.dx
  %.sroa.2188.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !472 ; 2 uses
  %i.so = load ptr, ptr %i.oe, align 8, !tbaa !639 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  %37 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.d = zext i16 %1 to i64                       ; 4 uses
  %i.e = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.d ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.e, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.f = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.f, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.e, i64 -16      ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 16
  %i.h = trunc i64 %.sroa.0.0.copyload.i to i32   ; 4 uses
  %i.i = add i16 %1, -163
  %spec.select.i.i = icmp ult i16 %i.i, 53
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.j = sdiv i32 %i.h, 128
  %i.k = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !340  ; 7 uses
  %i.n = zext i16 %i.m to i32                     ; 18 uses
  %i.o = sdiv i32 %i.n, %i.j                      ; 4 uses
  %i.p = icmp eq i16 %1, 73
  br i1 %i.p, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !469
  %i.s = icmp eq i32 %i.r, 174
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef zeroext i1 @_ZN4llvm9MemSDNode7classofEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %2)
  br i1 %i.t, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = load ptr, ptr %6, align 8, !tbaa !692
  %i.v = load i32, ptr %i.u, align 4, !tbaa !241
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.n, -1
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !644  ; 3 uses
  %i.aa = icmp ult i32 %i.z, 65
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i32 %i.z, 0
  br i1 %i.ab, label %_ZNK4llvm5APInt16countLeadingOnesEv.exit, label %bb.i, !prof !649

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %7, align 8, !tbaa !358
  %i.ad = sub nuw nsw i32 64, %i.z
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl i64 %i.ac, %i.ae
  %i.ag = xor i64 %i.af, -1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 false)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  br label %_ZNK4llvm5APInt16countLeadingOnesEv.exit

bb.j:                                             ; preds = %bb.g
  %i.aj = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %7) #39
  br label %_ZNK4llvm5APInt16countLeadingOnesEv.exit

_ZNK4llvm5APInt16countLeadingOnesEv.exit:         ; preds = %bb.h, %bb.i, %bb.j
  %.0.i.i = phi i32 [ %i.aj, %bb.j ], [ %i.ai, %bb.i ], [ 0, %bb.h ]
  %i.ak = icmp eq i32 %i.x, %.0.i.i
  br i1 %i.ak, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZNK4llvm5APInt16countLeadingOnesEv.exit
  store ptr %2, ptr %37, align 8, !tbaa !466
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 %3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !241
  %i.al = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 986, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 73, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %37) #38 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.al, 1
  br label %.critedge57

.critedge:                                        ; preds = %bb.f, %bb.e, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit, %_ZNK4llvm5APInt16countLeadingOnesEv.exit
  %i.am = sdiv i32 %i.h, 64                       ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.n
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.critedge
  %.not4885.i.not = icmp eq i16 %i.m, 0
  %wide.trip.count.i = zext i16 %i.m to i64       ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 5 uses
  %i.ap = add i16 %1, -19                         ; 2 uses
  %spec.select.i.i.i.i.i = icmp ult i16 %i.ap, 197
  %i.aq = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.ar = getelementptr i8, ptr %i.aq, i64 -2
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 360 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 491
  %i.au = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %32, i64 12
  %.sroa.256.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %34, i64 8
  %.sroa.543.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %30, i64 24
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %30, i64 40
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %30, i64 56
  %.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %30, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %30, i64 72
  %.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %30, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %30, i64 88
  %.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %30, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %30, i64 104
  %.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %30, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %30, i64 120
  %.ptr.8.i.i = getelementptr inbounds nuw i8, ptr %30, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %30, i64 136
  %.ptr.9.i.i = getelementptr inbounds nuw i8, ptr %30, i64 144
  %i.bh = getelementptr inbounds nuw i8, ptr %30, i64 152
  %.ptr.10.i.i = getelementptr inbounds nuw i8, ptr %30, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %30, i64 168
  %.ptr.11.i.i = getelementptr inbounds nuw i8, ptr %30, i64 176
  %i.bj = getelementptr inbounds nuw i8, ptr %30, i64 184
  %.ptr.12.i.i = getelementptr inbounds nuw i8, ptr %30, i64 192
  %i.bk = getelementptr inbounds nuw i8, ptr %30, i64 200
  %.ptr.13.i.i = getelementptr inbounds nuw i8, ptr %30, i64 208
  %i.bl = getelementptr inbounds nuw i8, ptr %30, i64 216
  %.ptr.14.i.i = getelementptr inbounds nuw i8, ptr %30, i64 224
  %i.bm = getelementptr inbounds nuw i8, ptr %30, i64 232
  %.ptr.15.i.i = getelementptr inbounds nuw i8, ptr %30, i64 240
  %i.bn = getelementptr inbounds nuw i8, ptr %30, i64 248
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.284.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.sroa.2183.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.sroa.2179.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.2150.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.2146.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %27, i64 8
  %.sroa.5188.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  %.sroa.4155.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.2225.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.2221.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.sroa.2206.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.2202.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.2247.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.2243.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  %spec.select.i.i414.i.i = icmp ult i16 %i.ap, 144
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 12
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 8
  br i1 %.not4885.i.not, label %._crit_edge.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.by = icmp ugt i16 %i.m, 8
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.bz = icmp ugt i16 %i.m, 8
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %wide.trip.count.i, 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread"
  %.054148 = phi i32 [ %i.jx, %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread" ], [ %i.am, %.lr.ph.i.preheader ] ; 2 uses
  %i.ca = sdiv i32 %i.n, %.054148                 ; 14 uses
  %i.cb = load ptr, ptr %6, align 8, !tbaa !692   ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.x, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.x ] ; 5 uses
  %.091.i = phi i1 [ true, %.lr.ph.i ], [ %.1.i, %bb.x ] ; 2 uses
  %.03390.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %bb.x ] ; 3 uses
  %.03689.i = phi i32 [ 0, %.lr.ph.i ], [ %.238.i, %bb.x ] ; 3 uses
  %.sroa.055.087.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.055.3.i, %bb.x ] ; 5 uses
  %.sroa.8.086.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.8.3.i, %bb.x ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !241 ; 3 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.cg = srem i32 %i.cf, %i.ca
  %i.ch = sdiv i32 %i.cf, %i.ca                   ; 2 uses
  %.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = and i64 %indvars.iv.i, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = load i32, ptr %i.ao, align 8, !tbaa !644
  %i.cl = icmp ult i32 %i.ck, 65
  %i.cm = load ptr, ptr %7, align 8
  %i.cn = lshr i64 %indvars.iv.i, 6
  %i.co = and i64 %i.cn, 67108863
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.co
  %.in.i.i.i = select i1 %i.cl, ptr %7, ptr %i.cp
  %i.cq = load i64, ptr %.in.i.i.i, align 8, !tbaa !358
  %i.cr = and i64 %i.cq, %i.cj
  %.not78.i = icmp eq i64 %i.cr, 0
  br i1 %.not78.i, label %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread", label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.cs = icmp slt i32 %i.cd, %i.n                ; 2 uses
  %.sroa.051.0.copyload.i.sroa.speculated = select i1 %i.cs, ptr %2, ptr %4 ; 2 uses
  %.sroa.5.0.copyload.i.sroa.speculated = select i1 %i.cs, i32 %3, i32 %5 ; 2 uses
  %i.ct = urem i32 %i.cd, %i.n                    ; 4 uses
  %.not79.i = icmp eq ptr %.sroa.055.087.i, null
  br i1 %.not79.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = sdiv i32 %i.cf, %i.ca
  %i.cv = sub nsw i32 %i.ct, %i.cu
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cw = icmp ne ptr %.sroa.055.087.i, %.sroa.051.0.copyload.i.sroa.speculated
  %i.cx = icmp ne i32 %.sroa.8.086.i, %.sroa.5.0.copyload.i.sroa.speculated
  %.not3.i.i = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %.not3.i.i, label %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread", label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.8.1.i = phi i32 [ %.sroa.8.086.i, %bb.q ], [ %.sroa.5.0.copyload.i.sroa.speculated, %bb.p ]
  %.sroa.055.1.i = phi ptr [ %.sroa.055.087.i, %bb.q ], [ %.sroa.051.0.copyload.i.sroa.speculated, %bb.p ]
  %.134.i = phi i32 [ %.03390.i, %bb.q ], [ %i.cv, %bb.p ] ; 8 uses
  %i.cy = icmp sgt i32 %.134.i, -1
  %i.cz = icmp slt i32 %.134.i, %i.o
  %or.cond134.i = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond134.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = srem i32 %.134.i, %i.o
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.t, label %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread"

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not45.i = icmp eq i32 %.134.i, 0
  br i1 %.not45.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = sdiv i32 %.134.i, %i.o
  %i.dd = sdiv i32 %i.ct, %i.o
  %.not46.i = icmp eq i32 %i.dc, %i.dd
  %i.de = add nsw i32 %i.ch, %.134.i
  %.not47.i = icmp eq i32 %i.ct, %i.de
  %or.cond = select i1 %.not46.i, i1 %.not47.i, i1 false
  br i1 %or.cond, label %bb.w, label %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread"

bb.v:                                             ; preds = %bb.t
  %.old = add nsw i32 %i.ch, %.134.i
  %.not47.i.old = icmp eq i32 %i.ct, %.old
  br i1 %.not47.i.old, label %bb.w, label %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread"

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.df = add nsw i32 %.03689.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.n, %bb.l
  %.sroa.8.3.i = phi i32 [ %.sroa.8.086.i, %bb.l ], [ %.sroa.8.1.i, %bb.w ], [ %.sroa.8.086.i, %bb.n ] ; 3 uses
  %.sroa.055.3.i = phi ptr [ %.sroa.055.087.i, %bb.l ], [ %.sroa.055.1.i, %bb.w ], [ %.sroa.055.087.i, %bb.n ] ; 4 uses
  %.238.i = phi i32 [ %.03689.i, %bb.l ], [ %i.df, %bb.w ], [ %.03689.i, %bb.n ] ; 2 uses
  %.3.i = phi i32 [ %.03390.i, %bb.l ], [ %.134.i, %bb.w ], [ %.03390.i, %bb.n ] ; 16 uses
  %.1.i = phi i1 [ %.091.i, %bb.l ], [ %.091.i, %bb.w ], [ false, %bb.n ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l, !llvm.loop !4430

._crit_edge.i:                                    ; preds = %bb.x
  %.not77.i = icmp eq ptr %.sroa.055.3.i, null
  br i1 %.not77.i, label %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread", label %bb.y

bb.y:                                             ; preds = %._crit_edge.i
  %i.dg = icmp slt i32 %.238.i, 2
  %i.dh = icmp ne i32 %.3.i, 0                    ; 2 uses
  %or.cond.i = select i1 %i.dh, i1 %i.dg, i1 false
  br i1 %or.cond.i, label %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = select i1 %.1.i, i32 229, i32 228
  %.sroa.2.0.copyload.i61 = load i64, ptr %.sroa.2.0..sroa_idx50.i, align 8, !tbaa !673
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  br i1 %spec.select.i.i.i.i.i, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit._ZNK4llvm3MVT20getVectorNumElementsEv.exit_crit_edge.i.i, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit._ZNK4llvm3MVT20getVectorNumElementsEv.exit_crit_edge.i.i: ; preds = %bb.z
  %i.dj = load i16, ptr %i.ar, align 2, !tbaa !346
  %.pre181.i.i = zext i16 %i.dj to i64
  br label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %bb.z, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit._ZNK4llvm3MVT20getVectorNumElementsEv.exit_crit_edge.i.i
  %.pn153.pre-phi.i.i = phi i64 [ %.pre181.i.i, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit._ZNK4llvm3MVT20getVectorNumElementsEv.exit_crit_edge.i.i ], [ %i.d, %bb.z ]
  %.pn152.i.i = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.pn153.pre-phi.i.i
  %.sroa.0.0.copyload.i.i148.in.i.i = getelementptr i8, ptr %.pn152.i.i, i64 -16
  %.sroa.0.0.copyload.i.i148.i.i = load i64, ptr %.sroa.0.0.copyload.i.i148.in.i.i, align 16 ; 2 uses
  %i.dk = trunc i64 %.sroa.0.0.copyload.i.i148.i.i to i32 ; 10 uses
  %i.dl = sdiv i32 128, %i.dk                     ; 6 uses
  %i.dm = sdiv i32 %.3.i, %i.dl                   ; 5 uses
  %i.dn = load i32, ptr %i.as, align 8, !tbaa !343
  %i.do = icmp sgt i32 %i.dn, 4
  br i1 %i.do, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i
  %i.dp = icmp eq i32 %i.ca, 2
  %i.dq = and i1 %spec.select.i.i414.i.i, %i.dp
  %or.cond150.i.i = and i1 %i.dq, %i.dh
  br i1 %or.cond150.i.i, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.i.i, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread.i.i

_ZNK4llvm3MVT14is128BitVectorEv.exit.i.i:         ; preds = %bb.aa
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.g, align 16
  %i.dr = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 128
  br i1 %i.dr, label %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread123", label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread.i.i

"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread123": ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %"_ZZL29lowerShuffleAsZeroOrAnyExtendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clEi.exit.thread"

_ZNK4llvm3MVT14is128BitVectorEv.exit.thread.i.i:  ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.i.i, %bb.aa
  %i.ds = mul nsw i32 %i.ca, %i.dk                ; 2 uses
  %i.dt = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ds)
  %i.du = icmp eq i32 %i.dt, 1
  br i1 %i.du, label %.split.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

.split.i.i.i:                                     ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread.i.i
  %i.dv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ds, i1 true) ; 2 uses
  %i.dw = icmp samesign ult i32 %i.dv, 10
  br i1 %i.dw, label %switch.lookup.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

switch.lookup.i.i.i:                              ; preds = %.split.i.i.i
  %switch.idx.cast.i.i.i = trunc nuw nsw i32 %i.dv to i16
  %switch.offset.i.i.i = add nuw nsw i16 %switch.idx.cast.i.i.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i.i:            ; preds = %switch.lookup.i.i.i, %.split.i.i.i, %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread.i.i
  %.sroa.0.0.i.i.i = phi i16 [ %switch.offset.i.i.i, %switch.lookup.i.i.i ], [ 0, %.split.i.i.i ], [ 0, %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread.i.i ]
  %i.dx = sdiv i32 %i.n, %i.ca
  %i.dy = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %i.dx)
  %i.dz = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %1, ptr null, ptr nonnull %.sroa.055.3.i, i32 %.sroa.8.3.i) #38 ; 2 uses
  %.fca.0.extract298.i.i = extractvalue { ptr, i32 } %i.dz, 0 ; 2 uses
  %.fca.1.extract299.i.i = extractvalue { ptr, i32 } %i.dz, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %.not.i.i.i = icmp eq i32 %.3.i, 0
  br i1 %.not.i.i.i, label %"_ZZL31lowerShuffleAsSpecificExtensionRKN4llvm5SDLocENS_3MVTEiijNS_7SDValueENS_8ArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_1clES4_.exit.i.i", label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  store ptr %i.bu, ptr %15, align 8, !tbaa !84
  store i32 0, ptr %i.bv, align 8, !tbaa !634
  store i32 8, ptr %i.bw, align 4, !tbaa !635
  br i1 %i.bz, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit.i.i.i: ; preds = %bb.ab
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull %i.bu, i64 noundef %wide.trip.count.i, i64 noundef 4) #38
  %i.ea = load ptr, ptr %15, align 8, !tbaa !84
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit.i.i.i
  %.sink.i.i = phi ptr [ %i.ea, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit.i.i.i ], [ %i.bu, %bb.ab ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sink.i.i, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !241
  store i32 %i.n, ptr %i.bv, align 8, !tbaa !634
  br label %bb.ad

._crit_edge.i.i.i:                                ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %1, ptr null) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  %.fca.0.extract1.i.i.i = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract2.i.i.i = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract1.i.i.i, ptr %16, align 8
  store i32 %.fca.1.extract2.i.i.i, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8
  %i.ec = load ptr, ptr %15, align 8, !tbaa !84
  store ptr %i.ec, ptr %17, align 8, !tbaa !692
  %i.ed = load i32, ptr %i.bv, align 8, !tbaa !634
  %i.ee = zext i32 %i.ed to i64
  store i64 %i.ee, ptr %i.bx, align 8, !tbaa !693
  %i.ef = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %1, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %.fca.0.extract298.i.i, i32 %.fca.1.extract299.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %17) #38 ; 2 uses
  %i.eg = load ptr, ptr %15, align 8, !tbaa !84   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.bu
  br i1 %i.eh, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit.i.i.i, label %bb.ac

end_hunk_8
begin_hunk_9_@_ZL18getFauxShuffleMaskN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIiEERNS4_IS0_EERKNS_12SelectionDAGEjb:bb.a
  store ptr %i.nk, ptr %33, align 8, !tbaa !84
  %i.nl = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store i32 0, ptr %i.nl, align 8, !tbaa !634
  %i.nm = getelementptr inbounds nuw i8, ptr %33, i64 12
  store i32 64, ptr %i.nm, align 4, !tbaa !635
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  %i.nn = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  store ptr %i.nn, ptr %34, align 8, !tbaa !84
  %i.no = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  store i32 0, ptr %i.no, align 8, !tbaa !634
  %i.np = getelementptr inbounds nuw i8, ptr %34, i64 12
  store i32 2, ptr %i.np, align 4, !tbaa !635
  %i.nq = call { ptr, i32 } @_ZN4llvm25peekThroughOneUseBitcastsENS_7SDValueE(ptr nonnull %.sroa.01183.0.copyload, i32 %.sroa.11.0.copyload) #38 ; 2 uses
  %.fca.0.extract321 = extractvalue { ptr, i32 } %i.nq, 0 ; 4 uses
  %.fca.1.extract322 = extractvalue { ptr, i32 } %i.nq, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  %i.nr = getelementptr inbounds nuw i8, ptr %.fca.0.extract321, i64 48
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !470
  %i.nt = zext i32 %.fca.1.extract322 to i64
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %i.nt ; 2 uses
  %.sroa.0.0.copyload.i.i845 = load i16, ptr %i.nu, align 8, !tbaa !346 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i846 = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %.sroa.21.0.copyload.i.i847 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i846, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i845, ptr %35, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %.sroa.21.0.copyload.i.i847, ptr %i.nv, align 8
  %.not.i850 = icmp eq i16 %.sroa.0.0.copyload.i.i845, 0
  br i1 %.not.i850, label %_ZNK4llvm3EVT8isVectorEv.exit852, label %.split1336

.split1336:                                       ; preds = %bb.bn
  %i.nw = add i16 %.sroa.0.0.copyload.i.i845, -19
  %spec.select.i.i851 = icmp ult i16 %i.nw, 197
  br i1 %spec.select.i.i851, label %bb.bo, label %bb.ci

_ZNK4llvm3EVT8isVectorEv.exit852:                 ; preds = %bb.bn
  %i.nx = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #39
  br i1 %i.nx, label %bb.bo, label %bb.ci

bb.bo:                                            ; preds = %.split1336, %_ZNK4llvm3EVT8isVectorEv.exit852
  %i.ny = getelementptr inbounds nuw i8, ptr %.fca.0.extract321, i64 24
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !469
  %i.oa = icmp eq i32 %i.nz, 167
  br i1 %i.oa, label %bb.bp, label %.critedge13

bb.bp:                                            ; preds = %bb.bo
  %i.ob = getelementptr inbounds nuw i8, ptr %.fca.0.extract321, i64 40 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !639
  %i.od = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %i.oc) ; 2 uses
  %.fca.1.extract318 = extractvalue { i64, i8 } %i.od, 1
  %i.oe = trunc nuw i8 %.fca.1.extract318 to i1
  br i1 %i.oe, label %bb.bq, label %_ZNK4llvm8TypeSizecvmEv.exit853

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit853:                  ; preds = %bb.bp
  %.fca.0.extract317 = extractvalue { i64, i8 } %i.od, 0
  %i.of = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.og = icmp eq i64 %.fca.0.extract317, %i.of
  br i1 %i.og, label %bb.br, label %.critedge13

bb.br:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit853
  %i.oh = load ptr, ptr %i.ob, align 8, !tbaa !639 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !473
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 88
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !655 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 24 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 32
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !644
  %i.op = icmp ult i32 %i.oo, 65
  %i.oq = load ptr, ptr %i.om, align 8
  %spec.select.i.i.i.i.i854 = select i1 %i.op, ptr %i.om, ptr %i.oq
  %.0.i.i.i.i.i855 = load i64, ptr %spec.select.i.i.i.i.i854, align 8, !tbaa !358
  %.sroa.01161.0.copyload = load ptr, ptr %i.oh, align 8, !tbaa !466 ; 2 uses
  %.sroa.51162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %.sroa.51162.0.copyload = load i32, ptr %.sroa.51162.0..sroa_idx, align 8, !tbaa !241 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #38
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.01161.0.copyload, i64 48
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !470
  %i.ot = zext i32 %.sroa.51162.0.copyload to i64
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.os, i64 %i.ot ; 2 uses
  %.sroa.0.0.copyload.i.i856 = load i16, ptr %i.ou, align 8, !tbaa !346
  %.sroa.21.0..sroa_idx.i.i857 = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %.sroa.21.0.copyload.i.i858 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i857, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i856, ptr %36, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %.sroa.21.0.copyload.i.i858, ptr %i.ov, align 8
  %i.ow = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %36) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  %.sroa.speculated1157 = call i32 @llvm.umax.i32(i32 %i.ow, i32 %i.m) ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.01188.0.copyload, i64 24
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !469
  %i.oz = add i32 %i.oy, -53
  %spec.select.i.i862 = icmp ult i32 %i.oz, 2     ; 3 uses
  br label %bb.bs

.preheader1378:                                   ; preds = %bb.bs
  %i.pa = udiv i32 %.sroa.speculated1157, %i.m    ; 2 uses
  %i.pb = mul i32 %i.pa, %i.in                    ; 3 uses
  %.not7481487 = icmp eq i32 %i.pb, 0
  br i1 %.not7481487, label %._crit_edge1490, label %.lr.ph1489

.lr.ph1489:                                       ; preds = %.preheader1378
  %i.pc = udiv i32 %.sroa.speculated1157, %i.ow
  %i.pd = zext i32 %i.pa to i64
  %i.pe = mul i64 %.0.i.i.i.i.i, %i.pd
  %narrow = select i1 %spec.select.i.i862, i32 0, i32 %.sroa.speculated1157
  %i.pf = trunc i64 %.0.i.i.i.i.i855 to i32
  %i.pg = mul i32 %i.pc, %i.pf
  %i.ph = add i32 %narrow, %i.pg                  ; 2 uses
  %i.pi = load ptr, ptr %3, align 8, !tbaa !84
  %i.pj = getelementptr [4 x i8], ptr %i.pi, i64 %i.pe ; 2 uses
  %i.pk = zext i32 %i.pb to i64                   ; 3 uses
  %min.iters.check1789 = icmp ult i32 %i.pb, 8
  br i1 %min.iters.check1789, label %scalar.ph1788.preheader, label %vector.ph1790

vector.ph1790:                                    ; preds = %.lr.ph1489
  %n.vec1791 = and i64 %i.pk, 4294967288          ; 3 uses
  %broadcast.splatinsert1792 = insertelement <4 x i32> poison, i32 %i.ph, i64 0
  %broadcast.splat1793 = shufflevector <4 x i32> %broadcast.splatinsert1792, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op1880 = add <4 x i32> splat (i32 4), %broadcast.splat1793
  br label %vector.body1794

vector.body1794:                                  ; preds = %vector.body1794, %vector.ph1790
  %index1795 = phi i64 [ 0, %vector.ph1790 ], [ %index.next1798, %vector.body1794 ] ; 2 uses
  %vec.ind1796 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph1790 ], [ %vec.ind.next1799, %vector.body1794 ] ; 3 uses
  %i.pl = add <4 x i32> %broadcast.splat1793, %vec.ind1796
  %.reass1881 = add <4 x i32> %vec.ind1796, %invariant.op1880
  %i.pm = getelementptr [4 x i8], ptr %i.pj, i64 %index1795 ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 16
  store <4 x i32> %i.pl, ptr %i.pm, align 4, !tbaa !241
  store <4 x i32> %.reass1881, ptr %i.pn, align 4, !tbaa !241
  %index.next1798 = add nuw i64 %index1795, 8     ; 2 uses
  %vec.ind.next1799 = add <4 x i32> %vec.ind1796, splat (i32 8)
  %i.po = icmp eq i64 %index.next1798, %n.vec1791
  br i1 %i.po, label %middle.block1800, label %vector.body1794, !llvm.loop !4936

middle.block1800:                                 ; preds = %vector.body1794
  %cmp.n1801 = icmp eq i64 %n.vec1791, %i.pk
  br i1 %cmp.n1801, label %._crit_edge1490, label %scalar.ph1788.preheader

scalar.ph1788.preheader:                          ; preds = %.lr.ph1489, %middle.block1800
  %indvars.iv1533.ph = phi i64 [ 0, %.lr.ph1489 ], [ %n.vec1791, %middle.block1800 ]
  br label %scalar.ph1788

bb.bs:                                            ; preds = %bb.br, %bb.bs
  %.06611486 = phi i32 [ 0, %bb.br ], [ %i.pq, %bb.bs ] ; 2 uses
  %i.pp = select i1 %spec.select.i.i862, i32 -1, i32 %.06611486
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.pp)
  %i.pq = add nuw nsw i32 %.06611486, 1           ; 2 uses
  %.not747 = icmp eq i32 %i.pq, %.sroa.speculated1157
  br i1 %.not747, label %.preheader1378, label %bb.bs, !llvm.loop !4937

._crit_edge1490:                                  ; preds = %scalar.ph1788, %middle.block1800, %.preheader1378
  br i1 %spec.select.i.i862, label %bb.bu, label %bb.bt

scalar.ph1788:                                    ; preds = %scalar.ph1788.preheader, %scalar.ph1788
  %indvars.iv1533 = phi i64 [ %indvars.iv.next1534, %scalar.ph1788 ], [ %indvars.iv1533.ph, %scalar.ph1788.preheader ] ; 3 uses
  %i.pr = trunc nuw nsw i64 %indvars.iv1533 to i32
  %i.ps = add i32 %i.ph, %i.pr
  %i.pt = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv1533
  store i32 %i.ps, ptr %i.pt, align 4, !tbaa !241
  %indvars.iv.next1534 = add nuw nsw i64 %indvars.iv1533, 1 ; 2 uses
  %.not748 = icmp eq i64 %indvars.iv.next1534, %i.pk
  br i1 %.not748, label %._crit_edge1490, label %scalar.ph1788, !llvm.loop !4938

bb.bt:                                            ; preds = %._crit_edge1490
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %.sroa.01188.0.copyload, i32 %.sroa.16.0.copyload)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge1490
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %.sroa.01161.0.copyload, i32 %.sroa.51162.0.copyload)
  br label %bb.ci

.critedge13:                                      ; preds = %bb.bo, %_ZNK4llvm8TypeSizecvmEv.exit853
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38
  %i.pu = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %35)
  call void @_ZN4llvm5APInt10getAllOnesEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %37, i32 noundef %i.pu)
  %i.pv = add nuw nsw i32 %6, 1
  %i.pw = call fastcc noundef zeroext i1 @_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERKNS_12SelectionDAGEjb(ptr nonnull %.fca.0.extract321, i32 %.fca.1.extract322, ptr noundef nonnull align 8 dereferenceable(12) %37, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef %i.pv, i1 noundef zeroext %7)
  br i1 %i.pw, label %bb.bv, label %.loopexit1379

bb.bv:                                            ; preds = %.critedge13
  %.sroa.0288.0.copyload = load i16, ptr %31, align 8, !tbaa !346
  %.sroa.2290.0.copyload = load ptr, ptr %i.im, align 8, !tbaa !472
  %.val = load ptr, ptr %34, align 8, !tbaa !84
  %.val768 = load i32, ptr %i.no, align 8, !tbaa !634
  %i.px = call fastcc noundef zeroext i1 @"_ZN4llvm6any_ofIRNS_11SmallVectorINS_7SDValueELj2EEEZL18getFauxShuffleMaskS2_RKNS_5APIntERNS_15SmallVectorImplIiEERNS8_IS2_EERKNS_12SelectionDAGEjbE3$_0EEbOT_T0_"(ptr %.val, i32 %.val768, i16 %.sroa.0288.0.copyload, ptr %.sroa.2290.0.copyload)
  br i1 %i.px, label %.loopexit1379, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.py = load i32, ptr %i.nl, align 8, !tbaa !634 ; 6 uses
  %i.pz = zext i32 %i.py to i64
  %.not744 = icmp eq i32 %i.py, %i.in
  br i1 %.not744, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qa = urem i32 %i.in, %i.py
  %i.qb = udiv i32 %i.in, %i.py
  %i.qc = icmp eq i32 %i.qa, 0
  br i1 %i.qc, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  %i.qd = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  store ptr %i.qd, ptr %38, align 8, !tbaa !84
  %i.qe = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 0, ptr %i.qe, align 8, !tbaa !634
  %i.qf = getelementptr inbounds nuw i8, ptr %38, i64 12
  store i32 64, ptr %i.qf, align 4, !tbaa !635
  %i.qg = load ptr, ptr %33, align 8, !tbaa !84
  call void @_ZN4llvm21narrowShuffleMaskEltsEiNS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef %i.qb, ptr %i.qg, i64 %i.pz, ptr noundef nonnull align 8 dereferenceable(16) %38) #38
  %i.qh = call noundef nonnull align 8 dereferenceable(272) ptr @_ZN4llvm11SmallVectorIiLj64EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(272) %33, ptr noundef nonnull align 8 dereferenceable(272) %38) ; 0 uses
  %i.qi = load ptr, ptr %38, align 8, !tbaa !84   ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.qd
  br i1 %i.qj, label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @free(ptr noundef %i.qi) #38
  br label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863

_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863:        ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bx
  %i.qk = udiv i32 %i.py, %i.in                   ; 2 uses
  %i.ql = mul i32 %i.qk, %i.m
  %i.qm = sext i32 %i.qk to i64
  %i.qn = mul i64 %.0.i.i.i.i.i, %i.qm
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863, %bb.ca, %bb.bw
  %.0 = phi i32 [ %i.m, %bb.bw ], [ %i.m, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863 ], [ %i.ql, %bb.ca ] ; 4 uses
  %.0658 = phi i64 [ %.0.i.i.i.i.i, %bb.bw ], [ %.0.i.i.i.i.i, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863 ], [ %i.qn, %bb.ca ]
  %.0657 = phi i32 [ %i.in, %bb.bw ], [ %i.in, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863 ], [ %i.py, %bb.ca ] ; 4 uses
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.01188.0.copyload, i32 %.sroa.16.0.copyload)
  %i.qo = load ptr, ptr %34, align 8, !tbaa !84   ; 2 uses
  %i.qp = load i32, ptr %i.no, align 8, !tbaa !634
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qo, i64 %i.qq
  call void @_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPS1_vEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.qo, ptr noundef %i.qr)
  %i.qs = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.01188.0.copyload) #38
  br i1 %i.qs, label %bb.cc, label %.preheader1380

.preheader1380:                                   ; preds = %bb.cb
  %.not7451479 = icmp eq i32 %.0, 0
  br i1 %.not7451479, label %.loopexit1381, label %.lr.ph1481

bb.cc:                                            ; preds = %bb.cb
  %i.qt = zext i32 %.0 to i64
  call void @_ZN4llvm15SmallVectorImplIiE6appendEmi(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.qt, i32 noundef -2)
  br label %.loopexit1381

.lr.ph1481:                                       ; preds = %.preheader1380, %.lr.ph1481
  %.06631480 = phi i32 [ %i.qu, %.lr.ph1481 ], [ 0, %.preheader1380 ] ; 2 uses
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %.06631480)
  %i.qu = add nuw nsw i32 %.06631480, 1           ; 2 uses
  %.not745 = icmp eq i32 %i.qu, %.0
  br i1 %.not745, label %.loopexit1381, label %.lr.ph1481, !llvm.loop !4939

.loopexit1381:                                    ; preds = %.lr.ph1481, %.preheader1380, %bb.cc
  %.not7461482 = icmp eq i32 %.0657, 0
  br i1 %.not7461482, label %.loopexit1379, label %.lr.ph1485

.lr.ph1485:                                       ; preds = %.loopexit1381
  %i.qv = load ptr, ptr %33, align 8, !tbaa !84
  %i.qw = load ptr, ptr %3, align 8, !tbaa !84
  %i.qx = getelementptr [4 x i8], ptr %i.qw, i64 %.0658
  %i.qy = zext i32 %.0657 to i64
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph1485, %bb.cf
  %indvars.iv1530 = phi i64 [ 0, %.lr.ph1485 ], [ %indvars.iv.next1531, %bb.cf ] ; 3 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv1530
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !241 ; 4 uses
  %i.rb = icmp sgt i32 %i.ra, -1
  br i1 %i.rb, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.rc = udiv i32 %i.ra, %.0657
  %i.rd = add nuw nsw i32 %i.rc, 1
  %i.re = mul i32 %i.rd, %.0
  %i.rf = urem i32 %i.ra, %.0657
  %i.rg = add i32 %i.re, %i.rf
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0667 = phi i32 [ %i.rg, %bb.ce ], [ %i.ra, %bb.cd ]
  %i.rh = getelementptr [4 x i8], ptr %i.qx, i64 %indvars.iv1530
  store i32 %.0667, ptr %i.rh, align 4, !tbaa !241
  %indvars.iv.next1531 = add nuw nsw i64 %indvars.iv1530, 1 ; 2 uses
  %.not746 = icmp eq i64 %indvars.iv.next1531, %i.qy
  br i1 %.not746, label %.loopexit1379, label %bb.cd, !llvm.loop !4940

.loopexit1379:                                    ; preds = %bb.cf, %.loopexit1381, %bb.bv, %.critedge13
  %.10 = phi i1 [ false, %.critedge13 ], [ false, %bb.bv ], [ true, %.loopexit1381 ], [ true, %bb.cf ]
  %i.ri = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !644
  %i.rk = icmp ugt i32 %i.rj, 64
  br i1 %i.rk, label %bb.cg, label %_ZN4llvm5APIntD2Ev.exit864

bb.cg:                                            ; preds = %.loopexit1379
  %i.rl = load ptr, ptr %37, align 8, !tbaa !358  ; 2 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %_ZN4llvm5APIntD2Ev.exit864, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %i.rl) #41
  br label %_ZN4llvm5APIntD2Ev.exit864

_ZN4llvm5APIntD2Ev.exit864:                       ; preds = %.loopexit1379, %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38
  br label %bb.ci

bb.ci:                                            ; preds = %.split1336, %_ZNK4llvm3EVT8isVectorEv.exit852, %_ZN4llvm5APIntD2Ev.exit864, %bb.bu
  %.11 = phi i1 [ true, %bb.bu ], [ %.10, %_ZN4llvm5APIntD2Ev.exit864 ], [ false, %_ZNK4llvm3EVT8isVectorEv.exit852 ], [ false, %.split1336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  %i.rn = load ptr, ptr %34, align 8, !tbaa !84   ; 2 uses
  %i.ro = icmp eq ptr %i.rn, %i.nn
  br i1 %i.ro, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit865, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @free(ptr noundef %i.rn) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit865

_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit865: ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  %i.rp = load ptr, ptr %33, align 8, !tbaa !84   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.nk
  br i1 %i.rq, label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit866, label %bb.ck

bb.ck:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit865
  call void @free(ptr noundef %i.rp) #38
  br label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit866

_ZN4llvm11SmallVectorIiLj64EED2Ev.exit866:        ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit865, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  br label %bb.cl

bb.cl:                                            ; preds = %.critedge11, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit866, %_ZSt4iotaIPiiEvT_S1_T0_.exit844, %_ZSt4iotaIPijEvT_S1_T0_.exit, %_ZSt4iotaIPiiEvT_S1_T0_.exit
  %.12 = phi i1 [ true, %_ZSt4iotaIPiiEvT_S1_T0_.exit ], [ true, %_ZSt4iotaIPijEvT_S1_T0_.exit ], [ true, %_ZSt4iotaIPiiEvT_S1_T0_.exit844 ], [ %.11, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit866 ], [ false, %.critedge11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  br label %.critedge765

bb.cm:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.rr = icmp ne i32 %i.ab, 174                  ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !639 ; 2 uses
  %i.ru = zext i1 %i.rr to i64
  %i.rv = getelementptr inbounds nuw [40 x i8], ptr %i.rt, i64 %i.ru ; 2 uses
  %.sroa.01135.0.copyload = load ptr, ptr %i.rv, align 8, !tbaa !466 ; 3 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !241 ; 3 uses
  %.not736 = icmp eq i32 %i.ab, 174
  br i1 %.not736, label %bb.cu, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 80
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !473 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !469
  switch i32 %i.rz, label %.critedge765 [
    i32 37, label %bb.co
    i32 12, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn, %bb.cn
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 88
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !655
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = zext i16 %i.l to i64
  %i.se = tail call noundef zeroext i1 @_ZNK4llvm5APInt3ugeEm(ptr noundef nonnull align 8 dereferenceable(12) %i.sc, i64 noundef %i.sd)
  br i1 %i.se, label %.critedge765, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sf = load ptr, ptr %i.rs, align 8, !tbaa !639
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 80
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !473
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 88
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !655 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !644
  %i.sn = icmp ult i32 %i.sm, 65
  %i.so = load ptr, ptr %i.sk, align 8
  %spec.select.i.i.i.i.i867 = select i1 %i.sn, ptr %i.sk, ptr %i.so
  %.0.i.i.i.i.i868 = load i64, ptr %spec.select.i.i.i.i.i867, align 8, !tbaa !358
  %i.sp = trunc i64 %.0.i.i.i.i.i868 to i32       ; 2 uses
  %i.sq = tail call noundef zeroext i1 @_ZN4llvm3X8610isZeroNodeENS_7SDValueE(ptr %.sroa.01135.0.copyload, i32 %.sroa.19.0.copyload)
  br i1 %i.sq, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  %i.sr = load ptr, ptr %i.rs, align 8, !tbaa !639 ; 2 uses
  %.sroa.0262.0.copyload = load ptr, ptr %i.sr, align 8, !tbaa !466
  %.sroa.2263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %.sroa.2263.0.copyload = load i32, ptr %.sroa.2263.0..sroa_idx, align 8, !tbaa !241
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.0262.0.copyload, i32 %.sroa.2263.0.copyload)
  %.not7401464 = icmp eq i16 %i.l, 0
end_hunk_9
begin_hunk_10_@_ZL33combineX86ShuffleChainWithExtractN4llvm8ArrayRefINS_7SDValueEEEjNS_3MVTENS0_IiEEiNS0_IPKNS_6SDNodeEEEbbbRNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetE:bb.a
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.cn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %5 to i32                      ; 6 uses
  %i.d = zext i16 %3 to i64
  %i.e = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.d ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.e, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.f = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.f, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 16
  %i.h = trunc i64 %.sroa.0.0.copyload.i to i32   ; 6 uses
  %i.i = udiv i32 %i.h, %i.c
  %.idx = shl nuw nsw i64 %1, 4                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %25, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %.critedge
  %.not200 = icmp ugt i32 %.1190, %i.h
  br i1 %.not200, label %bb.r, label %bb.cn

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.0189316 = phi i32 [ %i.h, %.lr.ph ], [ %.1190, %.critedge ] ; 4 uses
  %.0191315 = phi ptr [ %0, %.lr.ph ], [ %i.ba, %.critedge ] ; 3 uses
  %.sroa.0278.0.copyload = load ptr, ptr %.0191315, align 8, !tbaa !466
  %.sroa.16.0..0191.sroa_idx = getelementptr inbounds nuw i8, ptr %.0191315, i64 8
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..0191.sroa_idx, align 8, !tbaa !241
  %i.n = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0278.0.copyload, i32 %.sroa.16.0.copyload) #38
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn.be, %.backedge.backedge ] ; 2 uses
  %.sroa.0278.0 = extractvalue { ptr, i32 } %.pn, 0 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !469
  switch i32 %i.p, label %bb.i [
    i32 167, label %bb.e
    i32 166, label %bb.f
  ]

bb.e:                                             ; preds = %.backedge
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !639  ; 2 uses
  %.sroa.0133.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !466
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2134.0.copyload = load i32, ptr %.sroa.2134.0..sroa_idx, align 8, !tbaa !241
  %i.s = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0133.0.copyload, i32 %.sroa.2134.0.copyload) #38
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.e, %bb.h
  %.pn.be = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.ad, %bb.h ]
  br label %.backedge, !llvm.loop !5060

bb.f:                                             ; preds = %.backedge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !639  ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !473
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !469
  %i.y = add i32 %i.x, -53
  %spec.select.i.i = icmp ult i32 %i.y, 2
  br i1 %spec.select.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %.sroa.0126.0.copyload = load ptr, ptr %i.z, align 8, !tbaa !466
  %.sroa.2127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %.sroa.2127.0.copyload = load i32, ptr %.sroa.2127.0..sroa_idx, align 8, !tbaa !241
  %i.aa = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0126.0.copyload, i32 %.sroa.2127.0.copyload) #38
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !639 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.0120.0.copyload = load ptr, ptr %i.ac, align 8, !tbaa !466
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.2121.0.copyload = load i32, ptr %.sroa.2121.0..sroa_idx, align 8, !tbaa !241
  %i.ad = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0120.0.copyload, i32 %.sroa.2121.0.copyload) #38
  br label %.backedge.backedge

bb.i:                                             ; preds = %.backedge, %bb.f, %bb.g
  %.sroa.16.0.le = extractvalue { ptr, i32 } %.pn, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !470
  %i.ag = zext i32 %.sroa.16.0.le to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag ; 4 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ah, align 8, !tbaa !346 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %.critedge, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.i
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !685
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %i.ak = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !338
  %.not308 = icmp eq ptr %i.am, null
  br i1 %.not308, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.an = zext i32 %.0189316 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ah, align 8, !tbaa !346 ; 3 uses
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %26, align 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.l, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ap = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ao ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.aq, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ap, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %26) #39
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.k, %bb.l
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.k ], [ %i.ar, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  %.fca.1.extract111 = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.as = trunc nuw i8 %.fca.1.extract111 to i1
  br i1 %i.as, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit210

bb.m:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit210:                  ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract110 = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.at = icmp ugt i64 %.fca.0.extract110, %i.an
  br i1 %i.at, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit210
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %.sroa.0.0.copyload.i.i.i211 = load i16, ptr %i.ah, align 8, !tbaa !346 ; 3 uses
  %.sroa.21.0.copyload.i.i.i213 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !472
  store i16 %.sroa.0.0.copyload.i.i.i211, ptr %25, align 8
  store ptr %.sroa.21.0.copyload.i.i.i213, ptr %i.m, align 8
  %.not.i.i214 = icmp eq i16 %.sroa.0.0.copyload.i.i.i211, 0
  br i1 %.not.i.i214, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = zext i16 %.sroa.0.0.copyload.i.i.i211 to i64
  %i.av = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %.sroa.0.0.copyload.i.i3.i215 = load i64, ptr %i.aw, align 16
  %.sroa.2.0..sroa_idx.i.i.i216 = getelementptr i8, ptr %i.av, i64 -8
  %.sroa.2.0.copyload.i.i.i217 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i216, align 8
  %.fca.0.insert.i.i4.i218 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i215, 0
  %.fca.1.insert.i.i5.i219 = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i218, i8 %.sroa.2.0.copyload.i.i.i217, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit221

bb.p:                                             ; preds = %bb.n
  %i.ax = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %25) #39
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit221

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit221:  ; preds = %bb.o, %bb.p
  %.pn.i.i220 = phi { i64, i8 } [ %.fca.1.insert.i.i5.i219, %bb.o ], [ %i.ax, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  %.fca.1.extract107 = extractvalue { i64, i8 } %.pn.i.i220, 1
  %i.ay = trunc nuw i8 %.fca.1.extract107 to i1
  br i1 %i.ay, label %bb.q, label %_ZNK4llvm8TypeSizecvmEv.exit222

bb.q:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit221
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit222:                  ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit221
  %.fca.0.extract106 = extractvalue { i64, i8 } %.pn.i.i220, 0
  %i.az = trunc i64 %.fca.0.extract106 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZNK4llvm8TypeSizecvmEv.exit222, %_ZNK4llvm8TypeSizecvmEv.exit210
  %.1190 = phi i32 [ %i.az, %_ZNK4llvm8TypeSizecvmEv.exit222 ], [ %.0189316, %_ZNK4llvm8TypeSizecvmEv.exit210 ], [ %.0189316, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ %.0189316, %bb.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0191315, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.j
  br i1 %.not, label %._crit_edge, label %bb.d

bb.r:                                             ; preds = %._crit_edge
  %i.bb = urem i32 %.1190, %i.h
  %i.bc = udiv i32 %.1190, %i.h                   ; 2 uses
  %.not201 = icmp eq i32 %i.bb, 0
  br i1 %.not201, label %bb.s, label %bb.cn

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  %i.bd = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.bd, ptr %27, align 8, !tbaa !84
  %i.be = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 12 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 2 uses
  store i32 64, ptr %i.bf, align 4, !tbaa !635
  store i32 0, ptr %i.be, align 8, !tbaa !634
  %.idx.i = shl nuw nsw i64 %5, 2
  %i.bg = icmp ugt i64 %5, 64
  br i1 %i.bg, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread.i: ; preds = %bb.s
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull %i.bd, i64 noundef %5, i64 noundef 4) #38
  %.pre8.pre.i.i.i = load i32, ptr %i.be, align 8, !tbaa !634
  %i.bh = zext i32 %.pre8.pre.i.i.i to i64
  %.pre = load ptr, ptr %27, align 8, !tbaa !84
  br label %bb.t

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.s
  %.not.i.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread.i
  %i.bi = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread.i ], [ %i.bd, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %.pre8.i.i33.i = phi i64 [ %i.bh, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.pre8.i.i33.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr readonly align 4 %4, i64 %.idx.i, i1 false)
  %.pre.i.i.i = load i32, ptr %i.be, align 8, !tbaa !634
  %.pre341 = load ptr, ptr %27, align 8, !tbaa !84
  br label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.i

_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.i: ; preds = %bb.t, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %i.bk = phi ptr [ %i.bd, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %.pre341, %bb.t ] ; 2 uses
  %i.bl = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.t ]
  %i.bm = add i32 %i.bl, %i.c                     ; 3 uses
  store i32 %i.bm, ptr %i.be, align 8, !tbaa !634
  %i.bn = zext i32 %i.bm to i64
  %.idx27.i = shl nuw nsw i64 %i.bn, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx27.i
  %.not25.i = icmp eq i32 %i.bm, 0
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.i
  %i.bp = mul i32 %i.bc, %i.c
  br label %bb.w

._crit_edge.loopexit.i:                           ; preds = %bb.y
  %.pre.i = load i32, ptr %i.be, align 8, !tbaa !634
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.i
  %i.bq = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.i ] ; 2 uses
  %i.br = add i32 %i.bc, -1
  %i.bs = mul i32 %i.br, %i.c                     ; 3 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = zext i32 %i.bq to i64
  %i.bv = add nuw nsw i64 %i.bu, %i.bt            ; 2 uses
  %i.bw = load i32, ptr %i.bf, align 4, !tbaa !635
  %i.bx = zext i32 %i.bw to i64
  %.not.i.i.i21.i = icmp samesign ugt i64 %i.bv, %i.bx
  br i1 %.not.i.i.i21.i, label %bb.u, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i, !prof !649

bb.u:                                             ; preds = %._crit_edge.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull %i.bd, i64 noundef %i.bv, i64 noundef 4) #38
  %.pre4.pre.i.i = load i32, ptr %i.be, align 8, !tbaa !634
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i: ; preds = %bb.u, %._crit_edge.i
  %.pre4.i.i = phi i32 [ %i.bq, %._crit_edge.i ], [ %.pre4.pre.i.i, %bb.u ] ; 2 uses
  %i.by = icmp eq i32 %i.bs, 0
  br i1 %i.by, label %_ZL15growShuffleMaskN4llvm8ArrayRefIiEERNS_15SmallVectorImplIiEEjj.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i
  %i.bz = load ptr, ptr %27, align 8, !tbaa !84
  %i.ca = zext i32 %.pre4.i.i to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca ; 4 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bt, 2    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i.i
  %i.cd = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.ce = lshr exact i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cd, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.v
  %n.vec = and i64 %i.cf, 9223372036854775800     ; 3 uses
  %i.cg = shl i64 %n.vec, 2
  %i.ch = getelementptr i8, ptr %i.cb, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -1), ptr %next.gep, align 4, !tbaa !241
  store <4 x i32> splat (i32 -1), ptr %i.cj, align 4, !tbaa !241
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !5061

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.v, %middle.block
  %.06.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cb, %bb.v ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 -1, ptr %.06.i.i.i.i.i.i.i.i, align 4, !tbaa !241
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.cc
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !5062

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %.pre.i.i = load i32, ptr %i.be, align 8, !tbaa !634
  br label %_ZL15growShuffleMaskN4llvm8ArrayRefIiEERNS_15SmallVectorImplIiEEjj.exit

bb.w:                                             ; preds = %bb.y, %.lr.ph.i
  %.026.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.cs, %bb.y ] ; 3 uses
  %i.cm = load i32, ptr %.026.i, align 4, !tbaa !241 ; 3 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = urem i32 %i.cm, %i.c
  %i.cp = udiv i32 %i.cm, %i.c
  %i.cq = mul i32 %i.bp, %i.cp
  %i.cr = add i32 %i.cq, %i.co
  store i32 %i.cr, ptr %.026.i, align 4, !tbaa !241
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %.not.i223 = icmp eq ptr %i.cs, %i.bo
  br i1 %.not.i223, label %._crit_edge.loopexit.i, label %bb.w

_ZL15growShuffleMaskN4llvm8ArrayRefIiEERNS_15SmallVectorImplIiEEjj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i
  %i.ct = phi i32 [ %.pre.i.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i ], [ %.pre4.i.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i ]
  %i.cu = add i32 %i.ct, %i.bs
  store i32 %i.cu, ptr %i.be, align 8, !tbaa !634
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  %i.cv = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  store ptr %i.cv, ptr %28, align 8, !tbaa !84
  %i.cw = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 8 uses
  store i32 0, ptr %i.cw, align 8, !tbaa !634
  %i.cx = getelementptr inbounds nuw i8, ptr %28, i64 12
  store i32 4, ptr %i.cx, align 4, !tbaa !635
  %i.cy = icmp ugt i64 %1, 4
  br i1 %i.cy, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i: ; preds = %_ZL15growShuffleMaskN4llvm8ArrayRefIiEERNS_15SmallVectorImplIiEEjj.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %28, ptr noundef nonnull %i.cv, i64 noundef %1, i64 noundef 16) #38
  %.pre8.pre.i.i = load i32, ptr %i.cw, align 8, !tbaa !634
  %i.cz = zext i32 %.pre8.pre.i.i to i64
  %.pre342 = load ptr, ptr %28, align 8, !tbaa !84
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i, %_ZL15growShuffleMaskN4llvm8ArrayRefIiEERNS_15SmallVectorImplIiEEjj.exit
  %i.da = phi ptr [ %.pre342, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i ], [ %i.cv, %_ZL15growShuffleMaskN4llvm8ArrayRefIiEERNS_15SmallVectorImplIiEEjj.exit ]
  %.pre8.i5.i = phi i64 [ %i.cz, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i ], [ 0, %_ZL15growShuffleMaskN4llvm8ArrayRefIiEERNS_15SmallVectorImplIiEEjj.exit ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 8 %0, i64 %.idx, i1 false)
  %.pre.i.i225 = load i32, ptr %i.cw, align 8, !tbaa !634
  %i.dc = add i32 %.pre.i.i225, %i.a
  store i32 %i.dc, ptr %i.cw, align 8, !tbaa !634
  %i.dd = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.de = zext i32 %.1190 to i64                  ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.dh = zext i32 %i.i to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.ar
  call fastcc void @_ZL33resolveTargetShuffleInputsAndMaskRN4llvm15SmallVectorImplINS_7SDValueEEERNS0_IiEE(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %27)
  %i.di = load i32, ptr %i.cw, align 8, !tbaa !634 ; 3 uses
  %.not.i226 = icmp eq i32 %i.di, 0
  br i1 %.not.i226, label %.critedge208, label %bb.as

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2IS1_vEENS_8ArrayRefIT_EE.exit, %bb.ar
  %indvars.iv = phi i64 [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2IS1_vEENS_8ArrayRefIT_EE.exit ], [ %indvars.iv.next, %bb.ar ] ; 3 uses
  %.0192321 = phi i32 [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2IS1_vEENS_8ArrayRefIT_EE.exit ], [ %.1193.ph, %bb.ar ]
  %i.dj = load ptr, ptr %28, align 8, !tbaa !84
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %indvars.iv ; 9 uses
  %.sroa.075.0.copyload = load ptr, ptr %i.dk, align 8, !tbaa !466
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 5 uses
  %.sroa.276.0.copyload = load i32, ptr %.sroa.276.0..sroa_idx, align 8, !tbaa !241
  %i.dl = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.075.0.copyload, i32 %.sroa.276.0.copyload) #38 ; 2 uses
  %.fca.0.extract71 = extractvalue { ptr, i32 } %i.dl, 0 ; 2 uses
  %.fca.1.extract72 = extractvalue { ptr, i32 } %i.dl, 1
  store ptr %.fca.0.extract71, ptr %i.dk, align 8, !tbaa !466
  store i32 %.fca.1.extract72, ptr %.sroa.276.0..sroa_idx, align 8, !tbaa !241
  %i.dm = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dn = add i32 %i.dm, 1
end_hunk_10
