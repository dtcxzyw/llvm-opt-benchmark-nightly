Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenModule?download=true
inline.NumInlined: 33934
inline.NumDeleted: 16733
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN5clang7CodeGen13CodeGenModule7ReleaseEv:bb.a
bb.hg:                                            ; preds = %bb.hf
  %i.ajx = call noundef i32 @_ZNK5clang11LangOptions26getOpenCLCompatibleVersionEv(ptr noundef nonnull align 8 dereferenceable(1136) %.pre880) #28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !1044
  %i.aka = udiv i32 %i.ajx, 100
  %i.akb = zext nneg i32 %i.aka to i64
  %i.akc = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ajz, i64 noundef %i.akb, i1 noundef zeroext false, i1 noundef zeroext false) #28
  %i.akd = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef %i.akc) #28
  store ptr %i.akd, ptr %i.i, align 16, !tbaa !1390
  %i.ake = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.akf = load ptr, ptr %i.ajy, align 8, !tbaa !1044
  %i.akg = icmp ugt i32 %i.ajx, 199
  %i.akh = select i1 %i.akg, i64 0, i64 2
  %i.aki = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.akf, i64 noundef %i.akh, i1 noundef zeroext false, i1 noundef zeroext false) #28
  %i.akj = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef %i.aki) #28
  store ptr %i.akj, ptr %i.ake, align 8, !tbaa !1390
  %i.akk = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  %i.akl = call noundef ptr @_ZN4llvm6Module24getOrInsertNamedMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.akk, ptr nonnull @.str.86, i64 19) #28
  %i.akm = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !1010, !nonnull !137, !align !515
  %i.ako = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.akn, ptr nonnull %i.i, i64 2, i32 noundef 0, i1 noundef zeroext true) #28
  call void @_ZN4llvm11NamedMDNode10addOperandEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(64) %i.akl, ptr noundef %i.ako) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  %.pre879 = load ptr, ptr %i.hn, align 8, !tbaa !539
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hf, %bb.hg, %bb.he, %bb.hd
  %i.akp = phi ptr [ %.pre880, %bb.hf ], [ %.pre879, %bb.hg ], [ %i.ajj, %bb.he ], [ %i.ajj, %bb.hd ]
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 80
  %i.akr = load i64, ptr %i.akq, align 8
  %i.aks = and i64 %i.akr, 1099511627776
  %.not237 = icmp eq i64 %i.aks, 0
  br i1 %.not237, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !1065
  call void @_ZN5clang7CodeGen13CGHLSLRuntime13finishCodeGenEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aku) #28
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.akv = load ptr, ptr %i.j, align 8, !tbaa !915, !nonnull !137, !align !515
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 2600
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !913, !nonnull !137, !align !515
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 40
  %i.akz = load i64, ptr %i.aky, align 8
  %i.ala = lshr i64 %i.akz, 35
  %i.alb = trunc nuw nsw i64 %i.ala to i32
  %i.alc = and i32 %i.alb, 3                      ; 3 uses
  %.not238 = icmp eq i32 %i.alc, 0
  br i1 %.not238, label %bb.hm, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ald = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  call void @_ZN4llvm6Module11setPICLevelENS_8PICLevel5LevelE(ptr noundef nonnull align 8 dereferenceable(1288) %i.ald, i32 noundef %i.alc) #28
  %i.ale = load ptr, ptr %i.j, align 8, !tbaa !915, !nonnull !137, !align !515
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 2600
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !913, !nonnull !137, !align !515
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 40
  %i.ali = load i64, ptr %i.alh, align 8
  %i.alj = and i64 %i.ali, 137438953472
  %.not239 = icmp eq i64 %i.alj, 0
  br i1 %.not239, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.alk = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  call void @_ZN4llvm6Module11setPIELevelENS_8PIELevel5LevelE(ptr noundef nonnull align 8 dereferenceable(1288) %i.alk, i32 noundef %i.alc) #28
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hk, %bb.hl, %bb.hj
  %i.all = load ptr, ptr %i.hi, align 8, !tbaa !516, !nonnull !137, !align !515 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 224
  %i.aln = load i64, ptr %i.alm, align 8, !tbaa !1013 ; 2 uses
  %.not240 = icmp eq i64 %i.aln, 0
  br i1 %.not240, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.alo = getelementptr inbounds nuw i8, ptr %i.all, i64 216
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !1085 ; 9 uses
  switch i64 %i.aln, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread [
    i64 4, label %bb.ho
    i64 5, label %bb.hp
    i64 6, label %bb.hq
  ]

bb.ho:                                            ; preds = %bb.hn
  %i.alq = load i32, ptr %i.alp, align 1
  %i.alr = icmp ne i32 %i.alq, 2037279092
  %i.als = zext i1 %i.alr to i32
  %.not.i.i350 = icmp eq i32 %i.als, 0
  br i1 %.not.i.i350, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread985, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread

bb.hp:                                            ; preds = %bb.hn
  %i.alt = load i32, ptr %i.alp, align 1
  %i.alu = xor i32 %i.alt, 1818324339
  %i.alv = getelementptr i8, ptr %i.alp, i64 4
  %i.alw = load i8, ptr %i.alv, align 1
  %i.alx = zext i8 %i.alw to i32
  %i.aly = xor i32 %i.alx, 108
  %i.alz = or i32 %i.alu, %i.aly
  %i.ama = icmp ne i32 %i.alz, 0
  %i.amb = zext i1 %i.ama to i32
  %.not.i.i356 = icmp eq i32 %i.amb, 0
  br i1 %.not.i.i356, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread985, label %bb.hs

bb.hq:                                            ; preds = %bb.hn
  %i.amc = load i32, ptr %i.alp, align 1
  %i.amd = xor i32 %i.amc, 1852990827
  %i.ame = getelementptr i8, ptr %i.alp, i64 4
  %i.amf = load i16, ptr %i.ame, align 1
  %i.amg = zext i16 %i.amf to i32
  %i.amh = xor i32 %i.amg, 27749
  %i.ami = or i32 %i.amd, %i.amh
  %i.amj = icmp ne i32 %i.ami, 0
  %i.amk = zext i1 %i.amj to i32
  %.not.i.i364 = icmp eq i32 %i.amk, 0
  br i1 %.not.i.i364, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread985, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aml = load i32, ptr %i.alp, align 1
  %i.amm = xor i32 %i.aml, 1768187245
  %i.amn = getelementptr i8, ptr %i.alp, i64 4
  %i.amo = load i16, ptr %i.amn, align 1
  %i.amp = zext i16 %i.amo to i32
  %i.amq = xor i32 %i.amp, 28021
  %i.amr = or i32 %i.amm, %i.amq
  %i.ams = icmp ne i32 %i.amr, 0
  %i.amt = zext i1 %i.ams to i32
  %.not.i.i372 = icmp eq i32 %i.amt, 0
  br i1 %.not.i.i372, label %bb.ht, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread

bb.hs:                                            ; preds = %bb.hp
  %i.amu = load i32, ptr %i.alp, align 1
  %i.amv = xor i32 %i.amu, 1735549292
  %i.amw = getelementptr i8, ptr %i.alp, i64 4
  %i.amx = load i8, ptr %i.amw, align 1
  %i.amy = zext i8 %i.amx to i32
  %i.amz = xor i32 %i.amy, 101
  %i.ana = or i32 %i.amv, %i.amz
  %i.anb = icmp ne i32 %i.ana, 0
  %i.anc = zext i1 %i.anb to i32
  %.not.i.i380 = icmp eq i32 %i.anc, 0
  br i1 %.not.i.i380, label %bb.ht, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread985: ; preds = %bb.hq, %bb.hp, %bb.ho
  %.sroa.14.4.ph = phi i32 [ 0, %bb.ho ], [ 1, %bb.hp ], [ 2, %bb.hq ]
  %i.and = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  call void @_ZN4llvm6Module12setCodeModelENS_9CodeModel5ModelE(ptr noundef nonnull align 8 dereferenceable(1288) %i.and, i32 noundef %.sroa.14.4.ph) #28
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread

bb.ht:                                            ; preds = %bb.hr, %bb.hs
  %.sroa.14.4 = phi i32 [ 4, %bb.hs ], [ 3, %bb.hr ]
  %i.ane = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  call void @_ZN4llvm6Module12setCodeModelENS_9CodeModel5ModelE(ptr noundef nonnull align 8 dereferenceable(1288) %i.ane, i32 noundef %.sroa.14.4) #28
  %i.anf = load ptr, ptr %i.j, align 8, !tbaa !915, !nonnull !137, !align !515
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 17712
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !917
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 248
  %i.anj = load i32, ptr %i.ani, align 8, !tbaa !524
  %i.ank = icmp eq i32 %i.anj, 41
  br i1 %i.ank, label %bb.hu, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread

bb.hu:                                            ; preds = %bb.ht
  %i.anl = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  %i.anm = load ptr, ptr %i.hi, align 8, !tbaa !516, !nonnull !137, !align !515
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 248
  %i.ano = load i64, ptr %i.ann, align 8, !tbaa !2560
  call void @_ZN4llvm6Module21setLargeDataThresholdEm(ptr noundef nonnull align 8 dereferenceable(1288) %i.anl, i64 noundef %i.ano) #28
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread: ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread985, %bb.hn, %bb.ho, %bb.hr, %bb.hs, %bb.hu, %bb.ht, %bb.hm
  %i.anp = load ptr, ptr %i.hi, align 8, !tbaa !516 ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 128
  %i.anr = load i64, ptr %i.anq, align 8
  %i.ans = and i64 %i.anr, 68719476736
  %.not242 = icmp eq i64 %i.ans, 0
  br i1 %.not242, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread
  %i.ant = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  call void @_ZN4llvm6Module14setRtLibUseGOTEv(ptr noundef nonnull align 8 dereferenceable(1288) %i.ant) #28
  %.pre883.pre = load ptr, ptr %i.hi, align 8, !tbaa !516
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread
  %.pre883 = phi ptr [ %.pre883.pre, %bb.hv ], [ %i.anp, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit382.thread ] ; 2 uses
  %i.anu = load ptr, ptr %i.hx, align 8, !tbaa !514, !nonnull !137, !align !515
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 268
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !527
  %i.anx = icmp eq i32 %i.anw, 3
  br i1 %i.anx, label %bb.hx, label %bb.hz

bb.hx:                                            ; preds = %bb.hw
  %i.any = getelementptr inbounds nuw i8, ptr %.pre883, i64 128
  %i.anz = load i64, ptr %i.any, align 8
  %i.aoa = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  %i.aob = call noundef zeroext i1 @_ZNK4llvm6Module27getDirectAccessExternalDataEv(ptr noundef nonnull align 8 dereferenceable(1288) %i.aoa) #28
  %i.aoc = and i64 %i.anz, 8589934592
  %i.aod = icmp eq i64 %i.aoc, 0
  %.not243 = xor i1 %i.aod, %i.aob
  %.pre882 = load ptr, ptr %i.hi, align 8, !tbaa !516 ; 2 uses
  br i1 %.not243, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.aoe = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  %i.aof = getelementptr inbounds nuw i8, ptr %.pre882, i64 128
  %i.aog = load i64, ptr %i.aof, align 8
  %i.aoh = and i64 %i.aog, 8589934592
  %i.aoi = icmp ne i64 %i.aoh, 0
  call void @_ZN4llvm6Module27setDirectAccessExternalDataEb(ptr noundef nonnull align 8 dereferenceable(1288) %i.aoe, i1 noundef zeroext %i.aoi) #28
  %.pre881 = load ptr, ptr %i.hi, align 8, !tbaa !516
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx, %bb.hw
  %i.aoj = phi ptr [ %.pre881, %bb.hy ], [ %.pre882, %bb.hx ], [ %.pre883, %bb.hw ] ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 72
  %i.aol = load i64, ptr %i.aok, align 8          ; 2 uses
  %i.aom = and i64 %i.aol, 824633720832
  %.not244 = icmp eq i64 %i.aom, 0
  br i1 %.not244, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aon = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  %i.aoo = lshr i64 %i.aol, 38
  %i.aop = trunc nuw nsw i64 %i.aoo to i32
  %i.aoq = and i32 %i.aop, 3
  call void @_ZN4llvm6Module10setUwtableENS_11UWTableKindE(ptr noundef nonnull align 8 dereferenceable(1288) %i.aon, i32 noundef %i.aoq) #28
  %.pre884 = load ptr, ptr %i.hi, align 8, !tbaa !516
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.aor = phi ptr [ %.pre884, %bb.ia ], [ %i.aoj, %bb.hz ]
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 136
  %i.aot = load i64, ptr %i.aos, align 8
  %i.aou = trunc i64 %i.aot to i32
  %i.aov = lshr i32 %i.aou, 25
  %i.aow = and i32 %i.aov, 7                      ; 3 uses
  %i.aox = icmp samesign ult i32 %i.aow, 5
  %switch.maskindex = trunc nuw nsw i32 %i.aow to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond1012 = select i1 %i.aox, i1 %switch.lobit, i1 false
  br i1 %or.cond1012, label %switch.lookup, label %bb.ic

switch.lookup:                                    ; preds = %bb.ib
  %i.aoy = zext nneg i32 %i.aow to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang7CodeGen13CodeGenModule7ReleaseEv, i64 %i.aoy
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.aoz = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  call void @_ZN4llvm6Module15setFramePointerENS_16FramePointerKindE(ptr noundef nonnull align 8 dereferenceable(1288) %i.aoz, i32 noundef %switch.ext) #28
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %switch.lookup
  call void @_ZN5clang7CodeGen13CodeGenModule19SimplifyPersonalityEv(ptr noundef nonnull align 8 dereferenceable(4008) %0) #28
  %i.apa = load ptr, ptr %i.hi, align 8, !tbaa !516 ; 3 uses
  %i.apb = load i64, ptr %i.apa, align 8
  %i.apc = and i64 %i.apb, 2199023255552
  %.not245 = icmp eq i64 %i.apc, 0
  br i1 %.not245, label %bb.ig, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr null, ptr %i.b, align 8, !tbaa !1477
  %i.apd = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !140 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.apg = load i32, ptr %i.apf, align 8, !tbaa !1016 ; 2 uses
  %i.aph = zext i32 %i.apg to i64
  %.idx.i384 = shl nuw nsw i64 %i.aph, 5
  %i.api = getelementptr inbounds nuw i8, ptr %i.ape, i64 %.idx.i384
  %.not15.i = icmp eq i32 %i.apg, 0
  br i1 %.not15.i, label %_ZN5clang7CodeGen13CodeGenModule16EmitDeclMetadataEv.exit, label %.lr.ph.i385

.lr.ph.i385:                                      ; preds = %bb.id, %bb.if
  %.016.i = phi ptr [ %i.apm, %bb.if ], [ %i.ape, %bb.id ] ; 4 uses
  %i.apj = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  %i.apk = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.apk, align 8, !tbaa !1099
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.016.i, i64 24
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1090
  %i.apl = call noundef ptr @_ZNK4llvm6Module13getNamedValueENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.apj, ptr %.sroa.01.0.copyload.i, i64 %.sroa.22.0.copyload.i) #28 ; 2 uses
  %.not14.i = icmp eq ptr %i.apl, null
  br i1 %.not14.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %.lr.ph.i385
  %.sroa.0.0.copyload.i386 = load i64, ptr %.016.i, align 8, !tbaa !1014
  call fastcc void @_ZL22EmitGlobalDeclMetadataRN5clang7CodeGen13CodeGenModuleERPN4llvm11NamedMDNodeENS_10GlobalDeclEPNS3_11GlobalValueE(ptr noundef nonnull readonly align 8 dereferenceable(4008) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 %.sroa.0.0.copyload.i386, ptr noundef %i.apl)
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %.lr.ph.i385
  %i.apm = getelementptr inbounds nuw i8, ptr %.016.i, i64 32 ; 2 uses
  %.not.i389 = icmp eq ptr %i.apm, %i.api
  br i1 %.not.i389, label %_ZN5clang7CodeGen13CodeGenModule16EmitDeclMetadataEv.exit.loopexit, label %.lr.ph.i385

_ZN5clang7CodeGen13CodeGenModule16EmitDeclMetadataEv.exit.loopexit: ; preds = %bb.if
  %.pre885.pre = load ptr, ptr %i.hi, align 8, !tbaa !516
  br label %_ZN5clang7CodeGen13CodeGenModule16EmitDeclMetadataEv.exit

_ZN5clang7CodeGen13CodeGenModule16EmitDeclMetadataEv.exit: ; preds = %_ZN5clang7CodeGen13CodeGenModule16EmitDeclMetadataEv.exit.loopexit, %bb.id
  %.pre885 = phi ptr [ %.pre885.pre, %_ZN5clang7CodeGen13CodeGenModule16EmitDeclMetadataEv.exit.loopexit ], [ %i.apa, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.ig

bb.ig:                                            ; preds = %_ZN5clang7CodeGen13CodeGenModule16EmitDeclMetadataEv.exit, %bb.ic
  %i.apn = phi ptr [ %.pre885, %_ZN5clang7CodeGen13CodeGenModule16EmitDeclMetadataEv.exit ], [ %i.apa, %bb.ic ] ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 296
  %i.app = load i64, ptr %i.apo, align 8, !tbaa !1013
  %.not246 = icmp eq i64 %i.app, 0
  br i1 %.not246, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apn, i64 264
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !1013
  %.not247 = icmp eq i64 %i.apr, 0
  br i1 %.not247, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  call void @_ZN5clang7CodeGen13CodeGenModule16EmitCoverageFileEv(ptr noundef nonnull align 8 dereferenceable(4008) %0)
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.aps = load ptr, ptr %i.pz, align 8, !tbaa !1068 ; 2 uses
  %.not248 = icmp eq ptr %i.aps, null
  br i1 %.not248, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @_ZN5clang7CodeGen11CGDebugInfo8finalizeEv(ptr noundef nonnull align 8 dereferenceable(2480) %i.aps) #28
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %i.apt = load ptr, ptr %i.hi, align 8, !tbaa !516, !nonnull !137, !align !515 ; 2 uses
  %i.apu = load i64, ptr %i.apt, align 8
  %i.apv = and i64 %i.apu, 4398046511104
  %.not249 = icmp eq i64 %i.apv, 0
  br i1 %.not249, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @_ZN5clang7CodeGen13CodeGenModule24EmitVersionIdentMetadataEv(ptr noundef nonnull align 8 dereferenceable(4008) %0)
  %.pre886 = load ptr, ptr %i.hi, align 8, !tbaa !516
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %i.apw = phi ptr [ %.pre886, %bb.im ], [ %i.apt, %bb.il ] ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 528
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !1013
  %i.apz = icmp eq i64 %i.apy, 0
  br i1 %i.apz, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  call void @_ZN5clang7CodeGen13CodeGenModule23EmitCommandLineMetadataEv(ptr noundef nonnull align 8 dereferenceable(4008) %0)
  %.pre887 = load ptr, ptr %i.hi, align 8, !tbaa !516
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %i.aqa = phi ptr [ %.pre887, %bb.io ], [ %i.apw, %bb.in ] ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 2152
  %i.aqc = load i64, ptr %i.aqb, align 8, !tbaa !1013 ; 2 uses
  %i.aqd = icmp eq i64 %i.aqc, 0
  br i1 %i.aqd, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqa, i64 2144
  %i.aqf = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  %i.aqg = load ptr, ptr %i.aqe, align 8, !tbaa !1085
  call void @_ZN4llvm6Module22setStackProtectorGuardENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.aqf, ptr %i.aqg, i64 %i.aqc) #28
  %.pre888 = load ptr, ptr %i.hi, align 8, !tbaa !516
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %i.aqh = phi ptr [ %.pre888, %bb.iq ], [ %i.aqa, %bb.ip ] ; 3 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 2184
  %i.aqj = load i64, ptr %i.aqi, align 8, !tbaa !1013 ; 2 uses
  %i.aqk = icmp eq i64 %i.aqj, 0
  br i1 %i.aqk, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqh, i64 2176
  %i.aqm = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  %i.aqn = load ptr, ptr %i.aql, align 8, !tbaa !1085
  call void @_ZN4llvm6Module25setStackProtectorGuardRegENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.aqm, ptr %i.aqn, i64 %i.aqj) #28
  %.pre889 = load ptr, ptr %i.hi, align 8, !tbaa !516
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %i.aqo = phi ptr [ %.pre889, %bb.is ], [ %i.aqh, %bb.ir ] ; 3 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 2216
  %i.aqq = load i64, ptr %i.aqp, align 8, !tbaa !1013 ; 2 uses
  %i.aqr = icmp eq i64 %i.aqq, 0
  br i1 %i.aqr, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqo, i64 2208
  %i.aqt = load ptr, ptr %i.gz, align 8, !tbaa !1066, !nonnull !137, !align !515
  %i.aqu = load ptr, ptr %i.aqs, align 8, !tbaa !1085
  call void @_ZN4llvm6Module28setStackProtectorGuardSymbolENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.aqt, ptr %i.aqu, i64 %i.aqq) #28
  %.pre890 = load ptr, ptr %i.hi, align 8, !tbaa !516
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
end_hunk_0
