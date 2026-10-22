Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64InstructionSelector?download=true
inline.NumInlined: 8919
inline.NumDeleted: 2625
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN12_GLOBAL__N_126AArch64InstructionSelector6selectERN4llvm12MachineInstrE:bb.a

bb.jb:                                            ; preds = %bb.ja, %bb.iw
  %.0958 = phi i32 [ %i.bsa, %bb.iw ], [ %i.bso, %bb.ja ] ; 5 uses
  %.0957 = phi ptr [ null, %bb.iw ], [ %i.bsc, %bb.ja ] ; 2 uses
  %i.bsp = and i32 %.0958, 16
  %.not992 = icmp eq i32 %i.bsp, 0
  br i1 %.not992, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bsr = load ptr, ptr %i.bsq, align 8, !tbaa !418
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bsr, i64 209
  %i.bst = load i8, ptr %i.bss, align 1, !tbaa !1006, !range !238, !noundef !239
  %i.bsu = trunc nuw i8 %i.bst to i1
  %i.bsv = load ptr, ptr %i.bad, align 8, !tbaa !507, !nonnull !239, !align !364
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 8
  %i.bsx = load ptr, ptr %i.bsw, align 8, !tbaa !510
  %.neg = select i1 %i.bsu, i64 -1028, i64 -1027
  %i.bsy = getelementptr inbounds [32 x i8], ptr %i.bsx, i64 %.neg
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bsy) #24
  %i.bsz = load ptr, ptr %i.bao, align 8, !tbaa !473
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsz, i64 32 ; 2 uses
  %i.btb = load i32, ptr %i.bta, align 8
  %i.btc = shl i32 %.0958, 8
  %i.btd = and i32 %i.btc, 1048320
  %i.bte = and i32 %i.btb, -1048321
  %i.btf = or disjoint i32 %i.bte, %i.btd
  store i32 %i.btf, ptr %i.bta, align 8
  call void @_ZN4llvm12MachineInstr25addImplicitDefUseOperandsERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(1065) %i.k) #24
  br label %bb.jj

bb.jd:                                            ; preds = %bb.jb
  %i.btg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bth = load ptr, ptr %i.btg, align 8, !tbaa !552, !nonnull !239, !align !364 ; 2 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 1052
  %i.btj = load i32, ptr %i.bti, align 4, !tbaa !648 ; 2 uses
  %i.btk = icmp eq i32 %i.btj, 4
  br i1 %i.btk, label %bb.je, label %bb.jg

bb.je:                                            ; preds = %bb.jd
  %i.btl = call noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728) %i.bth) #24
  br i1 %i.btl, label %._crit_edge, label %bb.jf

._crit_edge:                                      ; preds = %bb.je
  %.pre1643 = load ptr, ptr %i.btg, align 8, !tbaa !552
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1643, i64 1052
  %.pre1644 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !648
  br label %bb.jg

bb.jf:                                            ; preds = %bb.je
  call fastcc void @_ZN12_GLOBAL__N_126AArch64InstructionSelector21materializeLargeCMValERN4llvm12MachineInstrEPKNS1_5ValueEj(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %.0957, i32 noundef %.0958)
  %i.btm = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #24 ; 0 uses
  br label %_ZN4llvm16isShiftedMask_64Em.exit.thread

bb.jg:                                            ; preds = %._crit_edge, %bb.jd
  %i.btn = phi i32 [ %.pre1644, %._crit_edge ], [ %i.btj, %bb.jd ]
  %i.bto = icmp eq i32 %i.btn, 0
  %i.btp = load ptr, ptr %i.bad, align 8, !tbaa !507, !nonnull !239, !align !364
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 8
  %i.btr = load ptr, ptr %i.btq, align 8, !tbaa !510 ; 2 uses
  %i.bts = shl i32 %.0958, 8                      ; 2 uses
  br i1 %i.bto, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.btt = getelementptr inbounds i8, ptr %i.btr, i64 -58912
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.btt) #24
  %i.btu = load ptr, ptr %i.bao, align 8, !tbaa !473
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 32 ; 2 uses
  %i.btw = load i32, ptr %i.btv, align 8
  %i.btx = and i32 %i.bts, 1044224
  %i.bty = and i32 %i.btw, -1048321
  %i.btz = or disjoint i32 %i.bty, %i.btx
  store i32 %i.btz, ptr %i.btv, align 8
  br label %bb.jj

bb.ji:                                            ; preds = %bb.jg
  %i.bua = getelementptr inbounds i8, ptr %i.btr, i64 -35904
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bua) #24
  %i.bub = load ptr, ptr %i.bao, align 8, !tbaa !473
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bub, i64 32 ; 2 uses
  %i.bud = load i32, ptr %i.buc, align 8
  %i.bue = and i32 %i.bts, 1043968
  %i.buf = and i32 %i.bud, -1048321
  %i.bug = or disjoint i32 %i.bue, %i.buf
  %i.buh = or disjoint i32 %i.bug, 256
  store i32 %i.buh, ptr %i.buc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #24
  store ptr %i.k, ptr %108, align 8, !tbaa !649
  %i.bui = getelementptr inbounds nuw i8, ptr %108, i64 8
  store ptr %1, ptr %i.bui, align 8, !tbaa !545
  %i.buj = load ptr, ptr %i.bao, align 8, !tbaa !473 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 56
  %i.bul = load i32, ptr %i.buk, align 8, !tbaa !252
  %i.bum = sext i32 %i.bul to i64
  %i.bun = shl nsw i64 %i.bum, 32
  %i.buo = getelementptr inbounds nuw i8, ptr %i.buj, i64 36
  %i.bup = load i32, ptr %i.buo, align 4, !tbaa !252
  %i.buq = zext i32 %i.bup to i64
  %i.bur = or disjoint i64 %i.bun, %i.buq
  %i.bus = or i32 %.0958, 34
  %i.but = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder16addGlobalAddressEPKNS_11GlobalValueElj(ptr noundef nonnull align 8 dereferenceable(16) %108, ptr noundef %.0957, i64 noundef %i.bur, i32 noundef %i.bus) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #24
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh, %bb.jc
  %i.buu = load ptr, ptr %i.bad, align 8, !tbaa !507, !nonnull !239, !align !364
  %i.buv = load ptr, ptr %i.baj, align 8, !tbaa !508, !nonnull !239, !align !364
  %i.buw = load ptr, ptr %i.bal, align 8, !tbaa !509, !nonnull !239, !align !364
  call void @_ZN4llvm32constrainSelectedInstRegOperandsERNS_12MachineInstrERKNS_15TargetInstrInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.buu, ptr noundef nonnull align 8 dereferenceable(316) %i.buv, ptr noundef nonnull align 8 dereferenceable(160) %i.buw) #24
  br label %_ZN4llvm16isShiftedMask_64Em.exit.thread

bb.jk:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1058
  %i.bux = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_126AArch64InstructionSelector24selectPtrAuthGlobalValueERN4llvm12MachineInstrERNS1_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(520) %i.m)
  br label %_ZN4llvm16isShiftedMask_64Em.exit.thread

bb.jl:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1058, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1058, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1058
  %i.buy = load i32, ptr %i.w, align 4, !tbaa !468
  %i.buz = icmp eq i32 %i.buy, 101                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #24
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bap, i64 36
  %i.bvb = load i32, ptr %i.bva, align 4, !tbaa !252 ; 2 uses
  %i.bvc = icmp slt i32 %i.bvb, 0
  br i1 %i.bvc, label %bb.jm, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1100

bb.jm:                                            ; preds = %bb.jl
  %i.bvd = and i32 %i.bvb, 2147483647             ; 2 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.m, i64 472
  %i.bvf = load i32, ptr %i.bve, align 8, !tbaa !459
  %i.bvg = icmp ugt i32 %i.bvf, %i.bvd
  br i1 %i.bvg, label %bb.jn, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1100

bb.jn:                                            ; preds = %bb.jm
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.bvi = zext nneg i32 %i.bvd to i64
  %i.bvj = load ptr, ptr %i.bvh, align 8, !tbaa !458
  %i.bvk = getelementptr inbounds nuw [8 x i8], ptr %i.bvj, i64 %i.bvi
  %i.bvl = load i64, ptr %i.bvk, align 8, !tbaa !252
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1100

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1100: ; preds = %bb.jl, %bb.jm, %bb.jn
  %.sroa.04.0.i1099 = phi i64 [ %i.bvl, %bb.jn ], [ 0, %bb.jm ], [ 0, %bb.jl ]
  store i64 %.sroa.04.0.i1099, ptr %109, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #24
  store i64 4612811918334230528, ptr %110, align 8
  %i.bvm = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef nonnull align 8 dereferenceable(8) %110)
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #24
  br i1 %i.bvm, label %bb.jo, label %bb.lp

bb.jo:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.bvn = call i64 @_ZNK4llvm13GMemOperation10getMemSizeEv(ptr noundef nonnull align 8 dereferenceable(80) %1) ; 3 uses
  %i.bvo = and i64 %i.bvn, 4611686018427387904
  %.not1630 = icmp eq i64 %i.bvo, 0
  br i1 %.not1630, label %_ZNK4llvm8TypeSizecvmEv.exit1103, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1103:                 ; preds = %bb.jo
  %i.bvp = and i64 %i.bvn, 4611686018427387903
  store i64 %i.bvp, ptr %i.d, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.bvq = call i64 @_ZNK4llvm13GMemOperation16getMemSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(80) %1) ; 4 uses
  %i.bvr = and i64 %i.bvq, 4611686018427387904
  %.not1631 = icmp eq i64 %i.bvr, 0
  br i1 %.not1631, label %_ZNK4llvm8TypeSizecvmEv.exit1106, label %bb.jq

bb.jq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1103
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1106:                 ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1103
  %i.bvs = trunc i64 %i.bvq to i32                ; 2 uses
  store i32 %i.bvs, ptr %i.e, align 4, !tbaa !250
  %i.bvt = load i64, ptr %i.awr, align 8, !tbaa !252 ; 4 uses
  %i.bvu = icmp ugt i64 %i.bvt, 7
  call void @llvm.assume(i1 %i.bvu)
  %i.bvv = and i64 %i.bvt, 7
  %i.bvw = icmp eq i64 %i.bvv, 0
  br i1 %i.bvw, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1106
  %i.bvx = inttoptr i64 %i.bvt to ptr             ; 2 uses
  store ptr %i.bvx, ptr %i.awr, align 8, !tbaa !252
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit

bb.js:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1106
  %i.bvy = and i64 %i.bvt, -8
  %i.bvz = inttoptr i64 %i.bvy to ptr
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvz, i64 16
  %.pre.i = load ptr, ptr %i.bwa, align 8, !tbaa !503
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit

_ZNK4llvm13GMemOperation6getMMOEv.exit:           ; preds = %bb.jr, %bb.js
  %i.bwb = phi ptr [ %i.bvx, %bb.jr ], [ %.pre.i, %bb.js ]
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwb, i64 36
  %i.bwd = load i16, ptr %i.bwc, align 4
  %i.bwe = lshr i16 %i.bwd, 8
  %i.bwf = and i16 %i.bwe, 15                     ; 2 uses
  %155 = zext nneg i16 %i.bwf to i64
  %156 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %155
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 2
  %158 = load i8, ptr %157, align 2, !tbaa !241, !range !238, !noundef !239
  %159 = trunc nuw i8 %158 to i1
  br i1 %159, label %bb.jt, label %bb.kb

bb.jt:                                            ; preds = %_ZNK4llvm13GMemOperation6getMMOEv.exit
  %i.bwg = load i32, ptr %i.w, align 4, !tbaa !468
  %i.bwh = icmp eq i32 %i.bwg, 99
  br i1 %i.bwh, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.bwi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bwj = load ptr, ptr %i.bwi, align 8, !tbaa !511, !nonnull !239, !align !364
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwj, i64 477
  %i.bwl = load i8, ptr %i.bwk, align 1, !tbaa !242, !range !238, !noundef !239
  %i.bwm = trunc nuw i8 %i.bwl to i1
  %i.bwn = icmp ne i16 %i.bwf, 7
  %or.cond11 = and i1 %i.bwn, %i.bwm
  %i.bwo = select i1 %or.cond11, ptr @_ZZN12_GLOBAL__N_126AArch64InstructionSelector6selectERN4llvm12MachineInstrEE12LDAPROpcodes, ptr @_ZZN12_GLOBAL__N_126AArch64InstructionSelector6selectERN4llvm12MachineInstrEE11LDAROpcodes
  br label %bb.ka

bb.jv:                                            ; preds = %bb.jt
  %i.bwp = load ptr, ptr %i.bao, align 8, !tbaa !473
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwp, i64 4
  %i.bwr = load i32, ptr %i.bwq, align 4, !tbaa !252 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #24
  %i.bws = icmp slt i32 %i.bwr, 0
  br i1 %i.bws, label %bb.jw, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1108

bb.jw:                                            ; preds = %bb.jv
  %i.bwt = and i32 %i.bwr, 2147483647             ; 2 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.m, i64 472
  %i.bwv = load i32, ptr %i.bwu, align 8, !tbaa !459
  %i.bww = icmp ugt i32 %i.bwv, %i.bwt
  br i1 %i.bww, label %bb.jx, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1108

bb.jx:                                            ; preds = %bb.jw
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.bwy = zext nneg i32 %i.bwt to i64
  %i.bwz = load ptr, ptr %i.bwx, align 8, !tbaa !458
  %i.bxa = getelementptr inbounds nuw [8 x i8], ptr %i.bwz, i64 %i.bwy
  %i.bxb = load i64, ptr %i.bxa, align 8, !tbaa !252
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1108

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1108: ; preds = %bb.jv, %bb.jw, %bb.jx
  %.sroa.04.0.i1107 = phi i64 [ %i.bxb, %bb.jx ], [ 0, %bb.jw ], [ 0, %bb.jv ]
  store i64 %.sroa.04.0.i1107, ptr %111, align 8
  %i.bxc = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %111) ; 2 uses
  %.fca.1.extract371 = extractvalue { i64, i8 } %i.bxc, 1
  %i.bxd = trunc nuw i8 %.fca.1.extract371 to i1
  br i1 %i.bxd, label %bb.jy, label %_ZNK4llvm8TypeSizecvmEv.exit1109

bb.jy:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1108
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1109:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1108
  %.fca.0.extract370 = extractvalue { i64, i8 } %i.bxc, 0
  %i.bxe = icmp eq i64 %.fca.0.extract370, 64
  %i.bxf = icmp ne i32 %i.bvs, 64
  %i.bxg = and i1 %i.bxe, %i.bxf
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #24
  br i1 %i.bxg, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1109
  %i.bxh = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.m, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 2560), ptr nonnull @.str.2, i64 0) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #24
  store i32 %i.bxh, ptr %112, align 8, !tbaa !250
  %i.bxi = getelementptr inbounds nuw i8, ptr %112, i64 16
  store i32 1, ptr %i.bxi, align 8, !tbaa !496
  %i.bxj = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildInstrEjNS_8ArrayRefINS_5DstOpEEENS1_INS_5SrcOpEEESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.s, i32 noundef 20, ptr nonnull %112, i64 1, ptr null, i64 0, i64 0) #24 ; 2 uses
  %i.bxk = extractvalue { ptr, ptr } %i.bxj, 0
  %i.bxl = extractvalue { ptr, ptr } %i.bxj, 1
  %i.bxm = load ptr, ptr %i.bao, align 8, !tbaa !473
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxm, i64 4
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.bxp = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr null, ptr %i.bxp, align 8, !tbaa !537, !alias.scope !1007
  %i.bxq = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 %i.bxo, ptr %i.bxq, align 4, !tbaa !252, !alias.scope !1007
  %i.bxr = getelementptr inbounds nuw i8, ptr %27, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bxr, i8 0, i64 16, i1 false), !alias.scope !1007
  store i32 5120, ptr %27, align 8, !alias.scope !1007
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bxl, ptr noundef nonnull align 8 dereferenceable(1065) %i.bxk, ptr noundef nonnull align 8 dereferenceable(32) %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #24
  %i.bxs = load ptr, ptr %i.bao, align 8, !tbaa !473
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.bxs, i32 %i.bxh) #24
  br label %bb.ka

bb.ka:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1109, %bb.jz, %bb.ju
  %_ZZN12_GLOBAL__N_126AArch64InstructionSelector6selectERN4llvm12MachineInstrEE7Opcodes.sink = phi ptr [ %i.bwo, %bb.ju ], [ @_ZZN12_GLOBAL__N_126AArch64InstructionSelector6selectERN4llvm12MachineInstrEE7Opcodes, %bb.jz ], [ @_ZZN12_GLOBAL__N_126AArch64InstructionSelector6selectERN4llvm12MachineInstrEE7Opcodes, %_ZNK4llvm8TypeSizecvmEv.exit1109 ]
  %i.bxt = load ptr, ptr %i.bad, align 8, !tbaa !507, !nonnull !239, !align !364
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxt, i64 8
  %i.bxv = trunc i64 %i.bvn to i32
  %i.bxw = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bxv, i1 false)
  %i.bxx = sub nsw i32 31, %i.bxw
  %i.bxy = zext i32 %i.bxx to i64
  %i.bxz = getelementptr inbounds nuw [4 x i8], ptr %_ZZN12_GLOBAL__N_126AArch64InstructionSelector6selectERN4llvm12MachineInstrEE7Opcodes.sink, i64 %i.bxy
  %i.bya = load i32, ptr %i.bxz, align 4, !tbaa !250
  %i.byb = load ptr, ptr %i.bxu, align 8, !tbaa !510
  %i.byc = zext i32 %i.bya to i64
  %i.byd = sub nsw i64 0, %i.byc
  %i.bye = getelementptr inbounds [32 x i8], ptr %i.byb, i64 %i.byd
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bye) #24
  %i.byf = load ptr, ptr %i.bad, align 8, !tbaa !507, !nonnull !239, !align !364
  %i.byg = load ptr, ptr %i.baj, align 8, !tbaa !508, !nonnull !239, !align !364
  %i.byh = load ptr, ptr %i.bal, align 8, !tbaa !509, !nonnull !239, !align !364
  call void @_ZN4llvm32constrainSelectedInstRegOperandsERNS_12MachineInstrERKNS_15TargetInstrInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.byf, ptr noundef nonnull align 8 dereferenceable(316) %i.byg, ptr noundef nonnull align 8 dereferenceable(160) %i.byh) #24
  br label %bb.lo

bb.kb:                                            ; preds = %_ZNK4llvm13GMemOperation6getMMOEv.exit
  %i.byi = load ptr, ptr %i.bao, align 8, !tbaa !473
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byi, i64 4
  %i.byk = load i32, ptr %i.byj, align 4, !tbaa !252 ; 4 uses
  %i.byl = load ptr, ptr %i.bal, align 8, !tbaa !509, !nonnull !239, !align !364
  %i.bym = load ptr, ptr %i.baj, align 8, !tbaa !508, !nonnull !239, !align !364
  %i.byn = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %i.byl, i32 %i.byk, ptr noundef nonnull align 8 dereferenceable(520) %i.m, ptr noundef nonnull align 8 dereferenceable(316) %i.bym) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #24
  %i.byo = icmp slt i32 %i.byk, 0
  br i1 %i.byo, label %bb.kc, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1112

bb.kc:                                            ; preds = %bb.kb
  %i.byp = and i32 %i.byk, 2147483647             ; 2 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %i.m, i64 472
  %i.byr = load i32, ptr %i.byq, align 8, !tbaa !459
  %i.bys = icmp ugt i32 %i.byr, %i.byp
  br i1 %i.bys, label %bb.kd, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1112

bb.kd:                                            ; preds = %bb.kc
  %i.byt = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.byu = zext nneg i32 %i.byp to i64
  %i.byv = load ptr, ptr %i.byt, align 8, !tbaa !458
  %i.byw = getelementptr inbounds nuw [8 x i8], ptr %i.byv, i64 %i.byu
  %i.byx = load i64, ptr %i.byw, align 8, !tbaa !252
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1112

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1112: ; preds = %bb.kb, %bb.kc, %bb.kd
  %.sroa.04.0.i1111 = phi i64 [ %i.byx, %bb.kd ], [ 0, %bb.kc ], [ 0, %bb.kb ]
  store i64 %.sroa.04.0.i1111, ptr %113, align 8
  %i.byy = load i32, ptr %i.w, align 4, !tbaa !468 ; 2 uses
  %i.byz = icmp eq i32 %i.byy, 106
  br i1 %i.byz, label %bb.ke, label %.critedge13

bb.ke:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1112
  %i.bza = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %113) ; 2 uses
  %.fca.1.extract349 = extractvalue { i64, i8 } %i.bza, 1
  %i.bzb = trunc nuw i8 %.fca.1.extract349 to i1
  br i1 %i.bzb, label %bb.kf, label %_ZNK4llvm8TypeSizecvmEv.exit1113

bb.kf:                                            ; preds = %bb.ke
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1113:                 ; preds = %bb.ke
  %.fca.0.extract348 = extractvalue { i64, i8 } %i.bza, 0
  %i.bzc = and i64 %i.bvq, 4294967295
  %i.bzd = icmp ugt i64 %.fca.0.extract348, %i.bzc
  br i1 %i.bzd, label %bb.kg, label %.critedge13thread-pre-split

bb.kg:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.bze = load i64, ptr %i.awr, align 8, !tbaa !252 ; 4 uses
  %i.bzf = icmp ugt i64 %i.bze, 7
  call void @llvm.assume(i1 %i.bzf)
  %i.bzg = and i64 %i.bze, 7
  %i.bzh = icmp eq i64 %i.bzg, 0
  br i1 %i.bzh, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.bzi = inttoptr i64 %i.bze to ptr             ; 2 uses
  store ptr %i.bzi, ptr %i.awr, align 8, !tbaa !252
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit1115

bb.ki:                                            ; preds = %bb.kg
  %i.bzj = and i64 %i.bze, -8
  %i.bzk = inttoptr i64 %i.bzj to ptr
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzk, i64 16
  %.pre.i1114 = load ptr, ptr %i.bzl, align 8, !tbaa !503
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit1115

_ZNK4llvm13GMemOperation6getMMOEv.exit1115:       ; preds = %bb.kh, %bb.ki
  %i.bzm = phi ptr [ %i.bzi, %bb.kh ], [ %.pre.i1114, %bb.ki ]
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzm, i64 24
  %.sroa.0.0.copyload.i1116 = load i64, ptr %i.bzn, align 8, !tbaa !252 ; 2 uses
  %.val1017 = load i32, ptr %i.byn, align 8, !tbaa !475
  %i.bzo = call fastcc noundef ptr @_ZL24getRegClassForTypeOnBankN4llvm3LLTERKNS_12RegisterBankEb(i64 %.sroa.0.0.copyload.i1116, i32 %.val1017, i1 noundef zeroext false) ; 2 uses
  %i.bzp = load ptr, ptr %i.baj, align 8, !tbaa !508, !nonnull !239, !align !364
  %i.bzq = call fastcc noundef zeroext i1 @_ZL17getSubRegForClassPKN4llvm15MCRegisterClassERKNS_18TargetRegisterInfoERj(ptr noundef %i.bzo, ptr noundef nonnull align 8 dereferenceable(316) %i.bzp, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  br i1 %i.bzq, label %bb.kj, label %.critedge1005

bb.kj:                                            ; preds = %_ZNK4llvm13GMemOperation6getMMOEv.exit1115
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #24
  store i64 %.sroa.0.0.copyload.i1116, ptr %114, align 8, !tbaa !252
  %i.bzr = getelementptr inbounds nuw i8, ptr %114, i64 16
  store i32 0, ptr %i.bzr, align 8, !tbaa !496
  %i.bzs = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildInstrEjNS_8ArrayRefINS_5DstOpEEENS1_INS_5SrcOpEEESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.s, i32 noundef 20, ptr nonnull %114, i64 1, ptr null, i64 0, i64 0) #24 ; 2 uses
  %i.bzt = extractvalue { ptr, ptr } %i.bzs, 0
  %i.bzu = extractvalue { ptr, ptr } %i.bzs, 1    ; 2 uses
  %i.bzv = load i32, ptr %i.f, align 4, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.bzw = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr null, ptr %i.bzw, align 8, !tbaa !537, !alias.scope !1008
end_hunk_0
