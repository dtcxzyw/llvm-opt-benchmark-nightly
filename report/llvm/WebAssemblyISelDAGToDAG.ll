Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyISelDAGToDAG?download=true
inline.NumInlined: 809
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_123WebAssemblyDAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
  %i.ht = load ptr, ptr %i.hp, align 8
  %spec.select.i.i.i.i208 = select i1 %i.hs, ptr %i.hp, ptr %i.ht
  %.0.i.i.i.i209 = load i64, ptr %spec.select.i.i.i.i208, align 8, !tbaa !450
  %i.hu = load ptr, ptr %i.g, align 8, !tbaa !248 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 56
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !249 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !475 ; 2 uses
  %i.hz = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.hw) #17
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !26
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = tail call i16 %i.ic(ptr noundef nonnull align 8 dereferenceable(518435) %i.hy, ptr noundef nonnull align 8 dereferenceable(912) %i.hz, i32 noundef 0) #17, !inline_history !476
  %i.ie = and i64 %.0.i.i.i.i209, 4294967295
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ig = tail call noundef ptr @_ZN4llvm15MachineFunction24createExternalSymbolNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1065) %i.hw, ptr nonnull @.str.5, i64 15) #17
  br label %_ZL13getTagSymNodeiPN4llvm12SelectionDAGE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ih = tail call noundef ptr @_ZN4llvm15MachineFunction24createExternalSymbolNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1065) %i.hw, ptr nonnull @.str.6, i64 11) #17
  br label %_ZL13getTagSymNodeiPN4llvm12SelectionDAGE.exit

_ZL13getTagSymNodeiPN4llvm12SelectionDAGE.exit:   ; preds = %bb.ah, %bb.ai
  %i.ii = phi ptr [ %i.ig, %bb.ah ], [ %i.ih, %bb.ai ]
  %i.ij = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG23getTargetExternalSymbolEPKcNS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(920) %i.hu, ptr noundef %i.ii, i16 %i.id, ptr null, i32 noundef 0) #17 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.ij, 0
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.ij, 1
  %i.ik = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm11WebAssembly15WasmUseLegacyEHE, i64 120), align 8, !tbaa !477, !range !442, !noundef !207
  %i.il = trunc nuw i8 %i.ik to i1
  %i.im = select i1 %i.il, i32 734, i32 727
  %i.in = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store i16 %i.hc, ptr %17, align 8, !tbaa !458
  %i.io = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.io, align 8, !tbaa !483
  %i.ip = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i16 1, ptr %i.ip, align 8, !tbaa !486
  %i.iq = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr null, ptr %i.iq, align 8, !tbaa !483
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  store ptr %.fca.0.extract39, ptr %19, align 8, !tbaa !455
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract40, ptr %.sroa.444.0..sroa_idx, align 8, !tbaa !456
  %i.ir = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.is = load ptr, ptr %i.gk, align 8, !tbaa !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ir, ptr noundef nonnull align 8 dereferenceable(12) %i.is, i64 12, i1 false), !tbaa.struct !487
  store ptr %19, ptr %18, align 8, !tbaa !468
  %i.it = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 2, ptr %i.it, align 8, !tbaa !471
  %i.iu = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.in, i32 noundef %i.im, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr nonnull %17, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %18) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.iv = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.iv, ptr noundef nonnull %1, ptr noundef %i.iu) #17
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.iu) #17
  %i.iw = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.iw, ptr noundef nonnull %1) #17
  br label %.critedge176

bb.aj:                                            ; preds = %bb.c
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !443 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !444
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 88
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !445 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !448
  %i.jg = icmp ult i32 %i.jf, 65
  %i.jh = load ptr, ptr %i.jd, align 8
  %spec.select.i.i.i.i210 = select i1 %i.jg, ptr %i.jd, ptr %i.jh
  %.0.i.i.i.i211 = load i64, ptr %spec.select.i.i.i.i210, align 8, !tbaa !450
  %i.ji = trunc i64 %.0.i.i.i.i211 to i32
  switch i32 %i.ji, label %bb.az [
    i32 14678, label %bb.ak
    i32 14659, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iy, i64 80
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !444
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 88
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !445 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !448
  %i.jq = icmp ult i32 %i.jp, 65
  %i.jr = load ptr, ptr %i.jn, align 8
  %spec.select.i.i.i.i212 = select i1 %i.jq, ptr %i.jn, ptr %i.jr
  %.0.i.i.i.i213 = load i64, ptr %spec.select.i.i.i.i212, align 8, !tbaa !450
  %i.js = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !475 ; 2 uses
  %i.ju = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.y) #17
  %i.jv = load ptr, ptr %i.jt, align 8, !tbaa !26
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = tail call i16 %i.jx(ptr noundef nonnull align 8 dereferenceable(518435) %i.jt, ptr noundef nonnull align 8 dereferenceable(912) %i.ju, i32 noundef 0) #17, !inline_history !476
  %i.jz = and i64 %.0.i.i.i.i213, 4294967295
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.kb = tail call noundef ptr @_ZN4llvm15MachineFunction24createExternalSymbolNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1065) %i.y, ptr nonnull @.str.5, i64 15) #17
  br label %_ZL13getTagSymNodeiPN4llvm12SelectionDAGE.exit214

bb.am:                                            ; preds = %bb.ak
  %i.kc = tail call noundef ptr @_ZN4llvm15MachineFunction24createExternalSymbolNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1065) %i.y, ptr nonnull @.str.6, i64 11) #17
  br label %_ZL13getTagSymNodeiPN4llvm12SelectionDAGE.exit214

_ZL13getTagSymNodeiPN4llvm12SelectionDAGE.exit214: ; preds = %bb.al, %bb.am
  %i.kd = phi ptr [ %i.kb, %bb.al ], [ %i.kc, %bb.am ]
  %i.ke = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG23getTargetExternalSymbolEPKcNS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(920) %i.w, ptr noundef %i.kd, i16 %i.jy, ptr null, i32 noundef 0) #17 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.ke, 0
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.ke, 1
  %i.kf = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  store ptr %.fca.0.extract25, ptr %21, align 8, !tbaa !455
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract26, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !456
  %i.kg = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.kh = load ptr, ptr %i.ix, align 8, !tbaa !443 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kg, ptr noundef nonnull align 8 dereferenceable(12) %i.ki, i64 12, i1 false), !tbaa.struct !487
  %i.kj = getelementptr inbounds nuw i8, ptr %21, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kj, ptr noundef nonnull align 8 dereferenceable(12) %i.kh, i64 12, i1 false), !tbaa.struct !487
  store ptr %21, ptr %20, align 8, !tbaa !468
  %i.kk = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 3, ptr %i.kk, align 8, !tbaa !471
  %i.kl = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.kf, i32 noundef 1871, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %20) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.km = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.km, ptr noundef nonnull %1, ptr noundef %i.kl) #17
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.kl) #17
  %i.kn = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.kn, ptr noundef nonnull %1) #17
  br label %.critedge176

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  %i.ko = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.w, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #17 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ko, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ko, 1
  store ptr %.fca.0.extract, ptr %23, align 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.218.0..sroa_idx, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.kq = load ptr, ptr %i.ix, align 8, !tbaa !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kp, ptr noundef nonnull align 8 dereferenceable(12) %i.kq, i64 12, i1 false), !tbaa.struct !487
  store ptr %23, ptr %22, align 8, !tbaa !468
  %i.kr = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 2, ptr %i.kr, align 8, !tbaa !471
  %i.ks = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.w, i32 noundef 1629, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %22) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  %i.kt = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.kt, ptr noundef nonnull %1, ptr noundef %i.ks) #17
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.ks) #17
  %i.ku = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ku, ptr noundef nonnull %1) #17
  br label %.critedge176

bb.ao:                                            ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.kv = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.kv, ptr %24, align 8, !tbaa !488
  %i.kw = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 11 uses
  store i32 0, ptr %i.kw, align 8, !tbaa !489
  %i.kx = getelementptr inbounds nuw i8, ptr %24, i64 12 ; 4 uses
  store i32 16, ptr %i.kx, align 4, !tbaa !490
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.kz = load i16, ptr %i.ky, align 8, !tbaa !466
  %i.la = icmp ugt i16 %i.kz, 1
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !443 ; 4 uses
  br i1 %i.la, label %bb.ap, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ao
  %.sroa.06.0.copyload352 = load ptr, ptr %i.lc, align 8, !tbaa !455
  %.sroa.27.0..sroa_idx353 = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %.sroa.27.0.copyload354 = load i32, ptr %.sroa.27.0..sroa_idx353, align 8, !tbaa !456
  br label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 40
  %.sroa.0226.0.copyload.peel = load ptr, ptr %i.ld, align 8, !tbaa !455 ; 5 uses
  %.sroa.8.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.lc, i64 48
  %.sroa.8.0.copyload.peel = load i32, ptr %.sroa.8.0..sroa_idx.peel, align 8, !tbaa !456 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0226.0.copyload.peel, i64 24
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !235
  %i.lg = icmp eq i32 %i.lf, 573
  br i1 %i.lg, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0226.0.copyload.peel, i64 40
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !443 ; 2 uses
  %.sroa.0220.0.copyload.peel = load ptr, ptr %i.li, align 8, !tbaa !455 ; 4 uses
  %.sroa.7.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %.sroa.7.sroa.0.0.copyload.peel = load i32, ptr %.sroa.7.0..sroa_idx.peel, align 8, !tbaa !456 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0220.0.copyload.peel, i64 24
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !235
  switch i32 %i.lk, label %.thread [
    i32 14, label %bb.as
    i32 39, label %bb.as
    i32 15, label %bb.as
    i32 40, label %bb.as
    i32 44, label %bb.ar
    i32 19, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  br label %.thread

bb.as:                                            ; preds = %bb.aq, %bb.aq, %bb.aq, %bb.aq
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0220.0.copyload.peel, i64 88
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !491
  %i.ln = call noundef ptr @_ZNK4llvm5Value27stripPointerCastsAndAliasesEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lm) #17
  %i.lo = load i8, ptr %i.ln, align 8, !tbaa !494
  %i.lp = icmp eq i8 %i.lo, 14                    ; 2 uses
  %spec.select.peel = select i1 %i.lp, i32 %.sroa.7.sroa.0.0.copyload.peel, i32 %.sroa.8.0.copyload.peel ; 2 uses
  %spec.select321.peel = select i1 %i.lp, ptr %.sroa.0220.0.copyload.peel, ptr %.sroa.0226.0.copyload.peel ; 2 uses
  %.pre = load i32, ptr %i.kw, align 8, !tbaa !489 ; 2 uses
  %.pre328 = load i32, ptr %i.kx, align 4, !tbaa !490
  %i.lq = icmp ult i32 %.pre, %.pre328
  %i.lr = zext i32 %.pre to i64
  br i1 %i.lq, label %.thread, label %bb.at, !prof !497

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr nonnull %spec.select321.peel, i32 %spec.select.peel)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218.peel

.thread:                                          ; preds = %bb.aq, %bb.ar, %bb.ap, %bb.as
  %.sroa.0226.1.peel350 = phi ptr [ %spec.select321.peel, %bb.as ], [ %.sroa.0226.0.copyload.peel, %bb.aq ], [ %.sroa.0220.0.copyload.peel, %bb.ar ], [ %.sroa.0226.0.copyload.peel, %bb.ap ]
  %.sroa.8.1.peel349 = phi i32 [ %spec.select.peel, %bb.as ], [ %.sroa.8.0.copyload.peel, %bb.aq ], [ %.sroa.7.sroa.0.0.copyload.peel, %bb.ar ], [ %.sroa.8.0.copyload.peel, %bb.ap ]
  %i.ls = phi i64 [ %i.lr, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.ap ]
  %i.lt = load ptr, ptr %24, align 8, !tbaa !488
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %i.ls ; 2 uses
  store ptr %.sroa.0226.1.peel350, ptr %i.lu, align 1
  %.sroa.32.0..sroa_idx.i217.peel = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i32 %.sroa.8.1.peel349, ptr %.sroa.32.0..sroa_idx.i217.peel, align 1
  %i.lv = load i32, ptr %i.kw, align 8, !tbaa !489
  %i.lw = add i32 %i.lv, 1
  store i32 %i.lw, ptr %i.kw, align 8, !tbaa !489
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218.peel

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218.peel: ; preds = %.thread, %bb.at
  %i.lx = load i16, ptr %i.ky, align 8, !tbaa !466
  %i.ly = icmp ugt i16 %i.lx, 2
  br i1 %i.ly, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218.peel
  %.pre331 = load i32, ptr %i.kw, align 8, !tbaa !489 ; 2 uses
  %.pre332 = load i32, ptr %i.kx, align 4, !tbaa !490
  %i.lz = icmp ult i32 %.pre331, %.pre332
  %i.ma = zext i32 %.pre331 to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !443 ; 2 uses
  %.sroa.06.0.copyload = load ptr, ptr %i.mc, align 8, !tbaa !455 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !456 ; 2 uses
  br i1 %i.lz, label %bb.av, label %bb.au, !prof !498

bb.au:                                            ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr %.sroa.06.0.copyload, i32 %.sroa.27.0.copyload)
  %.pre333 = load i32, ptr %i.kw, align 8, !tbaa !489
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.av:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.27.0.copyload356 = phi i32 [ %.sroa.27.0.copyload354, %._crit_edge.thread ], [ %.sroa.27.0.copyload, %._crit_edge ]
  %.sroa.06.0.copyload355 = phi ptr [ %.sroa.06.0.copyload352, %._crit_edge.thread ], [ %.sroa.06.0.copyload, %._crit_edge ]
  %i.md = phi i64 [ 0, %._crit_edge.thread ], [ %i.ma, %._crit_edge ]
  %i.me = load ptr, ptr %24, align 8, !tbaa !488
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.md ; 2 uses
  store ptr %.sroa.06.0.copyload355, ptr %i.mf, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i32 %.sroa.27.0.copyload356, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.mg = load i32, ptr %i.kw, align 8, !tbaa !489
  %i.mh = add i32 %i.mg, 1                        ; 2 uses
  store i32 %i.mh, ptr %i.kw, align 8, !tbaa !489
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.au, %bb.av
  %i.mi = phi i32 [ %.pre333, %bb.au ], [ %i.mh, %bb.av ]
  %i.mj = load ptr, ptr %i.g, align 8, !tbaa !248
  %i.mk = load ptr, ptr %24, align 8, !tbaa !488
  store ptr %i.mk, ptr %25, align 8, !tbaa !468
  %i.ml = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.mm = zext i32 %i.mi to i64
  store i64 %i.mm, ptr %i.ml, align 8, !tbaa !471
  %i.mn = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.mj, i32 noundef 331, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 249, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %25) #17
  %i.mo = load i32, ptr %i.a, align 8, !tbaa !235
  %i.mp = icmp eq i32 %i.mo, 575
  %i.mq = select i1 %i.mp, i32 333, i32 341
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  store ptr %i.mn, ptr %26, align 8, !tbaa !444
  %i.mr = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 0, ptr %i.mr, align 8, !tbaa !472
  %i.ms = load ptr, ptr %i.g, align 8, !tbaa !248
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !457
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !499
  %i.mx = zext i16 %i.mw to i32
  store ptr %26, ptr %27, align 8, !tbaa !468
  %i.my = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 1, ptr %i.my, align 8, !tbaa !471
  %i.mz = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ms, i32 noundef %i.mq, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %i.mu, i32 %i.mx, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %27) #17 ; 2 uses
  %i.na = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.na, ptr noundef nonnull %1, ptr noundef %i.mz) #17
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.mz) #17
  %i.nb = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.nb, ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  %i.nc = load ptr, ptr %24, align 8, !tbaa !488  ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.kv
  br i1 %i.nd, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  call void @free(ptr noundef %i.nc) #17
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %.critedge176

.peel.next:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218.peel, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218
  %.0170322 = phi i64 [ %i.nn, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218 ], [ 2, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218.peel ] ; 2 uses
  %i.ne = load ptr, ptr %i.lb, align 8, !tbaa !443
  %i.nf = getelementptr inbounds nuw [40 x i8], ptr %i.ne, i64 %.0170322 ; 2 uses
  %.sroa.0226.0.copyload = load ptr, ptr %i.nf, align 8, !tbaa !455 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !456 ; 2 uses
  %i.ng = load i32, ptr %i.kw, align 8, !tbaa !489 ; 2 uses
  %i.nh = load i32, ptr %i.kx, align 4, !tbaa !490
  %.not.i216 = icmp ult i32 %i.ng, %i.nh
  br i1 %.not.i216, label %bb.ay, label %bb.ax, !prof !473

bb.ax:                                            ; preds = %.peel.next
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr %.sroa.0226.0.copyload, i32 %.sroa.8.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218

bb.ay:                                            ; preds = %.peel.next
  %i.ni = zext i32 %i.ng to i64
  %i.nj = load ptr, ptr %24, align 8, !tbaa !488
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %i.nj, i64 %i.ni ; 2 uses
  store ptr %.sroa.0226.0.copyload, ptr %i.nk, align 1
  %.sroa.32.0..sroa_idx.i217 = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  store i32 %.sroa.8.0.copyload, ptr %.sroa.32.0..sroa_idx.i217, align 1
  %i.nl = load i32, ptr %i.kw, align 8, !tbaa !489
  %i.nm = add i32 %i.nl, 1
  store i32 %i.nm, ptr %i.kw, align 8, !tbaa !489
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit218: ; preds = %bb.ax, %bb.ay
  %i.nn = add nuw nsw i64 %.0170322, 1            ; 2 uses
  %i.no = load i16, ptr %i.ky, align 8, !tbaa !466
  %i.np = zext i16 %i.no to i64
  %i.nq = icmp samesign ult i64 %i.nn, %i.np
  br i1 %i.nq, label %.peel.next, label %._crit_edge, !llvm.loop !500

bb.az:                                            ; preds = %bb.aj, %bb.ae, %bb.k, %bb.c, %bb.d
  tail call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN12_GLOBAL__N_123WebAssemblyDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12MatcherTable, i32 noundef 48888, ptr noundef nonnull @_ZZN12_GLOBAL__N_123WebAssemblyDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12OperandLists) #17
  br label %.critedge176

.critedge176:                                     ; preds = %bb.an, %_ZL13getTagSymNodeiPN4llvm12SelectionDAGE.exit214, %_ZL13getTagSymNodeiPN4llvm12SelectionDAGE.exit, %bb.af, %_ZN4llvm11SmallVectorINS_3MVTELj4EED2Ev.exit198, %bb.l, %bb.m, %.critedge, %bb.az, %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ba

bb.ba:                                            ; preds = %.critedge176, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_123WebAssemblyDAGToDAGISel28SelectInlineAsmMemoryOperandERKN4llvm7SDValueENS1_9InlineAsm14ConstraintCodeERSt6vectorIS2_SaIS2_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 {
bb.a:
  %cond = icmp ne i32 %2, 4                       ; 2 uses
  br i1 %cond, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !502  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !504
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !487
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !502
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !502
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %3, align 8, !tbaa !505    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.e, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !487
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !487, !alias.scope !506
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !510

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.g, null
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_123WebAssemblyDAGToDAGISel18SelectAddrOperandsEN4llvm3MVTEjNS1_7SDValueERS3_S4_:bb.a

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #20
  br label %_ZN4llvm5APIntD2Ev.exit91

_ZN4llvm5APIntD2Ev.exit91:                        ; preds = %_ZNK4llvm5APInteqEm.exit.thread, %_ZNK4llvm5APInteqEm.exit.thread135, %_ZN4llvm5APIntD2Ev.exit, %bb.k, %bb.l
  %i.cl = phi i1 [ %i.cg, %bb.l ], [ %i.cg, %_ZN4llvm5APIntD2Ev.exit ], [ %i.cg, %bb.k ], [ %i.cg, %_ZNK4llvm5APInteqEm.exit.thread ], [ %i.ce, %_ZNK4llvm5APInteqEm.exit.thread135 ]
  %i.cm = load i32, ptr %i.bc, align 8, !tbaa !448
  %i.cn = icmp ugt i32 %i.cm, 64
  br i1 %i.cn, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit92

bb.m:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit91
  %i.co = load ptr, ptr %15, align 8, !tbaa !450  ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN4llvm5APIntD2Ev.exit92, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.co) #20
  br label %_ZN4llvm5APIntD2Ev.exit92

_ZN4llvm5APIntD2Ev.exit92:                        ; preds = %_ZN4llvm5APIntD2Ev.exit91, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.cq = load i32, ptr %i.bb, align 8, !tbaa !448
  %i.cr = icmp ugt i32 %i.cq, 64
  br i1 %i.cr, label %bb.o, label %_ZN4llvm5APIntD2Ev.exit93

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit92
  %i.cs = load ptr, ptr %12, align 8, !tbaa !450  ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN4llvm5APIntD2Ev.exit93, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.cs) #20
  br label %_ZN4llvm5APIntD2Ev.exit93

_ZN4llvm5APIntD2Ev.exit93:                        ; preds = %_ZN4llvm5APIntD2Ev.exit92, %bb.o, %bb.p
  %i.cu = load i32, ptr %i.am, align 8, !tbaa !448
  %i.cv = icmp ugt i32 %i.cu, 64
  br i1 %i.cv, label %bb.q, label %_ZN4llvm5APIntD2Ev.exit94

bb.q:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit93
  %i.cw = load ptr, ptr %13, align 8, !tbaa !450  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZN4llvm5APIntD2Ev.exit94, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #20
  br label %_ZN4llvm5APIntD2Ev.exit94

_ZN4llvm5APIntD2Ev.exit94:                        ; preds = %_ZN4llvm5APIntD2Ev.exit93, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !448
  %i.da = icmp ugt i32 %i.cz, 64
  br i1 %i.da, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit.i

bb.s:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit94
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !450 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #20
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.t, %bb.s, %_ZN4llvm5APIntD2Ev.exit94
  %i.de = load i32, ptr %i.bd, align 8, !tbaa !448
  %i.df = icmp ugt i32 %i.de, 64
  br i1 %i.df, label %bb.u, label %_ZN4llvm9KnownBitsD2Ev.exit

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.dg = load ptr, ptr %10, align 8, !tbaa !450  ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN4llvm9KnownBitsD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #20
  br label %_ZN4llvm9KnownBitsD2Ev.exit

_ZN4llvm9KnownBitsD2Ev.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !448
  %i.dk = icmp ugt i32 %i.dj, 64
  br i1 %i.dk, label %bb.w, label %_ZN4llvm5APIntD2Ev.exit.i95

bb.w:                                             ; preds = %_ZN4llvm9KnownBitsD2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !450 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZN4llvm5APIntD2Ev.exit.i95, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.dm) #20
  br label %_ZN4llvm5APIntD2Ev.exit.i95

_ZN4llvm5APIntD2Ev.exit.i95:                      ; preds = %bb.x, %bb.w, %_ZN4llvm9KnownBitsD2Ev.exit
  %i.do = load i32, ptr %i.an, align 8, !tbaa !448
  %i.dp = icmp ugt i32 %i.do, 64
  br i1 %i.dp, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i95
  %i.dq = load ptr, ptr %9, align 8, !tbaa !450   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %_ZN4llvm5APIntD2Ev.exit.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %i.cl, label %bb.ab, label %.critedge80

bb.ab:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.aa
  %i.ds = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123WebAssemblyDAGToDAGISel21SelectAddrAddOperandsEN4llvm3MVTENS1_7SDValueERS3_S4_(ptr noundef nonnull align 8 dereferenceable(960) %0, i16 %1, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6)
  br i1 %i.ds, label %bb.ac, label %.critedge80

.critedge80:                                      ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.aa, %bb.ab, %bb.g
  %i.dt = load i32, ptr %i.q, align 8, !tbaa !235
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !248 ; 2 uses
  switch i32 %i.dt, label %.critedge82 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %.critedge80, %.critedge80
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !445 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !448
  %i.eb = icmp ult i32 %i.ea, 65
  %i.ec = load ptr, ptr %i.dy, align 8
  %spec.select.i.i.i = select i1 %i.eb, ptr %i.dy, ptr %i.ec
  %.0.i.i.i98 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !450
  %i.ed = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i64 noundef %.0.i.i.i98, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %1, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #17 ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.ed, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.ed, 1
  store ptr %.fca.0.extract11, ptr %5, align 8, !tbaa !455
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract12, ptr %.sroa.417.0..sroa_idx, align 8, !tbaa !456
  %i.ee = load ptr, ptr %i.du, align 8, !tbaa !248 ; 2 uses
  %i.ef = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ee, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %1, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #17 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.ef, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.ef, 1
  store ptr %.fca.0.extract5, ptr %16, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  %i.eg = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ee, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #17
  br label %.sink.split

.critedge82:                                      ; preds = %.critedge80
  %i.eh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %1, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #17 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.eh, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.eh, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !455
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !456
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge82, %bb.e, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %.sink161 = phi ptr [ %i.eg, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.p, %bb.e ], [ %3, %.critedge82 ]
  %.sink160 = phi i32 [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ 0, %bb.e ], [ %4, %.critedge82 ]
  store ptr %.sink161, ptr %6, align 8, !tbaa !455
  %.sroa.4.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sink160, ptr %.sroa.4.0..sroa_idx104, align 8, !tbaa !456
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.ab, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123WebAssemblyDAGToDAGISel21SelectAddrAddOperandsEN4llvm3MVTENS1_7SDValueERS3_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, i16 %1, ptr nofree readonly captures(none) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDValue", align 8     ; 8 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !235
  %i.c = icmp eq i32 %i.b, 59
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 4, !tbaa !456
  %i.e = trunc i32 %.sroa.0.0.copyload.i to i1
  br i1 %i.e, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !443  ; 3 uses
  %.sroa.030.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !455 ; 5 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.i = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.0.0.extract.trunc = trunc i64 %i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !487
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !235
  switch i32 %i.l, label %.critedge26 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.g, %bb.g, %.critedge, %.critedge
  %.sroa.030.0.copyload.lcssa = phi ptr [ %.sroa.030.0.copyload, %.critedge ], [ %.sroa.030.0.copyload, %.critedge ], [ %.sroa.030.0.copyload.1, %bb.g ], [ %.sroa.030.0.copyload.1, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !248
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload.lcssa, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !445  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !448
  %i.t = icmp ult i32 %i.s, 65
  %i.u = load ptr, ptr %i.q, align 8
  %spec.select.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.u
  %.0.i.i.i29 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !317
  store i64 %i.w, ptr %6, align 8, !tbaa !317
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !318
  store i32 %i.z, ptr %i.x, align 8, !tbaa !319
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.n, i64 noundef %.0.i.i.i29, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %1, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #17 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aa, 1
  store ptr %.fca.0.extract, ptr %3, align 8, !tbaa !455
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !456
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !487
  br label %.loopexit.sink.split

.critedge26:                                      ; preds = %.critedge
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !518, !nonnull !207, !align !208
  %i.ac = tail call noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728) %i.ab) #17
  br i1 %i.ac, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.critedge26
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !235 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 573
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !443 ; 2 uses
  %.sroa.030.0.copyload34 = load ptr, ptr %i.ag, align 8, !tbaa !455 ; 2 uses
  %.sroa.10.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ah = load i32, ptr %.sroa.10.0..sroa_idx36, align 8, !tbaa !456
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload34, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !235
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = phi i32 [ %.pre, %bb.d ], [ %i.ad, %bb.c ]
  %.sroa.10.sroa.0.0 = phi i32 [ %i.ah, %bb.d ], [ %.sroa.10.sroa.0.0.extract.trunc, %bb.c ]
  %.sroa.030.0 = phi ptr [ %.sroa.030.0.copyload34, %bb.d ], [ %.sroa.030.0.copyload, %bb.c ]
  %i.aj = icmp eq i32 %i.ai, 39
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.j, %bb.e
  %.sroa.10.sroa.0.1 = phi i32 [ %.sroa.10.sroa.0.2, %bb.j ], [ %.sroa.10.sroa.0.0, %bb.e ]
  %.sroa.030.0.lcssa = phi ptr [ %.sroa.030.0.1, %bb.j ], [ %.sroa.030.0, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !487
  store ptr %.sroa.030.0.lcssa, ptr %3, align 8, !tbaa !455
  %.sroa.10.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.10.sroa.0.1, ptr %.sroa.10.0..sroa_idx37, align 8, !tbaa !456
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %.critedge26, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !443 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.030.0.copyload.1 = load ptr, ptr %i.al, align 8, !tbaa !455 ; 5 uses
  %.sroa.10.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load i64, ptr %.sroa.10.0..sroa_idx.1, align 8
  %.sroa.10.sroa.0.0.extract.trunc50 = trunc i64 %i.am to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !487
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload.1, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !235
  switch i32 %i.ao, label %.critedge26.1 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

.critedge26.1:                                    ; preds = %bb.g
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !518, !nonnull !207, !align !208
  %i.aq = tail call noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728) %i.ap) #17
  br i1 %i.aq, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %.critedge26.1
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !235 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 573
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload.1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !443 ; 2 uses
  %.sroa.030.0.copyload34.1 = load ptr, ptr %i.au, align 8, !tbaa !455 ; 2 uses
  %.sroa.10.0..sroa_idx36.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.av = load i32, ptr %.sroa.10.0..sroa_idx36.1, align 8, !tbaa !456
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload34.1, i64 24
  %.pre54 = load i32, ptr %.phi.trans.insert53, align 8, !tbaa !235
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = phi i32 [ %.pre54, %bb.i ], [ %i.ar, %bb.h ]
  %.sroa.10.sroa.0.2 = phi i32 [ %i.av, %bb.i ], [ %.sroa.10.sroa.0.0.extract.trunc50, %bb.h ]
  %.sroa.030.0.1 = phi ptr [ %.sroa.030.0.copyload34.1, %bb.i ], [ %.sroa.030.0.copyload.1, %bb.h ]
  %i.ax = icmp eq i32 %i.aw, 39
  br i1 %i.ax, label %bb.f, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.f, %.critedge26.1, %bb.j
  %.4.ph = phi i1 [ false, %.critedge26.1 ], [ false, %bb.j ], [ true, %bb.f ], [ true, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.b
  %.4 = phi i1 [ false, %bb.b ], [ %.4.ph, %.loopexit.sink.split ]
  ret i1 %.4
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG17MaskedValueIsZeroENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #12

declare void @__once_proxy() #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !534, !nonnull !207
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !536, !nonnull !207, !align !208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !537
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #17, !inline_history !540
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !9, i64 32}
!17 = !{!"_ZTSN4llvm8PassInfoE", !18, i64 0, !18, i64 16, !9, i64 32, !19, i64 40, !19, i64 41, !9, i64 48}
!18 = !{!"_ZTSN4llvm9StringRefE", !13, i64 0, !15, i64 8}
!19 = !{!"bool", !6, i64 0}
!20 = !{!17, !19, i64 40}
!21 = !{!17, !19, i64 41}
!22 = !{!17, !9, i64 48}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZSt11make_uniqueIN12_GLOBAL__N_123WebAssemblyDAGToDAGISelEJRN4llvm24WebAssemblyTargetMachineERNS2_15CodeGenOptLevelEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!25 = distinct !{!25, !"_ZSt11make_uniqueIN12_GLOBAL__N_123WebAssemblyDAGToDAGISelEJRN4llvm24WebAssemblyTargetMachineERNS2_15CodeGenOptLevelEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !7, i64 0}
!28 = !{!29, !87, i64 952}
!29 = !{!"_ZTSN12_GLOBAL__N_123WebAssemblyDAGToDAGISelE", !30, i64 0, !87, i64 952}
!30 = !{!"_ZTSN4llvm16SelectionDAGISelE", !31, i64 8, !32, i64 16, !33, i64 24, !34, i64 32, !41, i64 40, !48, i64 48, !49, i64 56, !50, i64 64, !51, i64 72, !52, i64 80, !59, i64 88, !64, i64 768, !65, i64 776, !66, i64 784, !67, i64 792, !68, i64 800, !69, i64 808, !70, i64 816, !19, i64 824, !71, i64 832, !75, i64 888, !19, i64 896, !18, i64 904, !5, i64 920, !5, i64 924, !82, i64 928}
!31 = !{!"p1 _ZTSN4llvm13TargetMachineE", !9, i64 0}
!32 = !{!"p1 _ZTSN4llvm17TargetLibraryInfoE", !9, i64 0}
!33 = !{!"p1 _ZTSN4llvm19LibcallLoweringInfoE", !9, i64 0}
!34 = !{!"_ZTSSt10unique_ptrIN4llvm20FunctionLoweringInfoESt14default_deleteIS1_EE", !35, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm20FunctionLoweringInfoESt14default_deleteIS1_ELb1ELb1EE", !36, i64 0}
!36 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm20FunctionLoweringInfoESt14default_deleteIS1_EE", !37, i64 0}
!37 = !{!"_ZTSSt5tupleIJPN4llvm20FunctionLoweringInfoESt14default_deleteIS1_EEE", !38, i64 0}
!38 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm20FunctionLoweringInfoESt14default_deleteIS1_EEE", !39, i64 0}
!39 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm20FunctionLoweringInfoELb0EE", !40, i64 0}
!40 = !{!"p1 _ZTSN4llvm20FunctionLoweringInfoE", !9, i64 0}
!41 = !{!"_ZTSSt10unique_ptrIN4llvm23SwiftErrorValueTrackingESt14default_deleteIS1_EE", !42, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm23SwiftErrorValueTrackingESt14default_deleteIS1_ELb1ELb1EE", !43, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm23SwiftErrorValueTrackingESt14default_deleteIS1_EE", !44, i64 0}
!44 = !{!"_ZTSSt5tupleIJPN4llvm23SwiftErrorValueTrackingESt14default_deleteIS1_EEE", !45, i64 0}
!45 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm23SwiftErrorValueTrackingESt14default_deleteIS1_EEE", !46, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm23SwiftErrorValueTrackingELb0EE", !47, i64 0}
!47 = !{!"p1 _ZTSN4llvm23SwiftErrorValueTrackingE", !9, i64 0}
!48 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !9, i64 0}
!49 = !{!"p1 _ZTSN4llvm17MachineModuleInfoE", !9, i64 0}
!50 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !9, i64 0}
!51 = !{!"p1 _ZTSN4llvm12SelectionDAGE", !9, i64 0}
!52 = !{!"_ZTSSt10unique_ptrIN4llvm19SelectionDAGBuilderESt14default_deleteIS1_EE", !53, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm19SelectionDAGBuilderESt14default_deleteIS1_ELb1ELb1EE", !54, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm19SelectionDAGBuilderESt14default_deleteIS1_EE", !55, i64 0}
!55 = !{!"_ZTSSt5tupleIJPN4llvm19SelectionDAGBuilderESt14default_deleteIS1_EEE", !56, i64 0}
!56 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm19SelectionDAGBuilderESt14default_deleteIS1_EEE", !57, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm19SelectionDAGBuilderELb0EE", !58, i64 0}
!58 = !{!"p1 _ZTSN4llvm19SelectionDAGBuilderE", !9, i64 0}
!59 = !{!"_ZTSSt8optionalIN4llvm14BatchAAResultsEE", !60, i64 0}
!60 = !{!"_ZTSSt14_Optional_baseIN4llvm14BatchAAResultsELb0ELb0EE", !61, i64 0}
!61 = !{!"_ZTSSt17_Optional_payloadIN4llvm14BatchAAResultsELb0ELb0ELb0EE", !62, i64 0}
!62 = !{!"_ZTSSt17_Optional_payloadIN4llvm14BatchAAResultsELb1ELb0ELb0EE", !63, i64 0}
!63 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm14BatchAAResultsEE", !6, i64 0, !19, i64 672}
!64 = !{!"p1 _ZTSN4llvm15AssumptionCacheE", !9, i64 0}
!65 = !{!"p1 _ZTSN4llvm14GCFunctionInfoE", !9, i64 0}
!66 = !{!"p1 _ZTSN4llvm13SSPLayoutInfoE", !9, i64 0}
!67 = !{!"p1 _ZTSN4llvm19TargetTransformInfoE", !9, i64 0}
!68 = !{!"_ZTSN4llvm15CodeGenOptLevelE", !6, i64 0}
!69 = !{!"p1 _ZTSN4llvm15TargetInstrInfoE", !9, i64 0}
!70 = !{!"p1 _ZTSN4llvm14TargetLoweringE", !9, i64 0}
!71 = !{!"_ZTSN4llvm11SmallPtrSetIPKNS_11InstructionELj4EEE", !72, i64 0, !6, i64 24}
!72 = !{!"_ZTSN4llvm15SmallPtrSetImplIPKNS_11InstructionEEE", !73, i64 0}
!73 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !74, i64 0, !5, i64 8, !5, i64 12, !19, i64 16}
!74 = !{!"any p2 pointer", !9, i64 0}
!75 = !{!"_ZTSSt10unique_ptrIN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EE", !76, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_ELb1ELb1EE", !77, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EE", !78, i64 0}
!78 = !{!"_ZTSSt5tupleIJPN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EEE", !79, i64 0}
!79 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm25OptimizationRemarkEmitterESt14default_deleteIS1_EEE", !80, i64 0}
!80 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm25OptimizationRemarkEmitterELb0EE", !81, i64 0}
!81 = !{!"p1 _ZTSN4llvm25OptimizationRemarkEmitterE", !9, i64 0}
!82 = !{!"_ZTSSt6vectorIjSaIjEE", !83, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !85, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!86 = !{!"p1 int", !9, i64 0}
!87 = !{!"p1 _ZTSN4llvm20WebAssemblySubtargetE", !9, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"p1 _ZTSN4llvm16SelectionDAGISelE", !9, i64 0}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZSt11make_uniqueIN12_GLOBAL__N_123WebAssemblyDAGToDAGISelEJRN4llvm24WebAssemblyTargetMachineERNS2_15CodeGenOptLevelEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!92 = distinct !{!92, !"_ZSt11make_uniqueIN12_GLOBAL__N_123WebAssemblyDAGToDAGISelEJRN4llvm24WebAssemblyTargetMachineERNS2_15CodeGenOptLevelEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!93 = !{!94, !89, i64 0}
!94 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm16SelectionDAGISelELb0EE", !89, i64 0}
!95 = distinct !{null, null, null}
!96 = distinct !{null, null}
!97 = distinct !{ptr @_ZN4llvm22SelectionDAGISelLegacyD2Ev, null, null}
!98 = !{!99, !101, i64 16}
!99 = !{!"_ZTSN4llvm15MachineFunctionE", !100, i64 0, !31, i64 8, !101, i64 16, !102, i64 24, !50, i64 32, !103, i64 40, !104, i64 48, !105, i64 56, !106, i64 64, !107, i64 72, !108, i64 80, !109, i64 88, !5, i64 112, !5, i64 116, !114, i64 120, !125, i64 200, !127, i64 208, !133, i64 288, !135, i64 296, !5, i64 312, !143, i64 316, !19, i64 317, !19, i64 318, !19, i64 319, !144, i64 320, !147, i64 328, !154, i64 336, !159, i64 360, !159, i64 384, !164, i64 408, !169, i64 432, !171, i64 456, !173, i64 480, !175, i64 504, !19, i64 528, !19, i64 529, !19, i64 530, !19, i64 531, !19, i64 532, !19, i64 533, !19, i64 534, !5, i64 536, !180, i64 540, !181, i64 544, !183, i64 568, !82, i64 592, !82, i64 616, !188, i64 640, !189, i64 648, !190, i64 656, !191, i64 664, !193, i64 688, !195, i64 712, !5, i64 856, !200, i64 864, !205, i64 1040, !19, i64 1064}
!100 = !{!"p1 _ZTSN4llvm8FunctionE", !9, i64 0}
!101 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !9, i64 0}
!102 = !{!"p1 _ZTSN4llvm9MCContextE", !9, i64 0}
!103 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !9, i64 0}
!104 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !9, i64 0}
end_hunk_1
