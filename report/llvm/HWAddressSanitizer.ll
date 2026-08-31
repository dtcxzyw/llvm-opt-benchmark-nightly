Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HWAddressSanitizer?download=true
inline.NumInlined: 4610
inline.NumDeleted: 2491
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm22HWAddressSanitizerPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
  br label %_ZN4llvm9KnownBitsC2Ej.exit.i.i

bb.kv:                                            ; preds = %.lr.ph216.i
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %140, i64 noundef 0, i1 noundef zeroext false) #24
  store i32 %i.dkf, ptr %i.ash, align 8, !tbaa !741
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.asg, i64 noundef 0, i1 noundef zeroext false) #24
  br label %_ZN4llvm9KnownBitsC2Ej.exit.i.i

_ZN4llvm9KnownBitsC2Ej.exit.i.i:                  ; preds = %bb.kv, %bb.ku
  call void @_ZN4llvm16computeKnownBitsEPKNS_5ValueERNS_9KnownBitsERKNS_10DataLayoutEPNS_15AssumptionCacheEPKNS_11InstructionEPKNS_13DominatorTreeEbj(ptr noundef nonnull %i.dkc, ptr noundef nonnull align 8 dereferenceable(32) %140, ptr noundef nonnull align 8 dereferenceable(912) %i.dju, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext true, i32 noundef 0) #24
  %i.dkh = load i32, ptr %i.asf, align 8, !tbaa !741 ; 4 uses
  %i.dki = icmp eq i32 %i.dkh, 0
  br i1 %i.dki, label %_ZNK4llvm9KnownBits6isZeroEv.exit.thread.i.i, label %bb.kw

bb.kw:                                            ; preds = %_ZN4llvm9KnownBitsC2Ej.exit.i.i
  %i.dkj = icmp ult i32 %i.dkh, 65
  br i1 %i.dkj, label %_ZNK4llvm9KnownBits6isZeroEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.kw
  %i.dkk = call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %140) #28
  %i.dkl = icmp eq i32 %i.dkk, %i.dkh
  br i1 %i.dkl, label %_ZNK4llvm9KnownBits6isZeroEv.exit.thread.i.i, label %bb.kx

_ZNK4llvm9KnownBits6isZeroEv.exit.i.i:            ; preds = %bb.kw
  %i.dkm = load i64, ptr %140, align 8, !tbaa !20
  %i.dkn = sub nuw nsw i32 64, %i.dkh
  %i.dko = zext nneg i32 %i.dkn to i64
  %i.dkp = lshr i64 -1, %i.dko
  %i.dkq = icmp eq i64 %i.dkm, %i.dkp
  br i1 %i.dkq, label %_ZNK4llvm9KnownBits6isZeroEv.exit.thread.i.i, label %bb.kx

bb.kx:                                            ; preds = %_ZNK4llvm9KnownBits6isZeroEv.exit.i.i, %.split.i.i
  %i.dkr = getelementptr inbounds nuw i8, ptr %.0101213.i, i64 48
  %i.dks = load ptr, ptr %i.dkr, align 8, !tbaa !743
  %.not.i133.i = icmp eq ptr %i.dks, null
  br i1 %.not.i133.i, label %bb.ky, label %_ZNK4llvm9KnownBits6isZeroEv.exit.thread.i.i

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #24
  %i.dkt = load ptr, ptr %.0101213.i, align 8, !tbaa !737
  %i.dku = getelementptr inbounds nuw i8, ptr %i.dkt, i64 24
  %i.dkv = load ptr, ptr %i.dku, align 8, !tbaa !744 ; 4 uses
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dkv, i64 8
  %i.dkx = load ptr, ptr %i.dkw, align 8, !tbaa !269
  %i.dky = load ptr, ptr %i.dkx, align 8, !tbaa !279, !nonnull !26, !align !193
  store ptr null, ptr %141, align 8, !tbaa !225
  store ptr %i.dky, ptr %i.ask, align 8, !tbaa !228
  store ptr %i.asi, ptr %i.asl, align 8, !tbaa !229
  store ptr %i.asj, ptr %i.asm, align 8, !tbaa !231
  store ptr null, ptr %i.asn, align 8, !tbaa !233
  store i32 0, ptr %i.aso, align 8, !tbaa !244
  store i8 0, ptr %i.asp, align 4, !tbaa !245
  store i8 2, ptr %i.asq, align 1, !tbaa !246
  store i8 7, ptr %i.asr, align 2, !tbaa !247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ass, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.asi, align 8, !tbaa !9
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dkv, i64 24
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkv, i64 40
  %i.dlb = load ptr, ptr %i.dla, align 8, !tbaa !567
  store ptr %i.dlb, ptr %i.ast, align 8, !tbaa !347
  store ptr %i.dkz, ptr %i.asu, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.dlc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dkv) #24
  %i.dld = load i64, ptr %i.dlc, align 8, !tbaa !568
  store i64 %i.dld, ptr %141, align 8, !tbaa !568
  %i.dle = getelementptr inbounds nuw i8, ptr %.0101213.i, i64 24 ; 2 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %.0101213.i, i64 32 ; 2 uses
  %i.dlg = load i8, ptr %i.dlf, align 8, !tbaa !745, !range !25, !noundef !26
  %i.dlh = trunc nuw i8 %i.dlg to i1
  br i1 %i.dlh, label %_ZN4llvm13isPowerOf2_64Em.exit.thread.i.i, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i

_ZNK4llvm8TypeSizecvmEv.exit.i.i:                 ; preds = %bb.ky
  %i.dli = load i64, ptr %i.dle, align 8, !tbaa !746 ; 4 uses
  %i.dlj = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dli)
  %or.cond.i135.i = icmp eq i64 %i.dlj, 1
  %i.dlk = icmp ult i64 %i.dli, 136
  %or.cond57.i.i = and i1 %i.dlk, %or.cond.i135.i
  br i1 %or.cond57.i.i, label %bb.kz, label %_ZN4llvm13isPowerOf2_64Em.exit.thread.i.i

bb.kz:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  %i.dll = getelementptr inbounds nuw i8, ptr %.0101213.i, i64 41
  %i.dlm = load i8, ptr %i.dll, align 1, !tbaa !747, !range !25, !noundef !26
  %i.dln = trunc nuw i8 %i.dlm to i1
  br i1 %i.dln, label %bb.la, label %_ZNK4llvm8TypeSizecvmEv.exit49.i.i

bb.la:                                            ; preds = %bb.kz
  %i.dlo = getelementptr inbounds nuw i8, ptr %.0101213.i, i64 40
  %.sroa.013.0.copyload.i.i = load i8, ptr %i.dlo, align 8, !tbaa !20 ; 2 uses
  %.val.i.i = load i8, ptr %i.fi, align 8, !tbaa !219
  %.not58.i145.i = icmp ult i8 %.sroa.013.0.copyload.i.i, %.val.i.i
  br i1 %.not58.i145.i, label %_ZNK4llvm8TypeSizecvmEv.exit48.i.i, label %_ZNK4llvm8TypeSizecvmEv.exit49.i.i

_ZNK4llvm8TypeSizecvmEv.exit48.i.i:               ; preds = %bb.la
  %i.dlp = lshr i64 %i.dli, 3
  %i.dlq = zext nneg i8 %.sroa.013.0.copyload.i.i to i64
  %i.dlr = shl nuw i64 1, %i.dlq
  %.not59.i.i = icmp ult i64 %i.dlr, %i.dlp
  br i1 %.not59.i.i, label %_ZN4llvm13isPowerOf2_64Em.exit.thread.i.i, label %_ZNK4llvm8TypeSizecvmEv.exit49.i.i

_ZNK4llvm8TypeSizecvmEv.exit49.i.i:               ; preds = %_ZNK4llvm8TypeSizecvmEv.exit48.i.i, %bb.la, %bb.kz
  %i.dls = trunc nuw nsw i64 %i.dli to i32
  %i.dlt = lshr i32 %i.dls, 3
  %i.dlu = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dlt, i1 false) ; 4 uses
  %i.dlv = zext nneg i32 %i.dlu to i64
  %i.dlw = load i8, ptr %i.ep, align 2, !tbaa !208, !range !25, !noundef !26
  %i.dlx = trunc nuw i8 %i.dlw to i1
  br i1 %i.dlx, label %bb.lb, label %bb.lh

bb.lb:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit49.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #24
  %i.dly = load ptr, ptr %i.cw, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #24
  store i16 257, ptr %i.asv, align 8
  %i.dlz = call noundef ptr @_ZN4llvm13IRBuilderBase17CreatePointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %141, ptr noundef nonnull %i.dkc, ptr noundef %i.dly, ptr noundef nonnull align 8 dereferenceable(34) %143)
  store ptr %i.asw, ptr %142, align 8, !tbaa !28
  store i32 2, ptr %i.asy, align 4, !tbaa !307
  store ptr %i.dlz, ptr %i.asw, align 8
  store i32 1, ptr %i.asx, align 8, !tbaa !306
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #24
  %i.dma = load i8, ptr %i.hy, align 1, !tbaa !259, !range !25, !noundef !26
  %i.dmb = trunc nuw i8 %i.dma to i1
  br i1 %i.dmb, label %bb.lc, label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #24
  %i.dmc = load ptr, ptr %i.df, align 8, !tbaa !198
  %i.dmd = load i8, ptr %i.ds, align 4, !tbaa !20
  %i.dme = zext i8 %i.dmd to i64
  %i.dmf = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.dmc, i64 noundef %i.dme, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  store ptr %i.dmf, ptr %i.ag, align 8, !tbaa !271
  %i.dmg = load i32, ptr %i.asx, align 8, !tbaa !306 ; 3 uses
  %i.dmh = load i32, ptr %i.asy, align 4, !tbaa !307
  %.not.i51 = icmp ult i32 %i.dmg, %i.dmh
  br i1 %.not.i51, label %bb.le, label %bb.ld, !prof !321

bb.ld:                                            ; preds = %bb.lc
  %i.dmi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18growAndEmplaceBackIJPNS_8ConstantEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %142, ptr noundef nonnull align 8 dereferenceable(8) %i.ag) ; 0 uses
  %.pre.i143.i.pre = load ptr, ptr %142, align 8, !tbaa !28
  %.pre60.i144.i.pre = load i32, ptr %i.asx, align 8, !tbaa !306
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12emplace_backIJPNS_8ConstantEEEERS2_DpOT_.exit

bb.le:                                            ; preds = %bb.lc
  %i.dmj = zext i32 %i.dmg to i64
  %i.dmk = load ptr, ptr %142, align 8, !tbaa !28 ; 2 uses
  %i.dml = getelementptr inbounds nuw [8 x i8], ptr %i.dmk, i64 %i.dmj
  store ptr %i.dmf, ptr %i.dml, align 8, !tbaa !360
  %i.dmm = add nuw i32 %i.dmg, 1                  ; 2 uses
  store i32 %i.dmm, ptr %i.asx, align 8, !tbaa !306
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12emplace_backIJPNS_8ConstantEEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplIPNS_5ValueEE12emplace_backIJPNS_8ConstantEEEERS2_DpOT_.exit: ; preds = %bb.ld, %bb.le
  %.pre60.i144.i = phi i32 [ %.pre60.i144.i.pre, %bb.ld ], [ %i.dmm, %bb.le ]
  %.pre.i143.i = phi ptr [ %.pre.i143.i.pre, %bb.ld ], [ %i.dmk, %bb.le ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #24
  %i.dmn = zext i32 %.pre60.i144.i to i64
  br label %bb.lf

bb.lf:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12emplace_backIJPNS_8ConstantEEEERS2_DpOT_.exit, %bb.lb
  %i.dmo = phi i64 [ %i.dmn, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12emplace_backIJPNS_8ConstantEEEERS2_DpOT_.exit ], [ 1, %bb.lb ]
  %i.dmp = phi ptr [ %.pre.i143.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12emplace_backIJPNS_8ConstantEEEERS2_DpOT_.exit ], [ %i.asw, %bb.lb ]
  %i.dmq = getelementptr inbounds nuw i8, ptr %.0101213.i, i64 8
  %i.dmr = load i8, ptr %i.dmq, align 8, !tbaa !748, !range !25, !noundef !26
  %i.dms = zext nneg i8 %i.dmr to i64
  %i.dmt = getelementptr inbounds nuw [80 x i8], ptr %scevgep.i, i64 %i.dms
  %i.dmu = getelementptr inbounds nuw [16 x i8], ptr %i.dmt, i64 %i.dlv ; 2 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %i.dmu, align 8, !tbaa !495
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dmu, i64 8
  %.sroa.26.0.copyload.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #24
  store i16 257, ptr %i.asz, align 8
  %i.dmv = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %141, ptr noundef %.sroa.05.0.copyload.i.i, ptr noundef %.sroa.26.0.copyload.i.i, ptr %i.dmp, i64 %i.dmo, ptr noundef nonnull align 8 dereferenceable(34) %144, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #24
  %i.dmw = load ptr, ptr %142, align 8, !tbaa !28 ; 2 uses
  %i.dmx = icmp eq ptr %i.dmw, %i.asw
  br i1 %i.dmx, label %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  call void @free(ptr noundef %i.dmw) #24
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i: ; preds = %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #24
  br label %bb.mr

bb.lh:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit49.i.i
  %i.dmy = load i8, ptr %i.hg, align 2, !tbaa !252, !range !25, !noundef !26
  %i.dmz = trunc nuw i8 %i.dmy to i1
  %i.dna = getelementptr inbounds nuw i8, ptr %.0101213.i, i64 8
  %i.dnb = load i8, ptr %i.dna, align 8, !tbaa !748, !range !25, !noundef !26
  %i.dnc = trunc nuw i8 %i.dnb to i1              ; 2 uses
  %i.dnd = load ptr, ptr %.0101213.i, align 8, !tbaa !737
  %i.dne = getelementptr inbounds nuw i8, ptr %i.dnd, i64 24
  %i.dnf = load ptr, ptr %i.dne, align 8, !tbaa !744 ; 3 uses
  %i.dng = load i8, ptr %i.dx, align 8, !tbaa !203, !range !25, !noundef !26
  %i.dnh = zext nneg i8 %i.dng to i32
  %i.dni = shl nuw nsw i32 %i.dnh, 25             ; 2 uses
  %i.dnj = load i8, ptr %i.dr, align 1, !tbaa !201, !range !25, !noundef !26 ; 2 uses
  br i1 %i.dmz, label %bb.li, label %bb.ln

bb.li:                                            ; preds = %bb.lh
  %i.dnk = trunc nuw i8 %i.dnj to i1
  %i.dnl = load i8, ptr %i.ds, align 4
  %i.dnm = zext i8 %i.dnl to i32
  %i.dnn = shl nuw nsw i32 %i.dnm, 16
  %i.dno = or disjoint i32 %i.dnn, 16777216
  %199 = select i1 %i.dnk, i32 %i.dno, i32 0
  %i.dnp = load i8, ptr %i.dv, align 1, !tbaa !202, !range !25, !noundef !26
  %i.dnq = shl nuw nsw i8 %i.dnp, 5
  %i.dnr = zext nneg i8 %i.dnq to i32
  %i.dns = or disjoint i32 %199, %i.dnr
  %i.dnt = select i1 %i.dnc, i32 16, i32 0
  %i.dnu = or disjoint i32 %i.dns, %i.dnt
  %i.dnv = or i32 %i.dnu, %i.dni
  %i.dnw = or i32 %i.dnv, %i.dlu
  %i.dnx = zext nneg i32 %i.dnw to i64            ; 2 uses
  %i.dny = load i8, ptr %i.hn, align 1, !tbaa !253, !range !25, !noundef !26
  %i.dnz = trunc nuw i8 %i.dny to i1
  br i1 %i.dnz, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #24
  call fastcc void @_ZN12_GLOBAL__N_118HWAddressSanitizer20insertShadowTagCheckEPN4llvm5ValueEPNS1_11InstructionERNS1_14DomTreeUpdaterEPNS1_8LoopInfoE(ptr dead_on_unwind noalias writable align 8 %93, ptr noundef nonnull readonly align 8 dereferenceable(544) %198, ptr noundef nonnull %i.dkc, ptr noundef %i.dnf, ptr noundef nonnull align 8 dereferenceable(688) %163, ptr noundef %.0.i54)
  %i.doa = load ptr, ptr %93, align 8, !tbaa !749
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #24
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %.0.i48 = phi ptr [ %i.doa, %bb.lj ], [ %i.dnf, %bb.li ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #24
  %i.dob = getelementptr inbounds nuw i8, ptr %.0.i48, i64 8
  %i.doc = load ptr, ptr %i.dob, align 8, !tbaa !269
  %i.dod = load ptr, ptr %i.doc, align 8, !tbaa !279, !nonnull !26, !align !193
  store ptr null, ptr %94, align 8, !tbaa !225
  store ptr %i.dod, ptr %i.avr, align 8, !tbaa !228
  store ptr %i.avp, ptr %i.avs, align 8, !tbaa !229
  store ptr %i.avq, ptr %i.avt, align 8, !tbaa !231
  store ptr null, ptr %i.avu, align 8, !tbaa !233
  store i32 0, ptr %i.avv, align 8, !tbaa !244
  store i8 0, ptr %i.avw, align 4, !tbaa !245
  store i8 2, ptr %i.avx, align 1, !tbaa !246
  store i8 7, ptr %i.avy, align 2, !tbaa !247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avz, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.avp, align 8, !tbaa !9
  %i.doe = getelementptr inbounds nuw i8, ptr %.0.i48, i64 24
  %i.dof = getelementptr inbounds nuw i8, ptr %.0.i48, i64 40
  %i.dog = load ptr, ptr %i.dof, align 8, !tbaa !567
  store ptr %i.dog, ptr %i.awa, align 8, !tbaa !347
  store ptr %i.doe, ptr %i.awb, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i49, align 8
  %i.doh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i48) #24
  %i.doi = load i64, ptr %i.doh, align 8, !tbaa !568
  store i64 %i.doi, ptr %94, align 8, !tbaa !568
  %i.doj = load i32, ptr %i.cr, align 8, !tbaa !206
  %.off.i.i = add i32 %i.doj, -3
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  %.val.i50 = load i32, ptr %i.ff, align 8
  %i.dok = icmp eq i32 %.val.i50, 0
  %or.cond205 = select i1 %switch.i.i, i1 %i.dok, i1 false
  br i1 %or.cond205, label %bb.ll, label %.critedge.i

bb.ll:                                            ; preds = %bb.lk
  %.val18.i = load i64, ptr %i.ann, align 8, !tbaa !220
  %i.dol = and i64 %.val18.i, -281470681743361
  %i.dom = icmp eq i64 %i.dol, 0
  br i1 %i.dom, label %bb.lm, label %.critedge.i

bb.lm:                                            ; preds = %bb.ll
  %i.don = load i8, ptr %i.gx, align 4, !tbaa !250, !range !25, !noundef !26
  %i.doo = trunc nuw i8 %i.don to i1
  %i.dop = select i1 %i.doo, i32 203, i32 201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #24
  store ptr %i.dkc, ptr %i.z, align 8, !tbaa !360
  %i.doq = load ptr, ptr %i.dj, align 8, !tbaa !199
  %i.dor = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.doq, i64 noundef %i.dnx, i1 noundef zeroext false, i1 noundef zeroext false) #24
  store ptr %i.dor, ptr %i.awg, align 8, !tbaa !360
  %i.dos = load ptr, ptr %i.dn, align 8, !tbaa !200
  %.val16.i = load i64, ptr %i.ann, align 8, !tbaa !220
  %i.dot = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.dos, i64 noundef %.val16.i, i1 noundef zeroext false, i1 noundef zeroext false) #24
  store ptr %i.dot, ptr %i.awh, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #24
  store i16 257, ptr %i.awi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %92)
  call void @llvm.lifetime.start.p0(ptr nonnull %91)
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineES4_Ed_UlS2_E_EEvlS2_, ptr %92, align 8
  store i64 %i.awj, ptr %.sroa.224.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %91, i8 0, i64 16, i1 false)
  %i.dou = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %94, i32 noundef %i.dop, ptr null, i64 0, ptr nonnull %i.z, i64 3, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %95, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %91, ptr noundef nonnull byval(%"class.llvm::function_ref.599") align 8 %92) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92)
  call void @llvm.lifetime.end.p0(ptr nonnull %91)
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer26instrumentMemAccessOutlineEPN4llvm5ValueEbjPNS1_11InstructionERNS1_14DomTreeUpdaterEPNS1_8LoopInfoE.exit

.critedge.i:                                      ; preds = %bb.ll, %bb.lk
  %i.dov = load i8, ptr %i.gx, align 4, !tbaa !250, !range !25, !noundef !26
  %i.dow = trunc nuw i8 %i.dov to i1
  %i.dox = select i1 %i.dow, i32 202, i32 200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #24
  %i.doy = load ptr, ptr %i.dt, align 8, !tbaa !559
  store ptr %i.doy, ptr %i.aa, align 8, !tbaa !360
  store ptr %i.dkc, ptr %i.awc, align 8, !tbaa !360
  %i.doz = load ptr, ptr %i.dj, align 8, !tbaa !199
  %i.dpa = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.doz, i64 noundef %i.dnx, i1 noundef zeroext false, i1 noundef zeroext false) #24
  store ptr %i.dpa, ptr %i.awd, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #24
  store i16 257, ptr %i.awe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %90)
  call void @llvm.lifetime.start.p0(ptr nonnull %89)
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineES4_Ed_UlS2_E_EEvlS2_, ptr %90, align 8
  store i64 %i.awf, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %89, i8 0, i64 16, i1 false)
  %i.dpb = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %94, i32 noundef %i.dox, ptr null, i64 0, ptr nonnull %i.aa, i64 3, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %97, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %89, ptr noundef nonnull byval(%"class.llvm::function_ref.599") align 8 %90) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %90)
  call void @llvm.lifetime.end.p0(ptr nonnull %89)
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer26instrumentMemAccessOutlineEPN4llvm5ValueEbjPNS1_11InstructionERNS1_14DomTreeUpdaterEPNS1_8LoopInfoE.exit

_ZN12_GLOBAL__N_118HWAddressSanitizer26instrumentMemAccessOutlineEPN4llvm5ValueEbjPNS1_11InstructionERNS1_14DomTreeUpdaterEPNS1_8LoopInfoE.exit: ; preds = %bb.lm, %.critedge.i
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.avq) #24
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.avp) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #24
  br label %bb.mr

bb.ln:                                            ; preds = %bb.lh
  %i.dpc = zext nneg i8 %i.dnj to i32
  %i.dpd = shl nuw nsw i32 %i.dpc, 24
  %i.dpe = load i8, ptr %i.dv, align 1, !tbaa !202, !range !25, !noundef !26
  %i.dpf = shl nuw nsw i8 %i.dpe, 5
  %i.dpg = zext nneg i8 %i.dpf to i32
  %i.dph = select i1 %i.dnc, i32 16, i32 0
  %i.dpi = or disjoint i32 %i.dph, %i.dpd
  %i.dpj = or disjoint i32 %i.dpi, %i.dpg
  %i.dpk = or i32 %i.dpj, %i.dlu
  %i.dpl = or i32 %i.dpk, %i.dni
  %i.dpm = zext nneg i32 %i.dpl to i64            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #24
  call fastcc void @_ZN12_GLOBAL__N_118HWAddressSanitizer20insertShadowTagCheckEPN4llvm5ValueEPNS1_11InstructionERNS1_14DomTreeUpdaterEPNS1_8LoopInfoE(ptr dead_on_unwind noalias writable align 8 %105, ptr noundef nonnull readonly align 8 dereferenceable(544) %198, ptr noundef nonnull %i.dkc, ptr noundef nonnull %i.dnf, ptr noundef nonnull align 8 dereferenceable(688) %163, ptr noundef %.0.i54)
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #24
  %i.dpn = load ptr, ptr %105, align 8, !tbaa !749 ; 5 uses
  %i.dpo = getelementptr inbounds nuw i8, ptr %i.dpn, i64 8
  %i.dpp = load ptr, ptr %i.dpo, align 8, !tbaa !269
  %i.dpq = load ptr, ptr %i.dpp, align 8, !tbaa !279, !nonnull !26, !align !193
  store ptr null, ptr %106, align 8, !tbaa !225
  store ptr %i.dpq, ptr %i.aty, align 8, !tbaa !228
  store ptr %i.atw, ptr %i.atz, align 8, !tbaa !229
  store ptr %i.atx, ptr %i.aua, align 8, !tbaa !231
  store ptr null, ptr %i.aub, align 8, !tbaa !233
  store i32 0, ptr %i.auc, align 8, !tbaa !244
  store i8 0, ptr %i.aud, align 4, !tbaa !245
  store i8 2, ptr %i.aue, align 1, !tbaa !246
  store i8 7, ptr %i.auf, align 2, !tbaa !247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aug, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.atw, align 8, !tbaa !9
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.dpn, i64 24 ; 3 uses
  %i.dps = getelementptr inbounds nuw i8, ptr %i.dpn, i64 40 ; 2 uses
  %i.dpt = load ptr, ptr %i.dps, align 8, !tbaa !567
  store ptr %i.dpt, ptr %i.auh, align 8, !tbaa !347
  store ptr %i.dpr, ptr %i.aui, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.dpu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dpn) #24
  %i.dpv = load i64, ptr %i.dpu, align 8, !tbaa !568
  store i64 %i.dpv, ptr %106, align 8, !tbaa !568
  %i.dpw = load ptr, ptr %i.auj, align 8, !tbaa !751
  %i.dpx = load ptr, ptr %i.df, align 8, !tbaa !198
  %i.dpy = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.dpx, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #24
  store i16 257, ptr %i.auk, align 8
  %i.dpz = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %106, i32 noundef 34, ptr noundef %i.dpw, ptr noundef %i.dpy, ptr noundef nonnull align 8 dereferenceable(34) %107)
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #24
  %i.dqa = load i8, ptr %i.dv, align 1, !tbaa !202, !range !25, !noundef !26
  %i.dqb = trunc nuw i8 %i.dqa to i1
  %i.dqc = xor i1 %i.dqb, true
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #24
  %i.dqd = load ptr, ptr %198, align 8, !tbaa !224
  store ptr %i.dqd, ptr %108, align 8, !tbaa !228
  %i.dqe = call noundef ptr @_ZN4llvm9MDBuilder27createUnlikelyBranchWeightsEv(ptr noundef nonnull align 8 dereferenceable(8) %108) #24
  %i.dqf = call noundef ptr @_ZN4llvm25SplitBlockAndInsertIfThenEPNS_5ValueENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEbPNS_6MDNodeEPNS_14DomTreeUpdaterEPNS_8LoopInfoEPS6_(ptr noundef %i.dpz, ptr nonnull %i.dpr, i64 0, i1 noundef zeroext %i.dqc, ptr noundef %i.dqe, ptr noundef nonnull align 8 dereferenceable(688) %163, ptr noundef %.0.i54, ptr noundef null) #24 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #24
  %i.dqg = load ptr, ptr %i.dps, align 8, !tbaa !567
  store ptr %i.dqg, ptr %i.auh, align 8, !tbaa !347
  store ptr %i.dpr, ptr %i.aui, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.dqh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dpn) #24
  %i.dqi = load i64, ptr %i.dqh, align 8, !tbaa !568
  store i64 %i.dqi, ptr %106, align 8, !tbaa !568
  %i.dqj = load ptr, ptr %i.aul, align 8, !tbaa !752 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #24
  %i.dqk = getelementptr inbounds nuw i8, ptr %i.dqj, i64 8
  store i16 257, ptr %i.aum, align 8
  %i.dql = load ptr, ptr %i.dqk, align 8, !tbaa !269
  %i.dqm = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.dql, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.dqn = load ptr, ptr %i.atz, align 8, !tbaa !590, !nonnull !26, !align !193 ; 2 uses
  %i.dqo = load ptr, ptr %i.dqn, align 8, !tbaa !9
  %i.dqp = getelementptr inbounds nuw i8, ptr %i.dqo, i64 16
  %i.dqq = load ptr, ptr %i.dqp, align 8
  %i.dqr = call noundef ptr %i.dqq(ptr noundef nonnull align 8 dereferenceable(8) %i.dqn, i32 noundef 29, ptr noundef nonnull %i.dqj, ptr noundef %i.dqm) #24, !inline_history !753 ; 2 uses
  %.not.not.i.i.i38 = icmp eq ptr %i.dqr, null
  br i1 %.not.not.i.i.i38, label %bb.lo, label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueEmRKNS_5TwineE.exit.i

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #24
  store i16 257, ptr %i.aun, align 8
  %i.dqs = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 29, ptr noundef nonnull %i.dqj, ptr noundef %i.dqm, ptr noundef nonnull align 8 dereferenceable(34) %104, ptr null, i64 0) #24 ; 3 uses
  %i.dqt = load ptr, ptr %i.aua, align 8, !tbaa !362, !nonnull !26, !align !193 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i46 = load ptr, ptr %i.aui, align 8
  %.sroa.2.0.copyload.i.i.i.i47 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.dqu = load ptr, ptr %i.dqt, align 8, !tbaa !9
  %i.dqv = getelementptr inbounds nuw i8, ptr %i.dqu, i64 16
end_hunk_0
