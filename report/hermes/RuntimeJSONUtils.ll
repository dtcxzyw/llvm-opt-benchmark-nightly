inline.NumInlined: 1616
inline.NumDeleted: 784
begin_hunk_0_@_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJOEv:bb.a
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.gi, align 8, !tbaa !12
  %i.gm = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.gn = inttoptr i64 %i.gm to ptr               ; 5 uses
  %i.go = load i32, ptr %i.gn, align 4            ; 2 uses
  %i.gp = icmp ugt i32 %i.go, 150994943
  br i1 %i.gp, label %bb.af, label %bb.ag, !prof !58

bb.af:                                            ; preds = %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !123
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ag:                                            ; preds = %bb.ae
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.go, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.aj [
    i32 134217728, label %bb.ah
    i32 67108864, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.aj:                                            ; preds = %bb.ag
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.gu, align 8, !tbaa !12
  %i.gv = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !123
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.0.i.sink.i.i = phi ptr [ %i.gi, %bb.ad ], [ %i.gr, %bb.af ], [ %i.gs, %bb.ah ], [ %i.gt, %bb.ai ], [ %i.gy, %bb.aj ]
  %i.gz = and i64 %i.gj, 1073741823
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.gz
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEcEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr %i.ha, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.ak:                                            ; preds = %bb.ac
  %.not.i1.i = icmp samesign ult i32 %.sroa.3.8.extract.trunc.i, 1073741824
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.gi, align 8, !tbaa !12
  %i.hb = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.hc = inttoptr i64 %i.hb to ptr               ; 5 uses
  %i.hd = load i32, ptr %i.hc, align 4            ; 2 uses
  %i.he = icmp ugt i32 %i.hd, 150994943
  br i1 %i.he, label %bb.am, label %bb.an, !prof !58

bb.am:                                            ; preds = %bb.al
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !59
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.an:                                            ; preds = %bb.al
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.hd, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.aq [
    i32 117440512, label %bb.ao
    i32 50331648, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.aq:                                            ; preds = %bb.an
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.hj, align 8, !tbaa !12
  %i.hk = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !59
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.0.i.sink.i4.i = phi ptr [ %i.gi, %bb.ak ], [ %i.hg, %bb.am ], [ %i.hh, %bb.ao ], [ %i.hi, %bb.ap ], [ %i.hn, %bb.aq ]
  %i.ho = and i64 %i.gj, 1073741823
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i, i64 %i.ho
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEDsEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr %i.hp, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit: ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i
  %i.hq = load i32, ptr %i.n, align 8, !tbaa !10  ; 2 uses
  %i.hr = load i32, ptr %i.p, align 4, !tbaa !11
  %.not.i67 = icmp ult i32 %i.hq, %i.hr
  br i1 %.not.i67, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit69, label %bb.ar, !prof !41

bb.ar:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.cn, i64 noundef 0, i64 noundef 2) #10
  %.pre.i68 = load i32, ptr %i.n, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit69

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit69: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, %bb.ar
  %i.hs = phi i32 [ %.pre.i68, %bb.ar ], [ %i.hq, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit ]
  %i.ht = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.hu = zext i32 %i.hs to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.hu
  store i16 58, ptr %i.hv, align 1
  %i.hw = load i32, ptr %i.n, align 8, !tbaa !10
  %i.hx = add i32 %i.hw, 1                        ; 3 uses
  store i32 %i.hx, ptr %i.n, align 8, !tbaa !10
  %i.hy = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i70 = load i64, ptr %i.hy, align 8, !tbaa !12
  %i.hz = and i64 %.sroa.0.0.copyload.i.i70, 281474976710655
  %.not = icmp eq i64 %i.hz, 0
  br i1 %.not, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit69
  %i.ia = load i32, ptr %i.p, align 4, !tbaa !11
  %.not.i71 = icmp ult i32 %i.hx, %i.ia
  br i1 %.not.i71, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit73, label %bb.at, !prof !41

bb.at:                                            ; preds = %bb.as
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.cn, i64 noundef 0, i64 noundef 2) #10
  %.pre.i72 = load i32, ptr %i.n, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit73

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit73: ; preds = %bb.as, %bb.at
  %i.ib = phi i32 [ %.pre.i72, %bb.at ], [ %i.hx, %bb.as ]
  %i.ic = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.id = zext i32 %i.ib to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.id
  store i16 32, ptr %i.ie, align 1
  %i.if = load i32, ptr %i.n, align 8, !tbaa !10
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.n, align 8, !tbaa !10
  br label %bb.au

bb.au:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit73, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit69
  %i.ih = load ptr, ptr %i.cp, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i74 = load i64, ptr %i.ih, align 8, !tbaa !12
  %i.ii = and i64 %.sroa.0.0.copyload.i.i74, 281474976710655
  %i.ij = inttoptr i64 %i.ii to ptr               ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = load atomic i32, ptr %i.ik monotonic, align 4
  %i.im = add i32 %i.il, -1
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.io = zext i32 %i.im to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.io
  %.sroa.0.0.copyload.i76 = load i32, ptr %i.ip, align 4, !tbaa !3 ; 2 uses
  %i.iq = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68 ; 2 uses
  %.not.i.i.i.i77 = icmp eq i32 %.sroa.0.0.copyload.i76, 0
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = zext i32 %.sroa.0.0.copyload.i76 to i64
  %i.it = add i64 %i.ir, %i.is
  %i.iu = or i64 %i.it, -281474976710656
  %i.iv = select i1 %.not.i.i.i.i77, i64 -281474976710656, i64 %i.iu
  %i.iw = load ptr, ptr %i.cq, align 8, !tbaa !94
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !95
  %i.ix = load ptr, ptr %i.ci, align 8, !tbaa !42
  %.sroa.0.0.copyload.i78 = load i64, ptr %i.ix, align 8, !tbaa !12
  %i.iy = load ptr, ptr %i.cr, align 8, !tbaa !94
  store i64 %.sroa.0.0.copyload.i78, ptr %i.iy, align 8, !tbaa !95
  %.sroa.04.0.copyload = load ptr, ptr %i.cr, align 8
  %i.iz = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull align 8 dereferenceable(9816) %i.iq, ptr %.sroa.04.0.copyload)
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jb = load ptr, ptr %i.cb, align 8, !tbaa !7
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.cc
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !94
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !73
  store ptr %i.je, ptr %i.ch, align 8, !tbaa !40
  store ptr %i.e, ptr %i.d, align 8, !tbaa !32
  %i.jf = load ptr, ptr %i.co, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i82 = load i64, ptr %i.jf, align 8, !tbaa !12
  %i.jg = tail call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer12operationStrENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %.sroa.0.0.copyload.i.i.i82) ; 2 uses
  %i.jh = load ptr, ptr %i.cs, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i83 = load i64, ptr %i.jh, align 8, !tbaa !12
  %i.ji = and i64 %.sroa.0.0.copyload.i.i83, 281474976710655
  %i.jj = inttoptr i64 %i.ji to ptr               ; 2 uses
  %i.jk = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  %i.jm = load atomic i32, ptr %i.jl monotonic, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jo = add i32 %i.jm, -1                       ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jp ; 2 uses
  %.sroa.0.0.copyload.i84 = load i32, ptr %i.jq, align 4, !tbaa !3 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 1632
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !185
  %i.jt = ptrtoint ptr %i.jq to i64
  %i.ju = and i64 %i.jt, 1125899902648320
  %i.jv = inttoptr i64 %i.ju to ptr
  %i.jw = icmp ne ptr %i.js, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jk, i64 8489
  %i.jy = load i8, ptr %i.jx, align 1, !range !180
  %i.jz = trunc nuw i8 %i.jy to i1
  %i.ka = select i1 %i.jw, i1 %i.jz, i1 false, !prof !186
  br i1 %i.ka, label %bb.aw, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit, !prof !186

bb.aw:                                            ; preds = %bb.av
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jk, i64 856
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.kb, i32 %.sroa.0.0.copyload.i84) #10
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit: ; preds = %bb.av, %bb.aw
  store atomic i32 %i.jo, ptr %i.jl monotonic, align 4
  %i.kc = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68
  %.not.i.i.i.i85 = icmp eq i32 %.sroa.0.0.copyload.i84, 0
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = zext i32 %.sroa.0.0.copyload.i84 to i64
  %i.kf = add i64 %i.kd, %i.ke
  %i.kg = or i64 %i.kf, -281474976710656
  %i.kh = select i1 %.not.i.i.i.i85, i64 -281474976710656, i64 %i.kg
  %i.ki = load ptr, ptr %i.ci, align 8, !tbaa !94
  store i64 %i.kh, ptr %i.ki, align 8, !tbaa !95
  %.mask = and i32 %i.jg, 255
  %i.kj = icmp eq i32 %.mask, 0
  br i1 %i.kj, label %.critedge, label %bb.ax, !prof !58

bb.ax:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit
  %.not135 = icmp samesign ult i32 %i.jg, 256
  br i1 %.not135, label %bb.ay, label %bb.az, !prof !58

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZN4llvh15SmallVectorImplIDsE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.cu)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.235.ph = phi i8 [ 1, %bb.ax ], [ %.033142, %bb.ay ] ; 2 uses
  %i.kk = add nuw i32 %.038139, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.kk, %i.cm
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.az
  %i.kl = trunc nuw i8 %.235.ph to i1
  store i32 %i.i, ptr %i.h, align 8, !tbaa !74
  br i1 %i.kl, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %._crit_edge
  %i.km = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i86 = load i64, ptr %i.km, align 8, !tbaa !12
  %i.kn = and i64 %.sroa.0.0.copyload.i.i.i86, 281474976710655
  %.not.i87 = icmp eq i64 %i.kn, 0
  %.pre145 = load i32, ptr %i.n, align 8, !tbaa !10 ; 3 uses
  br i1 %.not.i87, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ko = load i32, ptr %i.p, align 4, !tbaa !11
  %.not.i.i88 = icmp ult i32 %.pre145, %i.ko
  br i1 %.not.i.i88, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i90, label %bb.bc, !prof !41

bb.bc:                                            ; preds = %bb.bb
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.kp, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i89 = load i32, ptr %i.n, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i90

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i90: ; preds = %bb.bc, %bb.bb
  %i.kq = phi i32 [ %.pre.i.i89, %bb.bc ], [ %.pre145, %bb.bb ]
  %i.kr = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.ks = zext i32 %i.kq to i64
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %i.ks
  store i16 10, ptr %i.kt, align 1
  %i.ku = load i32, ptr %i.n, align 8, !tbaa !10
  %i.kv = add i32 %i.ku, 1                        ; 2 uses
  store i32 %i.kv, ptr %i.n, align 8, !tbaa !10
  %i.kw = load i32, ptr %i.h, align 8, !tbaa !74
  %.not4.i91 = icmp eq i32 %i.kw, 0
  br i1 %.not4.i91, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95, label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i90, %.lr.ph.i92
  %.03.i93 = phi i32 [ %i.la, %.lr.ph.i92 ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i90 ]
  %i.kx = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i2.i94 = load i64, ptr %i.kx, align 8, !tbaa !12
  %i.ky = and i64 %.sroa.0.0.copyload.i.i2.i94, 281474976710655
  %i.kz = inttoptr i64 %i.ky to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.kz, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.la = add nuw i32 %.03.i93, 1                 ; 2 uses
  %i.lb = load i32, ptr %i.h, align 8, !tbaa !74
  %i.lc = icmp ult i32 %i.la, %i.lb
  br i1 %i.lc, label %.lr.ph.i92, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95.loopexit, !llvm.loop !182

bb.bd:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.ld = load i32, ptr %i.n, align 8, !tbaa !10  ; 4 uses
  %i.le = icmp ult i32 %i.x, %i.ld
  br i1 %i.le, label %.sink.split.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lf = icmp ugt i32 %i.x, %i.ld
  br i1 %i.lf, label %bb.bf, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95

bb.bf:                                            ; preds = %bb.be
  %i.lg = load i32, ptr %i.p, align 4, !tbaa !11
  %i.lh = icmp ugt i32 %i.x, %i.lg
  br i1 %i.lh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.li, i64 noundef %i.y, i64 noundef 2) #10
  %.pre.i96 = load i32, ptr %i.n, align 8, !tbaa !10
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pre-phi.i.in = phi i32 [ %.pre.i96, %bb.bg ], [ %i.ld, %bb.bf ] ; 2 uses
  %.not13.i = icmp eq i32 %i.x, %.pre-phi.i.in
  br i1 %.not13.i, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bh
  %.pre-phi.i = zext i32 %.pre-phi.i.in to i64    ; 2 uses
  %i.lj = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.lk = getelementptr [2 x i8], ptr %i.lj, i64 %.pre-phi.i
  %i.ll = sub nsw i64 %i.y, %.pre-phi.i
  %i.lm = shl nsw i64 %i.ll, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.lk, i8 0, i64 %i.lm, i1 false), !tbaa !133
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.bh, %bb.bd
  store i32 %i.x, ptr %i.n, align 8, !tbaa !10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95.loopexit: ; preds = %.lr.ph.i92
  %.pre144 = load i32, ptr %i.n, align 8, !tbaa !10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95.loopexit, %.sink.split.i, %bb.be, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i90, %bb.ba
  %i.ln = phi i32 [ %.pre144, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95.loopexit ], [ %i.x, %.sink.split.i ], [ %i.ld, %bb.be ], [ %i.kv, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i90 ], [ %.pre145, %bb.ba ] ; 2 uses
  %i.lo = load i32, ptr %i.p, align 4, !tbaa !11
  %.not.i97 = icmp ult i32 %i.ln, %i.lo
  br i1 %.not.i97, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit99, label %bb.bi, !prof !41

bb.bi:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.lp, i64 noundef 0, i64 noundef 2) #10
  %.pre.i98 = load i32, ptr %i.n, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit99

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit99: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95, %bb.bi
  %i.lq = phi i32 [ %.pre.i98, %bb.bi ], [ %i.ln, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit95 ]
  %i.lr = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.ls = zext i32 %i.lq to i64
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.ls
  store i16 125, ptr %i.lt, align 1
  %i.lu = load i32, ptr %i.n, align 8, !tbaa !10
  %i.lv = add i32 %i.lu, 1
  store i32 %i.lv, ptr %i.n, align 8, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %bb.au, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit, %bb.j, %bb.h, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit99, %bb.b
  %.9 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.h ], [ 0, %bb.j ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit99 ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit ], [ 0, %bb.au ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.lx = zext i32 %i.g to i64
  %i.ly = load ptr, ptr %i.lw, align 8, !tbaa !7
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lx
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !94
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !73
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !40
  store ptr %i.e, ptr %i.d, align 8, !tbaa !32
  ret i32 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer17popValueFromStackEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !12
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1632
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = and i64 %i.n, 1125899902648320
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = icmp ne ptr %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8489
  %i.s = load i8, ptr %i.r, align 1, !range !180
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = select i1 %i.q, i1 %i.t, i1 false, !prof !186
  br i1 %i.u, label %bb.b, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit, !prof !186

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 856
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.v, i32 %.sroa.0.0.copyload.i) #10
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit: ; preds = %bb.a, %bb.b
  store atomic i32 %i.i, ptr %i.f monotonic, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEcEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 37 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 20 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !7
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  store i16 34, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !10
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !10
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.m = phi i32 [ %i.k, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ], [ %i.dg, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41 ] ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i33 = icmp ult i32 %i.m, %i.n
  br i1 %.not.i33, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit35, label %bb.c, !prof !41

bb.c:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.o, i64 noundef 0, i64 noundef 2) #10
  %.pre.i34 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit35

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit35: ; preds = %._crit_edge, %bb.c
  %i.p = phi i32 [ %.pre.i34, %bb.c ], [ %i.m, %._crit_edge ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !7
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.r
  store i16 34, ptr %i.s, align 1
  %i.t = load i32, ptr %i.a, align 8, !tbaa !10
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.a, align 8, !tbaa !10
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41
  %i.v = phi i32 [ %i.k, %.lr.ph ], [ %i.dg, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41 ] ; 17 uses
  %.0114 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.0114
  %i.x = load i8, ptr %i.w, align 1, !tbaa !103   ; 5 uses
  switch i8 %i.x, label %bb.s [
    i8 92, label %bb.e
    i8 34, label %bb.g
    i8 8, label %bb.i
    i8 12, label %bb.k
    i8 10, label %bb.m
    i8 13, label %bb.o
    i8 9, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i36 = icmp ult i32 %i.v, %i.y
  br i1 %.not.i36, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38, label %bb.f, !prof !41

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i37 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38: ; preds = %bb.e, %bb.f
  %i.z = phi i32 [ %.pre.i37, %bb.f ], [ %i.v, %bb.e ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ab
  store i16 92, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !10
  %i.ae = add i32 %i.ad, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !10
  %i.af = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i39 = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i39, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.g:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i42 = icmp ult i32 %i.v, %i.ag
  br i1 %.not.i42, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, label %bb.h, !prof !41

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i43 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44: ; preds = %bb.g, %bb.h
  %i.ah = phi i32 [ %.pre.i43, %bb.h ], [ %i.v, %bb.g ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !7
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.aj
  store i16 92, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.a, align 8, !tbaa !10
  %i.am = add i32 %i.al, 1                        ; 3 uses
  store i32 %i.am, ptr %i.a, align 8, !tbaa !10
  %i.an = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i45 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i45, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.i:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i48 = icmp ult i32 %i.v, %i.ao
  br i1 %.not.i48, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50, label %bb.j, !prof !41

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i49 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50: ; preds = %bb.i, %bb.j
  %i.ap = phi i32 [ %.pre.i49, %bb.j ], [ %i.v, %bb.i ]
  %i.aq = load ptr, ptr %0, align 8, !tbaa !7
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ar
  store i16 92, ptr %i.as, align 1
  %i.at = load i32, ptr %i.a, align 8, !tbaa !10
  %i.au = add i32 %i.at, 1                        ; 3 uses
  store i32 %i.au, ptr %i.a, align 8, !tbaa !10
  %i.av = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i51 = icmp ult i32 %i.au, %i.av
  br i1 %.not.i51, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.k:                                             ; preds = %bb.d
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i54 = icmp ult i32 %i.v, %i.aw
  br i1 %.not.i54, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i55 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56: ; preds = %bb.k, %bb.l
  %i.ax = phi i32 [ %.pre.i55, %bb.l ], [ %i.v, %bb.k ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !7
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.az
  store i16 92, ptr %i.ba, align 1
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !10
  %i.bc = add i32 %i.bb, 1                        ; 3 uses
  store i32 %i.bc, ptr %i.a, align 8, !tbaa !10
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i57 = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i57, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.m:                                             ; preds = %bb.d
  %i.be = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i60 = icmp ult i32 %i.v, %i.be
  br i1 %.not.i60, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i61 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62: ; preds = %bb.m, %bb.n
  %i.bf = phi i32 [ %.pre.i61, %bb.n ], [ %i.v, %bb.m ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !7
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bh
  store i16 92, ptr %i.bi, align 1
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !10
  %i.bk = add i32 %i.bj, 1                        ; 3 uses
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !10
  %i.bl = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i63 = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i63, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.o:                                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i66 = icmp ult i32 %i.v, %i.bm
  br i1 %.not.i66, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68, label %bb.p, !prof !41

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i67 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68: ; preds = %bb.o, %bb.p
  %i.bn = phi i32 [ %.pre.i67, %bb.p ], [ %i.v, %bb.o ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !7
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp
  store i16 92, ptr %i.bq, align 1
  %i.br = load i32, ptr %i.a, align 8, !tbaa !10
  %i.bs = add i32 %i.br, 1                        ; 3 uses
  store i32 %i.bs, ptr %i.a, align 8, !tbaa !10
  %i.bt = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i69 = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i69, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.q:                                             ; preds = %bb.d
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i72 = icmp ult i32 %i.v, %i.bu
  br i1 %.not.i72, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74, label %bb.r, !prof !41

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i73 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74: ; preds = %bb.q, %bb.r
  %i.bv = phi i32 [ %.pre.i73, %bb.r ], [ %i.v, %bb.q ]
  %i.bw = load ptr, ptr %0, align 8, !tbaa !7
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bx
  store i16 92, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !10
  %i.ca = add i32 %i.bz, 1                        ; 3 uses
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !10
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i75 = icmp ult i32 %i.ca, %i.cb
  br i1 %.not.i75, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.s:                                             ; preds = %bb.d
  %i.cc = icmp slt i8 %i.x, 32
  br i1 %i.cc, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !11
  %i.ce = zext i32 %i.cd to i64
  %i.cf = zext i32 %i.v to i64                    ; 3 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = icmp ult i64 %i.cg, 4
  br i1 %i.ch, label %.thread.i, label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

.thread.i:                                        ; preds = %bb.t
  %i.ci = add nuw nsw i64 %i.cf, 4
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef %i.ci, i64 noundef 2) #10
  %.pre7.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !10
  %.pre = zext i32 %.pre7.pre.i.i to i64
  br label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit: ; preds = %bb.t, %.thread.i
  %.pre-phi = phi i64 [ %i.cf, %bb.t ], [ %.pre, %.thread.i ]
  %i.cj = load ptr, ptr %0, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %.pre-phi
  store <4 x i16> <i16 92, i16 117, i16 48, i16 48>, ptr %i.ck, align 1
  %.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !10
  %i.cl = add i32 %.pre.i.i, 4                    ; 3 uses
  store i32 %i.cl, ptr %i.a, align 8, !tbaa !10
  %i.cm = sdiv i8 %i.x, 16
  %i.cn = srem i8 %i.x, 16                        ; 3 uses
  %narrow = add nsw i8 %i.cm, 48
  %i.co = zext nneg i8 %narrow to i16
  %i.cp = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i78 = icmp ult i32 %i.cl, %i.cp
  br i1 %.not.i78, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80, label %bb.u, !prof !41

bb.u:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i79 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80: ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit, %bb.u
  %i.cq = phi i32 [ %.pre.i79, %bb.u ], [ %i.cl, %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit ]
  %i.cr = load ptr, ptr %0, align 8, !tbaa !7
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cs
  store i16 %i.co, ptr %i.ct, align 1
  %i.cu = load i32, ptr %i.a, align 8, !tbaa !10
  %i.cv = add i32 %i.cu, 1                        ; 4 uses
  store i32 %i.cv, ptr %i.a, align 8, !tbaa !10
  %i.cw = icmp slt i8 %i.cn, 10
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i81 = icmp ult i32 %i.cv, %i.cx           ; 2 uses
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80
  %narrow113 = add nsw i8 %i.cn, 48
  %i.cy = zext nneg i8 %narrow113 to i16          ; 2 uses
  br i1 %.not.i81, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.w:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80
  %narrow112 = add nuw nsw i8 %i.cn, 87
  %i.cz = zext nneg i8 %narrow112 to i16          ; 2 uses
  br i1 %.not.i81, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.x:                                             ; preds = %bb.s
  %i.da = zext nneg i8 %i.x to i16                ; 2 uses
  %i.db = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i87 = icmp ult i32 %i.v, %i.db
  br i1 %.not.i87, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split: ; preds = %bb.x, %bb.w, %bb.v, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38
  %.sink.ph = phi i16 [ %i.cz, %bb.w ], [ %i.cy, %bb.v ], [ 92, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38 ], [ 34, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44 ], [ 98, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50 ], [ 102, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56 ], [ 110, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62 ], [ 114, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68 ], [ 116, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74 ], [ %i.da, %bb.x ]
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i88 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, %bb.x, %bb.w, %bb.v, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38
  %.sink137 = phi i32 [ %i.cv, %bb.w ], [ %i.cv, %bb.v ], [ %i.ca, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74 ], [ %i.bs, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68 ], [ %i.bk, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62 ], [ %i.bc, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56 ], [ %i.au, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50 ], [ %i.am, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44 ], [ %i.ae, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38 ], [ %i.v, %bb.x ], [ %.pre.i88, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split ]
  %.sink = phi i16 [ %i.cz, %bb.w ], [ %i.cy, %bb.v ], [ 116, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74 ], [ 114, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68 ], [ 110, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62 ], [ 102, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56 ], [ 98, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50 ], [ 34, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44 ], [ 92, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38 ], [ %i.da, %bb.x ], [ %.sink.ph, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split ]
  %i.dc = load ptr, ptr %0, align 8, !tbaa !7
  %i.dd = zext i32 %.sink137 to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.dd
  store i16 %.sink, ptr %i.de, align 1
  %i.df = load i32, ptr %i.a, align 8, !tbaa !10
  %i.dg = add i32 %i.df, 1                        ; 3 uses
  store i32 %i.dg, ptr %i.a, align 8, !tbaa !10
  %i.dh = add nuw i64 %.0114, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !188
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEDsEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 81 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 23 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !7
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  store i16 34, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !10
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !10
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 21 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.aq
  %.pre = load i32, ptr %i.a, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.m = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ] ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i33 = icmp ult i32 %i.m, %i.n
  br i1 %.not.i33, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit35, label %bb.c, !prof !41

bb.c:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.o, i64 noundef 0, i64 noundef 2) #10
  %.pre.i34 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit35

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit35: ; preds = %._crit_edge, %bb.c
  %i.p = phi i32 [ %.pre.i34, %bb.c ], [ %i.m, %._crit_edge ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !7
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.r
  store i16 34, ptr %i.s, align 1
  %i.t = load i32, ptr %i.a, align 8, !tbaa !10
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.a, align 8, !tbaa !10
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.aq
  %.0118 = phi i64 [ 0, %.lr.ph ], [ %i.gp, %bb.aq ] ; 13 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0118
  %i.w = load i16, ptr %i.v, align 2, !tbaa !133  ; 11 uses
  switch i16 %i.w, label %bb.z [
    i16 92, label %bb.e
    i16 34, label %bb.h
    i16 8, label %bb.k
    i16 12, label %bb.n
    i16 10, label %bb.q
    i16 13, label %bb.t
    i16 9, label %bb.w
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i36 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i36, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38, label %bb.f, !prof !41

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i37 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38: ; preds = %bb.e, %bb.f
  %i.z = phi i32 [ %.pre.i37, %bb.f ], [ %i.x, %bb.e ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ab
  store i16 92, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !10
  %i.ae = add i32 %i.ad, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !10
  %i.af = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i39 = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i39, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i40 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38, %bb.g
  %i.ag = phi i32 [ %.pre.i40, %bb.g ], [ %i.ae, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38 ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !7
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ai
  store i16 92, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !10
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 8, !tbaa !10
  br label %bb.aq

bb.h:                                             ; preds = %bb.d
  %i.am = load i32, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.an = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i42 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i42, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i43 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44: ; preds = %bb.h, %bb.i
  %i.ao = phi i32 [ %.pre.i43, %bb.i ], [ %i.am, %bb.h ]
  %i.ap = load ptr, ptr %0, align 8, !tbaa !7
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.aq
  store i16 92, ptr %i.ar, align 1
  %i.as = load i32, ptr %i.a, align 8, !tbaa !10
  %i.at = add i32 %i.as, 1                        ; 3 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !10
  %i.au = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i45 = icmp ult i32 %i.at, %i.au
  br i1 %.not.i45, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit47, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i46 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit47

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit47: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, %bb.j
  %i.av = phi i32 [ %.pre.i46, %bb.j ], [ %i.at, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44 ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !7
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ax
  store i16 34, ptr %i.ay, align 1
  %i.az = load i32, ptr %i.a, align 8, !tbaa !10
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !10
  br label %bb.aq

bb.k:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i48 = icmp ult i32 %i.bb, %i.bc
  br i1 %.not.i48, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i49 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50: ; preds = %bb.k, %bb.l
  %i.bd = phi i32 [ %.pre.i49, %bb.l ], [ %i.bb, %bb.k ]
  %i.be = load ptr, ptr %0, align 8, !tbaa !7
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bf
  store i16 92, ptr %i.bg, align 1
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !10
  %i.bi = add i32 %i.bh, 1                        ; 3 uses
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !10
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i51 = icmp ult i32 %i.bi, %i.bj
  br i1 %.not.i51, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53, label %bb.m, !prof !41

bb.m:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i52 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50, %bb.m
  %i.bk = phi i32 [ %.pre.i52, %bb.m ], [ %i.bi, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50 ]
  %i.bl = load ptr, ptr %0, align 8, !tbaa !7
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.bm
  store i16 98, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !10
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !10
  br label %bb.aq

bb.n:                                             ; preds = %bb.d
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.br = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i54 = icmp ult i32 %i.bq, %i.br
  br i1 %.not.i54, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56, label %bb.o, !prof !41
end_hunk_0
begin_hunk_1_@_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEDsEEvRT_NS1_8ArrayRefIT0_EE:bb.a
_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74, %bb.y
  %i.ds = phi i32 [ %.pre.i76, %bb.y ], [ %i.dq, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74 ]
  %i.dt = load ptr, ptr %0, align 8, !tbaa !7
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.du
  store i16 116, ptr %i.dv, align 1
  %i.dw = load i32, ptr %i.a, align 8, !tbaa !10
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.a, align 8, !tbaa !10
  br label %bb.aq

bb.z:                                             ; preds = %bb.d
  %i.dy = icmp ult i16 %i.w, 32
  br i1 %i.dy, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !11
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load i32, ptr %i.a, align 8, !tbaa !10
  %i.ec = zext i32 %i.eb to i64                   ; 3 uses
  %i.ed = sub nsw i64 %i.ea, %i.ec
  %i.ee = icmp ult i64 %i.ed, 4
  br i1 %i.ee, label %.thread.i, label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

.thread.i:                                        ; preds = %bb.aa
  %i.ef = add nuw nsw i64 %i.ec, 4
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef %i.ef, i64 noundef 2) #10
  %.pre7.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !10
  %.pre119 = zext i32 %.pre7.pre.i.i to i64
  br label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit: ; preds = %bb.aa, %.thread.i
  %.pre-phi = phi i64 [ %i.ec, %bb.aa ], [ %.pre119, %.thread.i ]
  %i.eg = load ptr, ptr %0, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %.pre-phi
  store <4 x i16> <i16 92, i16 117, i16 48, i16 48>, ptr %i.eh, align 1
  %.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !10
  %i.ei = add i32 %.pre.i.i, 4                    ; 3 uses
  store i32 %i.ei, ptr %i.a, align 8, !tbaa !10
  %i.ej = lshr i16 %i.w, 4
  %narrow = or disjoint i16 %i.ej, 48
  %i.ek = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i78 = icmp ult i32 %i.ei, %i.ek
  br i1 %.not.i78, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80, label %bb.ab, !prof !41

bb.ab:                                            ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i79 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80: ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit, %bb.ab
  %i.el = phi i32 [ %.pre.i79, %bb.ab ], [ %i.ei, %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit ]
  %i.em = load ptr, ptr %0, align 8, !tbaa !7
  %i.en = zext i32 %i.el to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.en
  store i16 %narrow, ptr %i.eo, align 1
  %i.ep = load i32, ptr %i.a, align 8, !tbaa !10
  %i.eq = add i32 %i.ep, 1                        ; 5 uses
  store i32 %i.eq, ptr %i.a, align 8, !tbaa !10
  %i.er = and i16 %i.w, 14
  %i.es = icmp samesign ult i16 %i.er, 10
  br i1 %i.es, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80
  %i.et = or i16 %i.w, 48
  %i.eu = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i81 = icmp ult i32 %i.eq, %i.eu
  br i1 %.not.i81, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit83, label %bb.ad, !prof !41

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i82 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit83

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit83: ; preds = %bb.ac, %bb.ad
  %i.ev = phi i32 [ %.pre.i82, %bb.ad ], [ %i.eq, %bb.ac ]
  %i.ew = load ptr, ptr %0, align 8, !tbaa !7
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %i.ex
  store i16 %i.et, ptr %i.ey, align 1
  %i.ez = load i32, ptr %i.a, align 8, !tbaa !10
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.a, align 8, !tbaa !10
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80
  %i.fb = and i16 %i.w, 15
  %narrow32 = add nuw nsw i16 %i.fb, 87
  %i.fc = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i84 = icmp ult i32 %i.eq, %i.fc
  br i1 %.not.i84, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit86, label %bb.af, !prof !41

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i85 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit86

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit86: ; preds = %bb.ae, %bb.af
  %i.fd = phi i32 [ %.pre.i85, %bb.af ], [ %i.eq, %bb.ae ]
  %i.fe = load ptr, ptr %0, align 8, !tbaa !7
  %i.ff = zext i32 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.ff
  store i16 %narrow32, ptr %i.fg, align 1
  %i.fh = load i32, ptr %i.a, align 8, !tbaa !10
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.a, align 8, !tbaa !10
  br label %bb.aq

bb.ag:                                            ; preds = %bb.z
  %i.fj = and i16 %i.w, -2048
  %or.cond = icmp eq i16 %i.fj, -10240
  br i1 %or.cond, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.fk = and i16 %i.w, -9216
  %i.fl = icmp eq i16 %i.fk, -10240
  br i1 %i.fl, label %bb.ai, label %_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fm = add nuw i64 %.0118, 1                   ; 3 uses
  %i.fn = icmp ult i64 %i.fm, %2
  br i1 %i.fn, label %bb.aj, label %_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fm
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !133 ; 2 uses
  %i.fq = and i16 %i.fp, -1024
  %i.fr = icmp eq i16 %i.fq, -9216
  br i1 %i.fr, label %bb.ak, label %_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fs = load i32, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ft = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i.i = icmp ult i32 %i.fs, %i.ft
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, label %bb.al, !prof !41

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i87 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i: ; preds = %bb.al, %bb.ak
  %i.fu = phi i32 [ %.pre.i.i87, %bb.al ], [ %i.fs, %bb.ak ]
  %i.fv = load ptr, ptr %0, align 8, !tbaa !7
  %i.fw = zext i32 %i.fu to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %i.fw
  store i16 %i.w, ptr %i.fx, align 1
  %i.fy = load i32, ptr %i.a, align 8, !tbaa !10
  %i.fz = add i32 %i.fy, 1                        ; 3 uses
  store i32 %i.fz, ptr %i.a, align 8, !tbaa !10
  %i.ga = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i9.i = icmp ult i32 %i.fz, %i.ga
  br i1 %.not.i9.i, label %bb.an, label %bb.am, !prof !41

bb.am:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i10.i = load i32, ptr %i.a, align 8, !tbaa !10
  br label %bb.an

_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit: ; preds = %bb.ah, %bb.ai, %bb.aj
  tail call void @_ZN6hermes18appendUTF16EscapedIN4llvh11SmallVectorIDsLj32EEEEEvRT_Ds(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %i.w)
  br label %bb.aq

bb.an:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, %bb.am
  %i.gb = phi i32 [ %.pre.i10.i, %bb.am ], [ %i.fz, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i ]
  %i.gc = load ptr, ptr %0, align 8, !tbaa !7
  %i.gd = zext i32 %i.gb to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %i.gd
  store i16 %i.fp, ptr %i.ge, align 1
  %i.gf = load i32, ptr %i.a, align 8, !tbaa !10
  %i.gg = add i32 %i.gf, 1
  store i32 %i.gg, ptr %i.a, align 8, !tbaa !10
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ag
  %i.gh = load i32, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.gi = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i88 = icmp ult i32 %i.gh, %i.gi
  br i1 %.not.i88, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit90, label %bb.ap, !prof !41

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i89 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit90

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit90: ; preds = %bb.ao, %bb.ap
  %i.gj = phi i32 [ %.pre.i89, %bb.ap ], [ %i.gh, %bb.ao ]
  %i.gk = load ptr, ptr %0, align 8, !tbaa !7
  %i.gl = zext i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gl
  store i16 %i.w, ptr %i.gm, align 1
  %i.gn = load i32, ptr %i.a, align 8, !tbaa !10
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.a, align 8, !tbaa !10
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit86, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit83, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit90, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit71, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit65, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit59, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit47, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41
  %.1 = phi i64 [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit83 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit86 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit71 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit90 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit47 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit59 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit65 ], [ %i.fm, %bb.an ], [ %.0118, %_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit ]
  %i.gp = add i64 %.1, 1                          ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %2
  br i1 %i.gq, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !189
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18appendUTF16EscapedIN4llvh11SmallVectorIDsLj32EEEEEvRT_Ds(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = sub nsw i64 %i.c, %i.f
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %.thread.i, label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

.thread.i:                                        ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.f, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.j, i64 noundef %i.i, i64 noundef 2) #10
  %.pre7.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !10
  %.pre = zext i32 %.pre7.pre.i.i to i64
  br label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit: ; preds = %bb.a, %.thread.i
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %.pre, %.thread.i ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.pre-phi ; 2 uses
  store i16 92, ptr %i.l, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i16 117, ptr %.sroa.4.0..sroa_idx, align 1
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !10
  %i.m = add i32 %.pre.i.i, 2                     ; 3 uses
  store i32 %i.m, ptr %i.d, align 8, !tbaa !10
  %i.n = lshr i16 %1, 12
  %i.o = zext nneg i16 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @.str.9, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !133
  %i.r = load i32, ptr %i.a, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.m, %i.r
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit, %bb.b
  %i.t = phi i32 [ %.pre.i, %bb.b ], [ %i.m, %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !7
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.v
  store i16 %i.q, ptr %i.w, align 1
  %i.x = load i32, ptr %i.d, align 8, !tbaa !10
  %i.y = add i32 %i.x, 1                          ; 3 uses
  store i32 %i.y, ptr %i.d, align 8, !tbaa !10
  %i.z = lshr i16 %1, 8
  %i.aa = and i16 %i.z, 15
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @.str.9, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !133
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !11
  %.not.i8 = icmp ult i32 %i.y, %i.ae
  br i1 %.not.i8, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.af, i64 noundef 0, i64 noundef 2) #10
  %.pre.i9 = load i32, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, %bb.c
  %i.ag = phi i32 [ %.pre.i9, %bb.c ], [ %i.y, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !7
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ai
  store i16 %i.ad, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !10
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.d, align 8, !tbaa !10
  %i.am = trunc i16 %1 to i8                      ; 2 uses
  %i.an = lshr i8 %i.am, 4
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @.str.9, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !133
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !11
  %.not.i11 = icmp ult i32 %i.al, %i.ar
  br i1 %.not.i11, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i64 noundef 0, i64 noundef 2) #10
  %.pre.i12 = load i32, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10, %bb.d
  %i.at = phi i32 [ %.pre.i12, %bb.d ], [ %i.al, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10 ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !7
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.av
  store i16 %i.aq, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !10
  %i.ay = add i32 %i.ax, 1                        ; 3 uses
  store i32 %i.ay, ptr %i.d, align 8, !tbaa !10
  %i.az = and i8 %i.am, 15
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @.str.9, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !133
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !11
  %.not.i14 = icmp ult i32 %i.ay, %i.bd
  br i1 %.not.i14, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit16, label %bb.e, !prof !41

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.be, i64 noundef 0, i64 noundef 2) #10
  %.pre.i15 = load i32, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit16

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit16: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13, %bb.e
  %i.bf = phi i32 [ %.pre.i15, %bb.e ], [ %i.ay, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13 ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !7
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bh
  store i16 %i.bc, ptr %i.bi, align 1
  %i.bj = load i32, ptr %i.d, align 8, !tbaa !10
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.d, align 8, !tbaa !10
  ret void
}

declare void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !12
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %2, align 8, !tbaa !12 ; 9 uses
  %i.f = ashr i64 %.sroa.0.0.copyload.i.i17, 47
  switch i64 %i.f, label %bb.i [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.b
    i64 -11, label %bb.c
    i64 -10, label %bb.d
    i64 -9, label %bb.e
    i64 -6, label %bb.f
    i64 -5, label %bb.f
    i64 -4, label %bb.g
    i64 -3, label %bb.g
    i64 -2, label %bb.h
    i64 -1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.d:                                             ; preds = %bb.a
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i17 to i1
  %i.h = select i1 %i.g, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.e:                                             ; preds = %bb.a
  %i.i = trunc i64 %.sroa.0.0.copyload.i.i17 to i32
  %i.j = shl i32 %i.i, 3
  %i.k = or disjoint i32 %i.j, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %.sroa.0.0.copyload.i.i17, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = or i32 %i.n, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %.sroa.0.0.copyload.i.i17, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = or i32 %i.r, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub i64 %.sroa.0.0.copyload.i.i17, %i.t
  %i.v = trunc i64 %i.u to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.a
  %i.w = bitcast i64 %.sroa.0.0.copyload.i.i17 to double
  %i.x = fptosi double %i.w to i32
  %i.y = shl i32 %i.x, 3                          ; 2 uses
  %i.z = ashr exact i32 %i.y, 3
  %i.aa = sitofp i32 %i.z to double
  %i.ab = bitcast double %i.aa to i64
  %i.ac = icmp eq i64 %.sroa.0.0.copyload.i.i17, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !41

bb.j:                                             ; preds = %bb.i
  %i.ad = or disjoint i32 %i.y, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !89 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.ag, %i.ai
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !58

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ak = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aj, i32 noundef 16) #10
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.m:                                             ; preds = %bb.k
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !89
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.m, %bb.l
  %i.al = phi ptr [ %i.ak, %bb.l ], [ %i.af, %bb.m ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.0.0.copyload.i.i17, ptr %i.am, align 8, !tbaa !172
  store i32 402653200, ptr %i.al, align 8, !tbaa !103
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %1 to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = or i32 %i.aq, 3
  %.pre = load ptr, ptr %0, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i18.pre = load i64, ptr %.pre, align 8, !tbaa !12
  %.pre20 = and i64 %.sroa.0.0.copyload.i.i18.pre, 281474976710655
  %.pre21 = inttoptr i64 %.pre20 to ptr
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.pre-phi22 = phi ptr [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %i.c, %bb.h ], [ %i.c, %bb.j ], [ %.pre21, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 3 uses
  %.sroa.04.0.i = phi i32 [ 7, %bb.a ], [ 14, %bb.b ], [ 15, %bb.c ], [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %i.o, %bb.f ], [ %i.s, %bb.g ], [ %i.v, %bb.h ], [ %i.ad, %bb.j ], [ %i.ar, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %i.as = load i32, ptr %.pre-phi22, align 4
  %i.at = and i32 %i.as, 16777212
  %i.au = add nsw i32 %i.at, -8
  %i.av = lshr exact i32 %i.au, 2
  %i.aw = icmp ult i32 %i.e, %i.av
  br i1 %i.aw, label %bb.n, label %bb.p, !prof !41

bb.n:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre-phi22, i64 8
  %i.ay = zext nneg i32 %i.e to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  store i32 %.sroa.04.0.i, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !185
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = and i64 %i.bc, 1125899902648320
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = icmp eq ptr %i.bb, %i.be
  br i1 %i.bf, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit, label %bb.o, !prof !41

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.az, i32 %.sroa.04.0.i) #10
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit: ; preds = %bb.n, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre-phi22, i64 4
  %i.bi = add nuw nsw i32 %i.e, 1
  store atomic i32 %i.bi, ptr %i.bh release, align 4
  br label %bb.q

bb.p:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.bj = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE16pushBackSlowPathERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit
  %.0 = phi i32 [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit ], [ %i.bj, %bb.p ]
  ret i32 %.0
}

declare noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE16pushBackSlowPathERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm27enumerableOwnProperties_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_27EnumerableOwnPropertiesKindE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh15SmallVectorImplIDsE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, %i.c
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.j, i64 noundef %1, i64 noundef 2) #10
  %.pre = load i32, ptr %i.a, align 8, !tbaa !10
  %.pre15 = zext i32 %.pre to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i64 [ %.pre15, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %.not13 = icmp samesign eq i64 %1, %.pre-phi
  br i1 %.not13, label %.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.k = load ptr, ptr %0, align 8, !tbaa !7
  %i.l = getelementptr [2 x i8], ptr %i.k, i64 %.pre-phi
  %i.m = sub i64 %1, %.pre-phi
  %i.n = shl i64 %i.m, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.l, i8 0, i64 %i.n, i1 false), !tbaa !133
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.lr.ph.preheader, %bb.a
  %i.o = trunc i64 %1 to i32
  store i32 %i.o, ptr %i.a, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  ret void
}

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112), i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.230") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !191
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #12
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.e = add nuw nsw i64 %.idx, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #13 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !59
  store i64 %2, ptr %i.a, align 8, !tbaa !103
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i16, ptr %1, align 2, !tbaa !133
  store i16 %i.g, ptr %.pre7.i.i, align 2, !tbaa !133
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %1, i64 %.idx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !191
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !133
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!8, !4, i64 8}
!11 = !{!8, !4, i64 12}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"branch_weights", i32 4001, i32 1}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN6hermes2vm7RuntimeE", !9, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSN6hermes2vm9JSONTokenE", !19, i64 0, !20, i64 8, !21, i64 16, !25, i64 24, !27, i64 32}
!19 = !{!"_ZTSN6hermes2vm13JSONTokenKindE", !5, i64 0}
!20 = !{!"double", !5, i64 0}
!21 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEE", !22, i64 0}
!22 = !{!"_ZTSN6hermes2vm6HandleINS0_15StringPrimitiveEEE", !23, i64 0}
!23 = !{!"_ZTSN6hermes2vm10HandleBaseE", !24, i64 0}
!24 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !9, i64 0}
!25 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_8SymbolIDEEE", !26, i64 0}
!26 = !{!"_ZTSN6hermes2vm6HandleINS0_8SymbolIDEEE", !23, i64 0}
!27 = !{!"char16_t", !5, i64 0}
!28 = !{!18, !20, i64 8}
!29 = !{!30, !31, i64 8}
!30 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !31, i64 8}
!31 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !9, i64 0}
!32 = !{!33, !24, i64 192}
!33 = !{!"_ZTSN6hermes2vm7GCScopeE", !34, i64 0, !31, i64 8, !5, i64 16, !35, i64 144, !24, i64 192, !24, i64 200, !4, i64 208}
!34 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !9, i64 0}
!35 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !36, i64 0, !39, i64 16}
!36 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !37, i64 0}
!37 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !38, i64 0}
!38 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !8, i64 0}
!39 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!40 = !{!33, !24, i64 200}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!42 = !{!23, !24, i64 0}
!43 = !{!18, !27, i64 32}
!44 = !{!45, !4, i64 136}
!45 = !{!"_ZTSN6hermes2vm12_GLOBAL__N_117RuntimeJSONParserE", !16, i64 0, !46, i64 8, !54, i64 120, !55, i64 128, !4, i64 136}
!46 = !{!"_ZTSN6hermes2vm9JSONLexerE", !47, i64 0, !16, i64 64, !18, i64 72}
!47 = !{!"_ZTSN6hermes11UTF16StreamE", !48, i64 0, !48, i64 8, !49, i64 16, !49, i64 24, !48, i64 32, !50, i64 40}
!48 = !{!"p1 char16_t", !9, i64 0}
!49 = !{!"p1 omnipotent char", !9, i64 0}
!50 = !{!"_ZTSSt6vectorIDsSaIDsEE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIDsSaIDsEE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIDsSaIDsEE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIDsSaIDsEE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!54 = !{!"_ZTSN6hermes2vm6HandleINS0_8CallableEEE", !23, i64 0}
!55 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_11HermesValueEEE", !56, i64 0}
!56 = !{!"_ZTSN6hermes2vm6HandleINS0_11HermesValueEEE", !23, i64 0}
!57 = !{!53, !48, i64 0}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = !{!60, !48, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !61, i64 0, !13, i64 8, !5, i64 16}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !48, i64 0}
!62 = !{!63, !4, i64 4}
!63 = !{!"_ZTSN6hermes2vm15StringPrimitiveE", !64, i64 0, !4, i64 4}
!64 = !{!"_ZTSN6hermes2vm23VariableSizeRuntimeCellE", !65, i64 0}
!65 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!66 = !{!45, !16, i64 0}
!67 = !{}
!68 = !{i64 8}
!69 = !{!48, !48, i64 0}
!70 = !{!53, !48, i64 16}
!71 = !{!34, !34, i64 0}
!72 = !{!33, !31, i64 8}
!73 = !{!33, !4, i64 208}
!74 = !{!75, !4, i64 88}
!75 = !{!"_ZTSN6hermes2vm12_GLOBAL__N_115JSONStringifyerE", !16, i64 0, !76, i64 8, !21, i64 16, !77, i64 24, !79, i64 32, !79, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !77, i64 72, !81, i64 80, !4, i64 88, !83, i64 96}
!76 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_8CallableEEE", !54, i64 0}
!77 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_7JSArrayEEE", !78, i64 0}
!78 = !{!"_ZTSN6hermes2vm6HandleINS0_7JSArrayEEE", !23, i64 0}
!79 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !80, i64 0}
!80 = !{!"_ZTSN6hermes2vm6HandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !23, i64 0}
!81 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_8JSObjectEEE", !82, i64 0}
!82 = !{!"_ZTSN6hermes2vm6HandleINS0_8JSObjectEEE", !23, i64 0}
!83 = !{!"_ZTSN4llvh11SmallVectorIDsLj32EEE", !84, i64 0, !87, i64 16}
!84 = !{!"_ZTSN4llvh15SmallVectorImplIDsEE", !85, i64 0}
!85 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIDsLb1EEE", !86, i64 0}
!86 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIDsvEE", !8, i64 0}
!87 = !{!"_ZTSN4llvh18SmallVectorStorageIDsLj32EEE", !5, i64 0}
!88 = !{!75, !16, i64 0}
!89 = !{!90, !49, i64 16}
!90 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !91, i64 0, !49, i64 16, !49, i64 24}
!91 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !49, i64 0, !92, i64 8}
!92 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !9, i64 0}
!93 = !{!90, !49, i64 24}
!94 = !{!24, !24, i64 0}
!95 = !{!96, !13, i64 0}
!96 = !{!"_ZTSN6hermes2vm11HermesValueE", !13, i64 0}
!97 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!98 = !{!99, !100, i64 24}
!99 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !100, i64 8, !5, i64 16, !100, i64 24, !13, i64 32, !13, i64 40}
!100 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!101 = !{!99, !13, i64 32}
!102 = !{!99, !13, i64 40}
!103 = !{!5, !5, i64 0}
!104 = !{!99, !100, i64 8}
!105 = !{!106, !4, i64 24}
!106 = !{!"_ZTSN6hermes2vm9ArrayImplE", !107, i64 0, !4, i64 20, !4, i64 24, !115, i64 28}
!107 = !{!"_ZTSN6hermes2vm8JSObjectE", !65, i64 0, !108, i64 4, !109, i64 8, !113, i64 12, !114, i64 16}
!108 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 1}
!109 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !110, i64 0}
!110 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !111, i64 0}
!111 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !112, i64 0}
!112 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!113 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !110, i64 0}
!114 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !110, i64 0}
!115 = !{!"_ZTSN6hermes2vm9GCPointerINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEE", !110, i64 0}
!116 = distinct !{!116, !117}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!106, !4, i64 20}
!119 = !{!120, !4, i64 0}
!120 = !{!"_ZTSN6hermes2vm13HermesValue32E", !4, i64 0}
!121 = distinct !{!121, !117}
!122 = !{!"branch_weights", !"expected", i32 19163825, i32 2128319823}
!123 = !{!124, !49, i64 0}
!124 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !125, i64 0, !13, i64 8, !5, i64 16}
!125 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !49, i64 0}
!126 = distinct !{!126, !117}
!127 = distinct !{null}
!128 = distinct !{!128, !117}
!129 = !{!46, !16, i64 64}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!132 = distinct !{!132, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!133 = !{!27, !27, i64 0}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!136 = distinct !{!136, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!139 = distinct !{!139, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!140 = distinct !{null}
!141 = !{!"branch_weights", i32 1, i32 127}
!142 = !{!"branch_weights", i32 127, i32 255873}
!143 = distinct !{!143, !117}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!146 = distinct !{!146, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!149 = distinct !{!149, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!152 = distinct !{!152, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!155 = distinct !{!155, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!158 = distinct !{!158, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!161 = distinct !{!161, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0:thread"}
!164 = distinct !{!164, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!165 = !{!166, !168}
!166 = distinct !{!166, !167, !"_ZN6hermes2vm11TwineChar1610createNullEv: argument 0"}
!167 = distinct !{!167, !"_ZN6hermes2vm11TwineChar1610createNullEv"}
!168 = distinct !{!168, !164, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!169 = !{!100, !100, i64 0}
!170 = !{!168}
!171 = distinct !{!171, !117}
!172 = !{!173, !20, i64 8}
!173 = !{!"_ZTSN6hermes2vm11BoxedDoubleE", !65, i64 0, !20, i64 8}
!174 = distinct !{!174, !117}
!175 = !{!125, !49, i64 0}
!176 = !{!124, !13, i64 8}
!177 = !{!178, !179, i64 20}
!178 = !{!"_ZTSN6hermes2vm9JSBooleanE", !107, i64 0, !179, i64 20}
!179 = !{!"bool", !5, i64 0}
!180 = !{i8 0, i8 2}
!181 = distinct !{!181, !117}
!182 = distinct !{!182, !117}
!183 = distinct !{!183, !117}
!184 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!185 = !{!91, !49, i64 0}
!186 = !{!"branch_weights", i32 1, i32 4001}
!187 = distinct !{!187, !117}
!188 = distinct !{!188, !117}
!189 = distinct !{!189, !117}
!190 = !{!61, !48, i64 0}
!191 = !{!60, !13, i64 8}
end_hunk_1
