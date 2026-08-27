Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelDAGToDAG?download=true
inline.NumInlined: 5550
inline.NumDeleted: 1231
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !332
  %i.acs = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.acr, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract458 = extractvalue { ptr, i32 } %i.acs, 0
  %.fca.1.extract459 = extractvalue { ptr, i32 } %i.acs, 1
  %i.act = load ptr, ptr %56, align 8, !tbaa !349
  %i.acu = icmp ne ptr %i.act, %.fca.0.extract458
  %i.acv = load i32, ptr %i.acm, align 8
  %i.acw = icmp ne i32 %i.acv, %.fca.1.extract459
  %.not3.i1176 = select i1 %i.acu, i1 true, i1 %i.acw
  br i1 %.not3.i1176, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %55, ptr noundef nonnull align 8 dereferenceable(12) %i.acp, i64 12, i1 false), !tbaa.struct !375
  %i.acx = load ptr, ptr %i.acq, align 8, !tbaa !332
  %i.acy = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.acx, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract451 = extractvalue { ptr, i32 } %i.acy, 0
  %.fca.1.extract452 = extractvalue { ptr, i32 } %i.acy, 1
  store ptr %.fca.0.extract451, ptr %56, align 8, !tbaa !346
  store i32 %.fca.1.extract452, ptr %i.acm, align 8, !tbaa !348
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %58, ptr noundef nonnull align 8 dereferenceable(12) %55, i64 12, i1 false), !tbaa.struct !375
  %i.acz = getelementptr inbounds nuw i8, ptr %58, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.acz, ptr noundef nonnull align 8 dereferenceable(12) %56, i64 12, i1 false), !tbaa.struct !375
  %i.ada = getelementptr inbounds nuw i8, ptr %58, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ada, ptr noundef nonnull align 8 dereferenceable(12) %57, i64 12, i1 false), !tbaa.struct !375
  %i.adb = getelementptr inbounds nuw i8, ptr %58, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.adb, ptr noundef nonnull align 8 dereferenceable(12) %i.aco, i64 12, i1 false), !tbaa.struct !375
  %i.adc = load ptr, ptr %i.acq, align 8, !tbaa !332
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(32) @constinit, i64 32, i1 false), !tbaa.struct !488
  store ptr %58, ptr %60, align 8, !tbaa !377
  %i.add = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 4, ptr %i.add, align 8, !tbaa !380
  %i.ade = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.adc, i32 noundef 386, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr nonnull %59, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %60) #24 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  %i.adf = load ptr, ptr %i.acq, align 8, !tbaa !332
  store ptr %i.ade, ptr %61, align 8, !tbaa !349
  %i.adg = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i32 0, ptr %i.adg, align 8, !tbaa !370
  %i.adh = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.adf, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %61) #24 ; 2 uses
  %.fca.0.extract438 = extractvalue { ptr, i32 } %i.adh, 0 ; 2 uses
  %.fca.1.extract439 = extractvalue { ptr, i32 } %i.adh, 1
  %i.adi = load ptr, ptr %i.acq, align 8, !tbaa !332
  store ptr %i.ade, ptr %62, align 8, !tbaa !349
  %i.adj = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i32 0, ptr %i.adj, align 8, !tbaa !370
  %i.adk = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.adi, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %62) #24 ; 2 uses
  %.fca.0.extract431 = extractvalue { ptr, i32 } %i.adk, 0 ; 2 uses
  %.fca.1.extract432 = extractvalue { ptr, i32 } %i.adk, 1
  %.val1132 = load ptr, ptr %i.acq, align 8, !tbaa !332
  %i.adl = getelementptr i8, ptr %1, i64 104
  %.val1133 = load i64, ptr %i.adl, align 8
  %i.adm = and i64 %.val1133, -5
  %i.adn = inttoptr i64 %i.adm to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %i.adn, ptr %i.b, align 8, !tbaa !381
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %.val1132, ptr noundef %i.ade, ptr nonnull %i.b, i64 1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ado = load ptr, ptr %i.acq, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ado, ptr nonnull %1, i32 0, ptr %.fca.0.extract438, i32 %.fca.1.extract439) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract438) #24
  %i.adp = load ptr, ptr %i.acq, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.adp, ptr nonnull %1, i32 1, ptr %.fca.0.extract431, i32 %.fca.1.extract432) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract431) #24
  %i.adq = load ptr, ptr %i.acq, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.adq, ptr nonnull %1, i32 2, ptr %i.ade, i32 1) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.ade) #24
  %i.adr = load ptr, ptr %i.acq, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.adr, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  br label %.critedge1126

bb.cv:                                            ; preds = %bb.c
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !162 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 461
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !331, !range !18, !noundef !19
  %i.adw = trunc nuw i8 %i.adv to i1
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adt, i64 410
  %i.ady = load i8, ptr %i.adx, align 2, !range !18
  %i.adz = trunc nuw i8 %i.ady to i1
  %i.aea = select i1 %i.adw, i1 %i.adz, i1 false
  br i1 %i.aea, label %.critedge12, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #24
  %i.aeb = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #24
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !345 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 120 ; 2 uses
  %.sroa.0419.0.copyload = load ptr, ptr %i.aee, align 8, !tbaa !346
  %.sroa.2420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aed, i64 128
  %.sroa.2420.0.copyload = load i32, ptr %.sroa.2420.0..sroa_idx, align 8, !tbaa !348
  call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15SelectAddrMode3EN4llvm7SDValueERS2_S3_S3_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr %.sroa.0419.0.copyload, i32 %.sroa.2420.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %63, ptr noundef nonnull align 8 dereferenceable(12) %64, ptr noundef nonnull align 8 dereferenceable(12) %65)
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !332
  %i.aeh = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.aeg, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract415 = extractvalue { ptr, i32 } %i.aeh, 0
  %.fca.1.extract416 = extractvalue { ptr, i32 } %i.aeh, 1
  %i.aei = load ptr, ptr %64, align 8, !tbaa !349
  %i.aej = icmp ne ptr %i.aei, %.fca.0.extract415
  %i.aek = load i32, ptr %i.aeb, align 8
  %i.ael = icmp ne i32 %i.aek, %.fca.1.extract416
  %.not3.i1178 = select i1 %i.aej, i1 true, i1 %i.ael
  br i1 %.not3.i1178, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %63, ptr noundef nonnull align 8 dereferenceable(12) %i.aee, i64 12, i1 false), !tbaa.struct !375
  %i.aem = load ptr, ptr %i.aef, align 8, !tbaa !332
  %i.aen = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.aem, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract408 = extractvalue { ptr, i32 } %i.aen, 0
  %.fca.1.extract409 = extractvalue { ptr, i32 } %i.aen, 1
  store ptr %.fca.0.extract408, ptr %64, align 8, !tbaa !346
  store i32 %.fca.1.extract409, ptr %i.aeb, align 8, !tbaa !348
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.aeo = load ptr, ptr %i.aec, align 8, !tbaa !345 ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 40
  %.sroa.0404.0.copyload = load ptr, ptr %i.aep, align 8, !tbaa !346
  %.sroa.2405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeo, i64 48
  %.sroa.2405.0.copyload = load i32, ptr %.sroa.2405.0..sroa_idx, align 8, !tbaa !348
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeo, i64 80
  %i.aer = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_115ARMDAGToDAGISel17createGPRPairNodeEN4llvm3EVTENS1_7SDValueES3_(ptr noundef nonnull align 8 dereferenceable(960) %0, i16 251, ptr null, ptr %.sroa.0404.0.copyload, i32 %.sroa.2405.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aeq)
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  store ptr %i.aer, ptr %66, align 16, !tbaa !349
  %i.aes = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i32 0, ptr %i.aes, align 8, !tbaa !370
  %i.aet = getelementptr inbounds nuw i8, ptr %66, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aet, ptr noundef nonnull align 8 dereferenceable(12) %63, i64 12, i1 false), !tbaa.struct !375
  %i.aeu = getelementptr inbounds nuw i8, ptr %66, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aeu, ptr noundef nonnull align 8 dereferenceable(12) %64, i64 12, i1 false), !tbaa.struct !375
  %i.aev = getelementptr inbounds nuw i8, ptr %66, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aev, ptr noundef nonnull align 8 dereferenceable(12) %65, i64 12, i1 false), !tbaa.struct !375
  %i.aew = getelementptr inbounds nuw i8, ptr %66, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aew, ptr noundef nonnull align 8 dereferenceable(12) %i.aed, i64 12, i1 false), !tbaa.struct !375
  %i.aex = load ptr, ptr %i.aef, align 8, !tbaa !332
  store ptr %66, ptr %67, align 8, !tbaa !377
  %i.aey = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 5, ptr %i.aey, align 8, !tbaa !380
  %i.aez = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aex, i32 noundef 445, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %67) #24 ; 3 uses
  %.val = load ptr, ptr %i.aef, align 8, !tbaa !332
  %i.afa = getelementptr i8, ptr %1, i64 104
  %.val1131 = load i64, ptr %i.afa, align 8
  %i.afb = and i64 %.val1131, -5
  %i.afc = inttoptr i64 %i.afb to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.afc, ptr %i.a, align 8, !tbaa !381
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %.val, ptr noundef %i.aez, ptr nonnull %i.a, i64 1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.afd = load ptr, ptr %i.aef, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.afd, ptr nonnull %1, i32 0, ptr %i.aez, i32 0) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.aez) #24
  %i.afe = load ptr, ptr %i.aef, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.afe, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  br label %.critedge1126

bb.cz:                                            ; preds = %bb.c
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !162 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 461
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !331, !range !18, !noundef !19
  %i.afj = trunc nuw i8 %i.afi to i1
  br i1 %i.afj, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afg, i64 410
  %i.afl = load i8, ptr %i.afk, align 2, !tbaa !483, !range !18, !noundef !19
  %i.afm = trunc nuw i8 %i.afl to i1
  %i.afn = select i1 %i.afm, i32 4078, i32 4465
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.afo = phi i32 [ %i.afn, %bb.da ], [ 853, %bb.cz ]
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !345 ; 6 uses
  %.sroa.01382.0.copyload.a = load ptr, ptr %i.afq, align 8, !tbaa !346 ; 2 uses
  %.sroa.81385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %.sroa.81385.0.copyload = load i32, ptr %.sroa.81385.0..sroa_idx, align 8, !tbaa !348 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %68)
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull align 8 dereferenceable(16) %i.afr, i64 16, i1 false), !tbaa.struct !375
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 80
  %.sroa.01380.0.copyload = load ptr, ptr %i.afs, align 8, !tbaa !346
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 120
  %.sroa.01370.0.copyload = load ptr, ptr %i.aft, align 8, !tbaa !346 ; 5 uses
  %.sroa.101377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afq, i64 128
  %i.afu = load i64, ptr %.sroa.101377.0..sroa_idx, align 8 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %.sroa.01380.0.copyload, i64 88
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !356 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 24 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afw, i64 32
  %i.afz = load i32, ptr %i.afy, align 8, !tbaa !359
  %i.aga = icmp ult i32 %i.afz, 65
  %i.agb = load ptr, ptr %i.afx, align 8
  %spec.select.i.i.i.i1179 = select i1 %i.aga, ptr %i.afx, ptr %i.agb
  %.0.i.i.i.i1180 = load i64, ptr %spec.select.i.i.i.i1179, align 8, !tbaa !361 ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.01370.0.copyload, i64 24
  %i.agd = load i32, ptr %i.agc, align 8, !tbaa !334
  %i.age = icmp eq i32 %i.agd, 556
  br i1 %i.age, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.agf = getelementptr inbounds nuw i8, ptr %.sroa.01370.0.copyload, i64 40
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !345
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !349 ; 4 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  %i.agj = load i32, ptr %i.agi, align 8, !tbaa !334
  %i.agk = icmp eq i32 %i.agj, 49
  br i1 %i.agk, label %bb.dd, label %.critedge1123

bb.dd:                                            ; preds = %bb.dc
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 40 ; 2 uses
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !345 ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 40
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !349
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 88
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !356 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 24 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agq, i64 32
  %i.agt = load i32, ptr %i.ags, align 8, !tbaa !359
  %i.agu = icmp ult i32 %i.agt, 65
  %i.agv = load ptr, ptr %i.agr, align 8
  %spec.select.i.i.i.i1181 = select i1 %i.agu, ptr %i.agr, ptr %i.agv
  %.0.i.i.i.i1182 = load i64, ptr %spec.select.i.i.i.i1181, align 8, !tbaa !361
  %.not1094 = icmp eq i64 %.0.i.i.i.i1182, 232
  br i1 %.not1094, label %bb.de, label %.critedge1123

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agm, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull align 8 dereferenceable(16) %i.agw, i64 16, i1 false), !tbaa.struct !375
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !332
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agm, i64 120
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !349
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 88
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !356 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 24 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahc, i64 32
  %i.ahf = load i32, ptr %i.ahe, align 8, !tbaa !359
  %i.ahg = icmp ult i32 %i.ahf, 65
  %i.ahh = load ptr, ptr %i.ahd, align 8
  %spec.select.i.i.i.i.i1183 = select i1 %i.ahg, ptr %i.ahd, ptr %i.ahh
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i1183, align 8, !tbaa !361
  %i.ahi = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.agy, i64 noundef %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract391 = extractvalue { ptr, i32 } %i.ahi, 0
  %.fca.1.extract392 = extractvalue { ptr, i32 } %i.ahi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %70, ptr noundef nonnull align 8 dereferenceable(12) %69, i64 12, i1 false), !tbaa.struct !375
  %i.ahj = getelementptr inbounds nuw i8, ptr %70, i64 16
  store ptr %.fca.0.extract391, ptr %i.ahj, align 16, !tbaa !346
  %.sroa.4396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %70, i64 24
  store i32 %.fca.1.extract392, ptr %.sroa.4396.0..sroa_idx, align 8, !tbaa !348
  %i.ahk = getelementptr inbounds nuw i8, ptr %70, i64 32
  %i.ahl = load ptr, ptr %i.agl, align 8, !tbaa !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ahk, ptr noundef nonnull align 8 dereferenceable(12) %i.ahl, i64 12, i1 false), !tbaa.struct !375
  %i.ahm = load ptr, ptr %i.agx, align 8, !tbaa !332 ; 2 uses
  %i.ahn = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ahm, i16 7, ptr null, i16 1, ptr null) #24 ; 2 uses
  %i.aho = extractvalue { ptr, i32 } %i.ahn, 0
  %i.ahp = extractvalue { ptr, i32 } %i.ahn, 1
  store ptr %70, ptr %71, align 8, !tbaa !377
  %i.ahq = getelementptr inbounds nuw i8, ptr %71, i64 8
  store i64 3, ptr %i.ahq, align 8, !tbaa !380
  %i.ahr = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ahm, i32 noundef 726, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %i.aho, i32 %i.ahp, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %71) #24 ; 3 uses
  %i.ahs = load ptr, ptr %i.agx, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.ahs, ptr noundef nonnull %i.agh, ptr noundef %i.ahr) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.ahr) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #24
  store ptr %i.ahr, ptr %72, align 16, !tbaa !349
  %i.aht = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i32 0, ptr %i.aht, align 8, !tbaa !370
  %i.ahu = getelementptr inbounds nuw i8, ptr %72, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ahu, ptr noundef nonnull align 8 dereferenceable(12) %68, i64 12, i1 false), !tbaa.struct !375
  %i.ahv = getelementptr inbounds nuw i8, ptr %72, i64 32
  store ptr %.sroa.01382.0.copyload.a, ptr %i.ahv, align 16, !tbaa !346
  %.sroa.81385.0..sroa_idx1386 = getelementptr inbounds nuw i8, ptr %72, i64 40
  store i32 %.sroa.81385.0.copyload, ptr %.sroa.81385.0..sroa_idx1386, align 8, !tbaa !348
  %i.ahw = load ptr, ptr %i.agx, align 8, !tbaa !332
  store ptr %72, ptr %73, align 8, !tbaa !377
  %i.ahx = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 3, ptr %i.ahx, align 8, !tbaa !380
  %i.ahy = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ahw, i32 noundef 727, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %73) #24 ; 2 uses
  %i.ahz = load ptr, ptr %i.agx, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.ahz, ptr noundef nonnull %1, ptr noundef %i.ahy) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.ahy) #24
  %i.aia = load ptr, ptr %i.agx, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.aia, ptr noundef nonnull %1) #24
  %i.aib = load ptr, ptr %i.agx, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.aib, ptr noundef nonnull %.sroa.01370.0.copyload) #24
  %i.aic = load ptr, ptr %i.agx, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.aic, ptr noundef nonnull %i.agh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %69)
  br label %bb.dg

.critedge1123:                                    ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel10SelectCMPZEPN4llvm6SDNodeERb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %.sroa.01370.0.copyload, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  %i.aid = load ptr, ptr %i.afp, align 8, !tbaa !345 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 120
  %.sroa.01370.0.copyload1376 = load ptr, ptr %i.aie, align 8, !tbaa !346
  %.sroa.101377.0..sroa_idx1379 = getelementptr inbounds nuw i8, ptr %i.aid, i64 128
  %i.aif = load i32, ptr %.sroa.101377.0..sroa_idx1379, align 8, !tbaa !348
  %.sroa.101377.0.insert.ext = zext i32 %i.aif to i64
  %.sroa.101377.0.insert.mask = and i64 %i.afu, -4294967296
  %.sroa.101377.0.insert.insert = or disjoint i64 %.sroa.101377.0.insert.mask, %.sroa.101377.0.insert.ext
  %i.aig = load i8, ptr %i.e, align 1, !tbaa !489, !range !18, !noundef !19
  %i.aih = trunc nuw i8 %i.aig to i1
  %i.aii = and i64 %.0.i.i.i.i1180, 4294967295
  %i.aij = icmp eq i64 %i.aii, 1
  %. = select i1 %i.aij, i64 4, i64 5
  %.01075 = select i1 %i.aih, i64 %., i64 %.0.i.i.i.i1180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.df

bb.df:                                            ; preds = %.critedge1123, %bb.db
  %.sroa.01370.0 = phi ptr [ %.sroa.01370.0.copyload1376, %.critedge1123 ], [ %.sroa.01370.0.copyload, %bb.db ]
  %.sroa.101377.0 = phi i64 [ %.sroa.101377.0.insert.insert, %.critedge1123 ], [ %i.afu, %bb.db ]
  %.11076 = phi i64 [ %.01075, %.critedge1123 ], [ %.0.i.i.i.i1180, %bb.db ]
  %i.aik = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !332
  %i.aim = and i64 %.11076, 4294967295
  %i.ain = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ail, i64 noundef %i.aim, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract379 = extractvalue { ptr, i32 } %i.ain, 0
  %.fca.1.extract380 = extractvalue { ptr, i32 } %i.ain, 1
  %i.aio = load ptr, ptr %i.aik, align 8, !tbaa !332
  store ptr %.sroa.01370.0, ptr %74, align 8, !tbaa !346
  %.sroa.101377.0..sroa_idx1378 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i64 %.sroa.101377.0, ptr %.sroa.101377.0..sroa_idx1378, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  %i.aip = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.aio, ptr %.sroa.01382.0.copyload.a, i32 %.sroa.81385.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %74, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %75) ; 2 uses
  %.fca.0.extract369 = extractvalue { ptr, i32 } %i.aip, 0 ; 2 uses
  %.fca.1.extract370 = extractvalue { ptr, i32 } %i.aip, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %76, ptr noundef nonnull align 8 dereferenceable(12) %68, i64 12, i1 false), !tbaa.struct !375
  %i.aiq = getelementptr inbounds nuw i8, ptr %76, i64 16
  store ptr %.fca.0.extract379, ptr %i.aiq, align 16, !tbaa !346
  %.sroa.4384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %76, i64 24
  store i32 %.fca.1.extract380, ptr %.sroa.4384.0..sroa_idx, align 8, !tbaa !348
  %i.air = getelementptr inbounds nuw i8, ptr %76, i64 32
  %i.ais = load ptr, ptr %i.aik, align 8, !tbaa !332
  %i.ait = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ais, i32 3, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract365 = extractvalue { ptr, i32 } %i.ait, 0
  %.fca.1.extract366 = extractvalue { ptr, i32 } %i.ait, 1
  store ptr %.fca.0.extract365, ptr %i.air, align 16
  %.sroa.2368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %76, i64 40
  store i32 %.fca.1.extract366, ptr %.sroa.2368.0..sroa_idx, align 8
  %i.aiu = getelementptr inbounds nuw i8, ptr %76, i64 48
  store ptr %.fca.0.extract369, ptr %i.aiu, align 16, !tbaa !346
  %.sroa.81385.0..sroa_idx1388 = getelementptr inbounds nuw i8, ptr %76, i64 56
  store i32 %.fca.1.extract370, ptr %.sroa.81385.0..sroa_idx1388, align 8, !tbaa !348
  %i.aiv = getelementptr inbounds nuw i8, ptr %76, i64 64
  store ptr %.fca.0.extract369, ptr %i.aiv, align 16
  %.sroa.2364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %76, i64 72
  store i32 1, ptr %.sroa.2364.0..sroa_idx, align 8
  %i.aiw = load ptr, ptr %i.aik, align 8, !tbaa !332
  store ptr %76, ptr %77, align 8, !tbaa !377
  %i.aix = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 5, ptr %i.aix, align 8, !tbaa !380
  %i.aiy = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aiw, ptr noundef nonnull %1, i32 noundef %i.afo, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %77) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #24
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %68)
  br label %.critedge1126

bb.dh:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %78)
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !345 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %i.aja, i64 16, i1 false), !tbaa.struct !375
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 40
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !349 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 24
  %i.aje = load i32, ptr %i.ajd, align 8, !tbaa !334
  switch i32 %i.aje, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.dh, %bb.dh
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajc, i64 88
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !356 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 24 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajg, i64 32
  %i.ajj = load i32, ptr %i.aji, align 8, !tbaa !359 ; 4 uses
  %i.ajk = icmp ult i32 %i.ajj, 65                ; 2 uses
  br i1 %i.ajk, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  %i.ajl = load i64, ptr %i.ajh, align 8          ; 3 uses
  %i.ajm = icmp eq i32 %i.ajj, 0
  %i.ajn = sub nuw nsw i32 64, %i.ajj
  %i.ajo = zext nneg i32 %i.ajn to i64            ; 2 uses
  %i.ajp = shl i64 %i.ajl, %i.ajo
  %i.ajq = ashr exact i64 %i.ajp, %i.ajo
  %i.ajr = inttoptr i64 %i.ajl to ptr
  br i1 %i.ajm, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.dj:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  %i.ajs = load ptr, ptr %i.ajh, align 8          ; 3 uses
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !28
  %i.aju = ptrtoint ptr %i.ajs to i64
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.di, %bb.dj
  %i.ajv = phi i64 [ %i.ajl, %bb.di ], [ %i.aju, %bb.dj ]
  %i.ajw = phi ptr [ %i.ajr, %bb.di ], [ %i.ajs, %bb.dj ]
  %.0.i.i.i1186 = phi i64 [ %i.ajq, %bb.di ], [ %i.ajt, %bb.dj ]
  %i.ajx = icmp slt i64 %.0.i.i.i1186, 0
  br i1 %i.ajx, label %bb.dk, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.dk:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !162 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 461
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !331, !range !18, !noundef !19
  %i.akc = trunc nuw i8 %i.akb to i1
  br i1 %i.akc, label %bb.dl, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.dl:                                            ; preds = %bb.dk
  br i1 %i.ajk, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.akd = sub nuw nsw i32 64, %i.ajj
  %i.ake = zext nneg i32 %i.akd to i64            ; 2 uses
  %i.akf = shl i64 %i.ajv, %i.ake
  %i.akg = ashr exact i64 %i.akf, %i.ake
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit1190

bb.dn:                                            ; preds = %bb.dl
  %i.akh = load i64, ptr %i.ajw, align 8, !tbaa !28
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit1190

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit1190: ; preds = %bb.dm, %bb.dn
  %.0.i.i.i1188 = phi i64 [ %i.akg, %bb.dm ], [ %i.akh, %bb.dn ] ; 3 uses
  %i.aki = sub nsw i64 0, %.0.i.i.i1188           ; 2 uses
  %i.akj = icmp sgt i64 %.0.i.i.i1188, -256
  br i1 %i.akj, label %bb.do, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.do:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit1190
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajz, i64 410
  %i.akl = load i8, ptr %i.akk, align 2, !range !18
  %i.akm = trunc nuw i8 %i.akl to i1
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  br i1 %i.akm, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %79, ptr noundef nonnull align 8 dereferenceable(12) %i.aja, i64 12, i1 false)
  %i.ako = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.akp = load ptr, ptr %i.akn, align 8, !tbaa !332
  %i.akq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.akp, i64 noundef %i.aki, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract348 = extractvalue { ptr, i32 } %i.akq, 0
  %.fca.1.extract349 = extractvalue { ptr, i32 } %i.akq, 1
  store ptr %.fca.0.extract348, ptr %i.ako, align 16
  %.sroa.2351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %79, i64 24
  store i32 %.fca.1.extract349, ptr %.sroa.2351.0..sroa_idx, align 8
  %i.akr = getelementptr inbounds nuw i8, ptr %79, i64 32
  %i.aks = load ptr, ptr %i.akn, align 8, !tbaa !332
  %i.akt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aks, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract344 = extractvalue { ptr, i32 } %i.akt, 0
  %.fca.1.extract345 = extractvalue { ptr, i32 } %i.akt, 1
  store ptr %.fca.0.extract344, ptr %i.akr, align 16
  %.sroa.2347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %79, i64 40
  store i32 %.fca.1.extract345, ptr %.sroa.2347.0..sroa_idx, align 8
  %i.aku = getelementptr inbounds nuw i8, ptr %79, i64 48
  %i.akv = load ptr, ptr %i.akn, align 8, !tbaa !332
  %i.akw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.akv, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract340 = extractvalue { ptr, i32 } %i.akw, 0
  %.fca.1.extract341 = extractvalue { ptr, i32 } %i.akw, 1
  store ptr %.fca.0.extract340, ptr %i.aku, align 16
  %.sroa.2343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %79, i64 56
  store i32 %.fca.1.extract341, ptr %.sroa.2343.0..sroa_idx, align 8
  %i.akx = getelementptr inbounds nuw i8, ptr %79, i64 64
  %i.aky = load ptr, ptr %i.akn, align 8, !tbaa !332
  %i.akz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.aky, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract336 = extractvalue { ptr, i32 } %i.akz, 0
  %.fca.1.extract337 = extractvalue { ptr, i32 } %i.akz, 1
  store ptr %.fca.0.extract336, ptr %i.akx, align 16
  %.sroa.2339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %79, i64 72
  store i32 %.fca.1.extract337, ptr %.sroa.2339.0..sroa_idx, align 8
  %i.ala = load ptr, ptr %i.akn, align 8, !tbaa !332
  store ptr %79, ptr %80, align 8, !tbaa !377
  %i.alb = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 5, ptr %i.alb, align 8, !tbaa !380
  %i.alc = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ala, i32 noundef 4049, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %80) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #24
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.ald = icmp sgt i64 %.0.i.i.i1188, -8
  %i.ale = select i1 %i.ald, i32 4445, i32 4446
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #24
  %i.alf = load ptr, ptr %i.akn, align 8, !tbaa !332
  %i.alg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.alf, i32 3, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract331 = extractvalue { ptr, i32 } %i.alg, 0
  %.fca.1.extract332 = extractvalue { ptr, i32 } %i.alg, 1
  store ptr %.fca.0.extract331, ptr %81, align 16
  %.sroa.2334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i32 %.fca.1.extract332, ptr %.sroa.2334.0..sroa_idx, align 8
  %i.alh = getelementptr inbounds nuw i8, ptr %81, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.alh, ptr noundef nonnull align 8 dereferenceable(12) %78, i64 12, i1 false), !tbaa.struct !375
  %i.ali = getelementptr inbounds nuw i8, ptr %81, i64 32
  %i.alj = load ptr, ptr %i.akn, align 8, !tbaa !332
  %i.alk = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.alj, i64 noundef %i.aki, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract327 = extractvalue { ptr, i32 } %i.alk, 0
  %.fca.1.extract328 = extractvalue { ptr, i32 } %i.alk, 1
  store ptr %.fca.0.extract327, ptr %i.ali, align 16
  %.sroa.2330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %81, i64 40
  store i32 %.fca.1.extract328, ptr %.sroa.2330.0..sroa_idx, align 8
  %i.all = getelementptr inbounds nuw i8, ptr %81, i64 48
  %i.alm = load ptr, ptr %i.akn, align 8, !tbaa !332
  %i.aln = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.alm, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract323 = extractvalue { ptr, i32 } %i.aln, 0
  %.fca.1.extract324 = extractvalue { ptr, i32 } %i.aln, 1
  store ptr %.fca.0.extract323, ptr %i.all, align 16
  %.sroa.2326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %81, i64 56
  store i32 %.fca.1.extract324, ptr %.sroa.2326.0..sroa_idx, align 8
  %i.alo = getelementptr inbounds nuw i8, ptr %81, i64 64
  %i.alp = load ptr, ptr %i.akn, align 8, !tbaa !332
  %i.alq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.alp, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract319 = extractvalue { ptr, i32 } %i.alq, 0
  %.fca.1.extract320 = extractvalue { ptr, i32 } %i.alq, 1
  store ptr %.fca.0.extract319, ptr %i.alo, align 16
  %.sroa.2322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %81, i64 72
  store i32 %.fca.1.extract320, ptr %.sroa.2322.0..sroa_idx, align 8
  %i.alr = load ptr, ptr %i.akn, align 8, !tbaa !332
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
    i32 3982, label %bb.if
    i32 3916, label %bb.ig
    i32 3917, label %bb.ig
    i32 3910, label %bb.ih
    i32 3911, label %bb.ih
    i32 3918, label %bb.ii
    i32 3919, label %bb.ii
    i32 3912, label %bb.ij
    i32 3913, label %bb.ij
    i32 3738, label %switch.edge
    i32 3734, label %switch.edge
    i32 3742, label %switch.edge
    i32 3733, label %bb.ik
    i32 3737, label %bb.ik
    i32 3741, label %bb.ik
  ]

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #24
  store i64 %i.j, ptr %120, align 8, !tbaa !371
  %i.bac = getelementptr inbounds nuw i8, ptr %120, i64 8
  store i32 %i.m, ptr %i.bac, align 8, !tbaa !373
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azs, i64 40 ; 2 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !351 ; 2 uses
  %.sroa.0.0.copyload.i1234 = load i16, ptr %i.baf, align 8, !tbaa !352
  %.sroa.21.0..sroa_idx.i1235 = getelementptr inbounds nuw i8, ptr %i.baf, i64 8
  %.sroa.21.0.copyload.i1236 = load ptr, ptr %.sroa.21.0..sroa_idx.i1235, align 8, !tbaa !354
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !332
  %i.bai = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bah, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %120, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.bai, 0
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.bai, 1
  %i.baj = load ptr, ptr %i.bag, align 8, !tbaa !332
  %i.bak = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.baj, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract32 = extractvalue { ptr, i32 } %i.bak, 0
  %.fca.1.extract33 = extractvalue { ptr, i32 } %i.bak, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %121, ptr noundef nonnull align 8 dereferenceable(12) %i.bad, i64 12, i1 false), !tbaa.struct !375
  %i.bal = getelementptr inbounds nuw i8, ptr %121, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bal, ptr noundef nonnull align 8 dereferenceable(12) %i.bad, i64 12, i1 false), !tbaa.struct !375
  %i.bam = getelementptr inbounds nuw i8, ptr %121, i64 32
  store ptr %.fca.0.extract39, ptr %i.bam, align 16, !tbaa !346
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %121, i64 40
  store i32 %.fca.1.extract40, ptr %.sroa.444.0..sroa_idx, align 8, !tbaa !348
  %i.ban = getelementptr inbounds nuw i8, ptr %121, i64 48
  store ptr %.fca.0.extract32, ptr %i.ban, align 16, !tbaa !346
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %121, i64 56
  store i32 %.fca.1.extract33, ptr %.sroa.437.0..sroa_idx, align 8, !tbaa !348
  %i.bao = load ptr, ptr %i.bag, align 8, !tbaa !332
  store ptr %121, ptr %122, align 8, !tbaa !377
  %i.bap = getelementptr inbounds nuw i8, ptr %122, i64 8
  store i64 4, ptr %i.bap, align 8, !tbaa !380
  %i.baq = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bao, ptr noundef nonnull %1, i32 noundef 835, i16 %.sroa.0.0.copyload.i1234, ptr %.sroa.21.0.copyload.i1236, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %122) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #24
  br label %.critedge1126

bb.hu:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #24
  store i64 %i.j, ptr %123, align 8, !tbaa !371
  %i.bar = getelementptr inbounds nuw i8, ptr %123, i64 8
  store i32 %i.m, ptr %i.bar, align 8, !tbaa !373
  %i.bas = getelementptr inbounds nuw i8, ptr %i.azs, i64 40
  %i.bat = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !332
  %i.bav = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bau, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %123, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.bav, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.bav, 1
  %i.baw = load ptr, ptr %i.bat, align 8, !tbaa !332
  %i.bax = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.baw, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bax, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bax, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %124, ptr noundef nonnull align 8 dereferenceable(12) %i.bas, i64 12, i1 false), !tbaa.struct !375
  %i.bay = getelementptr inbounds nuw i8, ptr %124, i64 16
  store ptr %.fca.0.extract22, ptr %i.bay, align 16, !tbaa !346
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %124, i64 24
  store i32 %.fca.1.extract23, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !348
  %i.baz = getelementptr inbounds nuw i8, ptr %124, i64 32
  store ptr %.fca.0.extract, ptr %i.baz, align 16, !tbaa !346
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %124, i64 40
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !348
  %i.bba = load ptr, ptr %i.bat, align 8, !tbaa !332
  store ptr %124, ptr %125, align 8, !tbaa !377
  %i.bbb = getelementptr inbounds nuw i8, ptr %125, i64 8
  store i64 3, ptr %i.bbb, align 8, !tbaa !380
  %i.bbc = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bba, ptr noundef nonnull %1, i32 noundef 834, i16 123, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %125) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #24
  br label %.critedge1126

bb.hv:                                            ; preds = %bb.hs
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel19SelectMVE_LongShiftEPN4llvm6SDNodeEtbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i16 noundef zeroext 1044, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %.critedge1126

bb.hw:                                            ; preds = %bb.hs
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel19SelectMVE_LongShiftEPN4llvm6SDNodeEtbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i16 noundef zeroext 1042, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %.critedge1126

bb.hx:                                            ; preds = %bb.hs
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel19SelectMVE_LongShiftEPN4llvm6SDNodeEtbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i16 noundef zeroext 1038, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %.critedge1126

bb.hy:                                            ; preds = %bb.hs
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel19SelectMVE_LongShiftEPN4llvm6SDNodeEtbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i16 noundef zeroext 1036, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %.critedge1126

bb.hz:                                            ; preds = %bb.hs
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel19SelectMVE_LongShiftEPN4llvm6SDNodeEtbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i16 noundef zeroext 1040, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %.critedge1126

bb.ia:                                            ; preds = %bb.hs
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel19SelectMVE_LongShiftEPN4llvm6SDNodeEtbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i16 noundef zeroext 1034, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %.critedge1126

bb.ib:                                            ; preds = %bb.hs, %bb.hs
  %i.bbd = icmp eq i32 %i.bab, 3878
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel17SelectMVE_VADCSBCEPN4llvm6SDNodeEttbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i16 noundef zeroext 1064, i16 noundef zeroext 1065, i1 noundef zeroext true, i1 noundef zeroext %i.bbd)
  br label %.critedge1126

bb.ic:                                            ; preds = %bb.hs, %bb.hs
  %i.bbe = icmp eq i32 %i.bab, 3987
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel17SelectMVE_VADCSBCEPN4llvm6SDNodeEttbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i16 noundef zeroext 1730, i16 noundef zeroext 1731, i1 noundef zeroext false, i1 noundef zeroext %i.bbe)
  br label %.critedge1126

bb.id:                                            ; preds = %bb.hs, %bb.hs
  %i.bbf = icmp eq i32 %i.bab, 3993
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15SelectMVE_VSHLCEPN4llvm6SDNodeEb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i1 noundef zeroext %i.bbf)
  br label %.critedge1126

bb.ie:                                            ; preds = %bb.hs, %bb.hs
  %i.bbg = icmp eq i32 %i.bab, 3939
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel17SelectMVE_VMLLDAVEPN4llvm6SDNodeEbPKtS5_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i1 noundef zeroext %i.bbg)
  br label %.critedge1126

bb.if:                                            ; preds = %bb.hs, %bb.hs
  %i.bbh = icmp eq i32 %i.bab, 3982
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel21SelectBaseMVE_VMLLDAVEPN4llvm6SDNodeEbPKtS5_mm(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i1 noundef zeroext %i.bbh, ptr noundef nonnull @_ZZN12_GLOBAL__N_115ARMDAGToDAGISel6SelectEPN4llvm6SDNodeEE8OpcodesS_0, ptr noundef nonnull @_ZZN12_GLOBAL__N_115ARMDAGToDAGISel6SelectEPN4llvm6SDNodeEE8OpcodesU_0, i64 noundef 1, i64 noundef 0)
  br label %.critedge1126

bb.ig:                                            ; preds = %bb.hs, %bb.hs
  %i.bbi = icmp eq i32 %i.bab, 3917
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15SelectMVE_VxDUPEPN4llvm6SDNodeEPKtbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN12_GLOBAL__N_115ARMDAGToDAGISel6SelectEPN4llvm6SDNodeEE7Opcodes_7, i1 noundef zeroext false, i1 noundef zeroext %i.bbi)
  br label %.critedge1126

bb.ih:                                            ; preds = %bb.hs, %bb.hs
  %i.bbj = icmp eq i32 %i.bab, 3911
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15SelectMVE_VxDUPEPN4llvm6SDNodeEPKtbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN12_GLOBAL__N_115ARMDAGToDAGISel6SelectEPN4llvm6SDNodeEE7Opcodes_8, i1 noundef zeroext false, i1 noundef zeroext %i.bbj)
  br label %.critedge1126

bb.ii:                                            ; preds = %bb.hs, %bb.hs
  %i.bbk = icmp eq i32 %i.bab, 3919
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15SelectMVE_VxDUPEPN4llvm6SDNodeEPKtbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN12_GLOBAL__N_115ARMDAGToDAGISel6SelectEPN4llvm6SDNodeEE7Opcodes_9, i1 noundef zeroext true, i1 noundef zeroext %i.bbk)
  br label %.critedge1126

bb.ij:                                            ; preds = %bb.hs, %bb.hs
  %i.bbl = icmp eq i32 %i.bab, 3913
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15SelectMVE_VxDUPEPN4llvm6SDNodeEPKtbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN12_GLOBAL__N_115ARMDAGToDAGISel6SelectEPN4llvm6SDNodeEE7Opcodes__10_, i1 noundef zeroext true, i1 noundef zeroext %i.bbl)
  br label %.critedge1126

bb.ik:                                            ; preds = %bb.hs, %bb.hs, %bb.hs
  br label %switch.edge

switch.edge:                                      ; preds = %bb.hs, %bb.hs, %bb.hs, %bb.ik
  %i.bbm = phi i1 [ false, %bb.ik ], [ true, %bb.hs ], [ true, %bb.hs ], [ true, %bb.hs ] ; 4 uses
  switch i32 %i.bab, label %bb.io [
    i32 3733, label %bb.il
    i32 3734, label %bb.il
    i32 3737, label %bb.im
    i32 3738, label %bb.im
    i32 3741, label %bb.in
    i32 3742, label %bb.in
  ]

bb.il:                                            ; preds = %switch.edge, %switch.edge
  %i.bbn = select i1 %i.bbm, i16 857, i16 856
  br label %bb.ip

bb.im:                                            ; preds = %switch.edge, %switch.edge
  %i.bbo = select i1 %i.bbm, i16 861, i16 860
  br label %bb.ip

bb.in:                                            ; preds = %switch.edge, %switch.edge
  %i.bbp = select i1 %i.bbm, i16 865, i16 864
  br label %bb.ip

bb.io:                                            ; preds = %switch.edge
  unreachable

bb.ip:                                            ; preds = %bb.in, %bb.im, %bb.il
  %.01072 = phi i64 [ 0, %bb.il ], [ 1, %bb.im ], [ 2, %bb.in ]
  %.0 = phi i16 [ %i.bbn, %bb.il ], [ %i.bbo, %bb.im ], [ %i.bbp, %bb.in ]
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel14SelectCDE_CXxDEPN4llvm6SDNodeEtmb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i16 noundef zeroext %.0, i64 noundef %.01072, i1 noundef zeroext %i.bbm)
  br label %.critedge1126

bb.iq:                                            ; preds = %bb.c
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel14SelectCMP_SWAPEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1)
  br label %.critedge1126

.critedge12:                                      ; preds = %bb.g, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit, %bb.bp, %select.unfold, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %_ZNK4llvm6SDNode9hasOneUseEv.exit1161, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit1163, %bb.bq, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.aw, %bb.aq, %_ZN4llvm13isPowerOf2_32Ej.exit1149, %.critedge1112, %bb.bo, %bb.dt, %bb.dw, %bb.ch, %bb.ce, %bb.cf, %bb.cg, %bb.cc, %bb.cb, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel12tryFP_TO_INTEPN4llvm6SDNodeENS1_5SDLocE.exit.thread1612, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel12tryFP_TO_INTEPN4llvm6SDNodeENS1_5SDLocE.exit.thread, %bb.e, %bb.d, %bb.i, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread, %bb.j, %bb.hs, %bb.fw, %bb.o, %bb.n, %bb.fr, %bb.fp, %bb.fn, %bb.fl, %bb.fi, %bb.fc, %bb.fa, %bb.ey, %bb.cv, %bb.cr, %bb.cp, %bb.cq, %bb.cm, %bb.co, %bb.cn, %bb.cd, %bb.bz, %bb.ca, %bb.ap, %bb.ao, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel12tryFP_TO_INTEPN4llvm6SDNodeENS1_5SDLocE.exit, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.m, %bb.l, %bb.k, %bb.c, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread
  call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN12_GLOBAL__N_115ARMDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12MatcherTable, i32 noundef 168413, ptr noundef nonnull @_ZZN12_GLOBAL__N_115ARMDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12OperandLists) #24
  br label %.critedge1126

.critedge1126:                                    ; preds = %bb.br, %bb.bk, %bb.bl, %bb.ba, %bb.av, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel12tryFP_TO_INTEPN4llvm6SDNodeENS1_5SDLocE.exit.thread1614, %bb.ip, %bb.ht, %bb.hu, %bb.hv, %bb.hw, %bb.hx, %bb.hy, %bb.hz, %bb.ia, %bb.ib, %bb.ic, %bb.id, %bb.ie, %bb.if, %bb.ig, %bb.ih, %bb.ii, %bb.ij, %bb.hr, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit, %_ZNSt6vectorIN4llvm3EVTESaIS1_EED2Ev.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj7EED2Ev.exit, %bb.gs, %bb.gt, %bb.gu, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he, %bb.hf, %bb.hg, %bb.hh, %bb.hi, %bb.hj, %bb.hk, %bb.hl, %bb.hm, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.ew, %bb.ex, %bb.es, %bb.et, %bb.cq, %bb.co, %bb.cn, %bb.cm, %bb.cj, %.critedge1121, %bb.bb, %bb.ao, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel12tryFP_TO_INTEPN4llvm6SDNodeENS1_5SDLocE.exit, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.w, %.critedge1108, %bb.m, %bb.l, %bb.k, %.critedge1104, %.critedge12, %bb.iq, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fq, %bb.fo, %bb.fm, %bb.fk, %bb.fj, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fb, %bb.ez, %bb.eu, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.dz, %bb.dy, %bb.dx, %bb.dg, %bb.cy, %bb.cu, %bb.by, %bb.bx, %bb.bv, %bb.bu, %bb.bs, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel28SelectInlineAsmMemoryOperandERKN4llvm7SDValueENS1_9InlineAsm14ConstraintCodeERSt6vectorIS2_SaIS2_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !498  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !500
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !375
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !498
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !498
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !501    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !375
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !375, !alias.scope !502
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !506

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #27
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.r, ptr %3, align 8, !tbaa !501
  store ptr %i.v, ptr %i.a, align 8, !tbaa !498
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !500
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm16SelectionDAGISel18IsProfitableToFoldENS_7SDValueEPNS_6SDNodeES3_(ptr noundef nonnull align 8 dereferenceable(952), ptr, i32, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm16SelectionDAGISel18getPatternForIndexEj(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm16SelectionDAGISel22getIncludePathForIndexEj(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_115ARMDAGToDAGISel21CheckPatternPredicateEj(ptr nofree noundef nonnull readonly align 8 dereferenceable(960) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.j
    i32 7, label %bb.l
    i32 8, label %bb.n
    i32 9, label %bb.p
    i32 10, label %bb.r
    i32 11, label %bb.v
    i32 12, label %bb.w
    i32 13, label %bb.y
    i32 14, label %bb.aa
    i32 15, label %bb.ac
    i32 16, label %bb.ae
    i32 17, label %bb.af
    i32 18, label %bb.ah
    i32 19, label %bb.aj
    i32 20, label %bb.am
    i32 21, label %bb.ao
    i32 22, label %bb.aq
    i32 23, label %bb.av
    i32 24, label %bb.ba
    i32 25, label %bb.bc
    i32 26, label %bb.bh
    i32 27, label %bb.bl
    i32 28, label %bb.bp
    i32 29, label %bb.bs
    i32 30, label %bb.bt
    i32 31, label %bb.bx
    i32 32, label %bb.ca
    i32 33, label %bb.cf
    i32 34, label %bb.cj
    i32 35, label %bb.ck
    i32 36, label %bb.cn
    i32 37, label %bb.co
    i32 38, label %bb.cq
    i32 39, label %bb.ct
    i32 40, label %bb.cv
    i32 41, label %bb.cw
    i32 42, label %bb.cy
    i32 43, label %bb.da
    i32 44, label %bb.dc
    i32 45, label %bb.de
    i32 46, label %bb.dg
    i32 47, label %bb.dh
    i32 48, label %bb.dl
    i32 49, label %bb.dn
    i32 50, label %bb.do
    i32 51, label %bb.dr
    i32 52, label %bb.ds
    i32 53, label %bb.dt
    i32 54, label %bb.dv
    i32 55, label %bb.dw
    i32 56, label %bb.dy
    i32 57, label %bb.ea
    i32 58, label %bb.eb
    i32 59, label %bb.ed
    i32 60, label %bb.ef
    i32 61, label %bb.eh
    i32 62, label %bb.ek
    i32 63, label %bb.eo
    i32 64, label %bb.eq
    i32 65, label %bb.es
    i32 66, label %bb.eu
    i32 67, label %bb.ex
    i32 68, label %bb.fa
    i32 69, label %bb.fc
    i32 70, label %bb.fd
    i32 71, label %bb.fg
    i32 72, label %bb.fi
    i32 73, label %bb.fm
    i32 74, label %bb.fo
    i32 75, label %bb.fq
    i32 76, label %bb.ft
    i32 77, label %bb.fv
    i32 78, label %bb.fx
    i32 79, label %bb.fz
    i32 80, label %bb.gb
    i32 81, label %bb.gd
    i32 82, label %bb.gg
    i32 83, label %bb.gj
    i32 84, label %bb.gl
    i32 85, label %bb.gn
    i32 86, label %bb.gp
    i32 87, label %bb.gr
    i32 88, label %bb.gt
    i32 89, label %bb.gy
    i32 90, label %bb.hc
    i32 91, label %bb.he
    i32 92, label %bb.hg
    i32 93, label %bb.hi
    i32 94, label %bb.hk
    i32 95, label %bb.hm
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel12tryInlineAsmEPN4llvm6SDNodeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.fca.0.extract45 = extractvalue { ptr, i32 } %i.le, 0 ; 4 uses
  %.fca.1.extract46 = extractvalue { ptr, i32 } %i.le, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.lf = getelementptr inbounds nuw i8, ptr %.fca.0.extract57, i64 72
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !371
  store i64 %i.lg, ptr %4, align 8, !tbaa !371
  %i.lh = getelementptr inbounds nuw i8, ptr %.fca.0.extract57, i64 68
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !372
  store i32 %i.li, ptr %i.ba, align 8, !tbaa !373
  %i.lj = load ptr, ptr %i.ar, align 8, !tbaa !332
  %i.lk = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.lj, i64 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract12.i = extractvalue { ptr, i32 } %i.lk, 0
  %.fca.1.extract13.i = extractvalue { ptr, i32 } %i.lk, 1
  %i.ll = load ptr, ptr %i.ar, align 8, !tbaa !332
  %i.lm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ll, i64 noundef 9, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.lm, 0
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.lm, 1
  %i.ln = load ptr, ptr %i.ar, align 8, !tbaa !332
  %i.lo = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ln, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.lo, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.lo, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %.fca.0.extract12.i, ptr %5, align 16, !tbaa !346
  store i32 %.fca.1.extract13.i, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !348
  store ptr %.fca.0.extract57, ptr %i.bb, align 16, !tbaa !346
  store i32 %.fca.1.extract58, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !348
  store ptr %.fca.0.extract5.i, ptr %i.bc, align 16, !tbaa !346
  store i32 %.fca.1.extract6.i, ptr %.sroa.410.0..sroa_idx.i, align 8, !tbaa !348
  store ptr %.fca.0.extract45, ptr %i.bd, align 16, !tbaa !346
  store i32 %.fca.1.extract46, ptr %.sroa.4543.0..sroa_idx, align 8, !tbaa !348
  store ptr %.fca.0.extract.i, ptr %i.be, align 16, !tbaa !346
  store i32 %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !348
  %i.lp = load ptr, ptr %i.ar, align 8, !tbaa !332
  store ptr %5, ptr %6, align 8, !tbaa !377
  store i64 5, ptr %i.bf, align 8, !tbaa !380
  %i.lq = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.lp, i32 noundef 19, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 251, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %6) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.lr = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.gz, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3456), ptr nonnull @.str.25, i64 0) #24 ; 2 uses
  %i.ls = load ptr, ptr %i.ar, align 8, !tbaa !332
  %i.lt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ls, i32 %i.lr, i16 251, ptr null) #24
  %i.lu = load ptr, ptr %i.ar, align 8, !tbaa !332 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.lv = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.lu, i16 1, ptr null, i16 249, ptr null) #24 ; 2 uses
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  %i.lx = extractvalue { ptr, i32 } %i.lv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %.fca.0.extract45, ptr %2, align 16, !tbaa !346
  store i32 %.fca.1.extract46, ptr %.sroa.214.0..sroa_idx.i292, align 8, !tbaa !348
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !351 ; 2 uses
  %.sroa.0.0.copyload.i.i.i293 = load i16, ptr %i.lz, align 8, !tbaa !352
  %.sroa.21.0..sroa_idx.i.i.i294 = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %.sroa.21.0.copyload.i.i.i295 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i294, align 8, !tbaa !354
  %i.ma = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.lu, i32 %i.lr, i16 %.sroa.0.0.copyload.i.i.i293, ptr %.sroa.21.0.copyload.i.i.i295) #24 ; 2 uses
  %.fca.0.extract3.i296 = extractvalue { ptr, i32 } %i.ma, 0
  %.fca.1.extract4.i297 = extractvalue { ptr, i32 } %i.ma, 1
  store ptr %.fca.0.extract3.i296, ptr %i.bg, align 16
  store i32 %.fca.1.extract4.i297, ptr %.sroa.26.0..sroa_idx.i298, align 8
  store ptr %i.lq, ptr %i.bh, align 16, !tbaa !346
  store i32 0, ptr %.sroa.5546.0..sroa_idx, align 8, !tbaa !348
  store ptr %.fca.0.extract45, ptr %i.bi, align 16, !tbaa !346
  store i32 1, ptr %.sroa.5549.0..sroa_idx, align 8, !tbaa !348
  %.not.i299 = icmp eq ptr %.fca.0.extract45, null
  %i.mb = select i1 %.not.i299, i64 3, i64 4
  store ptr %2, ptr %3, align 8, !tbaa !377
  store i64 %i.mb, ptr %i.bj, align 8, !tbaa !380
  %i.mc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.lu, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %20, ptr %i.lw, i32 %i.lx, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %3) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.mc, 0 ; 2 uses
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.mc, 1
  store ptr %.fca.0.extract18, ptr %.sroa.0480.6, align 8, !tbaa !346
  store i32 %.fca.1.extract19, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !348
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit:    ; preds = %bb.ai, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.lt, %bb.aj ], [ %i.hd, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit ], [ %i.hd, %bb.ai ] ; 2 uses
  %.sroa.9455.2 = phi i32 [ 1, %bb.aj ], [ %.sroa.9455.1614, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.9455.1614, %bb.ai ] ; 3 uses
  %.sroa.0452.2 = phi ptr [ %.fca.0.extract18, %bb.aj ], [ %.sroa.0452.1615, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0452.1615, %bb.ai ] ; 3 uses
  %.sroa.8440.0 = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %.sroa.0438.0 = extractvalue { ptr, i32 } %.pn, 0 ; 3 uses
  %.not195 = icmp eq ptr %.sroa.0438.0, null
  br i1 %.not195, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit
  %i.md = load i64, ptr %i.z, align 8, !tbaa !756
  %i.me = load ptr, ptr %21, align 8, !tbaa !755
  %i.mf = getelementptr i8, ptr %i.me, i64 %i.md
  %i.mg = getelementptr i8, ptr %i.mf, i64 -1
  store i8 1, ptr %i.mg, align 1, !tbaa !489
  %i.mh = or disjoint i32 %.0, -2147483640
  %i.mi = or disjoint i32 %i.de, 3604488
  %.sroa.0466.0 = select i1 %.0188, i32 %i.mh, i32 %i.mi
  %i.mj = load ptr, ptr %i.ar, align 8, !tbaa !332
  %i.mk = zext i32 %.sroa.0466.0 to i64
  %i.ml = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.mj, i64 noundef %i.mk, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.ml, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.ml, 1
  %i.mm = ptrtoint ptr %.sroa.19.6 to i64
  %i.mn = ptrtoint ptr %.sroa.0480.6 to i64       ; 3 uses
  %i.mo = sub i64 %i.mm, %i.mn                    ; 4 uses
  %i.mp = ashr exact i64 %i.mo, 4                 ; 3 uses
  %i.mq = getelementptr i8, ptr %.sroa.0480.6, i64 %i.mo ; 2 uses
  %i.mr = getelementptr i8, ptr %i.mq, i64 -16
  store ptr %.fca.0.extract6, ptr %i.mr, align 8, !tbaa !346
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.mq, i64 -8
  store i32 %.fca.1.extract7, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !348
  %.not.i302 = icmp eq ptr %.sroa.19.6, %.sroa.41.6
  br i1 %.not.i302, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %.sroa.0438.0, ptr %.sroa.19.6, align 8, !tbaa !346
  %.sroa.8440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24
  store i32 %.sroa.8440.0, ptr %.sroa.8440.0..sroa_idx, align 8, !tbaa !348
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 32
  br label %.critedge

bb.am:                                            ; preds = %bb.ak
  %i.mt = icmp eq i64 %i.mo, 9223372036854775792
  br i1 %i.mt, label %bb.an, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i303

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i303: ; preds = %bb.am
  %.sroa.speculated.i.i.i304 = call i64 @llvm.umax.i64(i64 %i.mp, i64 1)
  %i.mu = add nsw i64 %.sroa.speculated.i.i.i304, %i.mp ; 2 uses
  %i.mv = icmp ult i64 %i.mu, %i.mp
  %i.mw = call i64 @llvm.umin.i64(i64 %i.mu, i64 576460752303423487)
  %i.mx = select i1 %i.mv, i64 576460752303423487, i64 %i.mw ; 3 uses
  %.not.i.i.i305 = icmp ne i64 %i.mx, 0
  call void @llvm.assume(i1 %.not.i.i.i305)
  %i.my = shl nuw nsw i64 %i.mx, 4
  %i.mz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.my) #26 ; 6 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mo ; 2 uses
  store ptr %.sroa.0438.0, ptr %i.na, align 8, !tbaa !346
  %.sroa.8440.0..sroa_idx441 = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store i32 %.sroa.8440.0, ptr %.sroa.8440.0..sroa_idx441, align 8, !tbaa !348
  %.not10.i.i.i.i.i306 = icmp eq ptr %.sroa.0480.6, %.sroa.41.6
  br i1 %.not10.i.i.i.i.i306, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314, label %.lr.ph.i.i.i.i.i307.preheader

.lr.ph.i.i.i.i.i307.preheader:                    ; preds = %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i303
  %i.nb = sub i64 %.0.lcssa.i.i.i.i.i.pn721, %i.mn ; 2 uses
  %i.nc = lshr i64 %i.nb, 4
  %i.nd = add nuw nsw i64 %i.nc, 1
  %xtraiter722 = and i64 %i.nd, 3                 ; 2 uses
  %lcmp.mod723.not = icmp eq i64 %xtraiter722, 0
  br i1 %lcmp.mod723.not, label %.lr.ph.i.i.i.i.i307.prol.loopexit, label %.lr.ph.i.i.i.i.i307.prol

.lr.ph.i.i.i.i.i307.prol:                         ; preds = %.lr.ph.i.i.i.i.i307.preheader, %.lr.ph.i.i.i.i.i307.prol
  %.012.i.i.i.i.i308.prol = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i307.prol ], [ %i.mz, %.lr.ph.i.i.i.i.i307.preheader ] ; 2 uses
  %.0911.i.i.i.i.i309.prol = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i307.prol ], [ %.sroa.0480.6, %.lr.ph.i.i.i.i.i307.preheader ] ; 2 uses
  %prol.iter724 = phi i64 [ %prol.iter724.next, %.lr.ph.i.i.i.i.i307.prol ], [ 0, %.lr.ph.i.i.i.i.i307.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i308.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i309.prol, i64 16, i1 false), !tbaa.struct !375, !alias.scope !780
  %i.ne = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i309.prol, i64 16 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i308.prol, i64 16 ; 3 uses
  %prol.iter724.next = add i64 %prol.iter724, 1   ; 2 uses
  %prol.iter724.cmp.not = icmp eq i64 %prol.iter724.next, %xtraiter722
  br i1 %prol.iter724.cmp.not, label %.lr.ph.i.i.i.i.i307.prol.loopexit, label %.lr.ph.i.i.i.i.i307.prol, !llvm.loop !784

.lr.ph.i.i.i.i.i307.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i307.prol, %.lr.ph.i.i.i.i.i307.preheader
  %.lcssa718.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i307.preheader ], [ %i.nf, %.lr.ph.i.i.i.i.i307.prol ]
  %.012.i.i.i.i.i308.unr = phi ptr [ %i.mz, %.lr.ph.i.i.i.i.i307.preheader ], [ %i.nf, %.lr.ph.i.i.i.i.i307.prol ]
  %.0911.i.i.i.i.i309.unr = phi ptr [ %.sroa.0480.6, %.lr.ph.i.i.i.i.i307.preheader ], [ %i.ne, %.lr.ph.i.i.i.i.i307.prol ]
  %i.ng = icmp ult i64 %i.nb, 48
  br i1 %i.ng, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314, label %.lr.ph.i.i.i.i.i307

.lr.ph.i.i.i.i.i307:                              ; preds = %.lr.ph.i.i.i.i.i307.prol.loopexit, %.lr.ph.i.i.i.i.i307
  %.012.i.i.i.i.i308 = phi ptr [ %i.no, %.lr.ph.i.i.i.i.i307 ], [ %.012.i.i.i.i.i308.unr, %.lr.ph.i.i.i.i.i307.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i309 = phi ptr [ %i.nn, %.lr.ph.i.i.i.i.i307 ], [ %.0911.i.i.i.i.i309.unr, %.lr.ph.i.i.i.i.i307.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i308, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i309, i64 16, i1 false), !tbaa.struct !375, !alias.scope !780
  %i.nh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i309, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i308, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ni, ptr noundef nonnull align 8 dereferenceable(16) %i.nh, i64 16, i1 false), !tbaa.struct !375, !alias.scope !780
  %i.nj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i309, i64 32
  %i.nk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i308, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, ptr noundef nonnull align 8 dereferenceable(16) %i.nj, i64 16, i1 false), !tbaa.struct !375, !alias.scope !780
  %i.nl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i309, i64 48 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i308, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nm, ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i64 16, i1 false), !tbaa.struct !375, !alias.scope !780
  %i.nn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i309, i64 64
  %i.no = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i308, i64 64 ; 2 uses
  %.not.i.i.i.i.i310.3 = icmp eq ptr %i.nl, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i310.3, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314, label %.lr.ph.i.i.i.i.i307, !llvm.loop !506

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314: ; preds = %.lr.ph.i.i.i.i.i307.prol.loopexit, %.lr.ph.i.i.i.i.i307, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i303
  %.0.lcssa.i.i.i.i.i312 = phi ptr [ %i.mz, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i303 ], [ %.lcssa718.unr, %.lr.ph.i.i.i.i.i307.prol.loopexit ], [ %i.no, %.lr.ph.i.i.i.i.i307 ]
  %i.np = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i312, i64 16
  %i.nq = ptrtoint ptr %.sroa.41.6 to i64
  %i.nr = sub i64 %i.nq, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0480.6, i64 noundef %i.nr) #27
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %i.mx
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit, %bb.h, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit236, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit, %bb.al, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314, %bb.x, %bb.y, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit221
  %.sroa.9455.5 = phi i32 [ %.sroa.9455.1614, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.9455.2, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit ], [ %.sroa.9455.1614, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit221 ], [ %.sroa.9455.1614, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit236 ], [ %.sroa.9455.1614, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit ], [ %.sroa.9455.1614, %bb.x ], [ %.sroa.9455.1614, %bb.y ], [ %.sroa.9455.2, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314 ], [ %.sroa.9455.2, %bb.al ], [ %.sroa.9455.1614, %bb.h ] ; 3 uses
  %.sroa.0452.5 = phi ptr [ %.sroa.0452.1615, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0452.2, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit ], [ %.sroa.0452.1615, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit221 ], [ %.sroa.0452.1615, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit236 ], [ %.sroa.0452.1615, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit ], [ %.sroa.0452.1615, %bb.x ], [ %.sroa.0452.1615, %bb.y ], [ %.sroa.0452.2, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314 ], [ %.sroa.0452.2, %bb.al ], [ %.sroa.0452.1615, %bb.h ] ; 4 uses
  %.sroa.41.4 = phi ptr [ %.sroa.41.6, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.41.6, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit ], [ %.sroa.41.7, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit221 ], [ %.sroa.41.8, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit236 ], [ %.sroa.41.6, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit ], [ %.sroa.41.6, %bb.x ], [ %.sroa.41.6, %bb.y ], [ %i.ns, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314 ], [ %.sroa.41.6, %bb.al ], [ %.sroa.41.6, %bb.h ] ; 7 uses
  %.sroa.19.4 = phi ptr [ %.sroa.19.6, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.19.6, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit ], [ %.sroa.19.7, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit221 ], [ %.sroa.19.8, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit236 ], [ %.sroa.19.6, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit ], [ %.sroa.19.6, %bb.x ], [ %.sroa.19.6, %bb.y ], [ %i.np, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314 ], [ %i.ms, %bb.al ], [ %.sroa.19.6, %bb.h ] ; 7 uses
  %.sroa.0480.4 = phi ptr [ %.sroa.0480.6, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0480.6, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit ], [ %.sroa.0480.7, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit221 ], [ %.sroa.0480.8, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit236 ], [ %.sroa.0480.6, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit ], [ %.sroa.0480.6, %bb.x ], [ %.sroa.0480.6, %bb.y ], [ %i.mz, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314 ], [ %.sroa.0480.6, %bb.al ], [ %.sroa.0480.6, %bb.h ] ; 6 uses
  %.4 = phi i32 [ %.0183619, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ], [ %.0183619, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit ], [ %i.dg, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit221 ], [ %i.ff, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit236 ], [ %.0183619, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit ], [ %.0183619, %bb.x ], [ %.0183619, %bb.y ], [ %i.gs, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314 ], [ %i.gs, %bb.al ], [ %.0183619, %bb.h ]
  %.3 = phi i8 [ %.0182620, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ], [ 1, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit ], [ %.0182620, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit221 ], [ %.0182620, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit236 ], [ %.0182620, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit ], [ %.0182620, %bb.x ], [ %.0182620, %bb.y ], [ 1, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i314 ], [ 1, %bb.al ], [ %.0182620, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.nt = add i32 %.4, 1                          ; 2 uses
  %i.nu = icmp ult i32 %i.nt, %i.al
  br i1 %i.nu, label %bb.c, label %._crit_edge, !llvm.loop !785

bb.ao:                                            ; preds = %._crit_edge
  %.not.i316 = icmp eq ptr %.sroa.19.4, %.sroa.41.4
  br i1 %.not.i316, label %.thread, label %.split

.split:                                           ; preds = %bb.ao
  store ptr %.sroa.0452.5, ptr %.sroa.19.4, align 8, !tbaa !346
  %.sroa.9455.0..sroa_idx456 = getelementptr inbounds nuw i8, ptr %.sroa.19.4, i64 8
  store i32 %.sroa.9455.5, ptr %.sroa.9455.0..sroa_idx456, align 8, !tbaa !348
  %.sroa.11460.0..sroa_idx461 = getelementptr inbounds nuw i8, ptr %.sroa.19.4, i64 12
  store i32 %.sroa.11460.0.ph, ptr %.sroa.11460.0..sroa_idx461, align 4
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.19.4, i64 16
  br i1 %i.bx, label %bb.ar, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.ao
  %.sroa.9455.1.lcssa655673 = phi i32 [ %.sroa.9455.5, %bb.ao ], [ %.sroa.9455.0.ph, %._crit_edge.thread ]
  %.sroa.0452.1.lcssa656672 = phi ptr [ %.sroa.0452.5, %bb.ao ], [ %.sroa.0452.0.ph, %._crit_edge.thread ]
  %.sroa.41.0.lcssa657671 = phi ptr [ %.sroa.41.4, %bb.ao ], [ null, %._crit_edge.thread ] ; 3 uses
  %.sroa.0480.0.lcssa659670 = phi ptr [ %.sroa.0480.4, %bb.ao ], [ null, %._crit_edge.thread ] ; 5 uses
  %.0182.lcssa660669 = phi i1 [ %i.bx, %bb.ao ], [ false, %._crit_edge.thread ]
  %i.nw = ptrtoint ptr %.sroa.41.0.lcssa657671 to i64
  %i.nx = ptrtoint ptr %.sroa.0480.0.lcssa659670 to i64
  %i.ny = sub i64 %i.nw, %i.nx                    ; 4 uses
  %i.nz = icmp eq i64 %i.ny, 9223372036854775792
  br i1 %i.nz, label %bb.ap, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i317

bb.ap:                                            ; preds = %.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i317: ; preds = %.thread
  %i.oa = ashr exact i64 %i.ny, 4                 ; 3 uses
  %.sroa.speculated.i.i.i318 = call i64 @llvm.umax.i64(i64 %i.oa, i64 1)
  %i.ob = add nsw i64 %.sroa.speculated.i.i.i318, %i.oa ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.oa
  %i.od = call i64 @llvm.umin.i64(i64 %i.ob, i64 576460752303423487)
  %i.oe = select i1 %i.oc, i64 576460752303423487, i64 %i.od ; 3 uses
  %.not.i.i.i319 = icmp ne i64 %i.oe, 0
  call void @llvm.assume(i1 %.not.i.i.i319)
  %i.of = shl nuw nsw i64 %i.oe, 4
  %i.og = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.of) #26 ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ny ; 3 uses
  store ptr %.sroa.0452.1.lcssa656672, ptr %i.oh, align 8, !tbaa !346
  %.sroa.9455.0..sroa_idx458 = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i32 %.sroa.9455.1.lcssa655673, ptr %.sroa.9455.0..sroa_idx458, align 8, !tbaa !348
  %.sroa.11460.0..sroa_idx463 = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store i32 %.sroa.11460.0.ph, ptr %.sroa.11460.0..sroa_idx463, align 4
  %.not10.i.i.i.i.i320 = icmp eq ptr %.sroa.0480.0.lcssa659670, %.sroa.41.0.lcssa657671
  br i1 %.not10.i.i.i.i.i320, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i325, label %.lr.ph.i.i.i.i.i321

.lr.ph.i.i.i.i.i321:                              ; preds = %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i317, %.lr.ph.i.i.i.i.i321
  %.012.i.i.i.i.i322 = phi ptr [ %i.oj, %.lr.ph.i.i.i.i.i321 ], [ %i.og, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i317 ] ; 2 uses
  %.0911.i.i.i.i.i323 = phi ptr [ %i.oi, %.lr.ph.i.i.i.i.i321 ], [ %.sroa.0480.0.lcssa659670, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i317 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i322, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i323, i64 16, i1 false), !tbaa.struct !375, !alias.scope !786
  %i.oi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i323, i64 16 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i322, i64 16 ; 2 uses
  %.not.i.i.i.i.i324 = icmp eq ptr %i.oi, %.sroa.41.0.lcssa657671
  br i1 %.not.i.i.i.i.i324, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i325, label %.lr.ph.i.i.i.i.i321, !llvm.loop !506

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i325: ; preds = %.lr.ph.i.i.i.i.i321, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i317
  %.0.lcssa.i.i.i.i.i326 = phi ptr [ %i.og, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i317 ], [ %i.oj, %.lr.ph.i.i.i.i.i321 ]
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i326, i64 16
  %.not.i23.i.i327 = icmp eq ptr %.sroa.0480.0.lcssa659670, null
  br i1 %.not.i23.i.i327, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i325
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0480.0.lcssa659670, i64 noundef %i.ny) #27
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328: ; preds = %bb.aq, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i325
  %i.ol = getelementptr inbounds nuw [16 x i8], ptr %i.og, i64 %i.oe ; 2 uses
  br i1 %.0182.lcssa660669, label %bb.ar, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329.thread

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329: ; preds = %._crit_edge
  br i1 %i.bx, label %bb.ar, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329.thread

bb.ar:                                            ; preds = %.split, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329
  %.sroa.0480.5684 = phi ptr [ %i.og, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328 ], [ %.sroa.0480.4, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329 ], [ %.sroa.0480.4, %.split ] ; 3 uses
  %.sroa.19.5683 = phi ptr [ %i.ok, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328 ], [ %.sroa.19.4, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329 ], [ %i.nv, %.split ]
  %.sroa.41.5682 = phi ptr [ %i.ol, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328 ], [ %.sroa.41.4, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329 ], [ %.sroa.41.4, %.split ]
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !332 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !334
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.oq = load i64, ptr %i.d, align 8, !tbaa !371
  store i64 %i.oq, ptr %27, align 8, !tbaa !371
  %i.or = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.os = load i32, ptr %i.g, align 4, !tbaa !372
  store i32 %i.os, ptr %i.or, align 8, !tbaa !373
  %i.ot = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.on, i16 1, ptr null, i16 249, ptr null) #24 ; 2 uses
  %i.ou = extractvalue { ptr, i32 } %i.ot, 0
  %i.ov = extractvalue { ptr, i32 } %i.ot, 1
  store ptr %.sroa.0480.5684, ptr %28, align 8, !tbaa !377
  %i.ow = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ox = ptrtoint ptr %.sroa.19.5683 to i64
  %i.oy = ptrtoint ptr %.sroa.0480.5684 to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = ashr exact i64 %i.oz, 4
  store i64 %i.pa, ptr %i.ow, align 8, !tbaa !380
  %i.pb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.on, i32 noundef %i.op, ptr noundef nonnull align 8 dereferenceable(12) %27, ptr %i.ou, i32 %i.ov, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %28) #24
  %.fca.0.extract = extractvalue { ptr, i32 } %i.pb, 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.pc = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 36
  store i32 -1, ptr %i.pc, align 4, !tbaa !376
  %i.pd = load ptr, ptr %i.om, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.pd, ptr noundef nonnull %1, ptr noundef %.fca.0.extract) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract) #24
  %i.pe = load ptr, ptr %i.om, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.pe, ptr noundef nonnull %1) #24
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329.thread

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329.thread: ; preds = %._crit_edge.thread, %._crit_edge.thread.thread, %.split, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329, %bb.ar
  %i.pf = phi ptr [ %i.y, %.split ], [ %i.y, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329 ], [ %i.y, %bb.ar ], [ %i.y, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328 ], [ %i.am, %._crit_edge.thread.thread ], [ %i.y, %._crit_edge.thread ]
  %.sroa.0480.5680 = phi ptr [ %.sroa.0480.4, %.split ], [ %.sroa.0480.4, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329 ], [ %.sroa.0480.5684, %bb.ar ], [ %i.og, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328 ], [ null, %._crit_edge.thread.thread ], [ null, %._crit_edge.thread ] ; 3 uses
  %.sroa.41.5679 = phi ptr [ %.sroa.41.4, %.split ], [ %.sroa.41.4, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329 ], [ %.sroa.41.5682, %bb.ar ], [ %i.ol, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328 ], [ null, %._crit_edge.thread.thread ], [ null, %._crit_edge.thread ]
  %.0182.lcssa661678 = phi i1 [ false, %.split ], [ false, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329 ], [ true, %bb.ar ], [ false, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i328 ], [ false, %._crit_edge.thread.thread ], [ false, %._crit_edge.thread ]
  %i.pg = load ptr, ptr %21, align 8, !tbaa !755  ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.pf
  br i1 %i.ph, label %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329.thread
  call void @free(ptr noundef %i.pg) #24
  br label %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit

_ZN4llvm11SmallVectorIbLj8EED2Ev.exit:            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit329.thread, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %.not.i.i.i330 = icmp eq ptr %.sroa.0480.5680, null
  br i1 %.not.i.i.i330, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit331, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit
  %i.pi = ptrtoint ptr %.sroa.41.5679 to i64
  %i.pj = ptrtoint ptr %.sroa.0480.5680 to i64
  %i.pk = sub i64 %i.pi, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0480.5680, i64 noundef %i.pk) #27
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit331

_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit331: ; preds = %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit, %bb.at
  ret i1 %.0182.lcssa661678
}

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #8

declare noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef byval(%"class.llvm::ArrayRef") align 8) local_unnamed_addr #8

declare void @_ZN4llvm18MachinePointerInfo15getConstantPoolERNS_15MachineFunctionE(ptr dead_on_unwind writable sret(%"struct.llvm::MachinePointerInfo") align 8, ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16MachineFrameInfo18setObjectAlignmentEiNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 noundef %1, i8 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !455
  %i.d = add i32 %i.c, %1
  %i.e = zext i32 %i.d to i64
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !475
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 %2, ptr %i.h, align 8, !tbaa !361
  %i.i = load i32, ptr %i.b, align 8, !tbaa !455
  %i.j = add i32 %i.i, %1
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !475
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.o = load i8, ptr %i.n, align 1, !tbaa !681
  switch i8 %i.o, label %bb.c [
    i8 4, label %bb.b
    i8 2, label %bb.b
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @_ZN4llvm16MachineFrameInfo18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(728) %0, i8 %2) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, i32 noundef, i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #8

declare noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, i32 noundef, i16, ptr, ptr noundef byval(%"class.llvm::ArrayRef") align 8) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel18tryInsertVectorEltEPN4llvm6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 14 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel18tryInsertVectorEltEPN4llvm6SDNodeE:bb.a
  %i.ci = zext i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %.sroa.0.0.copyload.i.i122 = load i16, ptr %i.cj, align 8, !tbaa !352 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i123 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.21.0.copyload.i.i124 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i123, align 8, !tbaa !354
  %.not.i.i127 = icmp eq i16 %.sroa.0.0.copyload.i.i122, 112
  %i.ck = icmp eq ptr %.sroa.21.0.copyload.i.i124, null
  %.not.i.i133 = icmp eq i16 %.sroa.0.0.copyload.i.i122, 62
  %i.cl = or i1 %.not.i.i127, %.not.i.i133
  %or.cond262 = select i1 %i.cl, i1 %i.ck, i1 false
  br i1 %or.cond262, label %bb.q, label %.critedge2

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !349 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !370 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !351
  %i.cr = zext i32 %i.co to i64
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %.sroa.0.0.copyload.i.i135 = load i16, ptr %i.cs, align 8, !tbaa !352 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i136 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.21.0.copyload.i.i137 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i136, align 8, !tbaa !354
  %.not.i.i140 = icmp eq i16 %.sroa.0.0.copyload.i.i135, 112
  %i.ct = icmp eq ptr %.sroa.21.0.copyload.i.i137, null
  %.not.i.i147 = icmp eq i16 %.sroa.0.0.copyload.i.i135, 62
  %i.cu = or i1 %.not.i.i140, %.not.i.i147
  %or.cond263 = select i1 %i.cu, i1 %i.ct, i1 false
  br i1 %or.cond263, label %.critedge4, label %.critedge2

.critedge4:                                       ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !356 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !359
  %i.da = icmp ult i32 %i.cz, 65
  %i.db = load ptr, ptr %i.cx, align 8
  %spec.select.i.i.i.i.i149 = select i1 %i.da, ptr %i.cx, ptr %i.db
  %.0.i.i.i.i.i150 = load i64, ptr %spec.select.i.i.i.i.i149, align 8, !tbaa !361
  %i.dc = trunc i64 %.0.i.i.i.i.i150 to i32       ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !356 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !359
  %i.di = icmp ult i32 %i.dh, 65
  %i.dj = load ptr, ptr %i.df, align 8
  %spec.select.i.i.i.i.i151 = select i1 %i.di, ptr %i.df, ptr %i.dj
  %.0.i.i.i.i.i152 = load i64, ptr %spec.select.i.i.i.i.i151, align 8, !tbaa !361
  %i.dk = trunc i64 %.0.i.i.i.i.i152 to i32       ; 4 uses
  %i.dl = icmp eq ptr %i.cd, %i.cm
  %i.dm = icmp eq i32 %i.cf, %i.co
  %i.dn = and i1 %i.dl, %i.dm
  %i.do = and i32 %i.dk, 1
  %i.dp = icmp eq i32 %i.do, 0                    ; 2 uses
  %or.cond105 = and i1 %i.dn, %i.dp
  %i.dq = or disjoint i32 %i.dk, 1
  %i.dr = icmp eq i32 %i.dq, %i.dc
  %or.cond107 = select i1 %or.cond105, i1 %i.dr, i1 false
  br i1 %or.cond107, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge4
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !332
  %i.du = lshr exact i32 %i.dk, 1
  %i.dv = add nuw i32 %i.du, 17
  %i.dw = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.dt, i32 noundef %i.dv, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bs) #24 ; 2 uses
  %.fca.0.extract70 = extractvalue { ptr, i32 } %i.dw, 0
  %.fca.1.extract71 = extractvalue { ptr, i32 } %i.dw, 1
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !332
  %i.dy = lshr exact i32 %i.bd, 1
  %i.dz = add nuw i32 %i.dy, 17
  %i.ea = load ptr, ptr %i.ab, align 8, !tbaa !345
  store ptr %.fca.0.extract70, ptr %3, align 8, !tbaa !346
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract71, ptr %.sroa.475.0..sroa_idx, align 8, !tbaa !348
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG21getTargetInsertSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.dx, i32 noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ea, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3) #24 ; 2 uses
  %.fca.0.extract60 = extractvalue { ptr, i32 } %i.eb, 0 ; 2 uses
  %.fca.1.extract61 = extractvalue { ptr, i32 } %i.eb, 1
  %i.ec = load ptr, ptr %i.ds, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ec, ptr %1, i32 0, ptr %.fca.0.extract60, i32 %.fca.1.extract61) #24
  br label %.critedge.sink.split

bb.s:                                             ; preds = %.critedge4
  switch i16 %.sroa.0.0.copyload.i.i, label %.critedge [
    i16 62, label %bb.t
    i16 112, label %bb.z
  ]

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 389
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !609, !range !18, !noundef !19
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !332
  %i.ei = lshr i32 %i.dc, 1
  %i.ej = add nuw i32 %i.ei, 17
  %i.ek = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.eh, i32 noundef %i.ej, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bs) #24 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.ek, 0 ; 2 uses
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.ek, 1 ; 2 uses
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !332
  %i.em = lshr i32 %i.dk, 1
  %i.en = add nuw i32 %i.em, 17
  %i.eo = load ptr, ptr %i.bx, align 8, !tbaa !345
  %i.ep = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.el, i32 noundef %i.en, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.eo) #24 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.ep, 0 ; 2 uses
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.ep, 1 ; 2 uses
  %i.eq = and i32 %i.dc, 1
  %.not101 = icmp eq i32 %i.eq, 0
  br i1 %.not101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = load ptr, ptr %i.eg, align 8, !tbaa !332
  store ptr %.fca.0.extract39, ptr %4, align 8, !tbaa !346
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract40, ptr %.sroa.646.0..sroa_idx, align 8, !tbaa !348
  %i.es = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.er, i32 noundef 3031, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.043.0 = phi ptr [ %i.es, %bb.v ], [ %.fca.0.extract39, %bb.u ]
  %.sroa.646.0 = phi i32 [ 0, %bb.v ], [ %.fca.1.extract40, %bb.u ]
  br i1 %i.dp, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = load ptr, ptr %i.eg, align 8, !tbaa !332
  store ptr %.fca.0.extract25, ptr %5, align 8, !tbaa !346
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract26, ptr %.sroa.632.0..sroa_idx, align 8, !tbaa !348
  %i.eu = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.et, i32 noundef 3031, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.029.0 = phi ptr [ %i.eu, %bb.x ], [ %.fca.0.extract25, %bb.w ]
  %.sroa.632.0 = phi i32 [ 0, %bb.x ], [ %.fca.1.extract26, %bb.w ]
  %i.ev = load ptr, ptr %i.eg, align 8, !tbaa !332
  store ptr %.sroa.029.0, ptr %6, align 8, !tbaa !346
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.632.0, ptr %.sroa.632.0..sroa_idx33, align 8, !tbaa !348
  store ptr %.sroa.043.0, ptr %7, align 8, !tbaa !346
  %.sroa.646.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.646.0, ptr %.sroa.646.0..sroa_idx47, align 8, !tbaa !348
  %i.ew = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ev, i32 noundef 2540, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #24
  %i.ex = load ptr, ptr %i.eg, align 8, !tbaa !332
  %i.ey = lshr exact i32 %i.bd, 1
  %i.ez = add nuw i32 %i.ey, 17
  %i.fa = load ptr, ptr %i.ab, align 8, !tbaa !345
  store ptr %i.ew, ptr %8, align 8, !tbaa !349
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.fb, align 8, !tbaa !370
  %i.fc = call { ptr, i32 } @_ZN4llvm12SelectionDAG21getTargetInsertSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ex, i32 noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 136, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fa, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #24 ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.fc, 0 ; 2 uses
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.fc, 1
  %i.fd = load ptr, ptr %i.eg, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.fd, ptr %1, i32 0, ptr %.fca.0.extract17, i32 %.fca.1.extract18) #24
  br label %.critedge.sink.split

.critedge2:                                       ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.not.i.i155 = icmp eq i16 %.sroa.0.0.copyload.i.i, 112
  br i1 %.not.i.i155, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.s, %.critedge2
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 389
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !609, !range !18, !noundef !19
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !332
  store ptr %.sroa.0200.0.copyload, ptr %9, align 8, !tbaa !346
  %.sroa.13.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bk, ptr %.sroa.13.0..sroa_idx210, align 8
  store ptr %.sroa.0211.0.copyload, ptr %10, align 8, !tbaa !346
  %.sroa.14.0..sroa_idx222 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bi, ptr %.sroa.14.0..sroa_idx222, align 8
  %i.fj = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.fi, i32 noundef 2540, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #24
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !332
  %i.fl = lshr exact i32 %i.bd, 1
  %i.fm = add nuw i32 %i.fl, 17
  %i.fn = load ptr, ptr %i.ab, align 8, !tbaa !345
  store ptr %i.fj, ptr %11, align 8, !tbaa !349
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.fo, align 8, !tbaa !370
  %i.fp = call { ptr, i32 } @_ZN4llvm12SelectionDAG21getTargetInsertSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.fk, i32 noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 136, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fn, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.fp, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.fp, 1
  %i.fq = load ptr, ptr %i.fh, align 8, !tbaa !332
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.fq, ptr %1, i32 0, ptr %.fca.0.extract, i32 %.fca.1.extract) #24
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.r, %bb.y, %bb.aa
  %.fca.0.extract.sink = phi ptr [ %.fca.0.extract, %bb.aa ], [ %.fca.0.extract17, %bb.y ], [ %.fca.0.extract60, %bb.r ]
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract.sink) #24
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i, %.critedge.sink.split, %bb.s, %bb.g, %bb.f, %bb.e, %bb.t, %bb.c, %bb.k, %bb.j, %bb.z, %.critedge2, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.b, %bb.i, %bb.h
  %.3 = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.c ], [ false, %bb.s ], [ false, %bb.b ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ false, %bb.e ], [ false, %bb.f ], [ false, %.critedge2 ], [ true, %.critedge.sink.split ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.z ], [ false, %bb.t ], [ false, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %.critedge
  %.4 = phi i1 [ %.3, %.critedge ], [ false, %bb.a ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel24tryV6T2BitfieldExtractOpEPN4llvm6SDNodeEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 20 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %6 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %7 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %9 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %10 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %11 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %12 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %13 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %14 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %16 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %17 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 418
  %i.d = load i8, ptr %i.c, align 2, !tbaa !213, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 461
  %i.g = load i8, ptr %i.f, align 1, !tbaa !331, !range !18, !noundef !19
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = select i1 %i.h, i32 4273, i32 1925
  %i.j = select i1 %i.h, i32 4411, i32 2081
  %i.k = select i1 %2, i32 %i.i, i32 %i.j         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !371
  store i64 %i.m, ptr %3, align 8, !tbaa !371
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !372
  store i32 %i.p, ptr %i.n, align 8, !tbaa !373
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !334  ; 2 uses
  %i.s = icmp eq i32 %i.r, 193
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !345  ; 6 uses
  br i1 %i.s, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !349  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !334
  %i.z = icmp eq i32 %i.y, 12
  br i1 %i.z, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !351 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ab, align 8, !tbaa !352
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !354
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 7
  %i.ac = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null
  %.not4.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ac, i1 false
  br i1 %.not4.i.i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !356 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !359
  %i.ai = icmp ult i32 %i.ah, 65
  %i.aj = load ptr, ptr %i.af, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.ai, ptr %i.af, ptr %i.aj
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !361
  %i.ak = trunc i64 %.0.i.i.i.i.i.i to i32        ; 3 uses
  %i.al = add i32 %i.ak, 1
  %i.am = and i32 %i.al, %i.ak
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !349 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !334
  %i.aq = icmp eq i32 %i.ap, 200
  br i1 %i.aq, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !345
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !349 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !334
  %i.ax = icmp eq i32 %i.aw, 12
  br i1 %i.ax, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !351 ; 2 uses
  %.sroa.0.0.copyload.i.i.i173 = load i16, ptr %i.az, align 8, !tbaa !352
  %.sroa.21.0..sroa_idx.i.i.i174 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.21.0.copyload.i.i.i175 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i174, align 8, !tbaa !354
  %.not.i.i.i.i176 = icmp eq i16 %.sroa.0.0.copyload.i.i.i173, 7
  %i.ba = icmp eq ptr %.sroa.21.0.copyload.i.i.i175, null
  %.not4.i.i.i177 = select i1 %.not.i.i.i.i176, i1 %i.ba, i1 false
  br i1 %.not4.i.i.i177, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !356 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !359
  %i.bg = icmp ult i32 %i.bf, 65
  %i.bh = load ptr, ptr %i.bd, align 8
  %spec.select.i.i.i.i.i.i178 = select i1 %i.bg, ptr %i.bd, ptr %i.bh
  %.0.i.i.i.i.i.i179 = load i64, ptr %spec.select.i.i.i.i.i.i178, align 8, !tbaa !361 ; 4 uses
  %i.bi = trunc i64 %.0.i.i.i.i.i.i179 to i32     ; 2 uses
  %i.bj = lshr i32 -1, %i.bi
  %i.bk = and i32 %i.bj, %i.ak
  %i.bl = xor i32 %i.bk, -1
  %i.bm = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bl, i1 false) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !332
  %i.bp = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bo, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract107 = extractvalue { ptr, i32 } %i.bp, 0 ; 5 uses
  %.fca.1.extract108 = extractvalue { ptr, i32 } %i.bp, 1 ; 5 uses
  %i.bq = add i32 %i.bm, %i.bi
  %i.br = zext i32 %i.bq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !351 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.bt, align 8, !tbaa !352 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !354
  store i16 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.bu, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = zext i16 %.sroa.0.0.copyload.i to i64
  %i.bw = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bv ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bx, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bw, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.k:                                             ; preds = %bb.i
  %i.by = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.j, %bb.k
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i, %bb.j ], [ %i.by, %bb.k ] ; 2 uses
  %.fca.1.extract104 = extractvalue { i64, i8 } %.pn.i, 1
  %i.bz = trunc nuw i8 %.fca.1.extract104 to i1
  br i1 %i.bz, label %bb.l, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.l:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.34) #25
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract103 = extractvalue { i64, i8 } %.pn.i, 0
  %i.ca = icmp eq i64 %.fca.0.extract103, %i.br
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.ca, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 461
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !331, !range !18, !noundef !19
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = select i1 %2, i32 4059, i32 4192
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !345
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !349
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %i.cj, i64 12, i1 false), !tbaa.struct !375
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !332
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel17tryShiftAmountModEPN4llvm6SDNodeE:bb.a
  br i1 %i.ck, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 410
  %i.cm = load i8, ptr %i.cl, align 2, !range !18
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !332
  %i.cq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.cp, i32 3, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.cq, 0
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.cq, 1
  store ptr %.fca.0.extract44, ptr %3, align 16
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.247.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = load ptr, ptr %i.e, align 8, !tbaa !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cr, ptr noundef nonnull align 8 dereferenceable(12) %i.cs, i64 12, i1 false), !tbaa.struct !375
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sroa.0141.0, ptr %i.ct, align 16, !tbaa !346
  %.sroa.9.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx144, align 8, !tbaa !348
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !332
  %i.cw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cv, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.cw, 0
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.cw, 1
  store ptr %.fca.0.extract40, ptr %i.cu, align 16
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %.fca.1.extract41, ptr %.sroa.243.0..sroa_idx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !332
  %i.cz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.cy, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.cz, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.cz, 1
  store ptr %.fca.0.extract36, ptr %i.cx, align 16
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 %.fca.1.extract37, ptr %.sroa.239.0..sroa_idx, align 8
  %i.da = load ptr, ptr %i.co, align 8, !tbaa !332
  store ptr %3, ptr %4, align 8, !tbaa !377
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.db, align 8, !tbaa !380
  %i.dc = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.da, ptr noundef nonnull %1, i32 noundef 4506, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %4) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %i.dd, i64 12, i1 false), !tbaa.struct !375
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.0141.0, ptr %i.de, align 16, !tbaa !346
  %.sroa.9.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx146, align 8, !tbaa !348
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !332
  %i.di = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dh, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.di, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.di, 1
  store ptr %.fca.0.extract29, ptr %i.df, align 16
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %.fca.1.extract30, ptr %.sroa.232.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !332
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.dk, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.dl, 0
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.dl, 1
  store ptr %.fca.0.extract25, ptr %i.dj, align 16
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %.fca.1.extract26, ptr %.sroa.228.0..sroa_idx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !332
  %i.do = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.dn, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.do, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.do, 1
  store ptr %.fca.0.extract21, ptr %i.dm, align 16
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 %.fca.1.extract22, ptr %.sroa.224.0..sroa_idx, align 8
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !332
  store ptr %5, ptr %6, align 8, !tbaa !377
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.dq, align 8, !tbaa !380
  %i.dr = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.dp, ptr noundef nonnull %1, i32 noundef 4261, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %6) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.critedge

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 16, i1 false), !tbaa.struct !375
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !332
  %i.dv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.du, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.dv, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.dv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !375
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sroa.0141.0, ptr %i.dw, align 16, !tbaa !346
  %.sroa.4.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.sroa.9.0, ptr %.sroa.4.0..sroa_idx149, align 8, !tbaa !348
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %.fca.0.extract13, ptr %i.dx, align 16, !tbaa !346
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %.fca.1.extract14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !348
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !332
  %i.ea = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dz, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.ea, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.ea, 1
  store ptr %.fca.0.extract9, ptr %i.dy, align 16
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i32 %.fca.1.extract10, ptr %.sroa.212.0..sroa_idx, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !332
  %i.ed = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ec, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.ed, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.ed, 1
  store ptr %.fca.0.extract5, ptr %i.eb, align 16
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ef = load ptr, ptr %i.dt, align 8, !tbaa !332
  %i.eg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ef, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.eg, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.eg, 1
  store ptr %.fca.0.extract, ptr %i.ee, align 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i32 %.fca.1.extract, ptr %.sroa.24.0..sroa_idx, align 8
  %i.eh = load ptr, ptr %i.dt, align 8, !tbaa !332
  store ptr %8, ptr %9, align 8, !tbaa !377
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 6, ptr %i.ei, align 8, !tbaa !380
  %i.ej = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.eh, ptr noundef nonnull %1, i32 noundef 1010, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %9) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.b, %bb.k, %bb.l, %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread, %bb.t, %bb.s, %bb.r
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.t ], [ true, %bb.r ], [ true, %bb.s ], [ false, %bb.l ], [ false, %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread ], [ false, %bb.k ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %.critedge
  %.2 = phi i1 [ %.1, %.critedge ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel12tryFMULFixedEPN4llvm6SDNodeENS1_5SDLocE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 394
  %i.d = load i8, ptr %i.c, align 2, !tbaa !476, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !351  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.g, align 8, !tbaa !352 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !354
  store i16 %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.h, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.b
  %i.i = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i = icmp ult i16 %i.i, 197
  br i1 %spec.select.i.i, label %bb.c, label %bb.e

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #28
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !345
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !346
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !334  ; 2 uses
  %i.o = and i32 %i.n, -2
  %switch = icmp eq i32 %i.o, 234
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %i.n, 235
  %i.q = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel37transformFixedFloatingPointConversionEPN4llvm6SDNodeES3_bb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, ptr noundef nonnull %1, i1 noundef zeroext %i.p, i1 noundef zeroext true)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %.1 = phi i1 [ false, %.split ], [ false, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %i.q, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.2 = phi i1 [ %.1, %bb.e ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_115ARMDAGToDAGISel12is_t2_so_immEj(i32 noundef %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 256
  br i1 %i.a, label %_ZN4llvm6ARM_AM13getT2SOImmValEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %0, 255
  %i.c = icmp eq i32 %i.b, 0
  %i.d = lshr i32 %0, 8
  %i.e = select i1 %i.c, i32 %i.d, i32 %0         ; 3 uses
  %i.f = and i32 %i.e, 255                        ; 2 uses
  %i.g = mul nuw nsw i32 %i.f, 65537
  %i.h = icmp eq i32 %i.e, %i.g
  %i.i = mul nuw i32 %i.f, 16843009
  %i.j = icmp eq i32 %i.e, %i.i
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %_ZN4llvm6ARM_AM13getT2SOImmValEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 true)
  %i.l = tail call i32 @llvm.fshr.i32(i32 -16777216, i32 -16777216, i32 %i.k)
  %i.m = and i32 %i.l, %0
  %i.n = icmp eq i32 %i.m, %0
  br label %_ZN4llvm6ARM_AM13getT2SOImmValEj.exit

_ZN4llvm6ARM_AM13getT2SOImmValEj.exit:            ; preds = %bb.c, %bb.b, %bb.a
  %.1.i = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.n, %bb.c ]
  ret i1 %.1.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_115ARMDAGToDAGISel16is_t2_so_imm_notEj(i32 noundef %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = xor i32 %0, -1                           ; 7 uses
  %i.b = icmp ugt i32 %0, -257
  br i1 %i.b, label %_ZN4llvm6ARM_AM13getT2SOImmValEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %0, 255
  %i.d = icmp eq i32 %i.c, 255
  %i.e = lshr i32 %i.a, 8
  %i.f = select i1 %i.d, i32 %i.e, i32 %i.a       ; 4 uses
  %i.g = and i32 %i.f, 255                        ; 4 uses
  %i.h = mul nuw nsw i32 %i.g, 65537
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.f, %i.a
  %i.k = select i1 %i.j, i32 256, i32 512
  %i.l = or disjoint i32 %i.k, %i.g
  br label %_ZN4llvm6ARM_AM13getT2SOImmValEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = mul nuw i32 %i.g, 16843009
  %i.n = icmp eq i32 %i.f, %i.m
  %i.o = or disjoint i32 %i.g, 768
  br i1 %i.n, label %_ZN4llvm6ARM_AM13getT2SOImmValEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 3 uses
  %i.q = tail call i32 @llvm.fshr.i32(i32 -16777216, i32 -16777216, i32 %i.p)
  %i.r = or i32 %i.q, %0
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN4llvm6ARM_AM13getT2SOImmValEj.exit

bb.f:                                             ; preds = %bb.e
  %i.t = sub nuw nsw i32 24, %i.p
  %i.u = tail call i32 @llvm.fshr.i32(i32 %i.a, i32 %i.a, i32 %i.t)
  %i.v = and i32 %i.u, 127
  %i.w = shl nuw nsw i32 %i.p, 7
  %i.x = add nuw nsw i32 %i.w, 1024
  %i.y = or disjoint i32 %i.v, %i.x
  br label %_ZN4llvm6ARM_AM13getT2SOImmValEj.exit

_ZN4llvm6ARM_AM13getT2SOImmValEj.exit:            ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %.1.i = phi i32 [ %i.o, %bb.d ], [ %i.a, %bb.a ], [ %i.l, %bb.c ], [ -1, %bb.e ], [ %i.y, %bb.f ]
  %i.z = icmp ne i32 %.1.i, -1
  ret i1 %i.z
}

declare noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr, i32) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel17tryMVEIndexedLoadEPN4llvm6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %15 = alloca [6 x %"class.llvm::SDValue"], align 16 ; 15 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %17 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %18 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %19 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %20 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !334  ; 2 uses
  %i.e = icmp ne i32 %i.d, 316
  %.not397 = icmp eq ptr %1, null
  %.not = or i1 %.not397, %i.e
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8
  %i.h = lshr i16 %i.g, 7
  %i.i = and i16 %i.h, 7                          ; 2 uses
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.k, align 8, !tbaa !352 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !354
  store i16 %.sroa.0.0.copyload.i, ptr %14, align 8, !tbaa !352
  store ptr %.sroa.21.0.copyload.i, ptr %i.b, align 8, !tbaa !354
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.c
  %i.l = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i114 = icmp ult i16 %i.l, 197
  br i1 %spec.select.i.i114, label %bb.d, label %.thread

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #28
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit, %.split
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !345  ; 5 uses
  %.sroa.0275.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !346
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6278.0.copyload = load i32, ptr %.sroa.6278.0..sroa_idx, align 8, !tbaa !348
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.0268.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !346
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !348
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.0259.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !346
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8
  %i.s = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.t) #24
  %i.v = load i16, ptr %i.f, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !332
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.x, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.y, 0
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.y, 1
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.z = icmp eq i32 %i.d, 384
  %spec.select.i.i115 = select i1 %i.z, ptr %1, ptr null ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i.i115) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i115, i64 32 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = lshr i16 %i.ab, 7
  %i.ad = and i16 %i.ac, 7                        ; 2 uses
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i116 = load i16, ptr %i.af, align 8, !tbaa !352 ; 3 uses
  %.sroa.21.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i118 = load ptr, ptr %.sroa.21.0..sroa_idx.i117, align 8, !tbaa !354
  store i16 %.sroa.0.0.copyload.i116, ptr %14, align 8, !tbaa !352
  store ptr %.sroa.21.0.copyload.i118, ptr %i.b, align 8, !tbaa !354
  %.not.i121 = icmp eq i16 %.sroa.0.0.copyload.i116, 0
  br i1 %.not.i121, label %_ZNK4llvm3EVT8isVectorEv.exit123, label %.split320

.split320:                                        ; preds = %bb.f
  %i.ag = add i16 %.sroa.0.0.copyload.i116, -19
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel17createGPRPairNodeEN4llvm3EVTENS1_7SDValueES3_:bb.a
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !332
  %i.l = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.k, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.l, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.l, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %.fca.0.extract12, ptr %7, align 16, !tbaa !346
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract13, ptr %.sroa.417.0..sroa_idx, align 8, !tbaa !348
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.m, align 16, !tbaa !346
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !348
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.fca.0.extract5, ptr %i.n, align 16, !tbaa !346
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %.fca.1.extract6, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !348
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !375
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %.fca.0.extract, ptr %i.p, align 16, !tbaa !346
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !348
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !332
  store ptr %7, ptr %8, align 8, !tbaa !377
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 5, ptr %i.r, align 8, !tbaa !380
  %i.s = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.q, i32 noundef 19, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %1, ptr %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %i.s
}

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::ArrayRef") align 8) local_unnamed_addr #8

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, i16, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel10SelectCMPZEPN4llvm6SDNodeERb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  store i8 0, ptr %2, align 1, !tbaa !489
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 461
  %i.d = load i8, ptr %i.c, align 1, !tbaa !331, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !345  ; 3 uses
  %.sroa.068.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !346 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.068.0.copyload, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !479  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !480
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.c:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.026.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !346
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !348
  %i.n = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.026.0.copyload, i32 %.sroa.4.0.copyload) #24
  br i1 %i.n, label %bb.d, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.068.0.copyload, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !334
  %.not = icmp eq i32 %i.p, 193
  br i1 %.not, label %bb.e, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.068.0.copyload, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345  ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !346 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !348 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !349  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !334
  switch i32 %i.v, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.e, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !356  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !359 ; 3 uses
  %i.ab = icmp ult i32 %i.aa, 65
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !361 ; 3 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 false)
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = sub nsw i32 63, %i.ae
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ac, i1 false)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ac)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  br label %_ZL27getContiguousRangeOfSetBitsRKN4llvm5APIntE.exit

bb.g:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.ak = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #28
  %i.al = xor i32 %i.ak, -1
  %i.am = add i32 %i.aa, %i.al
  %i.an = tail call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #28
  %i.ao = tail call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #28
  br label %_ZL27getContiguousRangeOfSetBitsRKN4llvm5APIntE.exit

_ZL27getContiguousRangeOfSetBitsRKN4llvm5APIntE.exit: ; preds = %bb.f, %bb.g
  %.0.i412.i = phi i32 [ %..i.i, %bb.f ], [ %i.an, %bb.g ] ; 6 uses
  %i.ap = phi i32 [ %i.af, %bb.f ], [ %i.am, %bb.g ] ; 6 uses
  %.0.i5.i = phi i32 [ %i.aj, %bb.f ], [ %i.ao, %bb.g ]
  %reass.sub78 = sub i32 %i.ap, %.0.i412.i
  %i.aq = add i32 %reass.sub78, 1
  %.not.i = icmp eq i32 %.0.i5.i, %i.aq
  br i1 %.not.i, label %bb.h, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.h:                                             ; preds = %_ZL27getContiguousRangeOfSetBitsRKN4llvm5APIntE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !371
  store i64 %i.as, ptr %3, align 8, !tbaa !371
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.av = load i32, ptr %i.au, align 4, !tbaa !372
  store i32 %i.av, ptr %i.at, align 8, !tbaa !373
  %i.aw = icmp eq i32 %.0.i412.i, 0
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = sub i32 31, %i.ap
  %i.ay = call fastcc noundef ptr @"_ZZN12_GLOBAL__N_115ARMDAGToDAGISel10SelectCMPZEPN4llvm6SDNodeERbENK3$_0clEjNS1_7SDValueEj"(ptr nonnull %0, ptr nonnull %3, i32 noundef 4490, ptr %.sroa.019.0.copyload, i32 %.sroa.7.0.copyload, i32 noundef %i.ax)
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %.sroa.068.0.copyload, ptr noundef %i.ay)
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit46.thread

bb.j:                                             ; preds = %bb.h
  %i.az = icmp eq i32 %i.ap, 31
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = call fastcc noundef ptr @"_ZZN12_GLOBAL__N_115ARMDAGToDAGISel10SelectCMPZEPN4llvm6SDNodeERbENK3$_0clEjNS1_7SDValueEj"(ptr nonnull %0, ptr nonnull %3, i32 noundef 4492, ptr %.sroa.019.0.copyload, i32 %.sroa.7.0.copyload, i32 noundef %.0.i412.i)
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %.sroa.068.0.copyload, ptr noundef %i.ba)
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit46.thread

bb.l:                                             ; preds = %bb.j
  %i.bb = icmp eq i32 %i.ap, %.0.i412.i
  br i1 %i.bb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !479 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i44, label %_ZNK4llvm6SDNode9hasOneUseEv.exit46.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit46

_ZNK4llvm6SDNode9hasOneUseEv.exit46:              ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !480
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.n, label %_ZNK4llvm6SDNode9hasOneUseEv.exit46.thread

bb.n:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit46
  %i.bh = sub i32 31, %.0.i412.i
  %i.bi = call fastcc noundef ptr @"_ZZN12_GLOBAL__N_115ARMDAGToDAGISel10SelectCMPZEPN4llvm6SDNodeERbENK3$_0clEjNS1_7SDValueEj"(ptr nonnull %0, ptr nonnull %3, i32 noundef 4490, ptr %.sroa.019.0.copyload, i32 %.sroa.7.0.copyload, i32 noundef %i.bh)
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %.sroa.068.0.copyload, ptr noundef %i.bi)
  store i8 1, ptr %2, align 1, !tbaa !489
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit46.thread

bb.o:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 418
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !213, !range !18, !noundef !19
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK4llvm6SDNode9hasOneUseEv.exit46.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = sub i32 31, %i.ap
  %i.bo = call fastcc noundef ptr @"_ZZN12_GLOBAL__N_115ARMDAGToDAGISel10SelectCMPZEPN4llvm6SDNodeERbENK3$_0clEjNS1_7SDValueEj"(ptr nonnull %0, ptr nonnull %3, i32 noundef 4490, ptr %.sroa.019.0.copyload, i32 %.sroa.7.0.copyload, i32 noundef %i.bn)
  %reass.sub = add i32 %.0.i412.i, 31
  %i.bp = sub i32 %reass.sub, %i.ap
  %i.bq = call fastcc noundef ptr @"_ZZN12_GLOBAL__N_115ARMDAGToDAGISel10SelectCMPZEPN4llvm6SDNodeERbENK3$_0clEjNS1_7SDValueEj"(ptr nonnull %0, ptr nonnull %3, i32 noundef 4492, ptr %i.bo, i32 0, i32 noundef %i.bp)
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %.sroa.068.0.copyload, ptr noundef %i.bq)
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit46.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit46.thread:       ; preds = %bb.m, %bb.i, %bb.n, %bb.p, %bb.o, %bb.k, %_ZNK4llvm6SDNode9hasOneUseEv.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread:         ; preds = %bb.e, %bb.b, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %bb.c, %bb.d, %_ZL27getContiguousRangeOfSetBitsRKN4llvm5APIntE.exit, %_ZNK4llvm6SDNode9hasOneUseEv.exit46.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 %4, ptr noundef byval(%"class.llvm::SDValue") align 8 %5, ptr noundef byval(%"class.llvm::SDValue") align 8 %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.a = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 1, ptr null, i16 249, ptr null) #24 ; 2 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = extractvalue { ptr, i32 } %i.a, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %1, ptr %7, align 16, !tbaa !346
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %2, ptr %.sroa.214.0..sroa_idx, align 8, !tbaa !348
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.e = load ptr, ptr %5, align 8, !tbaa !349
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !370
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !351
  %i.j = zext i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.k, align 8, !tbaa !352
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !354
  %i.l = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 %4, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #24 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.l, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.l, 1
  store ptr %.fca.0.extract3, ptr %i.d, align 16
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.fca.1.extract4, ptr %.sroa.26.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !375
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !375
  %i.o = load ptr, ptr %6, align 8, !tbaa !349
  %.not = icmp eq ptr %i.o, null
  %i.p = select i1 %.not, i64 3, i64 4
  store ptr %7, ptr %8, align 8, !tbaa !377
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !380
  %i.r = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.b, i32 %i.c, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret { ptr, i32 } %i.r
}

declare noundef ptr @_ZN4llvm12SelectionDAG11MorphNodeToEPNS_6SDNodeEjNS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, i32 noundef, ptr, i32, ptr noundef byval(%"class.llvm::ArrayRef") align 8) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL22getVectorShuffleOpcodeN4llvm3EVTEPjS1_(i16 %0, ptr %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  store i16 %0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %.not.i.i.i = icmp eq i16 %0, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.b = add i16 %0, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.b, 197
  br i1 %spec.select.i.i.i.i, label %bb.b, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br i1 %i.c, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.split.i.i
  %i.d = zext nneg i16 %0 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !352
  %i.h = insertvalue { i16, ptr } poison, i16 %i.g, 0
  %i.i = insertvalue { i16, ptr } %i.h, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.j = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.k = insertvalue { i16, ptr } poison, i16 %0, 0
  %i.l = insertvalue { i16, ptr } %i.k, ptr %1, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.d, %bb.c, %bb.b
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.l, %bb.d ], [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.m, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.o, ptr %i.n, align 8
  %.not.i.i = icmp eq i16 %i.m, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.p = zext i16 %i.m to i64
  %i.q = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.r, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.s = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  %i.t = extractvalue { i64, i8 } %i.s, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.e, %bb.f
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.e ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.u = load i16, ptr %5, align 8, !tbaa !791    ; 7 uses
  %.not.i = icmp eq i16 %i.u, 0                   ; 3 uses
  switch i64 %.pn.i.i, label %bb.g [
    i64 8, label %bb.h
    i64 16, label %bb.k
    i64 32, label %bb.n
  ]

bb.g:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  unreachable

bb.h:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  br i1 %.not.i, label %.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i16 %i.u, -19
  %spec.select.i.i.i = icmp ult i16 %i.v, 144
  br i1 %spec.select.i.i.i, label %_ZNK4llvm3EVT13is64BitVectorEv.exit, label %_ZNK4llvm3EVT13is64BitVectorEv.exit.thread

.split:                                           ; preds = %bb.h
  %i.w = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br i1 %i.w, label %bb.j, label %_ZNK4llvm3EVT13is64BitVectorEv.exit.thread

_ZNK4llvm3EVT13is64BitVectorEv.exit:              ; preds = %bb.i
  %i.x = zext nneg i16 %i.u to i64
  %i.y = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.z, align 16
  %.sroa.0.0.copyload.i.i.i.i.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i
  %i.aa = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.fr, 64
  br i1 %i.aa, label %bb.j, label %_ZNK4llvm3EVT13is64BitVectorEv.exit.thread

bb.j:                                             ; preds = %.split, %_ZNK4llvm3EVT13is64BitVectorEv.exit
  br label %_ZNK4llvm3EVT13is64BitVectorEv.exit.thread

bb.k:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  br i1 %.not.i, label %.split22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = add i16 %i.u, -19
  %spec.select.i.i.i12 = icmp ult i16 %i.ab, 144
  br i1 %spec.select.i.i.i12, label %_ZNK4llvm3EVT13is64BitVectorEv.exit14, label %_ZNK4llvm3EVT13is64BitVectorEv.exit14.thread

.split22:                                         ; preds = %bb.k
  %i.ac = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br i1 %i.ac, label %bb.m, label %_ZNK4llvm3EVT13is64BitVectorEv.exit14.thread

_ZNK4llvm3EVT13is64BitVectorEv.exit14:            ; preds = %bb.l
  %i.ad = zext nneg i16 %i.u to i64
  %i.ae = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -16
  %.sroa.0.0.copyload.i.i.i.i13 = load i64, ptr %i.af, align 16
  %.sroa.0.0.copyload.i.i.i.i13.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i13
  %i.ag = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i13.fr, 64
  br i1 %i.ag, label %bb.m, label %_ZNK4llvm3EVT13is64BitVectorEv.exit14.thread

bb.m:                                             ; preds = %.split22, %_ZNK4llvm3EVT13is64BitVectorEv.exit14
  br label %_ZNK4llvm3EVT13is64BitVectorEv.exit14.thread

_ZNK4llvm3EVT13is64BitVectorEv.exit14.thread:     ; preds = %bb.l, %.split22, %_ZNK4llvm3EVT13is64BitVectorEv.exit14, %bb.m
  %i.ah = phi ptr [ %2, %bb.m ], [ %3, %_ZNK4llvm3EVT13is64BitVectorEv.exit14 ], [ %3, %.split22 ], [ %3, %bb.l ]
  %.in6 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  br label %_ZNK4llvm3EVT13is64BitVectorEv.exit.thread

bb.n:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  br i1 %.not.i, label %.split25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = add i16 %i.u, -19
  %spec.select.i.i.i16 = icmp ult i16 %i.ai, 144
  br i1 %spec.select.i.i.i16, label %_ZNK4llvm3EVT13is64BitVectorEv.exit18, label %_ZNK4llvm3EVT13is64BitVectorEv.exit18.thread

.split25:                                         ; preds = %bb.n
  %i.aj = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br i1 %i.aj, label %bb.p, label %_ZNK4llvm3EVT13is64BitVectorEv.exit18.thread

_ZNK4llvm3EVT13is64BitVectorEv.exit18:            ; preds = %bb.o
  %i.ak = zext nneg i16 %i.u to i64
  %i.al = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -16
  %.sroa.0.0.copyload.i.i.i.i17 = load i64, ptr %i.am, align 16
  %.sroa.0.0.copyload.i.i.i.i17.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i17
  %i.an = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i17.fr, 64
  br i1 %i.an, label %bb.p, label %_ZNK4llvm3EVT13is64BitVectorEv.exit18.thread

bb.p:                                             ; preds = %.split25, %_ZNK4llvm3EVT13is64BitVectorEv.exit18
  br label %_ZNK4llvm3EVT13is64BitVectorEv.exit18.thread
end_hunk_5
