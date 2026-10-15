Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsMachineFunction?download=true
inline.NumInlined: 473
inline.NumDeleted: 300
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm16MipsFunctionInfo17initGlobalBaseRegERNS_15MachineFunctionE:bb.a
  %i.iy = load ptr, ptr %i.fn, align 8, !tbaa !391
  %.not.i.i.i143 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i.i.i143, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm19MachineRegisterInfo9addLiveInENS_10MCRegisterENS_8RegisterE.exit142
  store i32 345, ptr %i.ix, align 8, !tbaa !247
  %.sroa.57.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx.i144, align 8, !tbaa !256
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store ptr %i.iz, ptr %i.fl, align 8, !tbaa !390
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit158

bb.ad:                                            ; preds = %_ZN4llvm19MachineRegisterInfo9addLiveInENS_10MCRegisterENS_8RegisterE.exit142
  %i.ja = load ptr, ptr %i.fk, align 8, !tbaa !392 ; 5 uses
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = ptrtoint ptr %i.ja to i64               ; 2 uses
  %i.jd = sub i64 %i.jb, %i.jc                    ; 3 uses
  %i.je = icmp eq i64 %i.jd, 9223372036854775792
  br i1 %i.je, label %bb.ae, label %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i145

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i145: ; preds = %bb.ad
  %i.jf = ashr exact i64 %i.jd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i146 = tail call i64 @llvm.umax.i64(i64 %i.jf, i64 1)
  %i.jg = add nsw i64 %.sroa.speculated.i.i.i.i.i146, %i.jf ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.jf
  %i.ji = tail call i64 @llvm.umin.i64(i64 %i.jg, i64 576460752303423487)
  %i.jj = select i1 %i.jh, i64 576460752303423487, i64 %i.ji ; 3 uses
  %.not.i.i.i.i.i147 = icmp ne i64 %i.jj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i147)
  %i.jk = shl nuw nsw i64 %i.jj, 4
  %i.jl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #22 ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jd ; 2 uses
  store i32 345, ptr %i.jm, align 8, !tbaa !247
  %.sroa.57.0..sroa_idx8.i148 = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx8.i148, align 8, !tbaa !256
  %.not10.i.i.i.i.i.i.i149 = icmp eq ptr %i.ja, %i.ix
  br i1 %.not10.i.i.i.i.i.i.i149, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i154, label %.lr.ph.i.i.i.i.i.i.i150

.lr.ph.i.i.i.i.i.i.i150:                          ; preds = %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i145, %.lr.ph.i.i.i.i.i.i.i150
  %.012.i.i.i.i.i.i.i151 = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i.i.i150 ], [ %i.jl, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i145 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i152 = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i.i.i150 ], [ %i.ja, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i145 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i151, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i152, i64 16, i1 false), !tbaa.struct !393, !alias.scope !417
  %i.jn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i152, i64 16 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i151, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i153 = icmp eq ptr %i.jn, %i.ix
  br i1 %.not.i.i.i.i.i.i.i153, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i154, label %.lr.ph.i.i.i.i.i.i.i150, !llvm.loop !339

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i154: ; preds = %.lr.ph.i.i.i.i.i.i.i150, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i145
  %.0.lcssa.i.i.i.i.i.i.i155 = phi ptr [ %i.jl, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i145 ], [ %i.jo, %.lr.ph.i.i.i.i.i.i.i150 ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i155, i64 16
  %.not.i23.i.i.i.i156 = icmp eq ptr %i.ja, null
  br i1 %.not.i23.i.i.i.i156, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i157, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i154
  %i.jq = load ptr, ptr %i.fn, align 8, !tbaa !391
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = sub i64 %i.jr, %i.jc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.js) #20
  br label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i157

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i157: ; preds = %bb.af, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i154
  store ptr %i.jl, ptr %i.fk, align 8, !tbaa !392
  store ptr %i.jp, ptr %i.fl, align 8, !tbaa !390
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %i.jj
  store ptr %i.jt, ptr %i.fn, align 8, !tbaa !391
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit158

_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit158: ; preds = %bb.ac, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i157
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.ju = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 32, i1 false)
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !398
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -27584
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4, !tbaa !247
  %i.jx = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.d, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %i.jw, i32 %.sroa.0.0.copyload) ; 2 uses
  %i.jy = extractvalue { ptr, ptr } %i.jx, 0      ; 2 uses
  %i.jz = extractvalue { ptr, ptr } %i.jx, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ka, align 8, !tbaa !261, !alias.scope !418
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 345, ptr %i.kb, align 4, !tbaa !262, !alias.scope !418
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kc, i8 0, i64 16, i1 false), !alias.scope !418
  store i32 0, ptr %3, align 8, !alias.scope !418
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jz, ptr noundef nonnull align 8 dereferenceable(1065) %i.jy, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.kd, align 8, !tbaa !261, !alias.scope !419
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 344, ptr %i.ke, align 4, !tbaa !262, !alias.scope !419
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i8 0, i64 16, i1 false), !alias.scope !419
  store i32 0, ptr %2, align 8, !alias.scope !419
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jz, ptr noundef nonnull align 8 dereferenceable(1065) %i.jy, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit, %bb.m, %bb.w, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit158, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !466  ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %2, align 8, !tbaa !468
  %i.c = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload, i1 noundef zeroext false) #19 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.c) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !252
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !252
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.m = or disjoint i64 %i.l, %i.k
  store i64 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !473  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.o) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !474  ; 2 uses
  %.not7.i = icmp eq ptr %i.q, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.q) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !475  ; 2 uses
  %.not8.i = icmp eq ptr %i.s, null
  br i1 %.not8.i, label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.s) #19
  br label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit

_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !261, !alias.scope !476
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %4, ptr %i.u, align 4, !tbaa !262, !alias.scope !476
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !alias.scope !476
  store i32 16777216, ptr %5, align 8, !alias.scope !476
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.c, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16MipsFunctionInfo18createEhDataRegsFIERNS_15MachineFunctionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(116) initializes((80, 96)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148, !nonnull !14, !align !253 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 296 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 312 ; 4 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !147, !nonnull !14, !align !253
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1744
  %i.n = load i32, ptr %i.m, align 8, !tbaa !246
  %i.o = icmp eq i32 %i.n, 3
  %. = select i1 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 2432), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 448)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !283
  %i.r = load i32, ptr %i.j, align 8, !tbaa !284
  %i.s = load i32, ptr %i.k, align 8, !tbaa !285
  %i.t = mul i32 %i.s, %i.r
  %2 = getelementptr inbounds nuw i8, ptr %., i64 20
  %.val16 = load i16, ptr %2, align 4, !tbaa !287
  %i.u = zext i16 %.val16 to i32
  %i.v = add i32 %i.t, %i.u
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !289
  %i.aa = lshr i32 %i.z, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !290
  %i.ae = lshr i32 %i.ad, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 false)
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = sub nsw i8 63, %i.ah
  %i.aj = tail call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.p, i64 noundef %i.ab, i8 %i.ai, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #19
  store i32 %i.aj, ptr %.0.ptr, align 8, !tbaa !247
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !147, !nonnull !14, !align !253
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1744
  %i.am = load i32, ptr %i.al, align 8, !tbaa !246
  %i.an = icmp eq i32 %i.am, 3
  %..1 = select i1 %i.an, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 2432), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 448)
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !283
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !284
  %i.ar = load i32, ptr %i.k, align 8, !tbaa !285
  %i.as = mul i32 %i.ar, %i.aq
  %3 = getelementptr inbounds nuw i8, ptr %..1, i64 20
  %.val16.1 = load i16, ptr %3, align 4, !tbaa !287
  %i.at = zext i16 %.val16.1 to i32
  %i.au = add i32 %i.as, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !289
  %i.az = lshr i32 %i.ay, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !290
  %i.bd = lshr i32 %i.bc, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  %i.bh = sub nsw i8 63, %i.bg
  %i.bi = tail call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.ao, i64 noundef %i.ba, i8 %i.bh, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #19
  store i32 %i.bi, ptr %.0.ptr.1, align 4, !tbaa !247
  %.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !147, !nonnull !14, !align !253
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1744
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !246
  %i.bm = icmp eq i32 %i.bl, 3
  %..2 = select i1 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 2432), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 448)
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !283
  %i.bp = load i32, ptr %i.j, align 8, !tbaa !284
  %i.bq = load i32, ptr %i.k, align 8, !tbaa !285
  %i.br = mul i32 %i.bq, %i.bp
  %4 = getelementptr inbounds nuw i8, ptr %..2, i64 20
  %.val16.2 = load i16, ptr %4, align 4, !tbaa !287
  %i.bs = zext i16 %.val16.2 to i32
  %i.bt = add i32 %i.br, %i.bs
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !289
  %i.by = lshr i32 %i.bx, 3
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !290
  %i.cc = lshr i32 %i.cb, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 false)
  %i.cf = trunc nuw nsw i64 %i.ce to i8
  %i.cg = sub nsw i8 63, %i.cf
  %i.ch = tail call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.bn, i64 noundef %i.bz, i8 %i.cg, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #19
  store i32 %i.ch, ptr %.0.ptr.2, align 8, !tbaa !247
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !147, !nonnull !14, !align !253
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1744
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !246
  %i.cl = icmp eq i32 %i.ck, 3
  %..3 = select i1 %i.cl, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 2432), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 448)
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !283
  %i.co = load i32, ptr %i.j, align 8, !tbaa !284
  %i.cp = load i32, ptr %i.k, align 8, !tbaa !285
  %i.cq = mul i32 %i.cp, %i.co
  %5 = getelementptr inbounds nuw i8, ptr %..3, i64 20
  %.val16.3 = load i16, ptr %5, align 4, !tbaa !287
  %i.cr = zext i16 %.val16.3 to i32
  %i.cs = add i32 %i.cq, %i.cr
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !289
  %i.cx = lshr i32 %i.cw, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !290
  %i.db = lshr i32 %i.da, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dc, i1 false)
  %i.de = trunc nuw nsw i64 %i.dd to i8
  %i.df = sub nsw i8 63, %i.de
  %i.dg = tail call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, i64 noundef %i.cy, i8 %i.df, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #19
  store i32 %i.dg, ptr %.0.ptr.3, align 4, !tbaa !247
  ret void
}

declare noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728), i64 noundef, i8, i1 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16MipsFunctionInfo14createISRRegFIERNS_15MachineFunctionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(116) initializes((100, 108)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148, !nonnull !14, !align !253 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 296 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 312 ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !263
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !283
  %i.m = load i32, ptr %i.i, align 8, !tbaa !284
  %i.n = load i32, ptr %i.j, align 8, !tbaa !285
  %i.o = mul i32 %i.n, %i.m
  %i.p = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 468), align 4, !tbaa !287
  %i.q = zext i16 %i.p to i32
  %i.r = add i32 %i.o, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !289
  %i.w = lshr i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !290
  %i.aa = lshr i32 %i.z, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 false)
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %i.ae = sub nsw i8 63, %i.ad
  %i.af = tail call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.k, i64 noundef %i.x, i8 %i.ae, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #19
  store i32 %i.af, ptr %.0.ptr, align 4, !tbaa !247
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !263
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !283
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !284
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !285
  %i.ak = mul i32 %i.aj, %i.ai
  %i.al = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 468), align 4, !tbaa !287
  %i.am = zext i16 %i.al to i32
  %i.an = add i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !289
  %i.as = lshr i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !290
  %i.aw = lshr i32 %i.av, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 false)
  %i.az = trunc nuw nsw i64 %i.ay to i8
  %i.ba = sub nsw i8 63, %i.az
  %i.bb = tail call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.ag, i64 noundef %i.at, i8 %i.ba, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #19
  store i32 %i.bb, ptr %.0.ptr.1, align 8, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16MipsFunctionInfo13isEhDataRegFIEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i8, ptr %i.a, align 4, !tbaa !477, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !247
  %i.f = icmp eq i32 %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %1, %i.h
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %1, %i.k
  %or.cond8 = select i1 %or.cond, i1 true, i1 %i.l
  br i1 %or.cond8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !247
  %i.o = icmp eq i32 %1, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.p = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16MipsFunctionInfo10isISRRegFIEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !478, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.e = load i32, ptr %i.d, align 4, !tbaa !247
  %i.f = icmp eq i32 %1, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i32, ptr %i.g, align 8, !tbaa !247
  %i.i = icmp eq i32 %1, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16MipsFunctionInfo11callPtrInfoERNS_15MachineFunctionEPKc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.llvm::MachinePointerInfo") align 8 captures(none) initializes((0, 21)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(116) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.c = tail call noundef ptr @_ZN4llvm24PseudoSourceValueManager26getExternalSymbolCallEntryEPKc(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %3) #19 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or i64 %i.d, 4
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !305
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.g, align 4, !tbaa !306
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !308
  br label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !309
  ret void
}

declare noundef ptr @_ZN4llvm24PseudoSourceValueManager26getExternalSymbolCallEntryEPKc(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16MipsFunctionInfo11callPtrInfoERNS_15MachineFunctionEPKNS_11GlobalValueE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.llvm::MachinePointerInfo") align 8 captures(none) initializes((0, 21)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(116) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.c = tail call noundef ptr @_ZN4llvm24PseudoSourceValueManager23getGlobalValueCallEntryEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %3) #19 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or i64 %i.d, 4
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !305
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.g, align 4, !tbaa !306
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !308
  br label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !309
  ret void
}

declare noundef ptr @_ZN4llvm24PseudoSourceValueManager23getGlobalValueCallEntryEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm16MipsFunctionInfo20getMoveF64ViaSpillFIERNS_15MachineFunctionEPKNS_15MCRegisterClassE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(116) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148, !nonnull !14, !align !253 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !479  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !263
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !283
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !284
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %i.q = load i32, ptr %i.p, align 8, !tbaa !285
  %i.r = mul i32 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = load i16, ptr %i.s, align 4, !tbaa !287
  %i.u = zext i16 %i.t to i32
  %i.v = add i32 %i.r, %i.u
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !289
  %i.aa = lshr i32 %i.z, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !290
  %i.ae = lshr i32 %i.ad, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 false)
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = sub nsw i8 63, %i.ah
  %i.aj = tail call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.k, i64 noundef %i.ab, i8 %i.ai, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #19 ; 2 uses
  store i32 %i.aj, ptr %i.g, align 8, !tbaa !479
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = phi i32 [ %i.aj, %bb.b ], [ %i.h, %bb.a ]
  ret i32 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm16MipsFunctionInfo6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_PKN4llvm19Mips16HardFloatInfo13FuncSignatureEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_PKN4llvm19Mips16HardFloatInfo13FuncSignatureEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !480

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #7

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #7

declare void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #7

declare void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #7

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !312, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !312, !range !13, !noundef !14
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !13
  %i.j = load i8, ptr %i.d, align 8, !range !13
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #7

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !313  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !481
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !313
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !313
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !313
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #19 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !313 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !481
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !31

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !313
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !313
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !30
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313
end_hunk_0
begin_hunk_1_@llvm.assume
!86 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !86, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !87, i64 0}
!89 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !88, i64 0}
!90 = !{!"p2 _ZTSN4llvm8MCSymbolE", !11, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE12_Vector_implE", !91, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE", !92, i64 0}
!94 = !{!"_ZTSSt6vectorIPN4llvm8MCSymbolESaIS2_EE", !93, i64 0}
!95 = !{!"p1 _ZTSN4llvm14LandingPadInfoE", !10, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE12_Vector_implE", !96, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE", !97, i64 0}
!99 = !{!"_ZTSSt6vectorIN4llvm14LandingPadInfoESaIS1_EE", !98, i64 0}
!100 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolENS_11SmallVectorIjLj4EEEEE", !10, i64 0}
!101 = !{!"p1 int", !10, i64 0}
!102 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !100, i64 0, !101, i64 8, !5, i64 16, !5, i64 20}
!103 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_17MachineBasicBlockEjEE", !10, i64 0}
!104 = !{!"_ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !103, i64 0, !101, i64 8, !5, i64 16, !5, i64 20}
!105 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolEjEE", !10, i64 0}
!106 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEE", !105, i64 0, !101, i64 8, !5, i64 16, !5, i64 20}
!107 = !{!"p1 _ZTSSt4pairIPN4llvm8MCSymbolEPNS0_6MDNodeEE", !10, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE12_Vector_implE", !108, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !109, i64 0}
!111 = !{!"_ZTSSt6vectorISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !110, i64 0}
!112 = !{!"_ZTSN4llvm17BasicBlockSectionE", !4, i64 0}
!113 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10UniqueBBIDENS_11SmallVectorIjLj12EEEEE", !10, i64 0}
!114 = !{!"_ZTSN4llvm8DenseMapINS_10UniqueBBIDENS_11SmallVectorIjLj12EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !113, i64 0, !101, i64 8, !5, i64 16, !5, i64 20}
!115 = !{!"p2 _ZTSN4llvm11GlobalValueE", !11, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE12_Vector_implE", !116, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE", !117, i64 0}
!119 = !{!"_ZTSSt6vectorIPKN4llvm11GlobalValueESaIS3_EE", !118, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !120, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorIjSaIjEE", !122, i64 0}
!124 = !{!"_ZTSN4llvm13EHPersonalityE", !4, i64 0}
!125 = !{!"p1 _ZTSN4llvm15MachineFunction8DelegateE", !10, i64 0}
!126 = !{!"p1 _ZTSN4llvm19GISelChangeObserverE", !10, i64 0}
!127 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoEEE", !10, i64 0}
!128 = !{!"_ZTSN4llvm8DenseMapIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !127, i64 0, !101, i64 8, !5, i64 16, !5, i64 20}
!129 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_12MachineInstrENS_15MachineFunction16CalledGlobalInfoEEE", !10, i64 0}
!130 = !{!"_ZTSN4llvm8DenseMapIPKNS_12MachineInstrENS_15MachineFunction16CalledGlobalInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !129, i64 0, !101, i64 8, !5, i64 16, !5, i64 20}
!131 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15MachineFunction15VariableDbgInfoEvEE", !15, i64 0}
!132 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15MachineFunction15VariableDbgInfoELb1EEE", !131, i64 0}
!133 = !{!"_ZTSN4llvm15SmallVectorImplINS_15MachineFunction15VariableDbgInfoEEE", !132, i64 0}
!134 = !{!"_ZTSN4llvm18SmallVectorStorageINS_15MachineFunction15VariableDbgInfoELj4EEE", !4, i64 0}
!135 = !{!"_ZTSN4llvm11SmallVectorINS_15MachineFunction15VariableDbgInfoELj4EEE", !133, i64 0, !134, i64 16}
!136 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15MachineFunction17DebugSubstitutionEvEE", !15, i64 0}
!137 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15MachineFunction17DebugSubstitutionELb1EEE", !136, i64 0}
!138 = !{!"_ZTSN4llvm15SmallVectorImplINS_15MachineFunction17DebugSubstitutionEEE", !137, i64 0}
!139 = !{!"_ZTSN4llvm18SmallVectorStorageINS_15MachineFunction17DebugSubstitutionELj8EEE", !4, i64 0}
!140 = !{!"_ZTSN4llvm11SmallVectorINS_15MachineFunction17DebugSubstitutionELj8EEE", !138, i64 0, !139, i64 16}
!141 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjNS_15MachineFunction19DebugPHIRegallocPosEEE", !10, i64 0}
!142 = !{!"_ZTSN4llvm8DenseMapIjNS_15MachineFunction19DebugPHIRegallocPosENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEE", !141, i64 0, !101, i64 8, !5, i64 16, !5, i64 20}
!143 = !{!"_ZTSN4llvm15MachineFunctionE", !40, i64 0, !41, i64 8, !42, i64 16, !43, i64 24, !44, i64 32, !45, i64 40, !46, i64 48, !47, i64 56, !48, i64 64, !49, i64 72, !50, i64 80, !55, i64 88, !5, i64 112, !5, i64 116, !28, i64 120, !57, i64 200, !63, i64 208, !65, i64 288, !73, i64 296, !5, i64 312, !74, i64 316, !12, i64 317, !12, i64 318, !12, i64 319, !77, i64 320, !84, i64 328, !89, i64 336, !94, i64 360, !94, i64 384, !99, i64 408, !102, i64 432, !104, i64 456, !106, i64 480, !111, i64 504, !12, i64 528, !12, i64 529, !12, i64 530, !12, i64 531, !12, i64 532, !12, i64 533, !12, i64 534, !5, i64 536, !112, i64 540, !114, i64 544, !119, i64 568, !123, i64 592, !123, i64 616, !124, i64 640, !125, i64 648, !126, i64 656, !128, i64 664, !130, i64 688, !135, i64 712, !5, i64 856, !140, i64 864, !142, i64 1040, !12, i64 1064}
!144 = !{!"_ZTSN4llvm8RegisterE", !5, i64 0}
!145 = !{!144, !5, i64 0}
!146 = !{!143, !44, i64 32}
!147 = !{!143, !41, i64 8}
!148 = !{!143, !42, i64 16}
!149 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!150 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !149, i64 0, !18, i64 8, !4, i64 16}
!151 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !4, i64 0}
!152 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !4, i64 0}
!153 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !4, i64 0}
!154 = !{!"_ZTSN4llvm6Triple6OSTypeE", !4, i64 0}
!155 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !4, i64 0}
!156 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !4, i64 0}
!157 = !{!"_ZTSN4llvm6TripleE", !150, i64 0, !151, i64 32, !152, i64 36, !153, i64 40, !154, i64 44, !155, i64 48, !156, i64 52}
!158 = !{!"_ZTSN4llvm9StringRefE", !17, i64 0, !18, i64 8}
!159 = !{!"_ZTSN4llvm11StringTableE", !158, i64 0}
!160 = !{!"p1 _ZTSN4llvm18SubtargetFeatureKVE", !10, i64 0}
!161 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetFeatureKVEEE", !160, i64 0, !18, i64 8}
!162 = !{!"p1 _ZTSN4llvm18SubtargetSubTypeKVE", !10, i64 0}
!163 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetSubTypeKVEEE", !162, i64 0, !18, i64 8}
!164 = !{!"p1 _ZTSN4llvm12MCSchedModelE", !10, i64 0}
!165 = !{!"p1 _ZTSN4llvm19MCWriteProcResEntryE", !10, i64 0}
!166 = !{!"p1 _ZTSN4llvm19MCWriteLatencyEntryE", !10, i64 0}
!167 = !{!"p1 _ZTSN4llvm18MCReadAdvanceEntryE", !10, i64 0}
!168 = !{!"p1 _ZTSN4llvm10InstrStageE", !10, i64 0}
!169 = !{!"_ZTSSt5arrayImLm6EE", !4, i64 0}
!170 = !{!"_ZTSN4llvm13FeatureBitsetE", !169, i64 0}
!171 = !{!"_ZTSN4llvm15MCSubtargetInfoE", !157, i64 8, !150, i64 64, !150, i64 96, !159, i64 128, !161, i64 144, !163, i64 160, !164, i64 176, !165, i64 184, !166, i64 192, !167, i64 200, !164, i64 208, !168, i64 216, !101, i64 224, !101, i64 232, !170, i64 240, !150, i64 288}
!172 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjbEE", !10, i64 0}
!173 = !{!"_ZTSN4llvm8DenseMapIjbNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjbEEEE", !172, i64 0, !101, i64 8, !5, i64 16, !5, i64 20}
!174 = !{!"_ZTSN4llvm19TargetSubtargetInfoE", !171, i64 0, !173, i64 320}
!175 = !{!"_ZTSN4llvm20MipsGenSubtargetInfoE", !174, i64 0}
!176 = !{!"_ZTSN4llvm13MipsSubtarget12MipsArchEnumE", !4, i64 0}
!177 = !{!"_ZTSN4llvm13MipsSubtarget3CPUE", !4, i64 0}
!178 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm5AlignEE", !4, i64 0, !12, i64 1}
!179 = !{!"_ZTSSt17_Optional_payloadIN4llvm5AlignELb1ELb1ELb1EE", !178, i64 0}
!180 = !{!"_ZTSSt14_Optional_baseIN4llvm5AlignELb1ELb1EE", !179, i64 0}
!181 = !{!"_ZTSSt8optionalIN4llvm5AlignEE", !180, i64 0}
!182 = !{!"_ZTSN4llvm10MaybeAlignE", !181, i64 0}
!183 = !{!"_ZTSN4llvm13MipsSubtargetUt_E", !4, i64 0}
!184 = !{!"p1 _ZTSN4llvm17MipsTargetMachineE", !10, i64 0}
!185 = !{!"p1 _ZTSN4llvm22SelectionDAGTargetInfoE", !10, i64 0}
!186 = !{!"_ZTSSt10_Head_baseILm0EPKN4llvm22SelectionDAGTargetInfoELb0EE", !185, i64 0}
!187 = !{!"_ZTSSt11_Tuple_implILm0EJPKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EEE", !186, i64 0}
!188 = !{!"_ZTSSt5tupleIJPKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EEE", !187, i64 0}
!189 = !{!"_ZTSSt15__uniq_ptr_implIKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EE", !188, i64 0}
!190 = !{!"_ZTSSt15__uniq_ptr_dataIKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_ELb1ELb1EE", !189, i64 0}
!191 = !{!"_ZTSSt10unique_ptrIKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EE", !190, i64 0}
!192 = !{!"p1 _ZTSN4llvm13MipsInstrInfoE", !10, i64 0}
!193 = !{!"_ZTSSt10_Head_baseILm0EPKN4llvm13MipsInstrInfoELb0EE", !192, i64 0}
!194 = !{!"_ZTSSt11_Tuple_implILm0EJPKN4llvm13MipsInstrInfoESt14default_deleteIS2_EEE", !193, i64 0}
!195 = !{!"_ZTSSt5tupleIJPKN4llvm13MipsInstrInfoESt14default_deleteIS2_EEE", !194, i64 0}
!196 = !{!"_ZTSSt15__uniq_ptr_implIKN4llvm13MipsInstrInfoESt14default_deleteIS2_EE", !195, i64 0}
!197 = !{!"_ZTSSt15__uniq_ptr_dataIKN4llvm13MipsInstrInfoESt14default_deleteIS2_ELb1ELb1EE", !196, i64 0}
!198 = !{!"_ZTSSt10unique_ptrIKN4llvm13MipsInstrInfoESt14default_deleteIS2_EE", !197, i64 0}
!199 = !{!"p1 _ZTSN4llvm17MipsFrameLoweringE", !10, i64 0}
!200 = !{!"_ZTSSt10_Head_baseILm0EPKN4llvm17MipsFrameLoweringELb0EE", !199, i64 0}
!201 = !{!"_ZTSSt11_Tuple_implILm0EJPKN4llvm17MipsFrameLoweringESt14default_deleteIS2_EEE", !200, i64 0}
!202 = !{!"_ZTSSt5tupleIJPKN4llvm17MipsFrameLoweringESt14default_deleteIS2_EEE", !201, i64 0}
!203 = !{!"_ZTSSt15__uniq_ptr_implIKN4llvm17MipsFrameLoweringESt14default_deleteIS2_EE", !202, i64 0}
!204 = !{!"_ZTSSt15__uniq_ptr_dataIKN4llvm17MipsFrameLoweringESt14default_deleteIS2_ELb1ELb1EE", !203, i64 0}
!205 = !{!"_ZTSSt10unique_ptrIKN4llvm17MipsFrameLoweringESt14default_deleteIS2_EE", !204, i64 0}
!206 = !{!"p1 _ZTSN4llvm18MipsTargetLoweringE", !10, i64 0}
!207 = !{!"_ZTSSt10_Head_baseILm0EPKN4llvm18MipsTargetLoweringELb0EE", !206, i64 0}
!208 = !{!"_ZTSSt11_Tuple_implILm0EJPKN4llvm18MipsTargetLoweringESt14default_deleteIS2_EEE", !207, i64 0}
!209 = !{!"_ZTSSt5tupleIJPKN4llvm18MipsTargetLoweringESt14default_deleteIS2_EEE", !208, i64 0}
!210 = !{!"_ZTSSt15__uniq_ptr_implIKN4llvm18MipsTargetLoweringESt14default_deleteIS2_EE", !209, i64 0}
!211 = !{!"_ZTSSt15__uniq_ptr_dataIKN4llvm18MipsTargetLoweringESt14default_deleteIS2_ELb1ELb1EE", !210, i64 0}
!212 = !{!"_ZTSSt10unique_ptrIKN4llvm18MipsTargetLoweringESt14default_deleteIS2_EE", !211, i64 0}
!213 = !{!"p1 _ZTSN4llvm12CallLoweringE", !10, i64 0}
!214 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12CallLoweringELb0EE", !213, i64 0}
!215 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12CallLoweringESt14default_deleteIS1_EEE", !214, i64 0}
!216 = !{!"_ZTSSt5tupleIJPN4llvm12CallLoweringESt14default_deleteIS1_EEE", !215, i64 0}
!217 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12CallLoweringESt14default_deleteIS1_EE", !216, i64 0}
!218 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12CallLoweringESt14default_deleteIS1_ELb1ELb1EE", !217, i64 0}
!219 = !{!"_ZTSSt10unique_ptrIN4llvm12CallLoweringESt14default_deleteIS1_EE", !218, i64 0}
!220 = !{!"p1 _ZTSN4llvm13LegalizerInfoE", !10, i64 0}
!221 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm13LegalizerInfoELb0EE", !220, i64 0}
!222 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm13LegalizerInfoESt14default_deleteIS1_EEE", !221, i64 0}
!223 = !{!"_ZTSSt5tupleIJPN4llvm13LegalizerInfoESt14default_deleteIS1_EEE", !222, i64 0}
!224 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm13LegalizerInfoESt14default_deleteIS1_EE", !223, i64 0}
!225 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm13LegalizerInfoESt14default_deleteIS1_ELb1ELb1EE", !224, i64 0}
!226 = !{!"_ZTSSt10unique_ptrIN4llvm13LegalizerInfoESt14default_deleteIS1_EE", !225, i64 0}
!227 = !{!"p1 _ZTSN4llvm16RegisterBankInfoE", !10, i64 0}
!228 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm16RegisterBankInfoELb0EE", !227, i64 0}
!229 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm16RegisterBankInfoESt14default_deleteIS1_EEE", !228, i64 0}
!230 = !{!"_ZTSSt5tupleIJPN4llvm16RegisterBankInfoESt14default_deleteIS1_EEE", !229, i64 0}
!231 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm16RegisterBankInfoESt14default_deleteIS1_EE", !230, i64 0}
!232 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm16RegisterBankInfoESt14default_deleteIS1_ELb1ELb1EE", !231, i64 0}
!233 = !{!"_ZTSSt10unique_ptrIN4llvm16RegisterBankInfoESt14default_deleteIS1_EE", !232, i64 0}
!234 = !{!"p1 _ZTSN4llvm19InstructionSelectorE", !10, i64 0}
!235 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm19InstructionSelectorELb0EE", !234, i64 0}
!236 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm19InstructionSelectorESt14default_deleteIS1_EEE", !235, i64 0}
!237 = !{!"_ZTSSt5tupleIJPN4llvm19InstructionSelectorESt14default_deleteIS1_EEE", !236, i64 0}
!238 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm19InstructionSelectorESt14default_deleteIS1_EE", !237, i64 0}
!239 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm19InstructionSelectorESt14default_deleteIS1_ELb1ELb1EE", !238, i64 0}
!240 = !{!"_ZTSSt10unique_ptrIN4llvm19InstructionSelectorESt14default_deleteIS1_EE", !239, i64 0}
!241 = !{!"_ZTSN4llvm13MipsSubtargetE", !175, i64 0, !176, i64 344, !177, i64 348, !12, i64 352, !12, i64 353, !12, i64 354, !12, i64 355, !12, i64 356, !12, i64 357, !12, i64 358, !12, i64 359, !12, i64 360, !12, i64 361, !12, i64 362, !12, i64 363, !12, i64 364, !12, i64 365, !12, i64 366, !12, i64 367, !12, i64 368, !12, i64 369, !12, i64 370, !12, i64 371, !12, i64 372, !12, i64 373, !12, i64 374, !12, i64 375, !12, i64 376, !12, i64 377, !12, i64 378, !12, i64 379, !12, i64 380, !12, i64 381, !12, i64 382, !12, i64 383, !12, i64 384, !12, i64 385, !12, i64 386, !12, i64 387, !12, i64 388, !12, i64 389, !12, i64 390, !12, i64 391, !12, i64 392, !12, i64 393, !12, i64 394, !12, i64 395, !12, i64 396, !12, i64 397, !74, i64 398, !182, i64 399, !183, i64 404, !184, i64 408, !157, i64 416, !191, i64 472, !198, i64 480, !205, i64 488, !212, i64 496, !219, i64 504, !226, i64 512, !233, i64 520, !240, i64 528}
!242 = !{!241, !12, i64 375}
!243 = !{!241, !12, i64 377}
!244 = !{!"_ZTSN4llvm11MipsABIInfo3ABIE", !4, i64 0}
!245 = !{!"_ZTSN4llvm11MipsABIInfoE", !244, i64 0}
!246 = !{!245, !244, i64 0}
!247 = !{!5, !5, i64 0}
!248 = !{!"_ZTSN4llvm6detail13PunnedPointerIPNS_15ilist_node_baseILb1EvEEEE", !4, i64 0}
!249 = !{!"_ZTSN4llvm14PointerIntPairIPNS_15ilist_node_baseILb1EvEELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !248, i64 0}
!250 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb1EvEE", !10, i64 0}
!251 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb1EvEELb1EEE", !249, i64 0, !250, i64 8}
!252 = !{!251, !250, i64 8}
!253 = !{i64 8}
!254 = !{!"p1 _ZTSN4llvm17MachineBasicBlock16RegisterMaskPairE", !10, i64 0}
!255 = !{!"_ZTSNSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_Vector_impl_dataE", !254, i64 0, !254, i64 8, !254, i64 16}
!256 = !{!18, !18, i64 0}
!257 = !{!"p1 short", !10, i64 0}
!258 = !{!"short", !4, i64 0}
!259 = !{!"p1 _ZTSN4llvm12MachineInstrE", !10, i64 0}
!260 = !{!"_ZTSN4llvm14MachineOperandE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !4, i64 4, !259, i64 8, !4, i64 16}
!261 = !{!260, !259, i64 8}
!262 = !{!4, !4, i64 0}
!263 = !{!143, !46, i64 48}
!264 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !10, i64 0}
!265 = !{!"_ZTSN4llvm10MCRegisterE", !5, i64 0}
!266 = !{!"p1 _ZTSN4llvm15MCRegisterClassE", !10, i64 0}
!267 = !{!"p1 _ZTSN4llvm11LaneBitmaskE", !10, i64 0}
!268 = !{!"p1 _ZTSN4llvm14MCRegisterInfo16DwarfLLVMRegPairE", !10, i64 0}
!269 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10MCRegisterEiEE", !10, i64 0}
!270 = !{!"_ZTSN4llvm8DenseMapINS_10MCRegisterEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEEEE", !269, i64 0, !101, i64 8, !5, i64 16, !5, i64 20}
!271 = !{!"p1 _ZTSSt6vectorItSaItEE", !10, i64 0}
!272 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE17_Vector_impl_dataE", !271, i64 0, !271, i64 8, !271, i64 16}
!273 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE12_Vector_implE", !272, i64 0}
!274 = !{!"_ZTSSt12_Vector_baseISt6vectorItSaItEESaIS2_EE", !273, i64 0}
!275 = !{!"_ZTSSt6vectorIS_ItSaItEESaIS1_EE", !274, i64 0}
!276 = !{!"_ZTSN4llvm14MCRegisterInfoE", !264, i64 8, !5, i64 16, !265, i64 20, !265, i64 24, !266, i64 32, !5, i64 40, !5, i64 44, !257, i64 48, !257, i64 56, !267, i64 64, !17, i64 72, !17, i64 80, !257, i64 88, !5, i64 96, !257, i64 104, !101, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !268, i64 136, !268, i64 144, !268, i64 152, !268, i64 160, !270, i64 168, !270, i64 192, !275, i64 216}
!277 = !{!"p1 _ZTSN4llvm22TargetRegisterInfoDescE", !10, i64 0}
!278 = !{!"_ZTSN4llvm8ArrayRefIjEE", !101, i64 0, !18, i64 8}
!279 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo17SubRegCoveredBitsE", !10, i64 0}
!280 = !{!"_ZTSN4llvm11LaneBitmaskE", !18, i64 0}
!281 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo12RegClassInfoE", !10, i64 0}
!282 = !{!"_ZTSN4llvm18TargetRegisterInfoE", !276, i64 0, !277, i64 240, !17, i64 248, !278, i64 256, !279, i64 272, !267, i64 280, !280, i64 288, !281, i64 296, !10, i64 304, !5, i64 312}
!283 = !{!282, !281, i64 296}
!284 = !{!276, !5, i64 40}
!285 = !{!282, !5, i64 312}
!286 = !{!"_ZTSN4llvm15MCRegisterClassE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !258, i64 16, !258, i64 18, !258, i64 20, !4, i64 22, !12, i64 23, !12, i64 24, !5, i64 28, !5, i64 32, !280, i64 40, !4, i64 48, !12, i64 49, !4, i64 50, !4, i64 51, !12, i64 52, !12, i64 53, !5, i64 56, !258, i64 60}
!287 = !{!286, !258, i64 20}
!288 = !{!"_ZTSN4llvm18TargetRegisterInfo12RegClassInfoE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!289 = !{!288, !5, i64 4}
!290 = !{!288, !5, i64 8}
!291 = !{!"_ZTSN4llvm19MachineFunctionInfoE"}
!292 = !{!"_ZTSSt4lessIPKcE"}
!293 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !292, i64 0}
!294 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_PKN4llvm19Mips16HardFloatInfo13FuncSignatureEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !293, i64 0, !35, i64 8}
!295 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_PKN4llvm19Mips16HardFloatInfo13FuncSignatureEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE", !294, i64 0}
!296 = !{!"_ZTSSt3mapIPKcPKN4llvm19Mips16HardFloatInfo13FuncSignatureESt4lessIS1_ESaISt4pairIKS1_S6_EEE", !295, i64 0}
!297 = !{!"_ZTSN4llvm16MipsFunctionInfoE", !291, i64 0, !296, i64 8, !144, i64 56, !144, i64 60, !5, i64 64, !12, i64 68, !5, i64 72, !12, i64 76, !4, i64 80, !12, i64 96, !4, i64 100, !12, i64 108, !5, i64 112}
!298 = !{!78, !78, i64 0}
!299 = !{!"_ZTSN4llvm6detail13PunnedPointerIPvEE", !4, i64 0}
!300 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKNS_5ValueEPKNS_17PseudoSourceValueEEEELi2EJEEE", !299, i64 0}
!301 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKNS_5ValueEPKNS_17PseudoSourceValueEEEELi1EJS8_EEE", !300, i64 0}
!302 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKNS_5ValueEPKNS_17PseudoSourceValueEEEELi0EJS5_S8_EEE", !301, i64 0}
!303 = !{!"_ZTSN4llvm12PointerUnionIJPKNS_5ValueEPKNS_17PseudoSourceValueEEEE", !302, i64 0}
!304 = !{!"_ZTSN4llvm18MachinePointerInfoE", !303, i64 0, !18, i64 8, !5, i64 16, !4, i64 20}
!305 = !{!304, !18, i64 8}
!306 = !{!304, !4, i64 20}
!307 = !{!"_ZTSN4llvm17PseudoSourceValueE", !5, i64 8, !5, i64 12}
!308 = !{!307, !5, i64 12}
!309 = !{!304, !5, i64 16}
!310 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!311 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !310, i64 0, !12, i64 8, !12, i64 9}
!312 = !{!311, !12, i64 9}
!313 = !{!15, !5, i64 8}
!314 = distinct !{null}
!315 = !{!"_ZTSSt14_Function_base", !4, i64 0, !10, i64 16}
!316 = !{!315, !10, i64 16}
!317 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !11, i64 0, !5, i64 8, !5, i64 12, !12, i64 16}
!318 = !{!317, !12, i64 16}
!319 = !{!317, !11, i64 0}
!320 = distinct !{null, null}
!321 = distinct !{null, null, null}
!322 = distinct !{!322, !38}
!323 = distinct !{!323, !38}
!324 = !{!35, !32, i64 0}
!325 = !{!35, !33, i64 16}
!326 = !{!35, !33, i64 24}
!327 = !{!35, !18, i64 32}
!328 = !{!"p1 _ZTSSt8_Rb_treeIPKcSt4pairIKS1_PKN4llvm19Mips16HardFloatInfo13FuncSignatureEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE", !10, i64 0}
!329 = !{!328, !328, i64 0}
!330 = !{!33, !33, i64 0}
!331 = !{!143, !45, i64 40}
!332 = distinct !{!332, i1 false, !"_ZSt19__relocate_object_aISt4pairIN4llvm10MCRegisterENS1_8RegisterEES4_SaIS4_EEvPT_PT0_RT1_"}
!333 = distinct !{!333, !332, !"_ZSt19__relocate_object_aISt4pairIN4llvm10MCRegisterENS1_8RegisterEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!334 = distinct !{!334, !332, !"_ZSt19__relocate_object_aISt4pairIN4llvm10MCRegisterENS1_8RegisterEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!335 = distinct !{!335, !38}
!336 = distinct !{!336, i1 false, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_"}
!337 = distinct !{!337, !336, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!338 = distinct !{!338, !336, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!339 = distinct !{!339, !38}
!340 = distinct !{!340, i1 false, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj"}
!341 = distinct !{!341, !340, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj: argument 0"}
!342 = distinct !{!342, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!343 = distinct !{!343, !342, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!344 = distinct !{!344, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!345 = distinct !{!345, !344, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!346 = distinct !{!346, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!347 = distinct !{!347, !346, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!348 = distinct !{!348, i1 false, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj"}
!349 = distinct !{!349, !348, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj: argument 0"}
!350 = distinct !{!350, i1 false, !"_ZN4llvm14MachineOperand8CreateESEPKcj"}
!351 = distinct !{!351, !350, !"_ZN4llvm14MachineOperand8CreateESEPKcj: argument 0"}
!352 = distinct !{!352, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!353 = distinct !{!353, !352, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!354 = distinct !{!354, i1 false, !"_ZN4llvm14MachineOperand8CreateESEPKcj"}
!355 = distinct !{!355, !354, !"_ZN4llvm14MachineOperand8CreateESEPKcj: argument 0"}
!356 = distinct !{!356, i1 false, !"_ZSt19__relocate_object_aISt4pairIN4llvm10MCRegisterENS1_8RegisterEES4_SaIS4_EEvPT_PT0_RT1_"}
!357 = distinct !{!357, !356, !"_ZSt19__relocate_object_aISt4pairIN4llvm10MCRegisterENS1_8RegisterEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!358 = distinct !{!358, !356, !"_ZSt19__relocate_object_aISt4pairIN4llvm10MCRegisterENS1_8RegisterEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!359 = distinct !{!359, i1 false, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_"}
!360 = distinct !{!360, !359, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!361 = distinct !{!361, !359, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!362 = distinct !{!362, i1 false, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj"}
!363 = distinct !{!363, !362, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj: argument 0"}
!364 = distinct !{!364, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!365 = distinct !{!365, !364, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!366 = distinct !{!366, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!367 = distinct !{!367, !366, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!368 = distinct !{!368, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!369 = distinct !{!369, !368, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!370 = distinct !{!370, i1 false, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj"}
!371 = distinct !{!371, !370, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj: argument 0"}
!372 = distinct !{!372, i1 false, !"_ZSt19__relocate_object_aISt4pairIN4llvm10MCRegisterENS1_8RegisterEES4_SaIS4_EEvPT_PT0_RT1_"}
!373 = distinct !{!373, !372, !"_ZSt19__relocate_object_aISt4pairIN4llvm10MCRegisterENS1_8RegisterEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!374 = distinct !{!374, !372, !"_ZSt19__relocate_object_aISt4pairIN4llvm10MCRegisterENS1_8RegisterEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!375 = distinct !{!375, i1 false, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_"}
!376 = distinct !{!376, !375, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!377 = distinct !{!377, !375, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!378 = distinct !{!378, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!379 = distinct !{!379, !378, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!380 = distinct !{!380, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!381 = distinct !{!381, !380, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!382 = !{!67, !66, i64 8}
!383 = !{!"p1 _ZTSSt4pairIN4llvm10MCRegisterENS0_8RegisterEE", !10, i64 0}
!384 = !{!"_ZTSNSt12_Vector_baseISt4pairIN4llvm10MCRegisterENS1_8RegisterEESaIS4_EE17_Vector_impl_dataE", !383, i64 0, !383, i64 8, !383, i64 16}
!385 = !{!384, !383, i64 8}
!386 = !{!384, !383, i64 16}
!387 = !{!384, !383, i64 0}
!388 = !{!333}
!389 = !{!334}
!390 = !{!255, !254, i64 8}
!391 = !{!255, !254, i64 16}
!392 = !{!255, !254, i64 0}
!393 = !{i64 0, i64 4, !247, i64 8, i64 8, !256}
!394 = !{!338, !337}
!395 = !{!143, !40, i64 0}
!396 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !10, i64 0}
!397 = !{!"_ZTSN4llvm11MCInstrInfoE", !396, i64 0, !101, i64 8, !17, i64 16, !17, i64 24, !10, i64 32, !5, i64 40, !257, i64 48, !258, i64 56}
!398 = !{!397, !396, i64 0}
!399 = !{!341}
!400 = !{!343}
!401 = !{!345}
!402 = !{!347}
!403 = !{!349}
!404 = !{!351}
!405 = !{!353}
!406 = !{!355}
!407 = !{!357}
!408 = !{!358}
!409 = !{!361, !360}
!410 = !{!363}
!411 = !{!365}
!412 = !{!367}
!413 = !{!369}
!414 = !{!371}
!415 = !{!373}
!416 = !{!374}
!417 = !{!377, !376}
!418 = !{!379}
!419 = !{!381}
!420 = distinct !{!420, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!421 = distinct !{!421, !420, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!422 = !{!"_ZTSN4llvm10ilist_nodeINS_17MachineBasicBlockEJEEE", !69, i64 0}
!423 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_17MachineBasicBlockENS_15MachineFunctionEJEEE", !422, i64 0}
!424 = !{!"p1 _ZTSN4llvm10BasicBlockE", !10, i64 0}
!425 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !10, i64 0}
!426 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !10, i64 0}
!427 = !{!"_ZTSN4llvm12ilist_traitsINS_12MachineInstrEEE", !426, i64 0}
!428 = !{!"_ZTSN4llvm15ilist_node_baseILb1EvEE", !251, i64 0}
!429 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !428, i64 0}
!430 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !429, i64 0}
!431 = !{!"_ZTSN4llvm12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !430, i64 0}
!432 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEEE", !427, i64 0, !431, i64 8}
!433 = !{!"_ZTSN4llvm6iplistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !432, i64 0}
!434 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_17MachineBasicBlockEvEE", !15, i64 0}
!435 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EEE", !434, i64 0}
!436 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEEE", !435, i64 0}
!437 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj4EEE", !4, i64 0}
!438 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEE", !436, i64 0, !437, i64 16}
!439 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj2EEE", !4, i64 0}
!440 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEE", !436, i64 0, !439, i64 16}
!441 = !{!"p1 _ZTSN4llvm17BranchProbabilityE", !10, i64 0}
!442 = !{!"_ZTSNSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE17_Vector_impl_dataE", !441, i64 0, !441, i64 8, !441, i64 16}
!443 = !{!"_ZTSNSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE12_Vector_implE", !442, i64 0}
!444 = !{!"_ZTSSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE", !443, i64 0}
!445 = !{!"_ZTSSt6vectorIN4llvm17BranchProbabilityESaIS1_EE", !444, i64 0}
!446 = !{!"_ZTSSt22_Optional_payload_baseImE", !4, i64 0, !12, i64 8}
!447 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !446, i64 0}
!448 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !447, i64 0}
!449 = !{!"_ZTSSt8optionalImE", !448, i64 0}
!450 = !{!"_ZTSNSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_Vector_implE", !255, i64 0}
!451 = !{!"_ZTSSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE", !450, i64 0}
!452 = !{!"_ZTSSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE", !451, i64 0}
!453 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm10UniqueBBIDEE", !4, i64 0, !12, i64 8}
!454 = !{!"_ZTSSt17_Optional_payloadIN4llvm10UniqueBBIDELb1ELb1ELb1EE", !453, i64 0}
!455 = !{!"_ZTSSt14_Optional_baseIN4llvm10UniqueBBIDELb1ELb1EE", !454, i64 0}
!456 = !{!"_ZTSSt8optionalIN4llvm10UniqueBBIDEE", !455, i64 0}
!457 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIjvEE", !15, i64 0}
!458 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIjLb1EEE", !457, i64 0}
!459 = !{!"_ZTSN4llvm15SmallVectorImplIjEE", !458, i64 0}
!460 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj12EEE", !4, i64 0}
!461 = !{!"_ZTSN4llvm11SmallVectorIjLj12EEE", !459, i64 0, !460, i64 16}
!462 = !{!"_ZTSN4llvm12MBBSectionID11SectionTypeE", !4, i64 0}
!463 = !{!"_ZTSN4llvm12MBBSectionIDE", !462, i64 0, !5, i64 4}
!464 = !{!"p1 _ZTSN4llvm8MCSymbolE", !10, i64 0}
!465 = !{!"_ZTSN4llvm17MachineBasicBlockE", !423, i64 0, !424, i64 16, !5, i64 24, !5, i64 28, !425, i64 32, !433, i64 40, !438, i64 64, !440, i64 112, !445, i64 144, !449, i64 168, !452, i64 184, !74, i64 208, !5, i64 212, !12, i64 216, !12, i64 217, !5, i64 220, !424, i64 224, !12, i64 232, !12, i64 233, !12, i64 234, !12, i64 235, !12, i64 236, !456, i64 240, !461, i64 256, !463, i64 320, !12, i64 328, !12, i64 329, !12, i64 330, !464, i64 336, !464, i64 344, !464, i64 352}
!466 = !{!465, !425, i64 32}
!467 = !{!"p1 _ZTSN4llvm10DILocationE", !10, i64 0}
!468 = !{!467, !467, i64 0}
!469 = !{!"_ZTSN4llvm8DebugLocE", !467, i64 0}
!470 = !{!"p1 _ZTSN4llvm6MDNodeE", !10, i64 0}
!471 = !{!"p1 _ZTSN4llvm5ValueE", !10, i64 0}
!472 = !{!"_ZTSN4llvm10MIMetadataE", !469, i64 0, !470, i64 8, !470, i64 16, !471, i64 24}
!473 = !{!472, !470, i64 8}
!474 = !{!472, !470, i64 16}
!475 = !{!472, !471, i64 24}
!476 = !{!421}
!477 = !{!297, !12, i64 76}
!478 = !{!297, !12, i64 96}
!479 = !{!297, !5, i64 112}
!480 = distinct !{!480, !38}
!481 = !{!15, !5, i64 12}
!482 = distinct !{!482, !38}
!483 = !{!34, !32, i64 0}
!484 = !{!34, !33, i64 8}
!485 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !311, i64 0}
!486 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !485, i64 0}
!487 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !12, i64 0, !486, i64 8}
!488 = !{!487, !12, i64 0}
!489 = !{!311, !12, i64 8}
!490 = !{!17, !17, i64 0}
end_hunk_1
