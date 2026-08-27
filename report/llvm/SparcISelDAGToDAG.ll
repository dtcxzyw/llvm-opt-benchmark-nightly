Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparcISelDAGToDAG?download=true
inline.NumInlined: 801
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_117SparcDAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
  store ptr %.fca.0.extract3.i272.i, ptr %i.bd, align 16
  store i32 %.fca.1.extract4.i273.i, ptr %.sroa.26.0..sroa_idx.i274.i, align 8
  store ptr %.sroa.0372.0.copyload.i, ptr %i.be, align 16, !tbaa !233
  store i32 1, ptr %.sroa.5501.0..sroa_idx.i, align 8, !tbaa !234
  %.not.i275.i = icmp eq ptr %.sroa.0372.0.copyload.i, null
  %i.jm = select i1 %.not.i275.i, i64 2, i64 3
  store ptr %10, ptr %11, align 8, !tbaa !275
  store i64 %i.jm, ptr %i.bf, align 8, !tbaa !277
  %i.jn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.jh, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %20, ptr %i.jj, i32 %i.jk, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %11) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.fca.0.extract68.i = extractvalue { ptr, i32 } %i.jn, 0 ; 3 uses
  %.fca.1.extract69.i = extractvalue { ptr, i32 } %i.jn, 1
  %i.jo = load ptr, ptr %i.bb, align 8, !tbaa !266 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i16 249, ptr %6, align 8, !tbaa !271
  store ptr null, ptr %i.bg, align 8, !tbaa !273
  %i.jp = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.jo, i16 7, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %6) #16 ; 2 uses
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  %i.jr = extractvalue { ptr, i32 } %i.jp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %.sroa.0372.0.copyload.i, ptr %7, align 16, !tbaa !233
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.218.0..sroa_idx.i281.i, align 8, !tbaa !234
  %i.js = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.jo, i32 %.sroa.0.0.copyload.i235.i, i16 7, ptr null) #16 ; 2 uses
  %.fca.0.extract3.i282.i = extractvalue { ptr, i32 } %i.js, 0
  %.fca.1.extract4.i283.i = extractvalue { ptr, i32 } %i.js, 1
  store ptr %.fca.0.extract3.i282.i, ptr %i.bh, align 16
  store i32 %.fca.1.extract4.i283.i, ptr %.sroa.26.0..sroa_idx.i284.i, align 8
  store ptr %.fca.0.extract68.i, ptr %i.bi, align 16, !tbaa !233
  store i32 1, ptr %.sroa.5507.0..sroa_idx.i, align 8, !tbaa !234
  %.not.i285.i = icmp eq ptr %.fca.0.extract68.i, null
  %i.jt = select i1 %.not.i285.i, i64 2, i64 3
  store ptr %7, ptr %8, align 8, !tbaa !275
  store i64 %i.jt, ptr %i.bj, align 8, !tbaa !277
  %i.ju = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.jo, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %20, ptr %i.jq, i32 %i.jr, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %8) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.fca.0.extract56.i = extractvalue { ptr, i32 } %i.ju, 0 ; 4 uses
  %.fca.1.extract57.i = extractvalue { ptr, i32 } %i.ju, 1 ; 2 uses
  %i.jv = load ptr, ptr %i.bb, align 8, !tbaa !266 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  %i.jw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.jv, i64 noundef 11, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #16 ; 2 uses
  %.fca.0.extract50.i = extractvalue { ptr, i32 } %i.jw, 0
  %.fca.1.extract51.i = extractvalue { ptr, i32 } %i.jw, 1
  store ptr %.fca.0.extract50.i, ptr %27, align 8
  store i32 %.fca.1.extract51.i, ptr %.sroa.253.0..sroa_idx.i, align 8
  store ptr %.fca.0.extract68.i, ptr %i.bk, align 8, !tbaa !233
  store i32 %.fca.1.extract69.i, ptr %.sroa.5370.0..sroa_idx.i, align 8, !tbaa !234
  %i.jx = load ptr, ptr %i.bb, align 8, !tbaa !266
  %i.jy = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.jx, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #16 ; 2 uses
  %.fca.0.extract46.i = extractvalue { ptr, i32 } %i.jy, 0
  %.fca.1.extract47.i = extractvalue { ptr, i32 } %i.jy, 1
  store ptr %.fca.0.extract46.i, ptr %i.bl, align 8
  store i32 %.fca.1.extract47.i, ptr %.sroa.249.0..sroa_idx.i, align 8
  store ptr %.fca.0.extract56.i, ptr %i.bm, align 8, !tbaa !233
  store i32 %.fca.1.extract57.i, ptr %.sroa.6362.0..sroa_idx.i, align 8, !tbaa !234
  %i.jz = load ptr, ptr %i.bb, align 8, !tbaa !266
  %i.ka = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.jz, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #16 ; 2 uses
  %.fca.0.extract42.i = extractvalue { ptr, i32 } %i.ka, 0
  %.fca.1.extract43.i = extractvalue { ptr, i32 } %i.ka, 1
  store ptr %.fca.0.extract42.i, ptr %i.bn, align 8
  store i32 %.fca.1.extract43.i, ptr %.sroa.245.0..sroa_idx.i, align 8
  store ptr %27, ptr %26, align 8, !tbaa !275
  store i64 5, ptr %i.bo, align 8, !tbaa !277
  %i.kb = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.jv, i32 noundef 19, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 71, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %26) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  %i.kc = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.fx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27SparcMCRegisterClassStorageE, i64 704), ptr nonnull @.str.3, i64 0) #16 ; 2 uses
  %i.kd = load ptr, ptr %i.bb, align 8, !tbaa !266
  %i.ke = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.kd, i32 %i.kc, i16 71, ptr null) #16
  %i.kf = load ptr, ptr %i.bb, align 8, !tbaa !266 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.kg = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.kf, i16 1, ptr null, i16 249, ptr null) #16 ; 2 uses
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  %i.ki = extractvalue { ptr, i32 } %i.kg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %.fca.0.extract56.i, ptr %4, align 16, !tbaa !233
  store i32 %.fca.1.extract57.i, ptr %.sroa.214.0..sroa_idx.i289.i, align 8, !tbaa !234
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !228 ; 2 uses
  %.sroa.0.0.copyload.i.i.i290.i = load i16, ptr %i.kk, align 8, !tbaa !229
  %.sroa.21.0..sroa_idx.i.i.i291.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.21.0.copyload.i.i.i292.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i291.i, align 8, !tbaa !231
  %i.kl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.kf, i32 %i.kc, i16 %.sroa.0.0.copyload.i.i.i290.i, ptr %.sroa.21.0.copyload.i.i.i292.i) #16 ; 2 uses
  %.fca.0.extract3.i293.i = extractvalue { ptr, i32 } %i.kl, 0
  %.fca.1.extract4.i294.i = extractvalue { ptr, i32 } %i.kl, 1
  store ptr %.fca.0.extract3.i293.i, ptr %i.bp, align 16
  store i32 %.fca.1.extract4.i294.i, ptr %.sroa.26.0..sroa_idx.i295.i, align 8
  store ptr %i.kb, ptr %i.bq, align 16, !tbaa !233
  store i32 0, ptr %.sroa.5510.0..sroa_idx.i, align 8, !tbaa !234
  store ptr %.fca.0.extract56.i, ptr %i.br, align 16, !tbaa !233
  store i32 1, ptr %.sroa.5513.0..sroa_idx.i, align 8, !tbaa !234
  %.not.i296.i = icmp eq ptr %.fca.0.extract56.i, null
  %i.km = select i1 %.not.i296.i, i64 3, i64 4
  store ptr %4, ptr %5, align 8, !tbaa !275
  store i64 %i.km, ptr %i.bs, align 8, !tbaa !277
  %i.kn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.kf, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %20, ptr %i.kh, i32 %i.ki, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %5) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.fca.0.extract18.i = extractvalue { ptr, i32 } %i.kn, 0 ; 2 uses
  %.fca.1.extract19.i = extractvalue { ptr, i32 } %i.kn, 1
  %i.ko = load ptr, ptr %19, align 8, !tbaa !244  ; 2 uses
  store ptr %.fca.0.extract18.i, ptr %i.ko, align 8, !tbaa !233
  %.sroa.9.0..sroa_idx375.i = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i32 %.fca.1.extract19.i, ptr %.sroa.9.0..sroa_idx375.i, align 8, !tbaa !234
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit.i:  ; preds = %bb.af, %bb.ae, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit.i
  %.pn.i = phi { ptr, i32 } [ %i.ke, %bb.af ], [ %i.gb, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit.i ], [ %i.gb, %bb.ae ] ; 2 uses
  %.sroa.9455.2.i = phi i32 [ 1, %bb.af ], [ %.sroa.9455.1558.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.9455.1558.i, %bb.ae ] ; 3 uses
  %.sroa.0452.2.i = phi ptr [ %.fca.0.extract18.i, %bb.af ], [ %.sroa.0452.1559.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.0452.1559.i, %bb.ae ] ; 3 uses
  %.sroa.8440.0.i = extractvalue { ptr, i32 } %.pn.i, 1 ; 2 uses
  %.sroa.0438.0.i = extractvalue { ptr, i32 } %.pn.i, 0 ; 3 uses
  %.not205.i = icmp eq ptr %.sroa.0438.0.i, null
  br i1 %.not205.i, label %.critedge.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit.i
  %i.kp = load i64, ptr %i.au, align 8, !tbaa !237
  %i.kq = load ptr, ptr %21, align 8, !tbaa !235
  %i.kr = getelementptr i8, ptr %i.kq, i64 %i.kp
  %i.ks = getelementptr i8, ptr %i.kr, i64 -1
  store i8 1, ptr %i.ks, align 1, !tbaa !262
  %i.kt = or disjoint i32 %.0603609.i, -2147483640
  %i.ku = or disjoint i32 %i.du, 786440
  %.sroa.0466.0.i = select i1 %.0198604607.i, i32 %i.kt, i32 %i.ku
  %i.kv = load ptr, ptr %i.bb, align 8, !tbaa !266
  %i.kw = zext i32 %.sroa.0466.0.i to i64
  %i.kx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.kv, i64 noundef %i.kw, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #16 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.kx, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.kx, 1
  %i.ky = load ptr, ptr %i.ay, align 8, !tbaa !240 ; 7 uses
  %i.kz = load ptr, ptr %19, align 8, !tbaa !244  ; 5 uses
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb                    ; 5 uses
  %i.ld = ashr exact i64 %i.lc, 4                 ; 3 uses
  %i.le = getelementptr i8, ptr %i.kz, i64 %i.lc  ; 2 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 -16
  store ptr %.fca.0.extract6.i, ptr %i.lf, align 8, !tbaa !233
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.le, i64 -8
  store i32 %.fca.1.extract7.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !234
  %i.lg = load ptr, ptr %i.az, align 8, !tbaa !243
  %.not.i299.i = icmp eq ptr %i.ky, %i.lg
  br i1 %.not.i299.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %.sroa.0438.0.i, ptr %i.ky, align 8, !tbaa !233
  %.sroa.8440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i32 %.sroa.8440.0.i, ptr %.sroa.8440.0..sroa_idx.i, align 8, !tbaa !234
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store ptr %i.lh, ptr %i.ay, align 8, !tbaa !240
  br label %.critedge.i

bb.ai:                                            ; preds = %bb.ag
  %i.li = icmp eq i64 %i.lc, 9223372036854775792
  br i1 %i.li, label %bb.aj, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i300.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i300.i: ; preds = %bb.ai
  %.sroa.speculated.i.i.i301.i = call i64 @llvm.umax.i64(i64 %i.ld, i64 1)
  %i.lj = add nsw i64 %.sroa.speculated.i.i.i301.i, %i.ld ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %i.ld
  %i.ll = call i64 @llvm.umin.i64(i64 %i.lj, i64 576460752303423487)
  %i.lm = select i1 %i.lk, i64 576460752303423487, i64 %i.ll ; 3 uses
  %.not.i.i.i302.i = icmp ne i64 %i.lm, 0
  call void @llvm.assume(i1 %.not.i.i.i302.i)
  %i.ln = shl nuw nsw i64 %i.lm, 4
  %i.lo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #18 ; 5 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lc ; 2 uses
  store ptr %.sroa.0438.0.i, ptr %i.lp, align 8, !tbaa !233
  %.sroa.8440.0..sroa_idx441.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 %.sroa.8440.0.i, ptr %.sroa.8440.0..sroa_idx441.i, align 8, !tbaa !234
  %.not10.i.i.i.i.i303.i = icmp eq ptr %i.kz, %i.ky
  br i1 %.not10.i.i.i.i.i303.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i311.i, label %.lr.ph.i.i.i.i.i304.i

.lr.ph.i.i.i.i.i304.i:                            ; preds = %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i300.i, %.lr.ph.i.i.i.i.i304.i
  %.012.i.i.i.i.i305.i = phi ptr [ %i.lr, %.lr.ph.i.i.i.i.i304.i ], [ %i.lo, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i300.i ] ; 2 uses
  %.0911.i.i.i.i.i306.i = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i304.i ], [ %i.kz, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i300.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i305.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i306.i, i64 16, i1 false), !tbaa.struct !239, !alias.scope !285
  %i.lq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i306.i, i64 16 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i305.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i307.i = icmp eq ptr %i.lq, %i.ky
  br i1 %.not.i.i.i.i.i307.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i311.i, label %.lr.ph.i.i.i.i.i304.i, !llvm.loop !249

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i311.i: ; preds = %.lr.ph.i.i.i.i.i304.i, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i300.i
  %.0.lcssa.i.i.i.i.i309.i = phi ptr [ %i.lo, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i300.i ], [ %i.lr, %.lr.ph.i.i.i.i.i304.i ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i309.i, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.lc) #19
  store ptr %i.lo, ptr %19, align 8, !tbaa !244
  store ptr %i.ls, ptr %i.ay, align 8, !tbaa !240
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %i.lm
  store ptr %i.lt, ptr %i.az, align 8, !tbaa !243
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i311.i, %bb.ah, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit.i, %bb.w, %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread.i, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.thread.i, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit231.i, %bb.m, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit.i
  %.sroa.9455.5.i = phi i32 [ %.sroa.9455.1558.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit.i ], [ %.sroa.9455.1558.i, %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread.i ], [ %.sroa.9455.1558.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit231.i ], [ %.sroa.9455.1558.i, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.i ], [ %.sroa.9455.1558.i, %bb.m ], [ %.sroa.9455.1558.i, %bb.w ], [ %.sroa.9455.2.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i311.i ], [ %.sroa.9455.2.i, %bb.ah ], [ %.sroa.9455.2.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit.i ], [ %.sroa.9455.1558.i, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.thread.i ] ; 2 uses
  %.sroa.0452.5.i = phi ptr [ %.sroa.0452.1559.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit.i ], [ %.sroa.0452.1559.i, %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread.i ], [ %.sroa.0452.1559.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit231.i ], [ %.sroa.0452.1559.i, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.i ], [ %.sroa.0452.1559.i, %bb.m ], [ %.sroa.0452.1559.i, %bb.w ], [ %.sroa.0452.2.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i311.i ], [ %.sroa.0452.2.i, %bb.ah ], [ %.sroa.0452.2.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit.i ], [ %.sroa.0452.1559.i, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.thread.i ] ; 2 uses
  %.4.i = phi i32 [ %.0193560.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit.i ], [ %.0193560.i, %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread.i ], [ %i.dw, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit231.i ], [ %.0193560.i, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.i ], [ %.0193560.i, %bb.m ], [ %.0193560.i, %bb.w ], [ %i.fq, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i311.i ], [ %i.fq, %bb.ah ], [ %.0193560.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit.i ], [ %.0193560.i, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.thread.i ]
  %.3.i = phi i8 [ %.0192561.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit.i ], [ %.0192561.i, %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread.i ], [ %.0192561.i, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit231.i ], [ 1, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.i ], [ %.0192561.i, %bb.m ], [ 1, %bb.w ], [ 1, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i311.i ], [ 1, %bb.ah ], [ 1, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit.i ], [ %.0192561.i, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.lu = add i32 %.4.i, 1                        ; 2 uses
  %i.lv = icmp ult i32 %i.lu, %i.aw
  br i1 %i.lv, label %bb.h, label %._crit_edge.loopexit.i, !llvm.loop !289

bb.ak:                                            ; preds = %._crit_edge.i
  %i.lw = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !240 ; 8 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !243
  %.not.i313.i = icmp eq ptr %i.lx, %i.lz
  br i1 %.not.i313.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %.sroa.0452.1.lcssa.i, ptr %i.lx, align 8, !tbaa !233
  %.sroa.9455.0..sroa_idx456.i = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i32 %.sroa.9455.1.lcssa.i, ptr %.sroa.9455.0..sroa_idx456.i, align 8, !tbaa !234
  %.sroa.11460.0..sroa_idx461.i = getelementptr inbounds nuw i8, ptr %i.lx, i64 12
  store i32 %.sroa.11460.0523.i, ptr %.sroa.11460.0..sroa_idx461.i, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store ptr %i.ma, ptr %i.lw, align 8, !tbaa !240
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit326.i

bb.am:                                            ; preds = %bb.ak
  %i.mb = load ptr, ptr %19, align 8, !tbaa !244  ; 5 uses
  %i.mc = ptrtoint ptr %i.lx to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md                    ; 4 uses
  %i.mf = icmp eq i64 %i.me, 9223372036854775792
  br i1 %i.mf, label %bb.an, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i314.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i314.i: ; preds = %bb.am
  %i.mg = ashr exact i64 %i.me, 4                 ; 3 uses
  %.sroa.speculated.i.i.i315.i = call i64 @llvm.umax.i64(i64 %i.mg, i64 1)
  %i.mh = add nsw i64 %.sroa.speculated.i.i.i315.i, %i.mg ; 2 uses
  %i.mi = icmp ult i64 %i.mh, %i.mg
  %i.mj = call i64 @llvm.umin.i64(i64 %i.mh, i64 576460752303423487)
  %i.mk = select i1 %i.mi, i64 576460752303423487, i64 %i.mj ; 3 uses
  %.not.i.i.i316.i = icmp ne i64 %i.mk, 0
  call void @llvm.assume(i1 %.not.i.i.i316.i)
  %i.ml = shl nuw nsw i64 %i.mk, 4
  %i.mm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ml) #18 ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.me ; 3 uses
  store ptr %.sroa.0452.1.lcssa.i, ptr %i.mn, align 8, !tbaa !233
  %.sroa.9455.0..sroa_idx458.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i32 %.sroa.9455.1.lcssa.i, ptr %.sroa.9455.0..sroa_idx458.i, align 8, !tbaa !234
  %.sroa.11460.0..sroa_idx463.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  store i32 %.sroa.11460.0523.i, ptr %.sroa.11460.0..sroa_idx463.i, align 4
  %.not10.i.i.i.i.i317.i = icmp eq ptr %i.mb, %i.lx
  br i1 %.not10.i.i.i.i.i317.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i322.i, label %.lr.ph.i.i.i.i.i318.i

.lr.ph.i.i.i.i.i318.i:                            ; preds = %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i314.i, %.lr.ph.i.i.i.i.i318.i
  %.012.i.i.i.i.i319.i = phi ptr [ %i.mp, %.lr.ph.i.i.i.i.i318.i ], [ %i.mm, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i314.i ] ; 2 uses
  %.0911.i.i.i.i.i320.i = phi ptr [ %i.mo, %.lr.ph.i.i.i.i.i318.i ], [ %i.mb, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i314.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i319.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i320.i, i64 16, i1 false), !tbaa.struct !239, !alias.scope !290
  %i.mo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i320.i, i64 16 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i319.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i321.i = icmp eq ptr %i.mo, %i.lx
  br i1 %.not.i.i.i.i.i321.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i322.i, label %.lr.ph.i.i.i.i.i318.i, !llvm.loop !249

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i322.i: ; preds = %.lr.ph.i.i.i.i.i318.i, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i314.i
  %.0.lcssa.i.i.i.i.i323.i = phi ptr [ %i.mm, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i314.i ], [ %i.mp, %.lr.ph.i.i.i.i.i318.i ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i323.i, i64 16
  %.not.i23.i.i324.i = icmp eq ptr %i.mb, null
  br i1 %.not.i23.i.i324.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i325.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i322.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mb, i64 noundef %i.me) #19
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i325.i

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i325.i: ; preds = %bb.ao, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i322.i
  store ptr %i.mm, ptr %19, align 8, !tbaa !244
  store ptr %i.mq, ptr %i.lw, align 8, !tbaa !240
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.mk
  store ptr %i.mr, ptr %i.ly, align 8, !tbaa !243
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit326.i

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit326.i: ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i325.i, %bb.al, %._crit_edge.i
  br i1 %.0192.lcssa.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit326.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  %i.ms = load i64, ptr %i.a, align 8, !tbaa !206
  store i64 %i.ms, ptr %28, align 8, !tbaa !206
  %i.mt = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.mu = load i32, ptr %i.d, align 4, !tbaa !208
  store i32 %i.mu, ptr %i.mt, align 8, !tbaa !218
  call void @_ZN4llvm16SelectionDAGISel29SelectInlineAsmMemoryOperandsERSt6vectorINS_7SDValueESaIS2_EERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(12) %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !266 ; 2 uses
  %i.mx = load i32, ptr %i.f, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #16
  %i.my = load i64, ptr %i.a, align 8, !tbaa !206
  store i64 %i.my, ptr %29, align 8, !tbaa !206
  %i.mz = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.na = load i32, ptr %i.d, align 4, !tbaa !208
  store i32 %i.na, ptr %i.mz, align 8, !tbaa !218
  %i.nb = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.mw, i16 1, ptr null, i16 249, ptr null) #16 ; 2 uses
  %i.nc = extractvalue { ptr, i32 } %i.nb, 0
  %i.nd = extractvalue { ptr, i32 } %i.nb, 1
  %i.ne = load ptr, ptr %19, align 8, !tbaa !244  ; 2 uses
  store ptr %i.ne, ptr %30, align 8, !tbaa !275
  %i.nf = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ng = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !240
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = ptrtoint ptr %i.ne to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = ashr exact i64 %i.nk, 4
  store i64 %i.nl, ptr %i.nf, align 8, !tbaa !277
  %i.nm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.mw, i32 noundef %i.mx, ptr noundef nonnull align 8 dereferenceable(12) %29, ptr %i.nc, i32 %i.nd, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %30) #16
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.nm, 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  %i.nn = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 36
  store i32 -1, ptr %i.nn, align 4, !tbaa !221
  %i.no = load ptr, ptr %i.mv, align 8, !tbaa !266
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.no, ptr noundef nonnull %1, ptr noundef %.fca.0.extract.i) #16
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract.i) #16
  %i.np = load ptr, ptr %i.mv, align 8, !tbaa !266
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.np, ptr noundef nonnull %1) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit326.i
  %i.nq = load ptr, ptr %21, align 8, !tbaa !235  ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.av
  br i1 %i.nr, label %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef %i.nq) #16
  br label %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIbLj8EED2Ev.exit.i:          ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  %i.ns = load ptr, ptr %19, align 8, !tbaa !244  ; 3 uses
  %.not.i.i.i327.i = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i327.i, label %_ZN12_GLOBAL__N_117SparcDAGToDAGISel12tryInlineAsmEPN4llvm6SDNodeE.exit, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit.i
  %i.nt = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !243
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = ptrtoint ptr %i.ns to i64
  %i.nx = sub i64 %i.nv, %i.nw
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef %i.nx) #19
  br label %_ZN12_GLOBAL__N_117SparcDAGToDAGISel12tryInlineAsmEPN4llvm6SDNodeE.exit

_ZN12_GLOBAL__N_117SparcDAGToDAGISel12tryInlineAsmEPN4llvm6SDNodeE.exit: ; preds = %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br i1 %.0192.lcssa.i, label %bb.ba, label %bb.az

bb.at:                                            ; preds = %bb.c
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !28 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !26
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 128
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = tail call noundef ptr %i.oc(ptr noundef nonnull align 8 dereferenceable(519368) %i.nz) #16, !inline_history !294
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !264
  %i.og = tail call i32 @_ZNK4llvm14SparcInstrInfo16getGlobalBaseRegEPNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440) %i.od, ptr noundef %i.of) #16
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !266 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !295 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 56
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !296
  %i.on = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.om) #16
  %i.oo = load ptr, ptr %i.ok, align 8, !tbaa !26
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = tail call i16 %i.oq(ptr noundef nonnull align 8 dereferenceable(518435) %i.ok, ptr noundef nonnull align 8 dereferenceable(912) %i.on, i32 noundef 0) #16, !inline_history !294
  %i.os = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.oi, i32 %i.og, i16 %i.or, ptr null) #16
  %.fca.0.extract.i36 = extractvalue { ptr, i32 } %i.os, 0 ; 2 uses
  %i.ot = load ptr, ptr %i.oh, align 8, !tbaa !266
  tail call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.ot, ptr noundef nonnull %1, ptr noundef %.fca.0.extract.i36) #16
  tail call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract.i36) #16
  %i.ou = load ptr, ptr %i.oh, align 8, !tbaa !266
  tail call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ou, ptr noundef nonnull %1) #16
  br label %bb.ba

bb.au:                                            ; preds = %bb.c, %bb.c
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !228 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ow, align 8, !tbaa !229
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !231
  %.not.i.i37 = icmp eq i16 %.sroa.0.0.copyload.i, 8
  %i.ox = icmp eq ptr %.sroa.21.0.copyload.i, null
  %.not4.i = select i1 %.not.i.i37, i1 %i.ox, i1 false
  br i1 %.not4.i, label %bb.az, label %bb.av
end_hunk_0
