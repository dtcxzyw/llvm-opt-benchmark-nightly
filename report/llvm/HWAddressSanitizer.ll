Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HWAddressSanitizer?download=true
inline.NumInlined: 4610
inline.NumDeleted: 2491
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm22HWAddressSanitizerPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
bb.iq:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer15getStackBaseTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit
  %i.cnt = call noundef ptr @_ZN4llvm6memtag5getFPERNS_9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEE(ptr noundef nonnull align 8 dereferenceable(104) %162) #24 ; 2 uses
  store ptr %i.cnt, ptr %i.aom, align 8, !tbaa !599
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer11getCachedFPERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i

_ZN12_GLOBAL__N_118HWAddressSanitizer11getCachedFPERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i: ; preds = %bb.iq, %_ZN12_GLOBAL__N_118HWAddressSanitizer15getStackBaseTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit
  %i.cnu = phi ptr [ %i.cnt, %bb.iq ], [ %i.cns, %_ZN12_GLOBAL__N_118HWAddressSanitizer15getStackBaseTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit ] ; 3 uses
  %i.cnv = load i32, ptr %i.ex, align 8, !tbaa !211
  %i.cnw = zext i32 %i.cnv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #24
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.cnu, i64 8
  store i16 257, ptr %i.aov, align 8
  %i.cny = load ptr, ptr %i.cnx, align 8, !tbaa !269
  %i.cnz = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.cny, i64 noundef %i.cnw, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.coa = load ptr, ptr %i.anc, align 8, !tbaa !590, !nonnull !26, !align !193 ; 2 uses
  %i.cob = load ptr, ptr %i.coa, align 8, !tbaa !9
  %i.coc = getelementptr inbounds nuw i8, ptr %i.cob, i64 24
  %i.cod = load ptr, ptr %i.coc, align 8
  %i.coe = call noundef ptr %i.cod(ptr noundef nonnull align 8 dereferenceable(8) %i.coa, i32 noundef 27, ptr noundef nonnull %i.cnu, ptr noundef %i.cnz, i1 noundef zeroext false) #24, !inline_history !606 ; 2 uses
  %.not.not.i.i124 = icmp eq ptr %i.coe, null
  br i1 %.not.not.i.i124, label %bb.ir, label %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i

bb.ir:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer11getCachedFPERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #24
  store i16 257, ptr %i.aow, align 8
  %i.cof = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 27, ptr noundef nonnull %i.cnu, ptr noundef %i.cnz, ptr noundef nonnull align 8 dereferenceable(34) %57, ptr null, i64 0) #24 ; 3 uses
  %i.cog = load ptr, ptr %i.and, align 8, !tbaa !362, !nonnull !26, !align !193 ; 2 uses
  %.sroa.0.0.copyload.i.i.i133 = load ptr, ptr %i.ank, align 8
  %.sroa.2.0.copyload.i.i.i135 = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.coh = load ptr, ptr %i.cog, align 8, !tbaa !9
  %i.coi = getelementptr inbounds nuw i8, ptr %i.coh, i64 16
  %i.coj = load ptr, ptr %i.coi, align 8
  call void %i.coj(ptr noundef nonnull align 8 dereferenceable(8) %i.cog, ptr noundef %i.cof, ptr noundef nonnull align 8 dereferenceable(34) %60, ptr %.sroa.0.0.copyload.i.i.i133, i64 %.sroa.2.0.copyload.i.i.i135) #24, !inline_history !607
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef %i.cof) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  br label %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i

_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i: ; preds = %bb.ir, %_ZN12_GLOBAL__N_118HWAddressSanitizer11getCachedFPERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i
  %.1.i.i125 = phi ptr [ %i.coe, %_ZN12_GLOBAL__N_118HWAddressSanitizer11getCachedFPERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i ], [ %i.cof, %bb.ir ] ; 4 uses
  %.val.i126 = load i64, ptr %i.ez, align 8, !tbaa !212 ; 2 uses
  %i.cok = icmp eq i64 %.val.i126, 255
  br i1 %i.cok, label %_ZN12_GLOBAL__N_118HWAddressSanitizer9getUARTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit, label %bb.is

bb.is:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i
  %i.col = getelementptr inbounds nuw i8, ptr %.1.i.i125, i64 8
  %i.com = load ptr, ptr %i.col, align 8, !tbaa !269
  %i.con = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.com, i64 noundef %.val.i126, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  store i16 257, ptr %i.aox, align 8
  %i.coo = load ptr, ptr %i.anc, align 8, !tbaa !590, !nonnull !26, !align !193 ; 2 uses
  %i.cop = load ptr, ptr %i.coo, align 8, !tbaa !9
  %i.coq = getelementptr inbounds nuw i8, ptr %i.cop, i64 16
  %i.cor = load ptr, ptr %i.coq, align 8
  %i.cos = call noundef ptr %i.cor(ptr noundef nonnull align 8 dereferenceable(8) %i.coo, i32 noundef 29, ptr noundef nonnull %.1.i.i125, ptr noundef %i.con) #24, !inline_history !608 ; 2 uses
  %.not.not.i.i.i127 = icmp eq ptr %i.cos, null
  br i1 %.not.not.i.i.i127, label %bb.it, label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i.i128

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #24
  store i16 257, ptr %i.aoy, align 8
  %i.cot = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 29, ptr noundef nonnull %.1.i.i125, ptr noundef %i.con, ptr noundef nonnull align 8 dereferenceable(34) %58, ptr null, i64 0) #24 ; 3 uses
  %i.cou = load ptr, ptr %i.and, align 8, !tbaa !362, !nonnull !26, !align !193 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i131 = load ptr, ptr %i.ank, align 8
  %.sroa.2.0.copyload.i.i.i.i132 = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.cov = load ptr, ptr %i.cou, align 8, !tbaa !9
  %i.cow = getelementptr inbounds nuw i8, ptr %i.cov, i64 16
  %i.cox = load ptr, ptr %i.cow, align 8
  call void %i.cox(ptr noundef nonnull align 8 dereferenceable(8) %i.cou, ptr noundef %i.cot, ptr noundef nonnull align 8 dereferenceable(34) %59, ptr %.sroa.0.0.copyload.i.i.i.i131, i64 %.sroa.2.0.copyload.i.i.i.i132) #24, !inline_history !609
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef %i.cot) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  br label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i.i128

_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i.i128: ; preds = %bb.it, %bb.is
  %.1.i.i.i129 = phi ptr [ %i.cot, %bb.it ], [ %i.cos, %bb.is ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer9getUARTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

_ZN12_GLOBAL__N_118HWAddressSanitizer9getUARTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit: ; preds = %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i, %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i.i128
  %.0.i.i130 = phi ptr [ %.1.i.i.i129, %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i.i128 ], [ %.1.i.i125, %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #24
  store i8 1, ptr %i.apa, align 1, !tbaa !278
  store ptr @.str.167, ptr %61, align 8, !tbaa !20
  store i8 3, ptr %i.aoz, align 8, !tbaa !272
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i130, ptr noundef nonnull align 8 dereferenceable(34) %61) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %88)
  store ptr %.0.i.i130, ptr %i.w, align 8, !tbaa !360
  %i.coy = load ptr, ptr %i.aiq, align 8, !tbaa !28 ; 2 uses
  %i.coz = load i32, ptr %i.ais, align 8, !tbaa !306 ; 2 uses
  %i.cpa = zext i32 %i.coz to i64
  %.idx.i77 = mul nuw nsw i64 %i.cpa, 152
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.coy, i64 %.idx.i77
  %.not223.i = icmp eq i32 %i.coz, 0
  br i1 %.not223.i, label %_ZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERN4llvm25OptimizationRemarkEmitterERNS1_6memtag9StackInfoEPNS1_5ValueES8_RKNS1_13DominatorTreeERKNS1_17PostDominatorTreeERKNS1_8LoopInfoE.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer9getUARTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit
  %i.cpc = getelementptr inbounds nuw i8, ptr %.0.i137, i64 8
  br label %bb.iu

bb.iu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i, %.lr.ph.i78
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i78 ], [ %indvars.iv.next.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i ] ; 6 uses
  %.042224.i = phi ptr [ %i.coy, %.lr.ph.i78 ], [ %i.ddo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i ] ; 13 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #24
  %i.cpd = load ptr, ptr %.042224.i, align 8, !tbaa !610 ; 3 uses
  store ptr %i.cpd, ptr %i.x, align 8, !tbaa !631
  %i.cpe = getelementptr inbounds nuw i8, ptr %.042224.i, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #24
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.cpd, i64 40
  %i.cpg = load ptr, ptr %i.cpf, align 8, !tbaa !567
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cpg, i64 48
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.cpd, i64 32
  %i.cpj = load ptr, ptr %i.cpi, align 8, !tbaa !476 ; 4 uses
  %i.cpk = icmp eq ptr %i.cpj, %i.cph
  %i.cpl = getelementptr inbounds i8, ptr %i.cpj, i64 -24 ; 2 uses
  %spec.select.i.i.i80 = select i1 %i.cpk, ptr null, ptr %i.cpl
  %i.cpm = getelementptr inbounds i8, ptr %i.cpj, i64 -16
  %i.cpn = load ptr, ptr %i.cpm, align 8, !tbaa !269
  %i.cpo = load ptr, ptr %i.cpn, align 8, !tbaa !279, !nonnull !26, !align !193
  store ptr null, ptr %80, align 8, !tbaa !225
  store ptr %i.cpo, ptr %i.apd, align 8, !tbaa !228
  store ptr %i.apb, ptr %i.ape, align 8, !tbaa !229
  store ptr %i.apc, ptr %i.apf, align 8, !tbaa !231
  store ptr null, ptr %i.apg, align 8, !tbaa !233
  store i32 0, ptr %i.aph, align 8, !tbaa !244
  store i8 0, ptr %i.api, align 4, !tbaa !245
  store i8 2, ptr %i.apj, align 1, !tbaa !246
  store i8 7, ptr %i.apk, align 2, !tbaa !247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.apm, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apl, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.apb, align 8, !tbaa !9
  %i.cpp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i80, i64 24
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.cpj, i64 16
  %i.cpr = load ptr, ptr %i.cpq, align 8, !tbaa !567
  store ptr %i.cpr, ptr %i.apm, align 8, !tbaa !347
  store ptr %i.cpp, ptr %i.apn, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i79, align 8
  %i.cps = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cpl) #24
  %i.cpt = load i64, ptr %i.cps, align 8, !tbaa !568
  store i64 %i.cpt, ptr %80, align 8, !tbaa !568
  %i.cpu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ClGenerateTagsWithCalls, i64 120), align 8, !tbaa !41, !range !25, !noundef !26
  %i.cpv = trunc nuw i8 %i.cpu to i1
  br i1 %i.cpv, label %bb.iv, label %bb.iy

bb.iv:                                            ; preds = %bb.iu
  %.sroa.0.0.copyload.i.i.i119 = load ptr, ptr %i.ama, align 8, !tbaa !495
  %.sroa.2.0.copyload.i.i.i120 = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #24
  store i16 257, ptr %i.apq, align 8
  %i.cpw = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef %.sroa.0.0.copyload.i.i.i119, ptr noundef %.sroa.2.0.copyload.i.i.i120, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %77, ptr noundef null) ; 4 uses
  %i.cpx = load ptr, ptr %i.cw, align 8, !tbaa !196 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #24
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.cpw, i64 8
  store i16 257, ptr %i.apr, align 8
  %i.cpz = load ptr, ptr %i.cpy, align 8, !tbaa !269
  %i.cqa = icmp eq ptr %i.cpz, %i.cpx
  br i1 %i.cqa, label %_ZN12_GLOBAL__N_118HWAddressSanitizer18getNextTagWithCallERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.cqb = load ptr, ptr %i.ape, align 8, !tbaa !590, !nonnull !26, !align !193 ; 2 uses
  %i.cqc = load ptr, ptr %i.cqb, align 8, !tbaa !9
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cqc, i64 120
  %i.cqe = load ptr, ptr %i.cqd, align 8
  %i.cqf = call noundef ptr %i.cqe(ptr noundef nonnull align 8 dereferenceable(8) %i.cqb, i32 noundef 40, ptr noundef nonnull %i.cpw, ptr noundef %i.cpx) #24, !inline_history !632 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.cqf, null
  br i1 %.not.not.i.i.i.i, label %bb.ix, label %_ZN12_GLOBAL__N_118HWAddressSanitizer18getNextTagWithCallERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i

bb.ix:                                            ; preds = %bb.iw
  %i.cqg = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #24
  store i16 257, ptr %i.aps, align 8
  call void @_ZN4llvm8ZExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.cqg, ptr noundef nonnull %i.cpw, ptr noundef %i.cpx, ptr noundef nonnull align 8 dereferenceable(34) %76, ptr null, i64 0) #24
  %i.cqh = load ptr, ptr %i.apf, align 8, !tbaa !362, !nonnull !26, !align !193 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i121 = load ptr, ptr %i.apn, align 8
  %.sroa.2.0.copyload.i.i.i.i.i122 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i79, align 8
  %i.cqi = load ptr, ptr %i.cqh, align 8, !tbaa !9
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.cqi, i64 16
  %i.cqk = load ptr, ptr %i.cqj, align 8
  call void %i.cqk(ptr noundef nonnull align 8 dereferenceable(8) %i.cqh, ptr noundef nonnull %i.cqg, ptr noundef nonnull align 8 dereferenceable(34) %78, ptr %.sroa.0.0.copyload.i.i.i.i.i121, i64 %.sroa.2.0.copyload.i.i.i.i.i122) #24, !inline_history !633
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef nonnull %i.cqg) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer18getNextTagWithCallERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i

_ZN12_GLOBAL__N_118HWAddressSanitizer18getNextTagWithCallERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i: ; preds = %bb.ix, %bb.iw, %bb.iv
  %.1.i.i.i.i = phi ptr [ %i.cqf, %bb.iw ], [ %i.cpw, %bb.iv ], [ %i.cqg, %bb.ix ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer12getAllocaTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueEj.exit.i

bb.iy:                                            ; preds = %bb.iu
  %i.cql = load ptr, ptr %i.cpc, align 8, !tbaa !269
  %.val.i.i81 = load i32, ptr %i.cr, align 8, !tbaa !206
  %i.cqm = icmp eq i32 %.val.i.i81, 41
  br i1 %i.cqm, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %.val6.i.i = load i64, ptr %i.ez, align 8
  %i.cqn = and i64 %.val6.i.i, %indvars.iv.i
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEj.exit.i.i

bb.ja:                                            ; preds = %bb.iy
  %i.cqo = trunc nuw i64 %indvars.iv.i to i32
  %i.cqp = urem i32 %i.cqo, 36
  %.zext.i.i.i = zext nneg i32 %i.cqp to i64
  %i.cqq = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEjE9FastMasks, i64 %.zext.i.i.i
  %i.cqr = load i32, ptr %i.cqq, align 4, !tbaa !405
  %199 = zext i32 %i.cqr to i64
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEj.exit.i.i

_ZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEj.exit.i.i: ; preds = %bb.ja, %bb.iz
  %.0.i.i.i82 = phi i64 [ %i.cqn, %bb.iz ], [ %199, %bb.ja ]
  %i.cqs = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.cql, i64 noundef %.0.i.i.i82, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #24
  store i16 257, ptr %i.apo, align 8
  %i.cqt = load ptr, ptr %i.ape, align 8, !tbaa !590, !nonnull !26, !align !193 ; 2 uses
  %i.cqu = load ptr, ptr %i.cqt, align 8, !tbaa !9
  %i.cqv = getelementptr inbounds nuw i8, ptr %i.cqu, i64 16
  %i.cqw = load ptr, ptr %i.cqv, align 8
  %i.cqx = call noundef ptr %i.cqw(ptr noundef nonnull align 8 dereferenceable(8) %i.cqt, i32 noundef 31, ptr noundef nonnull %.0.i137, ptr noundef %i.cqs) #24, !inline_history !634 ; 2 uses
  %.not.not.i.i.i83 = icmp eq ptr %i.cqx, null
  br i1 %.not.not.i.i.i83, label %bb.jb, label %_ZN4llvm13IRBuilderBase9CreateXorEPNS_5ValueES2_RKNS_5TwineE.exit.i.i

bb.jb:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #24
  store i16 257, ptr %i.app, align 8
  %i.cqy = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 31, ptr noundef nonnull %.0.i137, ptr noundef %i.cqs, ptr noundef nonnull align 8 dereferenceable(34) %75, ptr null, i64 0) #24 ; 3 uses
  %i.cqz = load ptr, ptr %i.apf, align 8, !tbaa !362, !nonnull !26, !align !193 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i117 = load ptr, ptr %i.apn, align 8
  %.sroa.2.0.copyload.i.i.i.i118 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i79, align 8
  %i.cra = load ptr, ptr %i.cqz, align 8, !tbaa !9
  %i.crb = getelementptr inbounds nuw i8, ptr %i.cra, i64 16
  %i.crc = load ptr, ptr %i.crb, align 8
  call void %i.crc(ptr noundef nonnull align 8 dereferenceable(8) %i.cqz, ptr noundef %i.cqy, ptr noundef nonnull align 8 dereferenceable(34) %79, ptr %.sroa.0.0.copyload.i.i.i.i117, i64 %.sroa.2.0.copyload.i.i.i.i118) #24, !inline_history !635
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef %i.cqy) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #24
  br label %_ZN4llvm13IRBuilderBase9CreateXorEPNS_5ValueES2_RKNS_5TwineE.exit.i.i

_ZN4llvm13IRBuilderBase9CreateXorEPNS_5ValueES2_RKNS_5TwineE.exit.i.i: ; preds = %bb.jb, %_ZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEj.exit.i.i
  %.1.i.i.i84 = phi ptr [ %i.cqy, %bb.jb ], [ %i.cqx, %_ZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEj.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer12getAllocaTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueEj.exit.i

_ZN12_GLOBAL__N_118HWAddressSanitizer12getAllocaTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueEj.exit.i: ; preds = %_ZN4llvm13IRBuilderBase9CreateXorEPNS_5ValueES2_RKNS_5TwineE.exit.i.i, %_ZN12_GLOBAL__N_118HWAddressSanitizer18getNextTagWithCallERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i
  %.0.i.i = phi ptr [ %.1.i.i.i.i, %_ZN12_GLOBAL__N_118HWAddressSanitizer18getNextTagWithCallERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i ], [ %.1.i.i.i84, %_ZN4llvm13IRBuilderBase9CreateXorEPNS_5ValueES2_RKNS_5TwineE.exit.i.i ] ; 9 uses
  %i.crd = load ptr, ptr %i.x, align 8, !tbaa !631
  %i.cre = load ptr, ptr %i.cw, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #24
  store i16 257, ptr %i.apt, align 8
  %i.crf = call noundef ptr @_ZN4llvm13IRBuilderBase17CreatePointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %80, ptr noundef %i.crd, ptr noundef %i.cre, ptr noundef nonnull align 8 dereferenceable(34) %81) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #24
  %i.crg = call fastcc noundef ptr @_ZN12_GLOBAL__N_118HWAddressSanitizer12untagPointerERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(544) %198, ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef %i.crf) ; 4 uses
  %i.crh = load ptr, ptr %i.x, align 8, !tbaa !631
  %i.cri = getelementptr inbounds nuw i8, ptr %i.crh, i64 8
  %i.crj = load ptr, ptr %i.cri, align 8, !tbaa !269
  %i.crk = load i8, ptr %i.dx, align 8, !tbaa !203, !range !25, !noundef !26
  %i.crl = trunc nuw i8 %i.crk to i1
  %i.crm = load i32, ptr %i.ex, align 8, !tbaa !211
  %i.crn = zext i32 %i.crm to i64                 ; 2 uses
  %i.cro = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  br i1 %i.crl, label %bb.jc, label %bb.jg

bb.jc:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer12getAllocaTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #24
  store i16 257, ptr %i.apz, align 8
  %i.crp = load ptr, ptr %i.cro, align 8, !tbaa !269
  %i.crq = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.crp, i64 noundef %i.crn, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.crr = load ptr, ptr %i.ape, align 8, !tbaa !590, !nonnull !26, !align !193 ; 2 uses
  %i.crs = load ptr, ptr %i.crr, align 8, !tbaa !9
  %i.crt = getelementptr inbounds nuw i8, ptr %i.crs, i64 32
  %i.cru = load ptr, ptr %i.crt, align 8
  %i.crv = call noundef ptr %i.cru(ptr noundef nonnull align 8 dereferenceable(8) %i.crr, i32 noundef 26, ptr noundef nonnull %.0.i.i, ptr noundef %i.crq, i1 noundef zeroext false, i1 noundef zeroext false) #24, !inline_history !636 ; 2 uses
  %.not.not.i26.i.i = icmp eq ptr %i.crv, null
  br i1 %.not.not.i26.i.i, label %bb.jd, label %_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit.i.i

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #24
  store i8 1, ptr %i.aqa, align 8, !tbaa !272
  store i8 1, ptr %i.aqb, align 1, !tbaa !278
  %i.crw = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 26, ptr noundef nonnull %.0.i.i, ptr noundef %i.crq, ptr noundef nonnull align 8 dereferenceable(34) %65, ptr null, i64 0) #24 ; 3 uses
  %i.crx = load ptr, ptr %i.apf, align 8, !tbaa !362, !nonnull !26, !align !193 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i62.i = load ptr, ptr %i.apn, align 8
  %.sroa.2.0.copyload.i.i.i.i64.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i79, align 8
  %i.cry = load ptr, ptr %i.crx, align 8, !tbaa !9
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cry, i64 16
  %i.csa = load ptr, ptr %i.crz, align 8
  call void %i.csa(ptr noundef nonnull align 8 dereferenceable(8) %i.crx, ptr noundef %i.crw, ptr noundef nonnull align 8 dereferenceable(34) %69, ptr %.sroa.0.0.copyload.i.i.i.i62.i, i64 %.sroa.2.0.copyload.i.i.i.i64.i) #24, !inline_history !637
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef %i.crw) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #24
  br label %_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit.i.i

_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit.i.i: ; preds = %bb.jd, %bb.jc
  %.1.i27.i.i = phi ptr [ %i.crv, %bb.jc ], [ %i.crw, %bb.jd ] ; 2 uses
  %i.csb = load ptr, ptr %i.cw, align 8, !tbaa !196
  %i.csc = load i32, ptr %i.ex, align 8, !tbaa !211
  %i.csd = zext nneg i32 %i.csc to i64
  %notmask.i.i116 = shl nsw i64 -1, %i.csd
  %i.cse = xor i64 %notmask.i.i116, -1
  %i.csf = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.csb, i64 noundef %i.cse, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  store i16 257, ptr %i.aqc, align 8
  %i.csg = load ptr, ptr %i.ape, align 8, !tbaa !590, !nonnull !26, !align !193 ; 2 uses
  %i.csh = load ptr, ptr %i.csg, align 8, !tbaa !9
  %i.csi = getelementptr inbounds nuw i8, ptr %i.csh, i64 16
  %i.csj = load ptr, ptr %i.csi, align 8
  %i.csk = call noundef ptr %i.csj(ptr noundef nonnull align 8 dereferenceable(8) %i.csg, i32 noundef 30, ptr noundef %.1.i27.i.i, ptr noundef %i.csf) #24, !inline_history !638 ; 2 uses
  %.not.not.i.i57.i = icmp eq ptr %i.csk, null
  br i1 %.not.not.i.i57.i, label %bb.je, label %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i.i

bb.je:                                            ; preds = %_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #24
  store i16 257, ptr %i.aqd, align 8
  %i.csl = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 30, ptr noundef %.1.i27.i.i, ptr noundef %i.csf, ptr noundef nonnull align 8 dereferenceable(34) %68, ptr null, i64 0) #24 ; 3 uses
  %i.csm = load ptr, ptr %i.apf, align 8, !tbaa !362, !nonnull !26, !align !193 ; 2 uses
  %.sroa.0.0.copyload.i.i.i59.i = load ptr, ptr %i.apn, align 8
  %.sroa.2.0.copyload.i.i.i61.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i79, align 8
  %i.csn = load ptr, ptr %i.csm, align 8, !tbaa !9
  %i.cso = getelementptr inbounds nuw i8, ptr %i.csn, i64 16
  %i.csp = load ptr, ptr %i.cso, align 8
  call void %i.csp(ptr noundef nonnull align 8 dereferenceable(8) %i.csm, ptr noundef %i.csl, ptr noundef nonnull align 8 dereferenceable(34) %70, ptr %.sroa.0.0.copyload.i.i.i59.i, i64 %.sroa.2.0.copyload.i.i.i61.i) #24, !inline_history !639
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef %i.csl) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  br label %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i.i

_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i.i: ; preds = %bb.je, %_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit.i.i
  %.1.i.i58.i = phi ptr [ %i.csl, %bb.je ], [ %i.csk, %_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #24
  store i16 257, ptr %i.aqe, align 8
  %i.csq = load ptr, ptr %i.ape, align 8, !tbaa !590, !nonnull !26, !align !193 ; 2 uses
  %i.csr = load ptr, ptr %i.csq, align 8, !tbaa !9
  %i.css = getelementptr inbounds nuw i8, ptr %i.csr, i64 16
  %i.cst = load ptr, ptr %i.css, align 8
  %i.csu = call noundef ptr %i.cst(ptr noundef nonnull align 8 dereferenceable(8) %i.csq, i32 noundef 29, ptr noundef %i.crg, ptr noundef %.1.i.i58.i) #24, !inline_history !640 ; 2 uses
  %.not.not.i15.i.i = icmp eq ptr %i.csu, null
  br i1 %.not.not.i15.i.i, label %bb.jf, label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i.i

bb.jf:                                            ; preds = %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  store i16 257, ptr %i.aqf, align 8
  %i.csv = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 29, ptr noundef %i.crg, ptr noundef %.1.i.i58.i, ptr noundef nonnull align 8 dereferenceable(34) %67, ptr null, i64 0) #24 ; 3 uses
  %i.csw = load ptr, ptr %i.apf, align 8, !tbaa !362, !nonnull !26, !align !193 ; 2 uses
  %.sroa.0.0.copyload.i.i17.i.i = load ptr, ptr %i.apn, align 8
  %.sroa.2.0.copyload.i.i19.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i79, align 8
  %i.csx = load ptr, ptr %i.csw, align 8, !tbaa !9
  %i.csy = getelementptr inbounds nuw i8, ptr %i.csx, i64 16
  %i.csz = load ptr, ptr %i.csy, align 8
  call void %i.csz(ptr noundef nonnull align 8 dereferenceable(8) %i.csw, ptr noundef %i.csv, ptr noundef nonnull align 8 dereferenceable(34) %71, ptr %.sroa.0.0.copyload.i.i17.i.i, i64 %.sroa.2.0.copyload.i.i19.i.i) #24, !inline_history !641
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef %i.csv) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  br label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i.i

_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i.i: ; preds = %bb.jf, %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i.i
  %.1.i16.i.i = phi ptr [ %i.csv, %bb.jf ], [ %i.csu, %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer10tagPointerERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_4TypeEPNS1_5ValueESA_.exit.i

bb.jg:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer12getAllocaTagERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #24
  store i16 257, ptr %i.apu, align 8
  %i.cta = load ptr, ptr %i.cro, align 8, !tbaa !269
  %i.ctb = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.cta, i64 noundef %i.crn, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.ctc = load ptr, ptr %i.ape, align 8, !tbaa !590, !nonnull !26, !align !193 ; 2 uses
  %i.ctd = load ptr, ptr %i.ctc, align 8, !tbaa !9
  %i.cte = getelementptr inbounds nuw i8, ptr %i.ctd, i64 32
  %i.ctf = load ptr, ptr %i.cte, align 8
  %i.ctg = call noundef ptr %i.ctf(ptr noundef nonnull align 8 dereferenceable(8) %i.ctc, i32 noundef 26, ptr noundef nonnull %.0.i.i, ptr noundef %i.ctb, i1 noundef zeroext false, i1 noundef zeroext false) #24, !inline_history !636 ; 2 uses
  %.not.not.i28.i.i = icmp eq ptr %i.ctg, null
  br i1 %.not.not.i28.i.i, label %bb.jh, label %_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit33.i.i

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #24
  store i8 1, ptr %i.apv, align 8, !tbaa !272
  store i8 1, ptr %i.apw, align 1, !tbaa !278
  %i.cth = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 26, ptr noundef nonnull %.0.i.i, ptr noundef %i.ctb, ptr noundef nonnull align 8 dereferenceable(34) %64, ptr null, i64 0) #24 ; 3 uses
  %i.cti = load ptr, ptr %i.apf, align 8, !tbaa !362, !nonnull !26, !align !193 ; 2 uses
  %.sroa.0.0.copyload.i.i.i30.i.i = load ptr, ptr %i.apn, align 8
  %.sroa.2.0.copyload.i.i.i32.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i79, align 8
  %i.ctj = load ptr, ptr %i.cti, align 8, !tbaa !9
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.ctj, i64 16
  %i.ctl = load ptr, ptr %i.ctk, align 8
  call void %i.ctl(ptr noundef nonnull align 8 dereferenceable(8) %i.cti, ptr noundef %i.cth, ptr noundef nonnull align 8 dereferenceable(34) %72, ptr %.sroa.0.0.copyload.i.i.i30.i.i, i64 %.sroa.2.0.copyload.i.i.i32.i.i) #24, !inline_history !637
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef %i.cth) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #24
  br label %_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit33.i.i

_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit33.i.i: ; preds = %bb.jh, %bb.jg
  %.1.i29.i.i = phi ptr [ %i.ctg, %bb.jg ], [ %i.cth, %bb.jh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #24
  store i16 257, ptr %i.apx, align 8
  %i.ctm = load ptr, ptr %i.ape, align 8, !tbaa !590, !nonnull !26, !align !193 ; 2 uses
  %i.ctn = load ptr, ptr %i.ctm, align 8, !tbaa !9
  %i.cto = getelementptr inbounds nuw i8, ptr %i.ctn, i64 16
  %i.ctp = load ptr, ptr %i.cto, align 8
  %i.ctq = call noundef ptr %i.ctp(ptr noundef nonnull align 8 dereferenceable(8) %i.ctm, i32 noundef 30, ptr noundef %i.crg, ptr noundef %.1.i29.i.i) #24, !inline_history !638 ; 2 uses
  %.not.not.i20.i.i = icmp eq ptr %i.ctq, null
  br i1 %.not.not.i20.i.i, label %bb.ji, label %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit25.i.i

bb.ji:                                            ; preds = %_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit33.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  store i16 257, ptr %i.apy, align 8
  %i.ctr = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 30, ptr noundef %i.crg, ptr noundef %.1.i29.i.i, ptr noundef nonnull align 8 dereferenceable(34) %66, ptr null, i64 0) #24 ; 3 uses
  %i.cts = load ptr, ptr %i.apf, align 8, !tbaa !362, !nonnull !26, !align !193 ; 2 uses
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %i.apn, align 8
  %.sroa.2.0.copyload.i.i24.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i79, align 8
  %i.ctt = load ptr, ptr %i.cts, align 8, !tbaa !9
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.ctt, i64 16
  %i.ctv = load ptr, ptr %i.ctu, align 8
  call void %i.ctv(ptr noundef nonnull align 8 dereferenceable(8) %i.cts, ptr noundef %i.ctr, ptr noundef nonnull align 8 dereferenceable(34) %73, ptr %.sroa.0.0.copyload.i.i22.i.i, i64 %.sroa.2.0.copyload.i.i24.i.i) #24, !inline_history !639
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef %i.ctr) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  br label %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit25.i.i

_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit25.i.i: ; preds = %bb.ji, %_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit33.i.i
  %.1.i21.i.i = phi ptr [ %i.ctr, %bb.ji ], [ %i.ctq, %_ZN4llvm13IRBuilderBase9CreateShlEPNS_5ValueES2_RKNS_5TwineEbb.exit33.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer10tagPointerERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_4TypeEPNS1_5ValueESA_.exit.i

_ZN12_GLOBAL__N_118HWAddressSanitizer10tagPointerERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_4TypeEPNS1_5ValueESA_.exit.i: ; preds = %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit25.i.i, %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i.i
  %.0.i56.i = phi ptr [ %.1.i16.i.i, %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i.i ], [ %.1.i21.i.i, %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit25.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #24
  store i16 257, ptr %i.aqg, align 8
  %i.ctw = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(104) %80, i32 noundef 50, ptr noundef %.0.i56.i, ptr noundef %i.crj, ptr noundef nonnull align 8 dereferenceable(34) %74, ptr noundef null, i64 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #24
  %i.ctx = load ptr, ptr %i.x, align 8, !tbaa !631 ; 2 uses
  %i.cty = getelementptr inbounds nuw i8, ptr %i.ctx, i64 4
  %i.ctz = load i32, ptr %i.cty, align 4
  %i.cua = and i32 %i.ctz, 536870912
  %.not221.i = icmp eq i32 %i.cua, 0
  br i1 %.not221.i, label %bb.jp, label %bb.jj

bb.jj:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer10tagPointerERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_4TypeEPNS1_5ValueESA_.exit.i
  %i.cub = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ctx) #24 ; 2 uses
  %i.cuc = extractvalue { ptr, i64 } %i.cub, 0    ; 3 uses
  %i.cud = extractvalue { ptr, i64 } %i.cub, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %.not.i.i85 = icmp eq ptr %i.cuc, null
  store ptr %i.aqh, ptr %82, align 8, !tbaa !96, !alias.scope !642
  br i1 %.not.i.i85, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  store i64 0, ptr %i.aqi, align 8, !tbaa !97, !alias.scope !642
  store i8 0, ptr %i.aqh, align 8, !tbaa !20, !alias.scope !642
  br label %.critedge.i87

bb.jl:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #24, !noalias !642
  store i64 %i.cud, ptr %i.v, align 8, !tbaa !340, !noalias !642
  %i.cue = icmp ugt i64 %i.cud, 15
  br i1 %i.cue, label %bb.jm, label %._crit_edge.i.i.i.i86

bb.jm:                                            ; preds = %bb.jl
  %i.cuf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 0) #24 ; 2 uses
  store ptr %i.cuf, ptr %82, align 8, !tbaa !15, !alias.scope !642
  %i.cug = load i64, ptr %i.v, align 8, !tbaa !340, !noalias !642
  store i64 %i.cug, ptr %i.aqh, align 8, !tbaa !20, !alias.scope !642
  br label %._crit_edge.i.i.i.i86

._crit_edge.i.i.i.i86:                            ; preds = %bb.jm, %bb.jl
  %i.cuh = phi ptr [ %i.cuf, %bb.jm ], [ %i.aqh, %bb.jl ] ; 2 uses
  switch i64 %i.cud, label %bb.jo [
    i64 1, label %bb.jn
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.jn:                                            ; preds = %._crit_edge.i.i.i.i86
  %i.cui = load i8, ptr %i.cuc, align 1, !tbaa !20
  store i8 %i.cui, ptr %i.cuh, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.jo:                                            ; preds = %._crit_edge.i.i.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cuh, ptr nonnull align 1 %i.cuc, i64 %i.cud, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.jo, %bb.jn, %._crit_edge.i.i.i.i86
  %i.cuj = load i64, ptr %i.v, align 8, !tbaa !340, !noalias !642 ; 2 uses
  store i64 %i.cuj, ptr %i.aqi, align 8, !tbaa !97, !alias.scope !642
  %i.cuk = load ptr, ptr %82, align 8, !tbaa !15, !alias.scope !642
  %i.cul = getelementptr inbounds nuw i8, ptr %i.cuk, i64 %i.cuj
  store i8 0, ptr %i.cul, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #24, !noalias !642
  br label %.critedge.i87

bb.jp:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer10tagPointerERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_4TypeEPNS1_5ValueESA_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #24
  call void @_ZN4llvm6itostrB5cxx11El(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, i64 noundef %indvars.iv.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.cum = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %83, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.168, i64 noundef 7) #24, !noalias !645 ; 6 uses
  store ptr %i.aqh, ptr %82, align 8, !tbaa !96, !alias.scope !645
  %i.cun = load ptr, ptr %i.cum, align 8, !tbaa !15 ; 2 uses
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.cum, i64 16 ; 5 uses
  %i.cup = icmp eq ptr %i.cun, %i.cuo
  br i1 %i.cup, label %bb.jq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111

bb.jq:                                            ; preds = %bb.jp
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.cum, i64 8
  %i.cur = load i64, ptr %i.cuq, align 8, !tbaa !97 ; 3 uses
  %i.cus = icmp ult i64 %i.cur, 16
  call void @llvm.assume(i1 %i.cus)
  %i.cut = add nuw nsw i64 %i.cur, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aqh, ptr noundef nonnull align 8 dereferenceable(1) %i.cuo, i64 %i.cut, i1 false)
  br label %bb.jr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111: ; preds = %bb.jp
  store ptr %i.cun, ptr %82, align 8, !tbaa !15, !alias.scope !645
  %i.cuu = load i64, ptr %i.cuo, align 8, !tbaa !20
  store i64 %i.cuu, ptr %i.aqh, align 8, !tbaa !20, !alias.scope !645
  %.phi.trans.insert.i.i112 = getelementptr inbounds nuw i8, ptr %i.cum, i64 8
  %.pre.i.i113 = load i64, ptr %.phi.trans.insert.i.i112, align 8, !tbaa !97
  br label %bb.jr

bb.jr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111, %bb.jq
  %i.cuv = phi i64 [ %i.cur, %bb.jq ], [ %.pre.i.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111 ]
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cum, i64 8
  store i64 %i.cuv, ptr %i.aqi, align 8, !tbaa !97, !alias.scope !645
  store ptr %i.cuo, ptr %i.cum, align 8, !tbaa !15
  store i64 0, ptr %i.cuw, align 8, !tbaa !97
  store i8 0, ptr %i.cuo, align 8, !tbaa !20
  %i.cux = load ptr, ptr %83, align 8, !tbaa !15  ; 2 uses
  %i.cuy = icmp eq ptr %i.cux, %i.aqj
  br i1 %i.cuy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i: ; preds = %bb.jr
  %i.cuz = load i64, ptr %i.aqj, align 8, !tbaa !20
  %i.cva = add i64 %i.cuz, 1
  call void @_ZdlPvm(ptr noundef %i.cux, i64 noundef %i.cva) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114: ; preds = %bb.jr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #24
  br label %.critedge.i87

.critedge.i87:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i, %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.cvb = load ptr, ptr %82, align 8, !tbaa !15, !noalias !648
  %i.cvc = load i64, ptr %i.aqi, align 8, !tbaa !97, !noalias !648 ; 3 uses
  store ptr %i.aqk, ptr %85, align 8, !tbaa !96, !alias.scope !651
  store i64 0, ptr %i.aql, align 8, !tbaa !97, !alias.scope !651
  store i8 0, ptr %i.aqk, align 8, !tbaa !20, !alias.scope !651
  %i.cvd = add i64 %i.cvc, 7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %85, i64 noundef %i.cvd) #24
  %i.cve = load i64, ptr %i.aql, align 8, !tbaa !97, !alias.scope !651
  %i.cvf = sub i64 4611686018427387903, %i.cve
  %i.cvg = icmp ult i64 %i.cvf, %i.cvc
  br i1 %i.cvg, label %bb.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i

bb.js:                                            ; preds = %.critedge.i87
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %.critedge.i87
  %i.cvh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef %i.cvb, i64 noundef %i.cvc) #24 ; 0 uses
  %i.cvi = load i64, ptr %i.aql, align 8, !tbaa !97, !alias.scope !651
  %i.cvj = add i64 %i.cvi, -4611686018427387897
  %i.cvk = icmp ult i64 %i.cvj, 7
  br i1 %i.cvk, label %bb.jt, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i

bb.jt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #26
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.cvl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull @.str.121, i64 noundef 7) #24 ; 0 uses
  store i8 4, ptr %i.aqm, align 8, !tbaa !272
  store i8 1, ptr %i.aqn, align 1, !tbaa !278
  store ptr %85, ptr %84, align 8, !tbaa !20
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %i.ctw, ptr noundef nonnull align 8 dereferenceable(34) %84) #24
  %i.cvm = load ptr, ptr %85, align 8, !tbaa !15  ; 2 uses
  %i.cvn = icmp eq ptr %i.cvm, %i.aqk
  br i1 %i.cvn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i88: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
  %i.cvo = load i64, ptr %i.aqk, align 8, !tbaa !20
  %i.cvp = add i64 %i.cvo, 1
  call void @_ZdlPvm(ptr noundef %i.cvm, i64 noundef %i.cvp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #24
  %i.cvq = load ptr, ptr %i.x, align 8, !tbaa !631
  %i.cvr = call noundef i64 @_ZN4llvm6memtag20getAllocaSizeInBytesERKNS_10AllocaInstE(ptr noundef nonnull align 8 dereferenceable(80) %i.cvq) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #24
  %.val45.i = load i8, ptr %i.fi, align 8, !tbaa !219
  %i.cvs = zext nneg i8 %.val45.i to i64
  %i.cvt = shl nuw i64 1, %i.cvs                  ; 2 uses
  %i.cvu = add i64 %i.cvr, -1
  %i.cvv = add i64 %i.cvu, %i.cvt
  %i.cvw = sub i64 0, %i.cvt
  %i.cvx = and i64 %i.cvv, %i.cvw
  store i64 %i.cvx, ptr %i.y, align 8, !tbaa !340
  %i.cvy = load ptr, ptr %i.x, align 8, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #24
  store ptr %i.crf, ptr %86, align 8, !tbaa !654
  %i.cvz = call noundef zeroext i1 @_ZN4llvm5Value17replaceUsesWithIfEPS0_NS_12function_refIFbRNS_3UseEEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cvy, ptr noundef nonnull %i.ctw, ptr nonnull @"_ZN4llvm12function_refIFbRNS_3UseEEE11callback_fnIZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERNS_25OptimizationRemarkEmitterERNS_6memtag9StackInfoEPNS_5ValueESE_RKNS_13DominatorTreeERKNS_17PostDominatorTreeERKNS_8LoopInfoEE3$_0EEblS2_", i64 %i.aqo) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #24
  %.val46.i = load i32, ptr %i.cr, align 8, !tbaa !206
  %i.cwa = icmp eq i32 %.val46.i, 41
  br i1 %i.cwa, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i
  %.val47.i = load i64, ptr %i.ez, align 8
  %i.cwb = and i64 %.val47.i, %indvars.iv.i
  %i.cwc = trunc nuw i64 %i.cwb to i32
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEj.exit.i

bb.jv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i
  %i.cwd = trunc nuw i64 %indvars.iv.i to i32
  %i.cwe = urem i32 %i.cwd, 36
  %.zext.i.i = zext nneg i32 %i.cwe to i64
  %i.cwf = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEjE9FastMasks, i64 %.zext.i.i
  %i.cwg = load i32, ptr %i.cwf, align 4, !tbaa !405
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEj.exit.i

_ZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEj.exit.i: ; preds = %bb.jv, %bb.ju
  %.0.i69.i = phi i32 [ %i.cwc, %bb.ju ], [ %i.cwg, %bb.jv ]
  call void @_ZN4llvm6memtag20annotateDebugRecordsERNS0_10AllocaInfoEj(ptr noundef nonnull align 8 dereferenceable(144) %i.cpe, i32 noundef %.0.i69.i) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #24
  store ptr %80, ptr %87, align 8, !tbaa !589
  store ptr %198, ptr %i.aqp, align 8, !tbaa !656
  store ptr %i.x, ptr %i.aqq, align 8, !tbaa !660
  store ptr %i.w, ptr %i.aqr, align 8, !tbaa !584
  store ptr %i.y, ptr %i.aqs, align 8, !tbaa !661
  %i.cwh = load i8, ptr %i.ev, align 1, !tbaa !210, !range !25, !noundef !26
  %i.cwi = trunc nuw i8 %i.cwh to i1
  br i1 %i.cwi, label %bb.jw, label %.thread.i89

bb.jw:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer9retagMaskEj.exit.i
  %i.cwj = load i8, ptr %i.aix, align 8, !tbaa !454, !range !25, !noundef !26
  %i.cwk = trunc nuw i8 %i.cwj to i1
  br i1 %i.cwk, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.cwl = call noundef zeroext i1 @_ZN4llvm6memtag19isSupportedLifetimeERKNS0_10AllocaInfoEPKNS_13DominatorTreeEPKNS_8LoopInfoE(ptr noundef nonnull align 8 dereferenceable(144) %i.cpe, ptr noundef nonnull align 8 dereferenceable(204) %i.clw, ptr noundef nonnull align 8 dereferenceable(184) %i.cma) #24
  br i1 %i.cwl, label %bb.jy, label %._crit_edge228.i

._crit_edge228.i:                                 ; preds = %bb.jx
  %.pre.i93 = load i8, ptr %i.ev, align 1, !tbaa !210, !range !25
  %i.cwm = trunc nuw i8 %.pre.i93 to i1
  br label %bb.ka

bb.jy:                                            ; preds = %bb.jx
  %i.cwn = getelementptr inbounds nuw i8, ptr %.042224.i, i64 16
  %i.cwo = load ptr, ptr %i.cwn, align 8, !tbaa !28 ; 2 uses
  %i.cwp = getelementptr inbounds nuw i8, ptr %.042224.i, i64 24
  %i.cwq = load i32, ptr %i.cwp, align 8, !tbaa !306 ; 2 uses
  %i.cwr = zext i32 %i.cwq to i64
  %.idx.i.i = shl nuw nsw i64 %i.cwr, 3
  %i.cws = getelementptr inbounds nuw i8, ptr %i.cwo, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.cwq, 0
  br i1 %.not8.i.i, label %"_ZZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERN4llvm25OptimizationRemarkEmitterERNS1_6memtag9StackInfoEPNS1_5ValueES8_RKNS1_13DominatorTreeERKNS1_17PostDominatorTreeERKNS1_8LoopInfoEENK3$_4clEv.exit.i", label %.lr.ph.i.i99

.lr.ph.i.i99:                                     ; preds = %bb.jy, %.lr.ph.i.i99
  %.09.i.i = phi ptr [ %i.cxh, %.lr.ph.i.i99 ], [ %i.cwo, %bb.jy ] ; 2 uses
  %i.cwt = load ptr, ptr %.09.i.i, align 8, !tbaa !662 ; 2 uses
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwt, i64 40
  %i.cwv = load ptr, ptr %i.cwu, align 8, !tbaa !567
  %i.cww = getelementptr inbounds nuw i8, ptr %i.cwv, i64 48
  %i.cwx = getelementptr inbounds nuw i8, ptr %i.cwt, i64 32
  %i.cwy = load ptr, ptr %i.cwx, align 8, !tbaa !476 ; 3 uses
  %i.cwz = icmp eq ptr %i.cwy, %i.cww
  %i.cxa = getelementptr inbounds i8, ptr %i.cwy, i64 -24 ; 2 uses
  %spec.select.i.i.i.i100 = select i1 %i.cwz, ptr null, ptr %i.cxa
  %i.cxb = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i100, i64 24
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.cwy, i64 16
  %i.cxd = load ptr, ptr %i.cxc, align 8, !tbaa !567
  store ptr %i.cxd, ptr %i.apm, align 8, !tbaa !347
  store ptr %i.cxb, ptr %i.apn, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i79, align 8
  %i.cxe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cxa) #24
  %i.cxf = load i64, ptr %i.cxe, align 8, !tbaa !568
  store i64 %i.cxf, ptr %80, align 8, !tbaa !568
  %i.cxg = load ptr, ptr %i.x, align 8, !tbaa !631
  call fastcc void @_ZN12_GLOBAL__N_118HWAddressSanitizer9tagAllocaERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_10AllocaInstEPNS1_5ValueEm(ptr noundef nonnull align 8 dereferenceable(544) %198, ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef %i.cxg, ptr noundef nonnull %.0.i.i, i64 noundef %i.cvr)
  %i.cxh = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %.not.i71.i = icmp eq ptr %i.cxh, %i.cws
  br i1 %.not.i71.i, label %"_ZZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERN4llvm25OptimizationRemarkEmitterERNS1_6memtag9StackInfoEPNS1_5ValueES8_RKNS1_13DominatorTreeERKNS1_17PostDominatorTreeERKNS1_8LoopInfoEENK3$_4clEv.exit.i", label %.lr.ph.i.i99

"_ZZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERN4llvm25OptimizationRemarkEmitterERNS1_6memtag9StackInfoEPNS1_5ValueES8_RKNS1_13DominatorTreeERKNS1_17PostDominatorTreeERKNS1_8LoopInfoEENK3$_4clEv.exit.i": ; preds = %.lr.ph.i.i99, %bb.jy
  store ptr @"_ZN4llvm12function_refIFvPNS_11InstructionEEE11callback_fnIZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERNS_25OptimizationRemarkEmitterERNS_6memtag9StackInfoEPNS_5ValueESE_RKNS_13DominatorTreeERKNS_17PostDominatorTreeERKNS_8LoopInfoEE3$_1EEvlS2_", ptr %88, align 8, !tbaa !664
  store i64 %i.aqu, ptr %i.aqt, align 8, !tbaa !666
  call void @_ZN4llvm6memtag20forAllReachableExitsERKNS_13DominatorTreeERKNS_17PostDominatorTreeERKNS_8LoopInfoERKNS0_10AllocaInfoERKNS_15SmallVectorImplIPNS_11InstructionEEENS_12function_refIFvSF_EEE(ptr noundef nonnull align 8 dereferenceable(204) %i.clw, ptr noundef nonnull align 8 dereferenceable(228) %i.cly, ptr noundef nonnull align 8 dereferenceable(184) %i.cma, ptr noundef nonnull align 8 dereferenceable(144) %i.cpe, ptr noundef nonnull align 8 dereferenceable(16) %i.air, ptr noundef nonnull byval(%"class.llvm::function_ref.569") align 8 %88) #24
  %i.cxi = load ptr, ptr %i.ayk, align 8, !tbaa !419
  %i.cxj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.cxi) #24
  %i.cxk = call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cxj) #24
  %.not.i.i.i101 = icmp eq ptr %i.cxk, null
  br i1 %.not.i.i.i101, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i.i: ; preds = %"_ZZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERN4llvm25OptimizationRemarkEmitterERNS1_6memtag9StackInfoEPNS1_5ValueES8_RKNS1_13DominatorTreeERKNS1_17PostDominatorTreeERKNS1_8LoopInfoEENK3$_4clEv.exit.i"
  %i.cxl = load ptr, ptr %i.ayk, align 8, !tbaa !419
  %i.cxm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.cxl) #24
  %i.cxn = call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cxm) #24 ; 2 uses
  %i.cxo = load ptr, ptr %i.cxn, align 8, !tbaa !9
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cxo, i64 48
  %i.cxq = load ptr, ptr %i.cxp, align 8
  %i.cxr = call noundef zeroext i1 %i.cxq(ptr noundef nonnull align 8 dereferenceable(32) %i.cxn) #24, !inline_history !667
  br i1 %i.cxr, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERS0_RNS_6memtag9StackInfoEPNS_5ValueES9_RKNS_13DominatorTreeERKNS_17PostDominatorTreeERKNS_8LoopInfoEE3$_2EEvT_PDTclfL0p_EE.exit.i"

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i.i, %"_ZZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERN4llvm25OptimizationRemarkEmitterERNS1_6memtag9StackInfoEPNS1_5ValueES8_RKNS1_13DominatorTreeERKNS1_17PostDominatorTreeERKNS1_8LoopInfoEENK3$_4clEv.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24
  %.val.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !631
  call void @_ZN4llvm18OptimizationRemarkC1EPKcNS_9StringRefEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(432) %63, ptr noundef nonnull @.str.115, ptr nonnull @.str.169, i64 17, ptr noundef %.val.val.i.i) #24
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %i.ayk, ptr noundef nonnull align 8 dereferenceable(424) %63) #24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %63, align 8, !tbaa !9
  %i.cxs = load ptr, ptr %i.aqv, align 8, !tbaa !28 ; 3 uses
  %i.cxt = load i32, ptr %i.aqw, align 8, !tbaa !306 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.cxt, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i
  %i.cxu = zext i32 %i.cxt to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.cxu, 80
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxs, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i106, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cxw, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i106 ], [ %i.cxv, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %i.cxw = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -80 ; 3 uses
  %i.cxx = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -48
  %i.cxy = load ptr, ptr %i.cxx, align 8, !tbaa !15 ; 2 uses
  %i.cxz = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -32 ; 2 uses
  %i.cya = icmp eq ptr %i.cxy, %i.cxz
  br i1 %i.cya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i103: ; preds = %.lr.ph.i.i.i.i.i102
  %i.cyb = load i64, ptr %i.cxz, align 8, !tbaa !20
  %i.cyc = add i64 %i.cyb, 1
  call void @_ZdlPvm(ptr noundef %i.cxy, i64 noundef %i.cyc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i104: ; preds = %.lr.ph.i.i.i.i.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i103
  %i.cyd = load ptr, ptr %i.cxw, align 8, !tbaa !15 ; 2 uses
  %i.cye = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -64 ; 2 uses
  %i.cyf = icmp eq ptr %i.cyd, %i.cye
  br i1 %i.cyf, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i104
  %i.cyg = load i64, ptr %i.cye, align 8, !tbaa !20
  %i.cyh = add i64 %i.cyg, 1
  call void @_ZdlPvm(ptr noundef %i.cyd, i64 noundef %i.cyh) #25
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i106

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i105
  %.not.i.i.i.i.i107 = icmp eq ptr %i.cxs, %i.cxw
  br i1 %.not.i.i.i.i.i107, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i102, !llvm.loop !449

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i106
  %.pre.i.i.i.i108 = load ptr, ptr %i.aqv, align 8, !tbaa !28
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i
  %i.cyi = phi ptr [ %.pre.i.i.i.i108, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i ], [ %i.cxs, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i ] ; 2 uses
  %i.cyj = icmp eq ptr %i.cyi, %i.aqx
  br i1 %i.cyj, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i, label %bb.jz

bb.jz:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @free(ptr noundef %i.cyi) #24
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i: ; preds = %bb.jz, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERS0_RNS_6memtag9StackInfoEPNS_5ValueES9_RKNS_13DominatorTreeERKNS_17PostDominatorTreeERKNS_8LoopInfoEE3$_2EEvT_PDTclfL0p_EE.exit.i"

bb.ka:                                            ; preds = %._crit_edge228.i, %bb.jw
  %i.cyk = phi i1 [ %i.cwm, %._crit_edge228.i ], [ true, %bb.jw ]
  %i.cyl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21ClStrictUseAfterScope, i64 120), align 8, !range !25
  %i.cym = trunc nuw i8 %i.cyl to i1
  %or.cond.i94 = select i1 %i.cyk, i1 %i.cym, i1 false
  br i1 %or.cond.i94, label %bb.kb, label %.thread.i89

bb.kb:                                            ; preds = %bb.ka
  %i.cyn = load ptr, ptr %i.ayk, align 8, !tbaa !419
  %i.cyo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.cyn) #24
  %i.cyp = call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cyo) #24
  %.not.i.i72.i = icmp eq ptr %i.cyp, null
  br i1 %.not.i.i72.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i91.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i73.i

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i91.i: ; preds = %bb.kb
  %i.cyq = load ptr, ptr %i.ayk, align 8, !tbaa !419
  %i.cyr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.cyq) #24
  %i.cys = call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cyr) #24 ; 2 uses
  %i.cyt = load ptr, ptr %i.cys, align 8, !tbaa !9
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.cyt, i64 48
  %i.cyv = load ptr, ptr %i.cyu, align 8
  %i.cyw = call noundef zeroext i1 %i.cyv(ptr noundef nonnull align 8 dereferenceable(32) %i.cys) #24, !inline_history !668
  br i1 %i.cyw, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i73.i, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZN12_GLOBAL__N_118HWAddressSanitizer15instrumentStackERS0_RNS_6memtag9StackInfoEPNS_5ValueES9_RKNS_13DominatorTreeERKNS_17PostDominatorTreeERKNS_8LoopInfoEE3$_3EEvT_PDTclfL0p_EE.exit.i"

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i73.i: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i91.i, %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #24
  %.val.val.i74.i = load ptr, ptr %i.x, align 8, !tbaa !631
  call void @_ZN4llvm24OptimizationRemarkMissedC1EPKcNS_9StringRefEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(432) %62, ptr noundef nonnull @.str.115, ptr nonnull @.str.169, i64 17, ptr noundef %.val.val.i74.i) #24
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %i.ayk, ptr noundef nonnull align 8 dereferenceable(424) %62) #24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %62, align 8, !tbaa !9
  %i.cyx = load ptr, ptr %i.aqy, align 8, !tbaa !28 ; 3 uses
  %i.cyy = load i32, ptr %i.aqz, align 8, !tbaa !306 ; 2 uses
  %.not4.i.i.i.i75.i = icmp eq i32 %i.cyy, 0
  br i1 %.not4.i.i.i.i75.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i87.i, label %.lr.ph.i.preheader.i.i.i76.i

.lr.ph.i.preheader.i.i.i76.i:                     ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i73.i
  %i.cyz = zext i32 %i.cyy to i64
  %.idx.i.i.i77.i = mul nuw nsw i64 %i.cyz, 80
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cyx, i64 %.idx.i.i.i77.i
  br label %.lr.ph.i.i.i.i78.i

end_hunk_0
