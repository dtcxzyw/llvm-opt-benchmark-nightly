inline.NumInlined: 2965
inline.NumDeleted: 1136
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm21getForInPropertyNamesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERjS6_:bb.a
  %i.jj = or i64 %i.ji, -281474976710656
  store i64 %i.jj, ptr %.0.i.i.i.i.i.i26.i, align 8, !tbaa !326
  %i.jk = call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i26.i) #17
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread93, label %bb.ak, !prof !39

_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread93: ; preds = %bb.aj
  %i.jm = load ptr, ptr %i.hs, align 8, !tbaa !329
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.ht
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !351
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 128
  store i32 %i.hq, ptr %i.hp, align 8, !tbaa !349
  store ptr %i.jp, ptr %i.hu, align 8, !tbaa !56
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !46
  br label %bb.co

bb.ak:                                            ; preds = %bb.aj
  %.sroa.0.0.copyload.i.i40.i = load i64, ptr %.0.i.i.i.i.i.i.i53, align 8, !tbaa !40
  %i.jq = and i64 %.sroa.0.0.copyload.i.i40.i, 281474976710655
  %i.jr = inttoptr i64 %i.jq to ptr
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %.sroa.0.0.copyload.i.i.i41.i = load i32, ptr %i.js, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i42.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i41.i, 0
  %i.jt = zext i32 %.sroa.0.0.copyload.i.i.i41.i to i64
  %i.ju = add i64 %i.jt, %i.k
  %i.jv = or i64 %i.ju, -281474976710656
  %i.jw = select i1 %.not.i.i.i.i.i42.i, i64 -281474976710656, i64 %i.jv ; 3 uses
  store i64 %i.jw, ptr %.0.i.i.i.i.i.i.i53, align 8, !tbaa !326
  %i.jx = load ptr, ptr %i.hs, align 8, !tbaa !329
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.ht
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !351
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 128
  store i32 %i.hq, ptr %i.hp, align 8, !tbaa !349
  store ptr %i.ka, ptr %i.hu, align 8, !tbaa !56
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !46
  %i.kb = and i64 %i.jw, 281474976710655          ; 2 uses
  %.not.i57 = icmp eq i64 %i.kb, 0
  br i1 %.not.i57, label %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit, label %bb.ae, !llvm.loop !524

_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit: ; preds = %bb.ak, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.._crit_edge_crit_edge.i
  %.pre68.pre-phi.i = phi i64 [ %.pre69.i, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.._crit_edge_crit_edge.i ], [ %i.ht, %bb.ak ]
  store i64 -1548112371908608, ptr %.0.i.i.i.i.i.i26.i, align 8, !tbaa !326
  %i.kc = call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i26.i) #17
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hn, i64 144
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !329
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %.pre68.pre-phi.i
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !351
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 128
  store i32 %i.hq, ptr %i.hp, align 8, !tbaa !349
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hn, i64 200
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !56
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !46
  %i.kj = icmp eq i32 %i.kc, 0
  br i1 %i.kj, label %bb.co, label %bb.al

bb.al:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread96, %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread, %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit
  %i.kk = load ptr, ptr %7, align 8, !tbaa !316
  %.sroa.0.0.copyload.i.i59 = load i64, ptr %i.kk, align 8, !tbaa !40
  %i.kl = and i64 %.sroa.0.0.copyload.i.i59, 281474976710655
  %i.km = inttoptr i64 %i.kl to ptr               ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load atomic i32, ptr %i.kn monotonic, align 4 ; 3 uses
  %i.kp = icmp ult i32 %i.ko, 4097
  br i1 %i.kp, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit61, label %bb.am, !prof !42

bb.am:                                            ; preds = %bb.al
  %i.kq = add i32 %i.ko, -4097                    ; 2 uses
  %i.kr = shl i32 %i.kq, 10
  %i.ks = add i32 %i.kr, 4096
  %i.kt = getelementptr inbounds nuw i8, ptr %i.km, i64 32776
  %i.ku = zext i32 %i.kq to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !326
  %i.kx = and i64 %i.kw, 281474976710655
  %i.ky = inttoptr i64 %i.kx to ptr
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.la = load atomic i32, ptr %i.kz monotonic, align 4
  %i.lb = add i32 %i.ks, %i.la
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit61

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit61: ; preds = %bb.al, %bb.am
  %.0.i60 = phi i32 [ %i.lb, %bb.am ], [ %i.ko, %bb.al ] ; 4 uses
  store i32 %.0.i60, ptr %2, align 4, !tbaa !3
  %i.lc = load ptr, ptr %i.o, align 8, !tbaa !43  ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 192 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !46 ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 200
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !56 ; 2 uses
  %i.lh = icmp ult ptr %i.le, %i.lg
  br i1 %i.lh, label %bb.an, label %bb.ao, !prof !42

bb.an:                                            ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit61
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 2 uses
  store ptr %i.li, ptr %i.ld, align 8, !tbaa !46
  store i64 -1688849860263936, ptr %i.le, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i64

bb.ao:                                            ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit61
  %i.lj = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.lc, i64 -1688849860263936) #17
  %.pre.i62 = load ptr, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert.i63 = getelementptr inbounds nuw i8, ptr %.pre.i62, i64 192
  %.pre205.i = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !46
  %.phi.trans.insert206.i = getelementptr inbounds nuw i8, ptr %.pre.i62, i64 200
  %.pre207.i = load ptr, ptr %.phi.trans.insert206.i, align 8, !tbaa !56
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i64

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i64: ; preds = %bb.ao, %bb.an
  %i.lk = phi ptr [ %i.lg, %bb.an ], [ %.pre207.i, %bb.ao ] ; 2 uses
  %i.ll = phi ptr [ %i.li, %bb.an ], [ %.pre205.i, %bb.ao ] ; 4 uses
  %i.lm = phi ptr [ %i.lc, %bb.an ], [ %.pre.i62, %bb.ao ] ; 3 uses
  %.0.i.i.i.i.i.i.i65 = phi ptr [ %i.le, %bb.an ], [ %i.lj, %bb.ao ] ; 11 uses
  %i.ln = icmp ult ptr %i.ll, %i.lk
  br i1 %i.ln, label %bb.ap, label %bb.aq, !prof !42

bb.ap:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 192
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  store ptr %i.lp, ptr %i.lo, align 8, !tbaa !46
  store i64 -1266636858327041, ptr %i.ll, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i

bb.aq:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i64
  %i.lq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.lm, i64 -1266636858327041) #17
  %.pre208.i = load ptr, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert209.i = getelementptr inbounds nuw i8, ptr %.pre208.i, i64 192
  %.pre210.i = load ptr, ptr %.phi.trans.insert209.i, align 8, !tbaa !46
  %.phi.trans.insert211.i = getelementptr inbounds nuw i8, ptr %.pre208.i, i64 200
  %.pre212.i = load ptr, ptr %.phi.trans.insert211.i, align 8, !tbaa !56
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i: ; preds = %bb.aq, %bb.ap
  %i.lr = phi ptr [ %i.lk, %bb.ap ], [ %.pre212.i, %bb.aq ]
  %i.ls = phi ptr [ %i.lp, %bb.ap ], [ %.pre210.i, %bb.aq ] ; 4 uses
  %i.lt = phi ptr [ %i.lm, %bb.ap ], [ %.pre208.i, %bb.aq ] ; 2 uses
  %.0.i.i.i.i.i.i71.i = phi ptr [ %i.ll, %bb.ap ], [ %i.lq, %bb.aq ] ; 4 uses
  %.sroa.0.0.copyload.i.i.i66 = load i64, ptr %1, align 8, !tbaa !40
  %i.lu = or i64 %.sroa.0.0.copyload.i.i.i66, -281474976710656 ; 2 uses
  %i.lv = icmp ult ptr %i.ls, %i.lr
  br i1 %i.lv, label %bb.ar, label %bb.as, !prof !42

bb.ar:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 192
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %i.lx, ptr %i.lw, align 8, !tbaa !46
  store i64 %i.lu, ptr %i.ls, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i67

bb.as:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.ly = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.lt, i64 %i.lu) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i67

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i67: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i72.i = phi ptr [ %i.ls, %bb.ar ], [ %i.ly, %bb.as ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.lz, ptr %4, align 8, !tbaa !329
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.ma, align 8, !tbaa !330
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.mb, align 4, !tbaa !331
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  store i32 0, ptr %i.mc, align 8, !tbaa !332
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store ptr null, ptr %i.md, align 8, !tbaa !333
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.mc, ptr %i.me, align 8, !tbaa !334
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.mc, ptr %i.mf, align 8, !tbaa !335
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store i64 0, ptr %i.mg, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.mh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.mh, ptr %5, align 8, !tbaa !329
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.mi, align 8, !tbaa !330
  %i.mj = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.mj, align 4, !tbaa !331
  %i.mk = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  store i32 0, ptr %i.mk, align 8, !tbaa !332
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store ptr null, ptr %i.ml, align 8, !tbaa !333
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.mk, ptr %i.mm, align 8, !tbaa !334
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.mk, ptr %i.mn, align 8, !tbaa !335
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  store i64 0, ptr %i.mo, align 8, !tbaa !336
  %.sroa.0.0.copyload.i.i73197.i = load i64, ptr %.0.i.i.i.i.i.i72.i, align 8, !tbaa !40
  %i.mp = and i64 %.sroa.0.0.copyload.i.i73197.i, 281474976710655
  %.not198.i = icmp eq i64 %i.mp, 0
  br i1 %.not198.i, label %.loopexit.i71, label %.lr.ph201.i

.lr.ph201.i:                                      ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i67
  %i.mq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.mv = getelementptr inbounds nuw i8, ptr %6, i64 156
  %i.mw = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.my = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %8 = insertelement <2 x ptr> poison, ptr %i.ms, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %i.mr, i64 1
  br label %bb.at

bb.at:                                            ; preds = %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.thread.i, %.lr.ph201.i
  %.0200.i = phi i32 [ %.0.i60, %.lr.ph201.i ], [ %.1.lcssa.i, %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.thread.i ] ; 2 uses
  %.053199.i = phi i1 [ false, %.lr.ph201.i ], [ true, %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %0, ptr %6, align 8, !tbaa !525
  %i.na = load ptr, ptr %i.o, align 8, !tbaa !43
  store ptr %i.na, ptr %i.mq, align 8, !tbaa !526
  store ptr %i.mt, ptr %i.mr, align 8, !tbaa !329
  store i32 4, ptr %i.mv, align 4, !tbaa !331
  store ptr %i.ms, ptr %i.mt, align 8
  store i32 1, ptr %i.mu, align 8, !tbaa !330
  store <2 x ptr> %9, ptr %i.mw, align 8, !tbaa !351
  store i32 0, ptr %i.my, align 8, !tbaa !349
  store ptr %6, ptr %i.o, align 8, !tbaa !43
  %i.nb = call ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr nonnull %.0.i.i.i.i.i.i72.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 2) ; 3 uses
  %.not172.i = icmp eq ptr %i.nb, inttoptr (i64 -1 to ptr)
  br i1 %.not172.i, label %.loopexit.sink.split.i, label %bb.au, !prof !39

bb.au:                                            ; preds = %bb.at
  %i.nc = load ptr, ptr %i.mw, align 8, !tbaa !46
  %i.nd = load i32, ptr %i.my, align 8, !tbaa !349 ; 2 uses
  %.sroa.0.0.copyload.i.i74.i = load i64, ptr %i.nb, align 8, !tbaa !40
  %i.ne = and i64 %.sroa.0.0.copyload.i.i74.i, 281474976710655
  %i.nf = inttoptr i64 %i.ne to ptr
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !342 ; 2 uses
  %.not66192.not.i = icmp eq i32 %i.nh, 0
  br i1 %.not66192.not.i, label %.thread158.i, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.au
  %i.ni = zext i32 %i.nd to i64
  br label %bb.av

bb.av:                                            ; preds = %.thread149.i, %.lr.ph.i68
  %.1195.i = phi i32 [ %.0200.i, %.lr.ph.i68 ], [ %.4.i, %.thread149.i ] ; 7 uses
  %.063193.i = phi i32 [ 0, %.lr.ph.i68 ], [ %i.th, %.thread149.i ] ; 4 uses
  %i.nj = load ptr, ptr %i.mr, align 8, !tbaa !329
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.ni
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !351
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 128
  store i32 %i.nd, ptr %i.my, align 8, !tbaa !349
  store ptr %i.nm, ptr %i.mx, align 8, !tbaa !56
  store ptr %i.nc, ptr %i.mw, align 8, !tbaa !46
  %.sroa.0.0.copyload.i.i75.i = load i64, ptr %i.nb, align 8, !tbaa !40
  %i.nn = and i64 %.sroa.0.0.copyload.i.i75.i, 281474976710655
  %i.no = inttoptr i64 %i.nn to ptr               ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 20
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !356 ; 2 uses
  %.not.i.i = icmp uge i32 %.063193.i, %i.nq
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.ns = load i32, ptr %i.nr, align 4
  %i.nt = icmp ult i32 %.063193.i, %i.ns
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.nt, i1 false
  br i1 %or.cond.i.i, label %bb.aw, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.nu, align 4, !tbaa !3
  %i.nv = zext i32 %.sroa.0.0.copyload.i.i.i.i.i to i64
  %i.nw = add i64 %i.nv, %i.k
  %i.nx = inttoptr i64 %i.nw to ptr               ; 2 uses
  %i.ny = sub nuw i32 %.063193.i, %i.nq           ; 4 uses
  %i.nz = icmp ult i32 %i.ny, 4096
  br i1 %i.nz, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.oa = add i32 %i.ny, -4096
  %i.ob = lshr i32 %i.oa, 10
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 16392
  %i.od = zext nneg i32 %i.ob to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !313
  %i.og = zext i32 %i.of to i64
  %i.oh = add i64 %i.og, %i.k
  %i.oi = inttoptr i64 %i.oh to ptr
  %i.oj = and i32 %i.ny, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i: ; preds = %bb.ax, %bb.aw
  %.sink8.i.i.i = phi ptr [ %i.oi, %bb.ax ], [ %i.nx, %bb.aw ]
  %.sink7.i.i.i = phi i32 [ %i.oj, %bb.ax ], [ %i.ny, %bb.aw ]
  %i.ok = getelementptr inbounds nuw i8, ptr %.sink8.i.i.i, i64 8
  %i.ol = zext nneg i32 %.sink7.i.i.i to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.ol
  %.sroa.0.0.i.i.i = load i32, ptr %i.om, align 4, !tbaa !3 ; 9 uses
  %i.on = trunc i32 %.sroa.0.0.i.i.i to i8
  %i.oo = and i8 %i.on, 15
  switch i8 %i.oo, label %default.unreachable [
    i8 0, label %bb.ay
    i8 8, label %bb.ay
    i8 1, label %bb.az
    i8 9, label %bb.az
    i8 2, label %bb.ba
    i8 10, label %bb.ba
    i8 3, label %bb.bb
    i8 11, label %bb.bb
    i8 4, label %bb.bc
    i8 12, label %bb.bc
    i8 5, label %bb.bd
    i8 13, label %bb.bd
    i8 6, label %bb.be
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread.i
    i8 7, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i
    i8 15, label %bb.bf
  ]

bb.ay:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %.not.i.i.i.i.i.i75 = icmp eq i32 %.sroa.0.0.i.i.i, 0
  %i.op = zext i32 %.sroa.0.0.i.i.i to i64
  %i.oq = add i64 %i.op, %i.k
  %i.or = or i64 %i.oq, -281474976710656
  %i.os = select i1 %.not.i.i.i.i.i.i75, i64 -281474976710656, i64 %i.or
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i

bb.az:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.ot = and i32 %.sroa.0.0.i.i.i, -8
  %i.ou = zext i32 %i.ot to i64
  %i.ov = add i64 %i.ou, %i.k
  %i.ow = or i64 %i.ov, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i

bb.ba:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.ox = and i32 %.sroa.0.0.i.i.i, -8
  %i.oy = zext i32 %i.ox to i64
  %i.oz = add i64 %i.oy, %i.k
  %i.pa = or i64 %i.oz, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i

bb.bb:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.pb = and i32 %.sroa.0.0.i.i.i, -8
  %i.pc = zext i32 %i.pb to i64
  %i.pd = add i64 %i.pc, %i.k
  %i.pe = inttoptr i64 %i.pd to ptr
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !311 ; 2 uses
  %i.ph = fcmp uno double %i.pg, 0.000000e+00
  %i.pi = bitcast double %i.pg to i64
  %.sroa.0.0.i.i76.i = select i1 %i.ph, i64 9221120237041090560, i64 %i.pi, !prof !39
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i

bb.bc:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.pj = ashr i32 %.sroa.0.0.i.i.i, 3
  %i.pk = sitofp i32 %i.pj to double
  %i.pl = bitcast double %i.pk to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i

bb.bd:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.pm = lshr i32 %.sroa.0.0.i.i.i, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = or disjoint i64 %i.pn, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i

bb.be:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.pp = icmp ugt i32 %.sroa.0.0.i.i.i, 15
  %i.pq = zext i1 %i.pp to i64
  %i.pr = or disjoint i64 %i.pq, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i: ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %bb.av
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread.i

bb.bf:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread.i

default.unreachable:                              ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread.i: ; preds = %bb.bf, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %.sroa.05.0.i.ph.i = phi i64 [ -1688849860263936, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i ], [ -1970324836974592, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i ], [ -1548112371908608, %bb.bf ]
  store i64 %.sroa.05.0.i.ph.i, ptr %.0.i.i.i.i.i.i.i65, align 8, !tbaa !326
  br label %bb.bk

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.sroa.05.0.i.i = phi i64 [ %i.os, %bb.ay ], [ %i.ow, %bb.az ], [ %i.pa, %bb.ba ], [ %.sroa.0.0.i.i76.i, %bb.bb ], [ %i.pl, %bb.bc ], [ %i.po, %bb.bd ], [ %i.pr, %bb.be ] ; 5 uses
  store i64 %.sroa.05.0.i.i, ptr %.0.i.i.i.i.i.i.i65, align 8, !tbaa !326
  %.mask.i.i74 = and i64 %.sroa.05.0.i.i, -281474976710656
  %i.ps = icmp eq i64 %.mask.i.i74, -844424930131968
  br i1 %i.ps, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i
  %i.pt = load ptr, ptr %i.o, align 8, !tbaa !43  ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 192 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !46 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 200
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !56
  %i.py = icmp ult ptr %i.pv, %i.px
  br i1 %i.py, label %bb.bh, label %bb.bi, !prof !42

bb.bh:                                            ; preds = %bb.bg
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store ptr %i.pz, ptr %i.pu, align 8, !tbaa !46
  store i64 %.sroa.05.0.i.i, ptr %i.pv, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.qa = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.pt, i64 %.sroa.05.0.i.i) #17
  %.sroa.0.0.copyload.i.i.i.i78.pre.i = load i64, ptr %i.qa, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i: ; preds = %bb.bi, %bb.bh
  %.sroa.0.0.copyload.i.i.i.i78.i = phi i64 [ %.sroa.05.0.i.i, %bb.bh ], [ %.sroa.0.0.copyload.i.i.i.i78.pre.i, %bb.bi ]
  %i.qb = and i64 %.sroa.0.0.copyload.i.i.i.i78.i, 281474976710655
  %i.qc = inttoptr i64 %i.qb to ptr
  %i.qd = call ptr @_ZN6hermes2vm15IdentifierTable28getSymbolHandleFromPrimitiveERNS0_7RuntimeENS0_12PseudoHandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(84) %i.mz, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.qc) #17 ; 2 uses
  %.not173.i = icmp eq ptr %i.qd, inttoptr (i64 -1 to ptr)
  br i1 %.not173.i, label %.loopexit.sink.split.i, label %bb.bj, !prof !39

bb.bj:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i
  %.sroa.0.0.copyload.i.i.i.i79.i = load i64, ptr %i.qd, align 8, !tbaa !40
  %i.qe = and i64 %.sroa.0.0.copyload.i.i.i.i79.i, 4294967295
  %i.qf = or disjoint i64 %i.qe, -1266637395197952
  store i64 %i.qf, ptr %.0.i.i.i.i.i.i71.i, align 8, !tbaa !326
end_hunk_0
