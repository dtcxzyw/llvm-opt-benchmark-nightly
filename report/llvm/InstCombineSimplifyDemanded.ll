Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineSimplifyDemanded?download=true
inline.NumInlined: 4756
inline.NumDeleted: 1943
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm16InstCombinerImpl26SimplifyDemandedUseFPClassEPNS_11InstructionENS_11FPClassTestERNS_12KnownFPClassERKNS_13SimplifyQueryEj:bb.a
  %i.asd = call noundef ptr @_ZN4llvm10ConstantFP7getZeroEPNS_4TypeEb(ptr noundef %i.b, i1 noundef zeroext false) #22
  br label %bb.ju

bb.je:                                            ; preds = %bb.jc, %switch.edge.thread
  %i.ase = phi i1 [ false, %bb.jc ], [ %i.arz, %switch.edge.thread ]
  %i.asf = phi i1 [ false, %bb.jc ], [ %i.asa, %switch.edge.thread ] ; 2 uses
  %i.asg = icmp eq i32 %i.aaj, 26                 ; 2 uses
  %or.cond37 = or i1 %i.asg, %i.asf
  %i.ash = and i32 %i.arp, 975
  %i.asi = icmp eq i32 %i.ash, 0
  %or.cond1833.a = and i1 %i.asi, %or.cond37
  br i1 %or.cond1833.a, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.asj = call noundef ptr @_ZN4llvm10ConstantFP7getZeroEPNS_4TypeEb(ptr noundef %i.b, i1 noundef zeroext true) #22
  br label %bb.ju

bb.jg:                                            ; preds = %bb.je
  %i.ask = and i32 %i.arp, 1007
  %i.asl = icmp eq i32 %i.ask, 0
  %or.cond1835 = and i1 %i.asl, %i.ase
  br i1 %or.cond1835, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.asm = call noundef ptr @_ZN4llvm10ConstantFP3getEPNS_4TypeEd(ptr noundef %i.b, double noundef -1.000000e+00) #22
  br label %bb.ju

bb.ji:                                            ; preds = %bb.jg
  %i.asn = and i32 %i.arp, 895
  %i.aso = icmp eq i32 %i.asn, 0
  %or.cond1837 = and i1 %i.asg, %i.aso
  br i1 %or.cond1837, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.asp = call noundef ptr @_ZN4llvm10ConstantFP3getEPNS_4TypeEd(ptr noundef %i.b, double noundef 1.000000e+00) #22
  br label %bb.ju

bb.jk:                                            ; preds = %bb.ji
  %i.asq = icmp eq i32 %i.aaj, 382                ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ass = load i32, ptr %i.asr, align 8          ; 2 uses
  %i.ast = and i32 %i.ass, 254
  %spec.select.i.i1256 = icmp eq i32 %i.ast, 18
  br i1 %spec.select.i.i1256, label %bb.jl, label %_ZNK4llvm4Type13getScalarTypeEv.exit1258

bb.jl:                                            ; preds = %bb.jk
  %i.asu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !127
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !56
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.asw, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit1258

_ZNK4llvm4Type13getScalarTypeEv.exit1258:         ; preds = %bb.jk, %bb.jl
  %i.asx = phi i32 [ %.pre, %bb.jl ], [ %i.ass, %bb.jk ]
  %i.asy = and i32 %i.asx, 255
  %i.asz = icmp eq i32 %i.asy, 6
  %i.ata = call i64 @_ZN4llvm12KnownFPClass15roundToIntegralERKS0_bb(ptr noundef nonnull align 4 dereferenceable(6) %67, i1 noundef zeroext %i.asq, i1 noundef zeroext %i.asz) #22 ; 3 uses
  %i.atb = trunc i64 %i.ata to i48
  store i48 %i.atb, ptr %3, align 4
  %i.atc = and i32 %.0908, 1023
  %i.atd = trunc i64 %i.ata to i32
  %i.ate = and i32 %i.atc, %i.atd                 ; 5 uses
  store i32 %i.ate, ptr %3, align 4, !tbaa !165
  %i.atf = and i32 %i.ate, 3
  %i.atg = icmp eq i32 %i.atf, 0
  br i1 %i.atg, label %bb.jm, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1261

bb.jm:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit1258
  %i.ath = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ati = and i64 %i.ata, 1099511627776
  %.not1948 = icmp eq i64 %i.ati, 0
  br i1 %.not1948, label %bb.jn, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1261

bb.jn:                                            ; preds = %bb.jm
  %i.atj = and i32 %i.ate, 60
  %i.atk = icmp eq i32 %i.atj, 0
  br i1 %i.atk, label %.sink.split.i1259, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.atl = icmp samesign ult i32 %i.ate, 64
  br i1 %i.atl, label %.sink.split.i1259, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1261

.sink.split.i1259:                                ; preds = %bb.jo, %bb.jn
  %.sink.i1260 = phi i16 [ 256, %bb.jn ], [ 257, %bb.jo ]
  store i16 %.sink.i1260, ptr %i.ath, align 4
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1261

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1261: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit1258, %bb.jm, %bb.jo, %.sink.split.i1259
  %i.atm = call fastcc noundef ptr @_ZL18getFPClassConstantPN4llvm4TypeENS_11FPClassTestEb(ptr noundef nonnull %i.b, i32 noundef %i.ate, i1 noundef zeroext true) ; 2 uses
  %.not984 = icmp eq ptr %i.atm, null
  br i1 %.not984, label %bb.jp, label %bb.ju

bb.jp:                                            ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1261
  %or.cond39 = or i1 %i.asq, %i.asf
  br i1 %or.cond39, label %bb.jq, label %bb.js

bb.jq:                                            ; preds = %bb.jp
  %i.atn = load i32, ptr %67, align 4, !tbaa !165
  %i.ato = and i32 %i.atn, 783
  %i.atp = icmp eq i32 %i.ato, 0
  br i1 %i.atp, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  %i.atq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.atq, ptr %68, align 8, !tbaa !68
  %i.atr = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.ats = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.2.0..sroa_idx.i.i1263 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0.copyload.i.i1264 = load i64, ptr %.sroa.2.0..sroa_idx.i.i1263, align 8
  %i.atu = load <2 x ptr>, ptr %i.ats, align 8
  store <2 x ptr> %i.atu, ptr %i.atr, align 8
  %.sroa.2.0..sroa_idx.i1265 = getelementptr inbounds nuw i8, ptr %68, i64 24
  %.sroa.2.0.extract.trunc.i1266 = trunc i64 %.sroa.2.0.copyload.i.i1264 to i16
  store i16 %.sroa.2.0.extract.trunc.i1266, ptr %.sroa.2.0..sroa_idx.i1265, align 8
  %i.atv = getelementptr inbounds nuw i8, ptr %68, i64 32
  %i.atw = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %i.atq) #22
  store ptr %i.atw, ptr %i.atv, align 8
  %i.atx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aty = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !71
  store ptr %i.atz, ptr %i.ats, align 8, !tbaa !87
  store ptr %i.atx, ptr %i.att, align 8
  store i16 0, ptr %.sroa.2.0..sroa_idx.i.i1263, align 8
  %i.aua = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #22
  %i.aub = load i64, ptr %i.aua, align 8, !tbaa !88
  store i64 %i.aub, ptr %i.atq, align 8, !tbaa !88
  %i.auc = call noundef ptr @_ZN4llvm10ConstantFP7getZeroEPNS_4TypeEb(ptr noundef nonnull %i.b, i1 noundef zeroext false) #22
  %i.aud = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aue = load i32, ptr %i.aud, align 4
  %i.auf = and i32 %i.aue, 268435455
  %i.aug = zext nneg i32 %i.auf to i64
  %i.auh = sub nsw i64 0, %i.aug
  %i.aui = getelementptr inbounds [32 x i8], ptr %1, i64 %i.auh
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #22
  %i.auk = getelementptr inbounds nuw i8, ptr %69, i64 32
  store i16 257, ptr %i.auk, align 8
  %i.aul = call noundef ptr @_ZN4llvm13IRBuilderBase21CreateBinaryIntrinsicEjPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.atq, i32 noundef 33, ptr noundef %i.auc, ptr noundef %i.auj, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %69) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aul, ptr noundef nonnull %1) #22
  call void @_ZN4llvm13IRBuilderBase16InsertPointGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  br label %bb.ju

bb.js:                                            ; preds = %bb.jp, %bb.jq
  %i.aum = load i32, ptr %3, align 4, !tbaa !165
  %i.aun = call fastcc i32 @_ZL23inferFastMathValueFlagsN4llvm13FastMathFlagsENS_11FPClassTestENS_8ArrayRefINS_12KnownFPClassEEE(i32 %.sroa.01633.0, i32 noundef %i.aum, ptr nonnull %67, i64 1) ; 2 uses
  %.not1858 = icmp eq i32 %i.aun, %.sroa.01633.0
  br i1 %.not1858, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  call void @_ZN4llvm11Instruction30dropUBImplyingAttrsAndMetadataENS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr null, i64 0) #22
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 %i.aun) #22
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js, %bb.jd, %bb.jf, %bb.jh, %bb.jj, %bb.jr, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1261, %bb.iz, %bb.jb
  %.42 = phi ptr [ %1, %bb.iz ], [ %i.ary, %bb.jb ], [ %i.asd, %bb.jd ], [ %i.asj, %bb.jf ], [ %i.asm, %bb.jh ], [ %i.asp, %bb.jj ], [ %i.aul, %bb.jr ], [ %i.atm, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1261 ], [ %1, %bb.jt ], [ null, %bb.js ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  br label %.thread1769

bb.jv:                                            ; preds = %bb.et
  %i.auo = tail call fastcc noundef ptr @_ZL33simplifyDemandedUseFPClassFPTruncRN4llvm16InstCombinerImplERNS_11InstructionENS_13FastMathFlagsENS_11FPClassTestERNS_12KnownFPClassERKNS_13SimplifyQueryEj(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 %.sroa.01633.0, i32 noundef %.0908, ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5)
  br label %.thread1769

bb.jw:                                            ; preds = %bb.et
  %i.aup = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.auq = load i32, ptr %i.aup, align 8          ; 2 uses
  %i.aur = and i32 %i.auq, 254
  %spec.select.i.i1268 = icmp eq i32 %i.aur, 18
  br i1 %spec.select.i.i1268, label %bb.jx, label %_ZNK4llvm4Type13getScalarTypeEv.exit1270

bb.jx:                                            ; preds = %bb.jw
  %i.aus = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !127
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !56 ; 2 uses
  %.phi.trans.insert1885 = getelementptr inbounds nuw i8, ptr %i.auu, i64 8
  %.pre1886 = load i32, ptr %.phi.trans.insert1885, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit1270

_ZNK4llvm4Type13getScalarTypeEv.exit1270:         ; preds = %bb.jw, %bb.jx
  %i.auv = phi i32 [ %.pre1886, %bb.jx ], [ %i.auq, %bb.jw ]
  %.0.i1269 = phi ptr [ %i.auu, %bb.jx ], [ %i.b, %bb.jw ]
  %trunc.i = trunc i32 %i.auv to i8
  switch i8 %trunc.i, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit [
    i8 3, label %bb.jy
    i8 2, label %bb.jy
    i8 0, label %bb.jy
    i8 1, label %bb.jy
    i8 5, label %bb.jy
  ]

bb.jy:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit1270, %_ZNK4llvm4Type13getScalarTypeEv.exit1270, %_ZNK4llvm4Type13getScalarTypeEv.exit1270, %_ZNK4llvm4Type13getScalarTypeEv.exit1270, %_ZNK4llvm4Type13getScalarTypeEv.exit1270
  %i.auw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !167, !nonnull !24, !align !123
  %i.auy = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm4Type15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i1269) #22
  %i.auz = tail call i16 @_ZNK4llvm8Function15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(140) %i.aux, ptr noundef nonnull align 4 dereferenceable(29) %i.auy) #22 ; 3 uses
  %.sroa.01381.0.extract.trunc = trunc i16 %i.auz to i8 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i16 %i.auz, 8   ; 2 uses
  %i.ava = lshr i32 %.0908, 1                     ; 2 uses
  %i.avb = and i32 %i.ava, 1
  %spec.select1838 = or i32 %i.avb, %.0908        ; 2 uses
  %83 = icmp eq i8 %.sroa.01381.0.extract.trunc, 0
  %84 = icmp eq i16 %.sroa.7.0.extract.shift, 0
  %or.cond1841.not = and i1 %84, %83              ; 2 uses
  br i1 %or.cond1841.not, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.avc = shl i32 %.0908, 1
  %i.avd = and i32 %i.avc, 128
  %i.ave = and i32 %i.ava, 16
  %i.avf = or disjoint i32 %i.avd, %i.ave
  %spec.select1852 = or i32 %i.avf, %spec.select1838 ; 3 uses
  %i.avg = icmp eq i8 %.sroa.01381.0.extract.trunc, 1
  %i.avh = icmp eq i16 %.sroa.7.0.extract.shift, 1
  %or.cond1844 = and i1 %i.avg, %i.avh
  br i1 %or.cond1844, label %bb.ka, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.ka:                                            ; preds = %bb.jz
  %i.avi = and i32 %.0908, 64
  %i.avj = icmp eq i32 %i.avi, 0
  %i.avk = and i32 %spec.select1852, 895
  %spec.select1845 = select i1 %i.avj, i32 %i.avk, i32 %spec.select1852 ; 2 uses
  %i.avl = and i32 %.0908, 32
  %i.avm = icmp eq i32 %i.avl, 0
  %i.avn = and i32 %spec.select1845, 1007
  %spec.select1853 = select i1 %i.avm, i32 %i.avn, i32 %spec.select1845
  br label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

_ZNK4llvm12DenormalModeeqES0_.exit.thread:        ; preds = %bb.jy, %bb.ka, %bb.jz
  %.41713 = phi i32 [ %spec.select1852, %bb.jz ], [ %spec.select1853, %bb.ka ], [ %spec.select1838, %bb.jy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #22
  store i32 1023, ptr %70, align 4, !tbaa !165
  %i.avo = getelementptr inbounds nuw i8, ptr %70, i64 4
  store i16 0, ptr %i.avo, align 4
  %i.avp = add i32 %5, 1
  %i.avq = call noundef zeroext i1 @_ZN4llvm16InstCombinerImpl23SimplifyDemandedFPClassEPNS_11InstructionEjNS_11FPClassTestERNS_12KnownFPClassERKNS_13SimplifyQueryEj(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %.41713, ptr noundef nonnull align 4 dereferenceable(6) %70, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %i.avp)
  br i1 %i.avq, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.thread1765, label %bb.kb

bb.kb:                                            ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread
  %i.avr = call i64 @_ZN4llvm12KnownFPClass12canonicalizeERKS0_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6) %70, i16 %i.auz) #22 ; 3 uses
  %i.avs = trunc i64 %i.avr to i48
  store i48 %i.avs, ptr %3, align 4
  %i.avt = and i32 %.0908, 1023
  %i.avu = trunc i64 %i.avr to i32
  %i.avv = and i32 %i.avt, %i.avu                 ; 5 uses
  store i32 %i.avv, ptr %3, align 4, !tbaa !165
  %i.avw = and i32 %i.avv, 3
  %i.avx = icmp eq i32 %i.avw, 0
  br i1 %i.avx, label %bb.kc, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1275

bb.kc:                                            ; preds = %bb.kb
  %i.avy = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.avz = and i64 %i.avr, 1099511627776
  %.not1949 = icmp eq i64 %i.avz, 0
  br i1 %.not1949, label %bb.kd, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1275

bb.kd:                                            ; preds = %bb.kc
  %i.awa = and i32 %i.avv, 60
  %i.awb = icmp eq i32 %i.awa, 0
  br i1 %i.awb, label %.sink.split.i1273, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.awc = icmp samesign ult i32 %i.avv, 64
  br i1 %i.awc, label %.sink.split.i1273, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1275

.sink.split.i1273:                                ; preds = %bb.ke, %bb.kd
  %.sink.i1274 = phi i16 [ 256, %bb.kd ], [ 257, %bb.ke ]
  store i16 %.sink.i1274, ptr %i.avy, align 4
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1275

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1275: ; preds = %bb.kb, %bb.kc, %bb.ke, %.sink.split.i1273
  %i.awd = call fastcc noundef ptr @_ZL18getFPClassConstantPN4llvm4TypeENS_11FPClassTestEb(ptr noundef nonnull %i.b, i32 noundef %i.avv, i1 noundef zeroext false) ; 2 uses
  %.not980 = icmp eq ptr %i.awd, null
  br i1 %.not980, label %bb.kf, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.thread1765

bb.kf:                                            ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1275
  %i.awe = load i32, ptr %70, align 4, !tbaa !165 ; 2 uses
  %i.awf = and i32 %i.awe, 3
  %i.awg = icmp eq i32 %i.awf, 0
  br i1 %i.awg, label %bb.kg, label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %i.awh = and i32 %i.awe, 144
  %85 = icmp eq i32 %i.awh, 0
  %or.cond1849 = or i1 %or.cond1841.not, %85
  br i1 %or.cond1849, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.awi = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.awj = load i32, ptr %i.awi, align 4
  %i.awk = and i32 %i.awj, 268435455
  %i.awl = zext nneg i32 %i.awk to i64
  %i.awm = sub nsw i64 0, %i.awl
  %i.awn = getelementptr inbounds [32 x i8], ptr %1, i64 %i.awm
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !63
  br label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.thread1765

bb.ki:                                            ; preds = %bb.kg, %bb.kf
  %i.awp = load i32, ptr %3, align 4, !tbaa !165
  %i.awq = call fastcc i32 @_ZL23inferFastMathValueFlagsN4llvm13FastMathFlagsENS_11FPClassTestENS_8ArrayRefINS_12KnownFPClassEEE(i32 %.sroa.01633.0, i32 noundef %i.awp, ptr nonnull %70, i64 1) ; 2 uses
  %.not1860 = icmp eq i32 %i.awq, %.sroa.01633.0
  br i1 %.not1860, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.thread1765, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  call void @_ZN4llvm11Instruction30dropUBImplyingAttrsAndMetadataENS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr null, i64 0) #22
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 %i.awq) #22
  br label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.thread1765

_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.thread1765: ; preds = %bb.kh, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1275, %_ZNK4llvm12DenormalModeeqES0_.exit.thread, %bb.ki, %bb.kj
  %.45 = phi ptr [ %i.awd, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1275 ], [ %i.awo, %bb.kh ], [ %1, %_ZNK4llvm12DenormalModeeqES0_.exit.thread ], [ %1, %bb.kj ], [ null, %bb.ki ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  br label %.thread1769

_ZNK4llvm4Type14isIEEELikeFPTyEv.exit:            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit1270, %bb.et
  %i.awr = add i32 %5, 1
  %i.aws = tail call i64 @_ZN4llvm19computeKnownFPClassEPKNS_5ValueENS_11FPClassTestERKNS_13SimplifyQueryEj(ptr noundef nonnull %1, i32 noundef %.0908, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %i.awr) #22 ; 3 uses
  %i.awt = trunc i64 %i.aws to i48
  store i48 %i.awt, ptr %3, align 4
  %i.awu = and i32 %.0908, 1023
  %i.awv = trunc i64 %i.aws to i32
  %i.aww = and i32 %i.awu, %i.awv                 ; 4 uses
  store i32 %i.aww, ptr %3, align 4, !tbaa !165
  %i.awx = and i32 %i.aww, 3
  %i.awy = icmp eq i32 %i.awx, 0
  br i1 %i.awy, label %bb.kk, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1297

bb.kk:                                            ; preds = %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit
  %i.awz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.axa = and i64 %i.aws, 1099511627776
  %.not1951 = icmp eq i64 %i.axa, 0
  br i1 %.not1951, label %bb.kl, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1297

bb.kl:                                            ; preds = %bb.kk
  %i.axb = and i32 %i.aww, 60
  %i.axc = icmp eq i32 %i.axb, 0
  br i1 %i.axc, label %.sink.split.i1277, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.axd = icmp samesign ult i32 %i.aww, 64
  br i1 %i.axd, label %.sink.split.i1277, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1297

.sink.split.i1277:                                ; preds = %bb.km, %bb.kl
  %.sink.i1278 = phi i16 [ 256, %bb.kl ], [ 257, %bb.km ]
  store i16 %.sink.i1278, ptr %i.awz, align 4
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1297

bb.kn:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  store i32 1023, ptr %71, align 4, !tbaa !165
  %i.axe = getelementptr inbounds nuw i8, ptr %71, i64 4 ; 3 uses
  store i16 0, ptr %i.axe, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #22
  store i32 1023, ptr %72, align 4, !tbaa !165
  %i.axf = getelementptr inbounds nuw i8, ptr %72, i64 4 ; 2 uses
  store i16 0, ptr %i.axf, align 4
  %i.axg = add i32 %5, 1                          ; 2 uses
  %i.axh = call noundef zeroext i1 @_ZN4llvm16InstCombinerImpl23SimplifyDemandedFPClassEPNS_11InstructionEjNS_11FPClassTestERNS_12KnownFPClassERKNS_13SimplifyQueryEj(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull %1, i32 noundef 2, i32 noundef %.0908, ptr noundef nonnull align 4 dereferenceable(6) %72, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %i.axg)
  br i1 %i.axh, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1294, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.axi = call noundef zeroext i1 @_ZN4llvm16InstCombinerImpl23SimplifyDemandedFPClassEPNS_11InstructionEjNS_11FPClassTestERNS_12KnownFPClassERKNS_13SimplifyQueryEj(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef %.0908, ptr noundef nonnull align 4 dereferenceable(6) %71, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %i.axg)
  br i1 %i.axi, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1294, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.axj = load i32, ptr %71, align 4, !tbaa !165
  %i.axk = and i32 %i.axj, %.0908
  %i.axl = icmp eq i32 %i.axk, 0
  br i1 %i.axl, label %bb.kq, label %bb.kt

bb.kq:                                            ; preds = %bb.kp
  %i.axm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.axn = load i32, ptr %i.axm, align 4          ; 2 uses
  %i.axo = and i32 %i.axn, 1073741824
  %.not.i.i1280 = icmp eq i32 %i.axo, 0
  br i1 %.not.i.i1280, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.axp = getelementptr inbounds i8, ptr %1, i64 -8
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !58
  br label %_ZNK4llvm4User10getOperandEj.exit1281

bb.ks:                                            ; preds = %bb.kq
  %i.axr = and i32 %i.axn, 268435455
  %i.axs = zext nneg i32 %i.axr to i64
  %i.axt = sub nsw i64 0, %i.axs
  %i.axu = getelementptr inbounds [32 x i8], ptr %1, i64 %i.axt
  br label %_ZNK4llvm4User10getOperandEj.exit1281

_ZNK4llvm4User10getOperandEj.exit1281:            ; preds = %bb.kr, %bb.ks
  %i.axv = phi ptr [ %i.axq, %bb.kr ], [ %i.axu, %bb.ks ]
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 64
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !63
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1294

bb.kt:                                            ; preds = %bb.kp
  %i.axy = load i32, ptr %72, align 4, !tbaa !165
  %i.axz = and i32 %i.axy, %.0908
  %i.aya = icmp eq i32 %i.axz, 0
  %i.ayb = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ayc = load i32, ptr %i.ayb, align 4          ; 3 uses
  %i.ayd = and i32 %i.ayc, 1073741824
  %.not.i.i1282 = icmp eq i32 %i.ayd, 0           ; 2 uses
  br i1 %i.aya, label %bb.ku, label %bb.kx

bb.ku:                                            ; preds = %bb.kt
  br i1 %.not.i.i1282, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.aye = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !58
  br label %_ZNK4llvm4User10getOperandEj.exit1283

bb.kw:                                            ; preds = %bb.ku
  %i.ayg = and i32 %i.ayc, 268435455
  %i.ayh = zext nneg i32 %i.ayg to i64
  %i.ayi = sub nsw i64 0, %i.ayh
  %i.ayj = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ayi
  br label %_ZNK4llvm4User10getOperandEj.exit1283

_ZNK4llvm4User10getOperandEj.exit1283:            ; preds = %bb.kv, %bb.kw
  %i.ayk = phi ptr [ %i.ayf, %bb.kv ], [ %i.ayj, %bb.kw ]
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 32
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !63
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit1294

bb.kx:                                            ; preds = %bb.kt
  br i1 %.not.i.i1282, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.ayn = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !58
  br label %_ZNK4llvm4User10getOperandEj.exit1287

bb.kz:                                            ; preds = %bb.kx
  %i.ayp = and i32 %i.ayc, 268435455
  %i.ayq = zext nneg i32 %i.ayp to i64
  %i.ayr = sub nsw i64 0, %i.ayq
  %i.ays = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ayr
  br label %_ZNK4llvm4User10getOperandEj.exit1287

_ZNK4llvm4User10getOperandEj.exit1287:            ; preds = %bb.ky, %bb.kz
  %.in = phi ptr [ %i.ayo, %bb.ky ], [ %i.ays, %bb.kz ] ; 2 uses
  %i.ayt = load ptr, ptr %.in, align 8, !tbaa !63
  %i.ayu = getelementptr inbounds nuw i8, ptr %.in, i64 32
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !63
  call void @_ZN4llvm30adjustKnownFPClassForSelectArmERNS_12KnownFPClassEPNS_5ValueES3_bRKNS_13SimplifyQueryEj(ptr noundef nonnull align 4 dereferenceable(6) %71, ptr noundef %i.ayt, ptr noundef %i.ayv, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5) #22
  %i.ayw = load i32, ptr %i.ayb, align 4          ; 2 uses
  %i.ayx = and i32 %i.ayw, 1073741824
  %.not.i.i1288 = icmp eq i32 %i.ayx, 0
  br i1 %.not.i.i1288, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit1287
  %i.ayy = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ayz = load ptr, ptr %i.ayy, align 8, !tbaa !58
  br label %_ZNK4llvm4User10getOperandEj.exit1291

bb.lb:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit1287
  %i.aza = and i32 %i.ayw, 268435455
  %i.azb = zext nneg i32 %i.aza to i64
  %i.azc = sub nsw i64 0, %i.azb
  %i.azd = getelementptr inbounds [32 x i8], ptr %1, i64 %i.azc
  br label %_ZNK4llvm4User10getOperandEj.exit1291

_ZNK4llvm4User10getOperandEj.exit1291:            ; preds = %bb.la, %bb.lb
  %.in1855 = phi ptr [ %i.ayz, %bb.la ], [ %i.azd, %bb.lb ] ; 2 uses
  %i.aze = load ptr, ptr %.in1855, align 8, !tbaa !63
  %i.azf = getelementptr inbounds nuw i8, ptr %.in1855, i64 64
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !63
  call void @_ZN4llvm30adjustKnownFPClassForSelectArmERNS_12KnownFPClassEPNS_5ValueES3_bRKNS_13SimplifyQueryEj(ptr noundef nonnull align 4 dereferenceable(6) %72, ptr noundef %i.aze, ptr noundef %i.azg, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5) #22
  %i.azh = load i32, ptr %71, align 4, !tbaa !165
  %i.azi = load i32, ptr %72, align 4, !tbaa !165
  %i.azj = or i32 %i.azi, %i.azh                  ; 2 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %71, i64 5
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !166, !range !23, !noundef !24 ; 2 uses
  %i.azm = trunc nuw i8 %i.azl to i1
  %i.azn = getelementptr inbounds nuw i8, ptr %72, i64 5
  %i.azo = load i8, ptr %i.azn, align 1, !tbaa !166, !range !23, !noundef !24
  %i.azp = icmp eq i8 %i.azl, %i.azo              ; 2 uses
  %brmerge.not.i.i = and i1 %i.azp, %i.azm
  %i.azq = load i8, ptr %i.axe, align 4, !range !23
  %i.azr = load i8, ptr %i.axf, align 4, !range !23
  %i.azs = icmp eq i8 %i.azq, %i.azr
  %i.azt = select i1 %brmerge.not.i.i, i1 %i.azs, i1 %i.azp
  %i.azu = load i16, ptr %i.axe, align 4
  %i.azv = zext i16 %i.azu to i64
  %i.azw = shl nuw nsw i64 %i.azv, 32
end_hunk_0
