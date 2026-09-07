Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelDAGToDAG?download=true
inline.NumInlined: 5550
inline.NumDeleted: 1231
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel12tryInlineAsmEPN4llvm6SDNodeE:bb.a
  %.not.i23.i.i234 = icmp eq ptr %.sroa.0480.6, null
  br i1 %.not.i23.i.i234, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i235, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i232
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0480.6, i64 noundef %i.fj) #27
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i235

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i235: ; preds = %bb.w, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i232
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %i.fp
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit236

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit236: ; preds = %bb.t, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i235
  %.sroa.41.8 = phi ptr [ %i.gi, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i235 ], [ %.sroa.41.6, %bb.t ]
  %.sroa.19.8 = phi ptr [ %i.gh, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i235 ], [ %i.fg, %bb.t ]
  %.sroa.0480.8 = phi ptr [ %i.fr, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i235 ], [ %.sroa.0480.6, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %.critedge

_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit: ; preds = %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit
  br i1 %.0188, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit
  %i.gj = and i64 %.0.i.i.i207, 3221159936
  %.0.i238 = icmp ne i64 %i.gj, 327680
  %i.gk = icmp ne i32 %i.ek, 2
  %or.cond3 = or i1 %.0.i238, %i.gk
  br i1 %or.cond3, label %.critedge, label %bb.z

bb.y:                                             ; preds = %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit
  %.old2.not = icmp eq i32 %i.ek, 2
  br i1 %.old2.not, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.gl = add i32 %.0183619, 1
  %i.gm = load ptr, ptr %i.am, align 8, !tbaa !327 ; 2 uses
  %i.gn = zext i32 %i.gl to i64
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %i.gm, i64 %i.gn
  %.sroa.0447.0.copyload = load ptr, ptr %i.go, align 8, !tbaa !329
  %i.gp = add i32 %.0183619, 2                    ; 3 uses
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.gm, i64 %i.gq
  %.sroa.0445.0.copyload = load ptr, ptr %i.gr, align 8, !tbaa !329
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0447.0.copyload, i64 88
  %.sroa.0.0.copyload.i = load i32, ptr %i.gs, align 8, !tbaa !330 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0445.0.copyload, i64 88
  %.sroa.0.0.copyload.i239 = load i32, ptr %i.gt, align 8, !tbaa !330 ; 2 uses
  %i.gu = load ptr, ptr %i.an, align 8, !tbaa !435
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !791 ; 2 uses
  %i.gx = and i32 %i.da, 6
  %switch = icmp eq i32 %i.gx, 2
  br i1 %switch, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.gy = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.gw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3456), ptr nonnull @.str.25, i64 0) #24 ; 2 uses
  %i.gz = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.ha = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.gz, i32 %i.gy, i16 251, ptr null) #24 ; 2 uses
  %.sroa.013.023.i = load ptr, ptr %i.bh, align 8, !tbaa !351 ; 2 uses
  %.not24.i = icmp eq ptr %.sroa.013.023.i, null
  br i1 %.not24.i, label %_ZNK4llvm6SDNode12getGluedUserEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ab
  %.sroa.013.025.i = phi ptr [ %.sroa.013.0.i, %bb.ab ], [ %.sroa.013.023.i, %bb.aa ] ; 4 uses
  %i.hb = load ptr, ptr %.sroa.013.025.i, align 8, !tbaa !332
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !352
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !333
  %i.hg = zext i32 %i.hd to i64
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %i.hg ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.hh, align 8, !tbaa !335
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !337
  %.not.i.i.i240 = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 249
  %i.hi = icmp eq ptr %.sroa.21.0.copyload.i.i.i.i, null
  %.not4.i.i241 = select i1 %.not.i.i.i240, i1 %i.hi, i1 false
  br i1 %.not4.i.i241, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 32
  %.sroa.013.0.i = load ptr, ptr %i.hj, align 8, !tbaa !351 ; 2 uses
  %.not.i242 = icmp eq ptr %.sroa.013.0.i, null
  br i1 %.not.i242, label %_ZNK4llvm6SDNode12getGluedUserEv.exit, label %.lr.ph.i

bb.ac:                                            ; preds = %.lr.ph.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !523
  br label %_ZNK4llvm6SDNode12getGluedUserEv.exit

_ZNK4llvm6SDNode12getGluedUserEv.exit:            ; preds = %bb.ab, %bb.aa, %bb.ac
  %i.hm = phi ptr [ %i.hl, %bb.ac ], [ null, %bb.aa ], [ null, %bb.ab ] ; 3 uses
  %i.hn = load ptr, ptr %i.ao, align 8, !tbaa !314 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store i16 249, ptr %17, align 8, !tbaa !430
  store ptr null, ptr %i.bi, align 8, !tbaa !432
  %i.ho = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.hn, i16 251, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %17) #24 ; 2 uses
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  %i.hq = extractvalue { ptr, i32 } %i.ho, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  store ptr %1, ptr %18, align 16, !tbaa !329
  store i32 0, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !330
  %i.hr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.hn, i32 %i.gy, i16 251, ptr null) #24 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.hr, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.hr, 1
  store ptr %.fca.0.extract3.i, ptr %i.bj, align 16
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  store ptr %1, ptr %i.bk, align 16, !tbaa !329
  store i32 1, ptr %.sroa.5516.0..sroa_idx, align 8, !tbaa !330
  store ptr %18, ptr %19, align 8, !tbaa !361
  store i64 3, ptr %i.bl, align 8, !tbaa !362
  %i.hs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.hn, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %20, ptr %i.hp, i32 %i.hq, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %19) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %.fca.0.extract110 = extractvalue { ptr, i32 } %i.hs, 0 ; 4 uses
  %.fca.1.extract111 = extractvalue { ptr, i32 } %i.hs, 1 ; 2 uses
  %i.ht = load ptr, ptr %i.ao, align 8, !tbaa !314
  store ptr %.fca.0.extract110, ptr %25, align 8, !tbaa !329
  store i32 %.fca.1.extract111, ptr %.sroa.6425.0..sroa_idx, align 8, !tbaa !330
  %i.hu = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ht, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25) #24 ; 2 uses
  %.fca.0.extract103 = extractvalue { ptr, i32 } %i.hu, 0 ; 3 uses
  %.fca.1.extract104 = extractvalue { ptr, i32 } %i.hu, 1 ; 3 uses
  %i.hv = load ptr, ptr %i.ao, align 8, !tbaa !314
  store ptr %.fca.0.extract110, ptr %26, align 8, !tbaa !329
  store i32 %.fca.1.extract111, ptr %.sroa.6425.0..sroa_idx426, align 8, !tbaa !330
  %i.hw = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.hv, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26) #24 ; 2 uses
  %.fca.0.extract97 = extractvalue { ptr, i32 } %i.hw, 0 ; 3 uses
  %.fca.1.extract98 = extractvalue { ptr, i32 } %i.hw, 1 ; 3 uses
  %i.hx = load ptr, ptr %i.ao, align 8, !tbaa !314 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.hy = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.hx, i16 1, ptr null, i16 249, ptr null) #24 ; 2 uses
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  %i.ia = extractvalue { ptr, i32 } %i.hy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store ptr %.fca.0.extract103, ptr %15, align 16, !tbaa !329
  store i32 %.fca.1.extract104, ptr %.sroa.214.0..sroa_idx.i, align 8, !tbaa !330
  %i.ib = getelementptr inbounds nuw i8, ptr %.fca.0.extract103, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !333
  %i.id = zext i32 %.fca.1.extract104 to i64
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %i.id ; 2 uses
  %.sroa.0.0.copyload.i.i.i246 = load i16, ptr %i.ie, align 8, !tbaa !335
  %.sroa.21.0..sroa_idx.i.i.i247 = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %.sroa.21.0.copyload.i.i.i248 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i247, align 8, !tbaa !337
  %i.if = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.hx, i32 %.sroa.0.0.copyload.i, i16 %.sroa.0.0.copyload.i.i.i246, ptr %.sroa.21.0.copyload.i.i.i248) #24 ; 2 uses
  %.fca.0.extract3.i249 = extractvalue { ptr, i32 } %i.if, 0
  %.fca.1.extract4.i250 = extractvalue { ptr, i32 } %i.if, 1
  store ptr %.fca.0.extract3.i249, ptr %i.bm, align 16
  store i32 %.fca.1.extract4.i250, ptr %.sroa.26.0..sroa_idx.i251, align 8
  store ptr %.fca.0.extract103, ptr %i.bn, align 16, !tbaa !329
  store i32 %.fca.1.extract104, ptr %.sroa.5519.0..sroa_idx, align 8, !tbaa !330
  store ptr %.fca.0.extract110, ptr %i.bo, align 16, !tbaa !329
  store i32 1, ptr %.sroa.5522.0..sroa_idx, align 8, !tbaa !330
  %.not.i252 = icmp eq ptr %.fca.0.extract110, null
  %i.ig = select i1 %.not.i252, i64 3, i64 4
  store ptr %15, ptr %16, align 8, !tbaa !361
  store i64 %i.ig, ptr %i.bp, align 8, !tbaa !362
  %i.ih = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.hx, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %20, ptr %i.hz, i32 %i.ia, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.ii = load ptr, ptr %i.ao, align 8, !tbaa !314 ; 3 uses
  %.fca.0.extract77 = extractvalue { ptr, i32 } %i.ih, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ij = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ii, i16 1, ptr null, i16 249, ptr null) #24 ; 2 uses
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  %i.il = extractvalue { ptr, i32 } %i.ij, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store ptr %.fca.0.extract97, ptr %13, align 16, !tbaa !329
  store i32 %.fca.1.extract98, ptr %.sroa.214.0..sroa_idx.i255, align 8, !tbaa !330
  %i.im = getelementptr inbounds nuw i8, ptr %.fca.0.extract97, i64 48
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !333
  %i.io = zext i32 %.fca.1.extract98 to i64
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.in, i64 %i.io ; 2 uses
  %.sroa.0.0.copyload.i.i.i256 = load i16, ptr %i.ip, align 8, !tbaa !335
  %.sroa.21.0..sroa_idx.i.i.i257 = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %.sroa.21.0.copyload.i.i.i258 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i257, align 8, !tbaa !337
  %i.iq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ii, i32 %.sroa.0.0.copyload.i239, i16 %.sroa.0.0.copyload.i.i.i256, ptr %.sroa.21.0.copyload.i.i.i258) #24 ; 2 uses
  %.fca.0.extract3.i259 = extractvalue { ptr, i32 } %i.iq, 0
  %.fca.1.extract4.i260 = extractvalue { ptr, i32 } %i.iq, 1
  store ptr %.fca.0.extract3.i259, ptr %i.bq, align 16
  store i32 %.fca.1.extract4.i260, ptr %.sroa.26.0..sroa_idx.i261, align 8
  store ptr %.fca.0.extract97, ptr %i.br, align 16, !tbaa !329
  store i32 %.fca.1.extract98, ptr %.sroa.5525.0..sroa_idx, align 8, !tbaa !330
  store ptr %.fca.0.extract77, ptr %i.bs, align 16, !tbaa !329
  store i32 1, ptr %.sroa.5528.0..sroa_idx, align 8, !tbaa !330
  %.not.i262 = icmp eq ptr %.fca.0.extract77, null
  %i.ir = select i1 %.not.i262, i64 3, i64 4
  store ptr %13, ptr %14, align 8, !tbaa !361
  store i64 %i.ir, ptr %i.bt, align 8, !tbaa !362
  %i.is = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ii, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %20, ptr %i.ik, i32 %i.il, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.it = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !327 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %i.iw = load i16, ptr %i.iv, align 8, !tbaa !525
  %i.ix = zext i16 %i.iw to i64                   ; 2 uses
  %.idx = mul nuw nsw i64 %i.ix, 40               ; 2 uses
  %i.iy = add nsw i64 %.idx, -40                  ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %i.iu, i64 %i.iy
  %i.ja = add nsw i64 %i.ix, -1                   ; 8 uses
  %i.jb = icmp ugt i64 %i.ja, 576460752303423487
  br i1 %i.jb, label %bb.ad, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.ad:                                            ; preds = %_ZNK4llvm6SDNode12getGluedUserEv.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
  unreachable

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %_ZNK4llvm6SDNode12getGluedUserEv.exit
  %.not.i.i.i263 = icmp eq i64 %i.iy, 0
  br i1 %.not.i.i.i263, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.jc = shl nuw nsw i64 %i.ja, 4
  %i.jd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jc) #26 ; 4 uses
  %i.je = add nsw i64 %.idx, -80                  ; 2 uses
  %i.jf = udiv i64 %i.je, 40
  %i.jg = add nuw nsw i64 %i.jf, 1
  %xtraiter = and i64 %i.jg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i.prol = phi ptr [ %i.ji, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.jd, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.prol = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.iu, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i.i.prol, i64 16, i1 false), !tbaa.struct !357
  %i.jh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.prol, i64 40 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !773

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i.i
  %.lcssa717.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.ji, %.lr.ph.i.i.i.i.i.i.prol ]
  %.011.i.i.i.i.i.i.unr = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.ji, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0810.i.i.i.i.i.i.unr = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.jh, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.jj = icmp ult i64 %i.je, 120
  br i1 %i.jj, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.jq, %.lr.ph.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !357
  %i.jk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.jl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(40) %i.jk, i64 16, i1 false), !tbaa.struct !357
  %i.jm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 80
  %i.jn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(40) %i.jm, i64 16, i1 false), !tbaa.struct !357
  %i.jo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 120
  %i.jp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull align 8 dereferenceable(40) %i.jo, i64 16, i1 false), !tbaa.struct !357
  %i.jq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.jq, %i.iz
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !774

_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.sink = phi ptr [ null, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.jd, %.lr.ph.i.i.i.i.i.i ], [ %i.jd, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %.lcssa717.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.jr, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %.idx708 = shl nuw nsw i64 %i.ja, 4
  %i.js = getelementptr inbounds nuw i8, ptr %.sink, i64 %.idx708 ; 3 uses
  %.fca.0.extract69 = extractvalue { ptr, i32 } %i.is, 0 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i.i, %i.js
  br i1 %.not.i.i, label %29, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit
  store ptr %.fca.0.extract69, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !329
  %.sroa.5380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  store i32 1, ptr %.sroa.5380.0..sroa_idx, align 8, !tbaa !330
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit

29:                                               ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit
  %30 = ptrtoint ptr %i.js to i64
  %31 = ptrtoint ptr %.sink to i64
  %.idx707 = shl nuw nsw i64 %i.ja, 4             ; 2 uses
  %32 = icmp eq i64 %i.ja, 576460752303423487
  br i1 %32, label %33, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

33:                                               ; preds = %29
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %29
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ja, i64 1)
  %i.jt = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.ja
  %i.ju = call i64 @llvm.umin.i64(i64 %i.jt, i64 576460752303423487) ; 2 uses
  %i.jv = shl nuw nsw i64 %i.ju, 4
  %i.jw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #26 ; 6 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx707 ; 2 uses
  store ptr %.fca.0.extract69, ptr %i.jx, align 8, !tbaa !329
  %.sroa.5380.0..sroa_idx381 = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i32 1, ptr %.sroa.5380.0..sroa_idx381, align 8, !tbaa !330
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.ja, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i266.preheader

.lr.ph.i.i.i.i.i.i266.preheader:                  ; preds = %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jy = add i64 %30, -16
  %i.jz = sub i64 %i.jy, %31
  %i.ka = and i64 %i.jz, -16                      ; 2 uses
  %i.kb = add i64 %i.ka, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jw, ptr align 8 %.sink, i64 %i.kb, i1 false), !alias.scope !792
  %scevgep = getelementptr i8, ptr %i.jw, i64 16
  %scevgep633 = getelementptr i8, ptr %scevgep, i64 %i.ka
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i266.preheader, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i268 = phi ptr [ %i.jw, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %scevgep633, %.lr.ph.i.i.i.i.i.i266.preheader ]
  %.not.i23.i.i.i = icmp eq ptr %.sink, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef %.idx707) #27
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %i.ju
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ae, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.14.1 = phi ptr [ %i.kc, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.js, %bb.ae ]
  %.0.lcssa.i.i.i.i.i.i268.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i268, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.0.lcssa.i.i.i.i.i.i, %bb.ae ]
  %.sroa.0387.1 = phi ptr [ %i.jw, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sink, %bb.ae ] ; 4 uses
  %.sroa.8390.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i268.pn, i64 16
  %i.kd = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.ke = ptrtoint ptr %.sroa.8390.0 to i64
  %i.kf = ptrtoint ptr %.sroa.0387.1 to i64       ; 2 uses
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = ashr exact i64 %i.kg, 4
  %i.ki = call noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.kd, ptr noundef nonnull %i.hm, ptr %.sroa.0387.1, i64 %i.kh) #24 ; 0 uses
  %.not.i.i.i269 = icmp eq ptr %.sroa.0387.1, null
  br i1 %.not.i.i.i269, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit
  %i.kj = ptrtoint ptr %.sroa.14.1 to i64
  %i.kk = sub i64 %i.kj, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.1, i64 noundef %i.kk) #27
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit

bb.ah:                                            ; preds = %bb.z
  %.sroa.0371.0.copyload = load ptr, ptr %.sroa.0480.6, align 8, !tbaa !329 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0480.6, i64 8 ; 2 uses
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !330 ; 2 uses
  %i.kl = load ptr, ptr %i.ao, align 8, !tbaa !314 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i16 249, ptr %10, align 8, !tbaa !430
  store ptr null, ptr %i.ap, align 8, !tbaa !432
  %i.km = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.kl, i16 7, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %10) #24 ; 2 uses
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  %i.ko = extractvalue { ptr, i32 } %i.km, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %.sroa.0371.0.copyload, ptr %11, align 16, !tbaa !329
  store i32 %.sroa.9.0.copyload, ptr %.sroa.218.0..sroa_idx.i275, align 8, !tbaa !330
  %i.kp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.kl, i32 %.sroa.0.0.copyload.i, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract3.i276 = extractvalue { ptr, i32 } %i.kp, 0
  %.fca.1.extract4.i277 = extractvalue { ptr, i32 } %i.kp, 1
  store ptr %.fca.0.extract3.i276, ptr %i.aq, align 16
  store i32 %.fca.1.extract4.i277, ptr %.sroa.26.0..sroa_idx.i278, align 8
  store ptr %.sroa.0371.0.copyload, ptr %i.ar, align 16, !tbaa !329
  store i32 1, ptr %.sroa.5534.0..sroa_idx, align 8, !tbaa !330
  %.not.i279 = icmp eq ptr %.sroa.0371.0.copyload, null
  %i.kq = select i1 %.not.i279, i64 2, i64 3
  store ptr %11, ptr %12, align 8, !tbaa !361
  store i64 %i.kq, ptr %i.as, align 8, !tbaa !362
  %i.kr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.kl, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %20, ptr %i.kn, i32 %i.ko, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %12) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.fca.0.extract57 = extractvalue { ptr, i32 } %i.kr, 0 ; 5 uses
  %.fca.1.extract58 = extractvalue { ptr, i32 } %i.kr, 1
  %i.ks = load ptr, ptr %i.ao, align 8, !tbaa !314 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i16 249, ptr %7, align 8, !tbaa !430
  store ptr null, ptr %i.at, align 8, !tbaa !432
  %i.kt = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ks, i16 7, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %7) #24 ; 2 uses
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  %i.kv = extractvalue { ptr, i32 } %i.kt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %.sroa.0371.0.copyload, ptr %8, align 16, !tbaa !329
  store i32 %.sroa.9.0.copyload, ptr %.sroa.218.0..sroa_idx.i285, align 8, !tbaa !330
  %i.kw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ks, i32 %.sroa.0.0.copyload.i239, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract3.i286 = extractvalue { ptr, i32 } %i.kw, 0
  %.fca.1.extract4.i287 = extractvalue { ptr, i32 } %i.kw, 1
  store ptr %.fca.0.extract3.i286, ptr %i.au, align 16
  store i32 %.fca.1.extract4.i287, ptr %.sroa.26.0..sroa_idx.i288, align 8
  store ptr %.fca.0.extract57, ptr %i.av, align 16, !tbaa !329
  store i32 1, ptr %.sroa.5540.0..sroa_idx, align 8, !tbaa !330
  %.not.i289 = icmp eq ptr %.fca.0.extract57, null
  %i.kx = select i1 %.not.i289, i64 2, i64 3
  store ptr %8, ptr %9, align 8, !tbaa !361
  store i64 %i.kx, ptr %i.aw, align 8, !tbaa !362
  %i.ky = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ks, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %20, ptr %i.ku, i32 %i.kv, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %9) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.fca.0.extract45 = extractvalue { ptr, i32 } %i.ky, 0 ; 4 uses
  %.fca.1.extract46 = extractvalue { ptr, i32 } %i.ky, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.kz = getelementptr inbounds nuw i8, ptr %.fca.0.extract57, i64 72
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !353
  store i64 %i.la, ptr %4, align 8, !tbaa !353
  %i.lb = getelementptr inbounds nuw i8, ptr %.fca.0.extract57, i64 68
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !354
  store i32 %i.lc, ptr %i.ax, align 8, !tbaa !356
  %i.ld = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.le = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ld, i64 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract12.i = extractvalue { ptr, i32 } %i.le, 0
  %.fca.1.extract13.i = extractvalue { ptr, i32 } %i.le, 1
  %i.lf = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.lg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.lf, i64 noundef 9, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.lg, 0
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.lg, 1
  %i.lh = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.li = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.lh, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.li, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.li, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %.fca.0.extract12.i, ptr %5, align 16, !tbaa !329
  store i32 %.fca.1.extract13.i, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !330
  store ptr %.fca.0.extract57, ptr %i.ay, align 16, !tbaa !329
  store i32 %.fca.1.extract58, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !330
  store ptr %.fca.0.extract5.i, ptr %i.az, align 16, !tbaa !329
  store i32 %.fca.1.extract6.i, ptr %.sroa.410.0..sroa_idx.i, align 8, !tbaa !330
  store ptr %.fca.0.extract45, ptr %i.ba, align 16, !tbaa !329
  store i32 %.fca.1.extract46, ptr %.sroa.4543.0..sroa_idx, align 8, !tbaa !330
  store ptr %.fca.0.extract.i, ptr %i.bb, align 16, !tbaa !329
  store i32 %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !330
  %i.lj = load ptr, ptr %i.ao, align 8, !tbaa !314
  store ptr %5, ptr %6, align 8, !tbaa !361
  store i64 5, ptr %i.bc, align 8, !tbaa !362
  %i.lk = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.lj, i32 noundef 19, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 251, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %6) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ll = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.gw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3456), ptr nonnull @.str.25, i64 0) #24 ; 2 uses
  %i.lm = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.ln = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.lm, i32 %i.ll, i16 251, ptr null) #24
  %i.lo = load ptr, ptr %i.ao, align 8, !tbaa !314 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.lp = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.lo, i16 1, ptr null, i16 249, ptr null) #24 ; 2 uses
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  %i.lr = extractvalue { ptr, i32 } %i.lp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %.fca.0.extract45, ptr %2, align 16, !tbaa !329
  store i32 %.fca.1.extract46, ptr %.sroa.214.0..sroa_idx.i292, align 8, !tbaa !330
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lk, i64 48
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !333 ; 2 uses
  %.sroa.0.0.copyload.i.i.i293 = load i16, ptr %i.lt, align 8, !tbaa !335
  %.sroa.21.0..sroa_idx.i.i.i294 = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %.sroa.21.0.copyload.i.i.i295 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i294, align 8, !tbaa !337
  %i.lu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.lo, i32 %i.ll, i16 %.sroa.0.0.copyload.i.i.i293, ptr %.sroa.21.0.copyload.i.i.i295) #24 ; 2 uses
  %.fca.0.extract3.i296 = extractvalue { ptr, i32 } %i.lu, 0
  %.fca.1.extract4.i297 = extractvalue { ptr, i32 } %i.lu, 1
  store ptr %.fca.0.extract3.i296, ptr %i.bd, align 16
  store i32 %.fca.1.extract4.i297, ptr %.sroa.26.0..sroa_idx.i298, align 8
  store ptr %i.lk, ptr %i.be, align 16, !tbaa !329
  store i32 0, ptr %.sroa.5546.0..sroa_idx, align 8, !tbaa !330
  store ptr %.fca.0.extract45, ptr %i.bf, align 16, !tbaa !329
  store i32 1, ptr %.sroa.5549.0..sroa_idx, align 8, !tbaa !330
  %.not.i299 = icmp eq ptr %.fca.0.extract45, null
  %i.lv = select i1 %.not.i299, i64 3, i64 4
  store ptr %2, ptr %3, align 8, !tbaa !361
  store i64 %i.lv, ptr %i.bg, align 8, !tbaa !362
  %i.lw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.lo, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %20, ptr %i.lq, i32 %i.lr, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %3) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.lw, 0 ; 2 uses
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.lw, 1
  store ptr %.fca.0.extract18, ptr %.sroa.0480.6, align 8, !tbaa !329
  store i32 %.fca.1.extract19, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !330
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit:    ; preds = %bb.ag, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.ln, %bb.ah ], [ %i.ha, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit ], [ %i.ha, %bb.ag ] ; 2 uses
  %.sroa.9455.2 = phi i32 [ 1, %bb.ah ], [ %.sroa.9455.1614, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.9455.1614, %bb.ag ] ; 3 uses
  %.sroa.0452.2 = phi ptr [ %.fca.0.extract18, %bb.ah ], [ %.sroa.0452.1615, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0452.1615, %bb.ag ] ; 3 uses
  %.sroa.8440.0 = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %.sroa.0438.0 = extractvalue { ptr, i32 } %.pn, 0 ; 3 uses
  %.not195 = icmp eq ptr %.sroa.0438.0, null
  br i1 %.not195, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit
  %i.lx = load i64, ptr %i.w, align 8, !tbaa !547
  %i.ly = load ptr, ptr %21, align 8, !tbaa !546
  %i.lz = getelementptr i8, ptr %i.ly, i64 %i.lx
  %i.ma = getelementptr i8, ptr %i.lz, i64 -1
  store i8 1, ptr %i.ma, align 1, !tbaa !470
  %i.mb = or disjoint i32 %.0, -2147483640
  %i.mc = or disjoint i32 %i.db, 3604488
  %.sroa.0466.0 = select i1 %.0188, i32 %i.mb, i32 %i.mc
  %i.md = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.me = zext i32 %.sroa.0466.0 to i64
  %i.mf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.md, i64 noundef %i.me, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.mf, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.mf, 1
  %i.mg = ptrtoint ptr %.sroa.19.6 to i64
end_hunk_0
