Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AVRISelDAGToDAG?download=true
inline.NumInlined: 845
inline.NumDeleted: 416
begin_hunk_0_@_ZN12_GLOBAL__N_115AVRDAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
  %i.jj = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.jj, align 8, !tbaa !353
  store ptr %16, ptr %20, align 8, !tbaa !355
  %i.jk = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 1, ptr %i.jk, align 8, !tbaa !358
  %i.jl = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.jh, i32 noundef 482, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %18, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %19, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %20) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread

bb.ae:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i99.i.i, %bb.aa
  %i.jm = icmp eq i16 %.sroa.0.0.copyload.i.i19.i, 5
  br i1 %i.jm, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i18.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jn = load ptr, ptr %i.gt, align 8, !tbaa !28
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 374
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !460, !range !457, !noundef !204
  %i.jq = trunc nuw i8 %i.jp to i1
  %i.jr = select i1 %i.jq, i32 481, i32 377
  %i.js = load ptr, ptr %i.hk, align 8, !tbaa !218
  store i16 1, ptr %21, align 8, !tbaa !351
  %i.jt = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %i.jt, align 8, !tbaa !353
  store ptr %16, ptr %22, align 8, !tbaa !355
  %i.ju = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.ju, align 8, !tbaa !358
  %i.jv = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.js, i32 noundef %i.jr, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %21, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %22) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread

bb.ah:                                            ; preds = %bb.af
  %i.jw = load ptr, ptr %i.hk, align 8, !tbaa !218
  %i.jx = zext nneg i32 %.off.i.i.i.i to i64
  %i.jy = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.jw, i64 noundef %i.jx, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #18 ; 2 uses
  %.fca.0.extract6.i.i = extractvalue { ptr, i32 } %i.jy, 0
  %.fca.1.extract7.i.i = extractvalue { ptr, i32 } %i.jy, 1
  %i.jz = load ptr, ptr %i.hk, align 8, !tbaa !218
  store ptr %.fca.0.extract6.i.i, ptr %23, align 8, !tbaa !337
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract7.i.i, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !tbaa !338
  %i.ka = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.jz, i32 noundef 474, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #18
  %i.kb = load ptr, ptr %i.hk, align 8, !tbaa !218
  store i16 1, ptr %24, align 8, !tbaa !351
  %i.kc = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr null, ptr %i.kc, align 8, !tbaa !353
  store ptr %i.ka, ptr %25, align 8, !tbaa !344
  %i.kd = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 0, ptr %i.kd, align 8, !tbaa !345
  %i.ke = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.kb, i32 noundef 363, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %24, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread

bb.ai:                                            ; preds = %bb.ae
  %i.kf = load ptr, ptr %i.hk, align 8, !tbaa !218 ; 2 uses
  br i1 %.not.i18.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i16 1, ptr %26, align 8, !tbaa !351
  %i.kg = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr null, ptr %i.kg, align 8, !tbaa !353
  store ptr %16, ptr %27, align 8, !tbaa !355
  %i.kh = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 1, ptr %i.kh, align 8, !tbaa !358
  %i.ki = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.kf, i32 noundef 378, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 6, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %26, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %27) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread

bb.ak:                                            ; preds = %bb.ai
  %i.kj = zext nneg i32 %.off.i.i.i.i to i64
  %i.kk = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.kf, i64 noundef %i.kj, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #18 ; 2 uses
  %.fca.0.extract.i29.i = extractvalue { ptr, i32 } %i.kk, 0
  %.fca.1.extract.i30.i = extractvalue { ptr, i32 } %i.kk, 1
  %i.kl = load ptr, ptr %i.hk, align 8, !tbaa !218
  store ptr %.fca.0.extract.i29.i, ptr %28, align 8, !tbaa !337
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %.fca.1.extract.i30.i, ptr %.sroa.4.0..sroa_idx.i31.i, align 8, !tbaa !338
  %i.km = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.kl, i32 noundef 474, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28) #18
  %i.kn = load ptr, ptr %i.hk, align 8, !tbaa !218
  store i16 1, ptr %29, align 8, !tbaa !351
  %i.ko = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr null, ptr %i.ko, align 8, !tbaa !353
  store ptr %i.km, ptr %30, align 8, !tbaa !344
  %i.kp = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 0, ptr %i.kp, align 8, !tbaa !345
  %i.kq = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.kn, i32 noundef 365, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 6, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %29, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread

_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread: ; preds = %_ZN12_GLOBAL__N_115AVRDAGToDAGISel24selectIndexedProgMemLoadEPKN4llvm10LoadSDNodeENS1_3MVTEi.exit.i.i, %bb.ag, %bb.ah, %bb.aj, %bb.ak
  %.082.i.i = phi ptr [ %i.jl, %_ZN12_GLOBAL__N_115AVRDAGToDAGISel24selectIndexedProgMemLoadEPKN4llvm10LoadSDNodeENS1_3MVTEi.exit.i.i ], [ %i.kq, %bb.ak ], [ %i.jv, %bb.ag ], [ %i.ke, %bb.ah ], [ %i.ki, %bb.aj ] ; 5 uses
  %i.kr = load ptr, ptr %i.hk, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.0.copyload.i.i.i.i.i.i.i32.i = load i64, ptr %i.es, align 8
  %i.ks = and i64 %.0.copyload.i.i.i.i.i.i.i32.i, -5
  %i.kt = inttoptr i64 %i.ks to ptr
  store ptr %i.kt, ptr %i.a, align 8, !tbaa !461
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.kr, ptr noundef %.082.i.i, ptr nonnull %i.a, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ku = load ptr, ptr %i.hk, align 8, !tbaa !218
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ku, ptr nonnull %1, i32 0, ptr %.082.i.i, i32 0) #18
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.082.i.i) #18
  %i.kv = load ptr, ptr %i.hk, align 8, !tbaa !218
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.kv, ptr nonnull %1, i32 1, ptr %.082.i.i, i32 1) #18
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.082.i.i) #18
  %i.kw = load ptr, ptr %i.hk, align 8, !tbaa !218
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.kw, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
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
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread

_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread12: ; preds = %_ZN4llvm3AVR21isProgramMemoryAccessEPKNS_9MemSDNodeE.exit.i.i, %bb.u, %bb.s, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread6

_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i: ; preds = %bb.t, %bb.v
  %.040.i.i.i = phi i32 [ %i.gr, %bb.t ], [ %i.gs, %bb.v ]
  %i.kx = load ptr, ptr %i.fl, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !339
  store i64 %i.kz, ptr %13, align 8, !tbaa !339
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !340
  store i32 %i.lc, ptr %i.la, align 8, !tbaa !341
  store i16 %i.ft, ptr %14, align 8, !tbaa !347
  %i.ld = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.ld, align 8, !tbaa !353
  store i16 1, ptr %15, align 8, !tbaa !351
  %i.le = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.le, align 8, !tbaa !353
  %i.lf = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.lg = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.kx, i32 noundef %.040.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i16.i, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %14, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.lf, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fz) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.lh = load ptr, ptr %i.fl, align 8, !tbaa !218
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.lh, ptr noundef nonnull %1, ptr noundef %i.lg) #18
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.lg) #18
  %i.li = load ptr, ptr %i.fl, align 8, !tbaa !218
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.li, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread

bb.al:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !343 ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  %.sroa.072.0.copyload.i.i = load ptr, ptr %i.ll, align 8, !tbaa !337 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload.i.i, i64 24
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !206 ; 2 uses
  switch i32 %i.ln, label %bb.am [
    i32 44, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj544EEEbPN4llvm6SDNodeE.exit.i
    i32 39, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj544EEEbPN4llvm6SDNodeE.exit.i
  ]

bb.am:                                            ; preds = %bb.al
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lp = load i16, ptr %i.lo, align 8, !tbaa !463
  %i.lq = zext i16 %i.lp to i32                   ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 48
  %.sroa.5.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !338 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !338
  %.sroa.077.0.copyload.i.i = load ptr, ptr %i.lk, align 8, !tbaa !337
  %i.lr = add nsw i32 %i.lq, -1                   ; 2 uses
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [40 x i8], ptr %i.lk, i64 %i.ls ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !344
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !345
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !346
  %i.lz = zext i32 %i.lw to i64
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %i.ly, i64 %i.lz ; 2 uses
  %.sroa.0.0.copyload.i.i.i33.i = load i16, ptr %i.ma, align 8, !tbaa !347
  %.sroa.21.0..sroa_idx.i.i.i34.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.sroa.21.0.copyload.i.i.i35.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i34.i, align 8, !tbaa !349
  %.not.i.i.i36.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i33.i, 249
  %i.mb = icmp eq ptr %.sroa.21.0.copyload.i.i.i35.i, null
  %.not4.i.i37.i = select i1 %.not.i.i.i36.i, i1 %i.mb, i1 false
  %spec.select.i.i = select i1 %.not4.i.i37.i, i32 %i.lr, i32 %i.lq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !339
  store i64 %i.md, ptr %4, align 8, !tbaa !339
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !340
  store i32 %i.mg, ptr %i.me, align 8, !tbaa !341
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !218 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.mj = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.mi, i16 1, ptr null, i16 249, ptr null) #18 ; 2 uses
  %i.mk = extractvalue { ptr, i32 } %i.mj, 0
  %i.ml = extractvalue { ptr, i32 } %i.mj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %.sroa.077.0.copyload.i.i, ptr %2, align 16, !tbaa !337
  %.sroa.214.0..sroa_idx.i.i38.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.7.0.copyload.i.i, ptr %.sroa.214.0..sroa_idx.i.i38.i, align 8, !tbaa !338
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload.i.i, i64 48
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !346
  %51 = zext i32 %.sroa.5.sroa.0.0.copyload.i.i to i64
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.mo, i64 %51 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i39.i = load i16, ptr %i.mp, align 8, !tbaa !347
  %.sroa.21.0..sroa_idx.i.i.i.i40.i = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %.sroa.21.0.copyload.i.i.i.i41.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i40.i, align 8, !tbaa !349
  %i.mq = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.mi, i32 61, i16 %.sroa.0.0.copyload.i.i.i.i39.i, ptr %.sroa.21.0.copyload.i.i.i.i41.i) #18 ; 2 uses
  %.fca.0.extract3.i.i42.i = extractvalue { ptr, i32 } %i.mq, 0
  %.fca.1.extract4.i.i43.i = extractvalue { ptr, i32 } %i.mq, 1
  store ptr %.fca.0.extract3.i.i42.i, ptr %i.mm, align 16
  %.sroa.26.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.fca.1.extract4.i.i43.i, ptr %.sroa.26.0..sroa_idx.i.i44.i, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.sroa.072.0.copyload.i.i, ptr %i.mr, align 16, !tbaa !337
  %.sroa.584.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sroa.5.sroa.0.0.copyload.i.i, ptr %.sroa.584.0..sroa_idx.i.i, align 8, !tbaa !338
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.ms, align 16, !tbaa !337
  %.sroa.5.0..sroa_idx87.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 0, ptr %.sroa.5.0..sroa_idx87.i.i, align 8, !tbaa !338
  store ptr %2, ptr %3, align 8, !tbaa !355
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.mt, align 8, !tbaa !358
  %i.mu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.mi, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %i.mk, i32 %i.ml, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %3) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.fca.0.extract19.i.i = extractvalue { ptr, i32 } %i.mu, 0 ; 4 uses
  %.fca.1.extract20.i.i = extractvalue { ptr, i32 } %i.mu, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.mv, ptr %5, align 8, !tbaa !326
  %i.mw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 14 uses
  store i32 0, ptr %i.mw, align 8, !tbaa !327
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  store i32 8, ptr %i.mx, align 4, !tbaa !328
  %i.my = load ptr, ptr %i.mh, align 8, !tbaa !218
  %i.mz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.my, i32 61, i16 6, ptr null) #18 ; 2 uses
  %.fca.0.extract13.i.i = extractvalue { ptr, i32 } %i.mz, 0 ; 2 uses
  %.fca.1.extract14.i.i = extractvalue { ptr, i32 } %i.mz, 1 ; 2 uses
  %i.na = load i32, ptr %i.mw, align 8, !tbaa !327 ; 2 uses
  %i.nb = load i32, ptr %i.mx, align 4, !tbaa !328
  %.not.i47.i.i = icmp ult i32 %i.na, %i.nb
  br i1 %.not.i47.i.i, label %bb.ao, label %bb.an, !prof !464

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.fca.0.extract13.i.i, i32 %.fca.1.extract14.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.nc = zext i32 %i.na to i64
  %i.nd = load ptr, ptr %5, align 8, !tbaa !326
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %i.nc ; 2 uses
  store ptr %.fca.0.extract13.i.i, ptr %i.ne, align 1
  %.sroa.32.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store i32 %.fca.1.extract14.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i, align 1
  %i.nf = load i32, ptr %i.mw, align 8, !tbaa !327
  %i.ng = add i32 %i.nf, 1
  store i32 %i.ng, ptr %i.mw, align 8, !tbaa !327
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i: ; preds = %bb.ao, %bb.an
  %.not88.i.i = icmp eq i32 %spec.select.i.i, 2
  br i1 %.not88.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit56.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i
  %i.nh = load i32, ptr %i.mw, align 8, !tbaa !327 ; 2 uses
  %i.ni = load i32, ptr %i.mx, align 4, !tbaa !328
  %.not.i48.i.i = icmp ult i32 %i.nh, %i.ni
  br i1 %.not.i48.i.i, label %bb.aq, label %bb.ap, !prof !464

bb.ap:                                            ; preds = %._crit_edge.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.fca.0.extract19.i.i, i32 %.fca.1.extract20.i.i)
  %.pre.i.i = load i32, ptr %i.mw, align 8, !tbaa !327
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit50.i.i

bb.aq:                                            ; preds = %._crit_edge.i.i
  %i.nj = zext i32 %i.nh to i64
  %i.nk = load ptr, ptr %5, align 8, !tbaa !326
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %i.nk, i64 %i.nj ; 2 uses
  store ptr %.fca.0.extract19.i.i, ptr %i.nl, align 1
  %.sroa.32.0..sroa_idx.i49.i.i = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  store i32 %.fca.1.extract20.i.i, ptr %.sroa.32.0..sroa_idx.i49.i.i, align 1
  %i.nm = load i32, ptr %i.mw, align 8, !tbaa !327
  %i.nn = add i32 %i.nm, 1                        ; 2 uses
  store i32 %i.nn, ptr %i.mw, align 8, !tbaa !327
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit50.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit50.i.i: ; preds = %bb.aq, %bb.ap
  %i.no = phi i32 [ %.pre.i.i, %bb.ap ], [ %i.nn, %bb.aq ] ; 2 uses
  %i.np = load i32, ptr %i.mx, align 4, !tbaa !328
  %.not.i51.i.i = icmp ult i32 %i.no, %i.np
  br i1 %.not.i51.i.i, label %bb.as, label %bb.ar, !prof !464

bb.ar:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit50.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.fca.0.extract19.i.i, i32 1)
  %.pre90.i.i = load i32, ptr %i.mw, align 8, !tbaa !327
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit53.i.i

bb.as:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit50.i.i
  %i.nq = zext i32 %i.no to i64
  %i.nr = load ptr, ptr %5, align 8, !tbaa !326
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %i.nq ; 2 uses
  store ptr %.fca.0.extract19.i.i, ptr %i.ns, align 1
  %.sroa.32.0..sroa_idx.i52.i.i = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store i32 1, ptr %.sroa.32.0..sroa_idx.i52.i.i, align 1
  %i.nt = load i32, ptr %i.mw, align 8, !tbaa !327
  %i.nu = add i32 %i.nt, 1                        ; 2 uses
  store i32 %i.nu, ptr %i.mw, align 8, !tbaa !327
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit53.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit53.i.i: ; preds = %bb.as, %bb.ar
  %i.nv = phi i32 [ %.pre90.i.i, %bb.ar ], [ %i.nu, %bb.as ]
  %i.nw = load ptr, ptr %i.mh, align 8, !tbaa !218
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !28
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 351
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !465, !range !457, !noundef !204
  %i.ob = trunc nuw i8 %i.oa to i1
  %i.oc = select i1 %i.ob, i32 456, i32 465
  store i16 249, ptr %6, align 8, !tbaa !351
  %i.od = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.od, align 8, !tbaa !353
  %i.oe = load ptr, ptr %5, align 8, !tbaa !326
  store ptr %i.oe, ptr %7, align 8, !tbaa !355
  %i.of = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.og = zext i32 %i.nv to i64
  store i64 %i.og, ptr %i.of, align 8, !tbaa !358
  %i.oh = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.nw, i32 noundef %i.oc, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %7) #18 ; 4 uses
  %i.oi = load ptr, ptr %i.mh, align 8, !tbaa !218
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.oi, ptr nonnull %1, i32 0, ptr %i.oh, i32 0) #18
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.oh) #18
  %i.oj = load ptr, ptr %i.mh, align 8, !tbaa !218
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.oj, ptr nonnull %1, i32 1, ptr %i.oh, i32 1) #18
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.oh) #18
  %i.ok = load ptr, ptr %i.mh, align 8, !tbaa !218
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ok, ptr noundef nonnull %1) #18
  %i.ol = load ptr, ptr %5, align 8, !tbaa !326   ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.mv
  br i1 %i.om, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit53.i.i
  call void @free(ptr noundef %i.ol) #18
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit.i.i: ; preds = %bb.at, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj544EEEbPN4llvm6SDNodeE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit56.i.i
  %.04489.i.i = phi i32 [ %i.ox, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit56.i.i ], [ 2, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i ] ; 2 uses
  %i.on = load ptr, ptr %i.lj, align 8, !tbaa !343
  %i.oo = zext i32 %.04489.i.i to i64
  %i.op = getelementptr inbounds nuw [40 x i8], ptr %i.on, i64 %i.oo ; 2 uses
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.op, align 8, !tbaa !337 ; 2 uses
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.sroa.28.0.copyload.i.i = load i32, ptr %.sroa.28.0..sroa_idx.i.i, align 8, !tbaa !338 ; 2 uses
  %i.oq = load i32, ptr %i.mw, align 8, !tbaa !327 ; 2 uses
  %i.or = load i32, ptr %i.mx, align 4, !tbaa !328
  %.not.i54.i.i = icmp ult i32 %i.oq, %i.or
  br i1 %.not.i54.i.i, label %bb.av, label %bb.au, !prof !464

bb.au:                                            ; preds = %.lr.ph.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.07.0.copyload.i.i, i32 %.sroa.28.0.copyload.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit56.i.i

bb.av:                                            ; preds = %.lr.ph.i.i
  %i.os = zext i32 %i.oq to i64
  %i.ot = load ptr, ptr %5, align 8, !tbaa !326
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %i.os ; 2 uses
  store ptr %.sroa.07.0.copyload.i.i, ptr %i.ou, align 1
  %.sroa.32.0..sroa_idx.i55.i.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store i32 %.sroa.28.0.copyload.i.i, ptr %.sroa.32.0..sroa_idx.i55.i.i, align 1
  %i.ov = load i32, ptr %i.mw, align 8, !tbaa !327
  %i.ow = add i32 %i.ov, 1
  store i32 %i.ow, ptr %i.mw, align 8, !tbaa !327
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit56.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit56.i.i: ; preds = %bb.av, %bb.au
  %i.ox = add i32 %.04489.i.i, 1                  ; 2 uses
  %.not.i45.i = icmp eq i32 %i.ox, %spec.select.i.i
  br i1 %.not.i45.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !466

_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj544EEEbPN4llvm6SDNodeE.exit.i: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit.i.i, %bb.al, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  switch i32 %i.ln, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread [
    i32 44, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread6
    i32 39, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread6
  ]

_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread9: ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.k, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread6

_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit: ; preds = %bb.m
  %i.oy = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !344
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 88
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !363 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !366
  %i.pf = icmp ult i32 %i.pe, 65
  %i.pg = load ptr, ptr %i.pc, align 8
  %spec.select.i.i.i.i.i.i.i = select i1 %i.pf, ptr %i.pc, ptr %i.pg
  %.0.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i.i, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i64 16, i1 false), !tbaa.struct !459
  %i.ph = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !344
  %i.pj = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !345
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 48
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !346
  %i.pn = zext i32 %i.pk to i64
end_hunk_0
