Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86MCCodeEmitter?download=true
inline.NumInlined: 593
inline.NumDeleted: 163
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12_GLOBAL__N_116X86MCCodeEmitter14emitPrefixImplERjRKN4llvm6MCInstERKNS2_15MCSubtargetInfoERNS2_15SmallVectorImplIcEE:bb.a
  %i.alf = and i32 %i.aky, -125832961
  %i.alg = or disjoint i32 %i.ale, %i.alf
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akl, i64 40
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !49
  %i.alj = trunc i64 %i.ali to i32                ; 2 uses
  %i.alk = shl i32 %i.alj, 20
  %i.all = and i32 %i.alk, 8388608
  %i.alm = or disjoint i32 %i.alg, %i.all
  %i.aln = shl i32 %i.alj, 24
  %i.alo = and i32 %i.aln, 117440512
  %i.alp = or disjoint i32 %i.alm, %i.alo
  %i.alq = xor i32 %i.alp, 8388608                ; 3 uses
  store i32 %i.alq, ptr %6, align 8
  br i1 %.not8.i, label %.critedge.i, label %.thread.i

bb.by:                                            ; preds = %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i
  %i.alr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i = load ptr, ptr %i.alr, align 8, !tbaa !42
  %i.als = getelementptr i8, ptr %.val54.val, i64 104
  %.val.val.i398.i = load ptr, ptr %i.als, align 8, !tbaa !220
  %i.alt = zext nneg i32 %.0.i.i to i64
  %i.alu = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.alt
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 8
  %i.alw = load i32, ptr %i.alv, align 8, !tbaa !49
  %i.alx = zext i32 %i.alw to i64
  %i.aly = getelementptr inbounds nuw [2 x i8], ptr %.val.val.i398.i, i64 %i.alx
  %i.alz = load i16, ptr %i.aly, align 2, !tbaa !221
  %i.ama = zext i16 %i.alz to i32                 ; 2 uses
  %i.amb = lshr i32 %i.ama, 2
  %i.amc = and i32 %i.amb, 2
  %i.amd = and i32 %i.dr, -35
  %i.ame = or disjoint i32 %i.amc, %i.amd
  %i.amf = shl nuw nsw i32 %i.ama, 1
  %i.amg = and i32 %i.amf, 32
  %i.amh = or disjoint i32 %i.ame, %i.amg
  br label %.critedge.sink.split.i

bb.bz:                                            ; preds = %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i
  br i1 %i.cj, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ami = add nuw nsw i32 %.0.i.i, 1
  %i.amj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val246.i = load ptr, ptr %i.amj, align 8, !tbaa !42
  %i.amk = getelementptr i8, ptr %.val54.val, i64 104
  %.val.val.i400.i = load ptr, ptr %i.amk, align 8, !tbaa !220
  %i.aml = zext nneg i32 %.0.i.i to i64
  %i.amm = getelementptr inbounds nuw [16 x i8], ptr %.val246.i, i64 %i.aml
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 8
  %i.amo = load i32, ptr %i.amn, align 8, !tbaa !49
  %i.amp = zext i32 %i.amo to i64
  %i.amq = getelementptr inbounds nuw [2 x i8], ptr %.val.val.i400.i, i64 %i.amp
  %i.amr = load i16, ptr %i.amq, align 2, !tbaa !221
  %i.ams = zext i16 %i.amr to i32                 ; 2 uses
  %i.amt = shl nuw nsw i32 %i.ams, 8
  %i.amu = and i32 %i.amt, 3840
  %i.amv = and i32 %i.dr, -8392449
  %i.amw = or disjoint i32 %i.amu, %i.amv
  %i.amx = shl i32 %i.ams, 19
  %i.amy = and i32 %i.amx, 8388608
  %i.amz = or disjoint i32 %i.amw, %i.amy
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ana = phi i32 [ %i.amz, %bb.ca ], [ %i.dr, %bb.bz ] ; 2 uses
  %.14.i = phi i32 [ %i.ami, %bb.ca ], [ %.0.i.i, %bb.bz ] ; 3 uses
  br i1 %.not221.i, label %._ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405_crit_edge.i, label %bb.cc

._ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405_crit_edge.i: ; preds = %bb.cb
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val230.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  %.phi.trans.insert27.i = getelementptr inbounds nuw i8, ptr %.val54.val, i64 104
  %.pre.i = load ptr, ptr %.phi.trans.insert27.i, align 8, !tbaa !220
  br label %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405.i

bb.cc:                                            ; preds = %bb.cb
  %i.anb = add nuw nsw i32 %.14.i, 1
  %i.anc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val262.i = load ptr, ptr %i.anc, align 8, !tbaa !42 ; 2 uses
  %i.and = getelementptr i8, ptr %.val54.val, i64 104
  %.val.val.i402.i = load ptr, ptr %i.and, align 8, !tbaa !220 ; 2 uses
  %i.ane = zext nneg i32 %.14.i to i64
  %i.anf = getelementptr inbounds nuw [16 x i8], ptr %.val262.i, i64 %i.ane
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %i.anh = load i32, ptr %i.ang, align 8, !tbaa !49
  %i.ani = zext i32 %i.anh to i64
  %i.anj = getelementptr inbounds nuw [2 x i8], ptr %.val.val.i402.i, i64 %i.ani
  %i.ank = load i16, ptr %i.anj, align 2, !tbaa !221
  %i.anl = zext i16 %i.ank to i32
  %i.anm = shl i32 %i.anl, 24
  %i.ann = and i32 %i.anm, 117440512
  %i.ano = and i32 %i.ana, -117440513
  %i.anp = or disjoint i32 %i.ann, %i.ano
  br label %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405.i

_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405.i: ; preds = %bb.cc, %._ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405_crit_edge.i
  %i.anq = phi ptr [ %.val.val.i402.i, %bb.cc ], [ %.pre.i, %._ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405_crit_edge.i ]
  %.val230.i = phi ptr [ %.val262.i, %bb.cc ], [ %.val230.pre.i, %._ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405_crit_edge.i ]
  %i.anr = phi i32 [ %i.anp, %bb.cc ], [ %i.ana, %._ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405_crit_edge.i ]
  %.15.i = phi i32 [ %i.anb, %bb.cc ], [ %.14.i, %._ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405_crit_edge.i ]
  %i.ans = zext nneg i32 %.15.i to i64
  %i.ant = getelementptr inbounds nuw [16 x i8], ptr %.val230.i, i64 %i.ans ; 3 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  %i.anv = load i32, ptr %i.anu, align 8, !tbaa !49 ; 2 uses
  %i.anw = zext i32 %i.anv to i64
  %i.anx = getelementptr inbounds nuw [2 x i8], ptr %i.anq, i64 %i.anw
  %i.any = load i16, ptr %i.anx, align 2, !tbaa !221 ; 2 uses
  %i.anz = zext i16 %i.any to i32                 ; 2 uses
  %i.aoa = and i32 %i.anz, 8
  %i.aob = and i32 %i.anr, -9
  %i.aoc = or disjoint i32 %i.aoa, %i.aob         ; 2 uses
  %i.aod = add i32 %i.anv, -292
  %spec.select.i.i403.i = icmp ult i32 %i.aod, 96
  %i.aoe = shl nuw nsw i32 %i.anz, 3
  %i.aof = and i32 %i.aoe, 128
  %i.aog = and i32 %i.aoc, -129
  %i.aoh = or disjoint i32 %i.aog, %i.aof         ; 2 uses
  br i1 %spec.select.i.i403.i, label %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper4setXERKN4llvm6MCInstEjj.exit407.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405.i
  %i.aoi = icmp samesign ult i32 %i.ca, 3
  %storemerge.i = select i1 %i.aoi, i32 %i.aoh, i32 %i.aoc
  %i.aoj = lshr i16 %i.any, 2
  %i.aok = and i16 %i.aoj, 4
  %i.aol = zext nneg i16 %i.aok to i32
  %i.aom = and i32 %storemerge.i, -5
  %i.aon = or disjoint i32 %i.aom, %i.aol
  br label %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper4setXERKN4llvm6MCInstEjj.exit407.i

_ZN12_GLOBAL__N_121X86OpcodePrefixHelper4setXERKN4llvm6MCInstEjj.exit407.i: ; preds = %bb.cd, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405.i
  %storemerge47.i = phi i32 [ %i.aon, %bb.cd ], [ %i.aoh, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit405.i ] ; 3 uses
  store i32 %storemerge47.i, ptr %6, align 8
  br i1 %.not222.i, label %.critedge.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper4setXERKN4llvm6MCInstEjj.exit407.i
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.ant, i64 40
  %i.aop = load i64, ptr %i.aoo, align 8, !tbaa !49
  %i.aoq = trunc i64 %i.aop to i32
  %i.aor = xor i32 %i.aoq, -1
  %i.aos = shl i32 %i.aor, 8
  %i.aot = and i32 %i.aos, 3840
  %i.aou = and i32 %storemerge47.i, -125832961
  %i.aov = or disjoint i32 %i.aot, %i.aou
  %i.aow = getelementptr inbounds nuw i8, ptr %i.ant, i64 56
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !49
  %i.aoy = trunc i64 %i.aox to i32                ; 2 uses
  %i.aoz = shl i32 %i.aoy, 20
  %i.apa = and i32 %i.aoz, 8388608
  %i.apb = or disjoint i32 %i.aov, %i.apa
  %i.apc = shl i32 %i.aoy, 24
  %i.apd = and i32 %i.apc, 117440512
  %i.ape = or disjoint i32 %i.apb, %i.apd
  %i.apf = xor i32 %i.ape, 8388608
  br label %.critedge.sink.split.i

bb.cf:                                            ; preds = %bb.bx
  br i1 %.not8.i, label %.critedge.i, label %.thread.i

.thread.i:                                        ; preds = %bb.cf, %.split.i, %bb.bo, %bb.bn
  %.12173.i = phi i32 [ 0, %.split.i ], [ 0, %bb.cf ], [ %i.aej, %bb.bo ], [ 0, %bb.bn ] ; 2 uses
  %i.apg = phi i32 [ %i.alq, %.split.i ], [ %i.aky, %bb.cf ], [ %i.aeb, %bb.bo ], [ %i.aeb, %bb.bn ]
  %i.aph = shl nuw nsw i32 %.12173.i, 12
  %i.api = and i32 %i.aph, 4096
  %i.apj = and i32 %i.apg, -2101249
  %i.apk = or disjoint i32 %i.apj, %i.api
  %i.apl = shl nuw nsw i32 %.12173.i, 20
  %i.apm = and i32 %i.apl, 2097152
  %i.apn = or disjoint i32 %i.apk, %i.apm
  br label %.critedge.sink.split.i

.critedge.sink.split.i:                           ; preds = %.thread.i, %bb.ce, %bb.by, %bb.bq, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit373.i, %bb.bd, %bb.ay, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit329.i, %bb.ax, %bb.aq, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit.i
  %.sink54.i = phi i32 [ %i.ahn, %bb.bq ], [ %i.wf, %bb.ay ], [ %i.hs, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit.i ], [ %i.mo, %bb.aq ], [ %i.rl, %bb.ax ], [ %i.tz, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit329.i ], [ %i.zy, %bb.bd ], [ %i.agc, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit373.i ], [ %i.amh, %bb.by ], [ %i.apf, %bb.ce ], [ %i.apn, %.thread.i ] ; 2 uses
  store i32 %.sink54.i, ptr %6, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.sink.split.i, %bb.cf, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper4setXERKN4llvm6MCInstEjj.exit407.i, %.split.i, %bb.bp, %bb.bm, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit351.i, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit341.i, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit319.i, %bb.ap, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i
  %i.apo = phi i32 [ %storemerge47.i, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper4setXERKN4llvm6MCInstEjj.exit407.i ], [ %i.dr, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i ], [ %i.dr, %_ZN4llvm5X86II14getOperandBiasERKNS_11MCInstrDescE.exit.i ], [ %i.aeb, %bb.bm ], [ %i.lw, %bb.ap ], [ %i.ahh, %bb.bp ], [ %i.qr, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit319.i ], [ %i.alq, %.split.i ], [ %i.aky, %bb.cf ], [ %i.wa, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit341.i ], [ %i.ze, %_ZN12_GLOBAL__N_121X86OpcodePrefixHelper6setBB2ERKN4llvm6MCInstEj.exit351.i ], [ %.sink54.i, %.critedge.sink.split.i ] ; 4 uses
  switch i32 %i.ca, label %_ZNK12_GLOBAL__N_116X86MCCodeEmitter19emitVEXOpcodePrefixEiRKN4llvm6MCInstERKNS1_15MCSubtargetInfoERNS1_15SmallVectorImplIcEE.exit [
    i32 0, label %bb.cg
    i32 1, label %bb.ch
    i32 4, label %bb.ci
  ]

bb.cg:                                            ; preds = %.critedge.i
  %i.app = and i32 %i.apo, 224
  %.not5.i.i = icmp eq i32 %i.app, 0
  %i.apq = and i32 %i.apo, 15
  %i.apr = icmp ne i32 %i.apq, 0
  %i.aps = zext i1 %i.apr to i32
  %i.apt = select i1 %.not5.i.i, i32 %i.aps, i32 2
  br label %.sink.split.i.i

bb.ch:                                            ; preds = %.critedge.i
  %i.apu = and i32 %i.apo, 224
  %.not.i.i59 = icmp eq i32 %i.apu, 0
  %i.apv = select i1 %.not.i.i59, i32 1, i32 2
  br label %.sink.split.i.i

bb.ci:                                            ; preds = %.critedge.i
  %i.apw = and i32 %i.apo, 1015821
  %7 = icmp ne i32 %i.apw, 32768
  %8 = zext i1 %7 to i32
  %9 = or disjoint i32 %8, 4
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ci, %bb.ch, %bb.cg
  %.sink.i.i = phi i32 [ %9, %bb.ci ], [ %i.apv, %bb.ch ], [ %i.apt, %bb.cg ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.bt, align 4, !tbaa !206
  br label %_ZNK12_GLOBAL__N_116X86MCCodeEmitter19emitVEXOpcodePrefixEiRKN4llvm6MCInstERKNS1_15MCSubtargetInfoERNS1_15SmallVectorImplIcEE.exit

_ZNK12_GLOBAL__N_116X86MCCodeEmitter19emitVEXOpcodePrefixEiRKN4llvm6MCInstERKNS1_15MCSubtargetInfoERNS1_15SmallVectorImplIcEE.exit: ; preds = %.critedge.i, %.sink.split.i.i
  %i.apx = phi i32 [ %i.ca, %.critedge.i ], [ %.sink.i.i, %.sink.split.i.i ]
  call fastcc void @_ZNK12_GLOBAL__N_121X86OpcodePrefixHelper4emitERN4llvm15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZNK12_GLOBAL__N_116X86MCCodeEmitter16emitOpcodePrefixEiRKN4llvm6MCInstERKNS1_15MCSubtargetInfoERNS1_15SmallVectorImplIcEE.exit

bb.cj:                                            ; preds = %bb.u
  %i.apy = load i32, ptr %2, align 8, !tbaa !18
  %i.apz = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.aqa = zext i32 %i.apy to i64
  %i.aqb = sub nsw i64 0, %i.aqa
  %i.aqc = getelementptr inbounds [32 x i8], ptr %i.apz, i64 %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 24
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !34 ; 5 uses
  %i.aqf = and i64 %i.aqe, 384
  %i.aqg = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !222
  %i.aqi = and i64 %i.aqh, 4294967296
  %.not49.i = icmp eq i64 %i.aqi, 0
  %i.aqj = select i1 %.not49.i, i64 128, i64 256
  %i.aqk = icmp eq i64 %i.aqf, %i.aqj
  br i1 %i.aqk, label %bb.ck, label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.aql = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !45 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aqo = load i64, ptr %i.aqn, align 8, !tbaa !46
  %.not.i.i.i = icmp ult i64 %i.aqm, %i.aqo
  br i1 %.not.i.i.i, label %bb.cm, label %bb.cl, !prof !47

bb.cl:                                            ; preds = %bb.ck
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef signext 102)
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.aqp = load ptr, ptr %4, align 8, !tbaa !48
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %i.aqm
  store i8 102, ptr %i.aqq, align 1
  %i.aqr = load i64, ptr %i.aql, align 8, !tbaa !45
  %i.aqs = add i64 %i.aqr, 1
  store i64 %i.aqs, ptr %i.aql, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit.i

_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit.i: ; preds = %bb.cm, %bb.cl, %bb.cj
  %i.aqt = and i64 %i.aqe, 33554432
  %.not.i = icmp eq i64 %i.aqt, 0
  br i1 %.not.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit.i
  %i.aqu = load i32, ptr %i.o, align 4, !tbaa !43
  %i.aqv = and i32 %i.aqu, 16
  %.not26.i = icmp eq i32 %i.aqv, 0
  br i1 %.not26.i, label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit33.i, label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit.i
  %i.aqw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aqx = load i64, ptr %i.aqw, align 8, !tbaa !45 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aqz = load i64, ptr %i.aqy, align 8, !tbaa !46
  %.not.i.i32.i = icmp ult i64 %i.aqx, %i.aqz
  br i1 %.not.i.i32.i, label %bb.cq, label %bb.cp, !prof !47

bb.cp:                                            ; preds = %bb.co
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef signext -16)
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit33.i

bb.cq:                                            ; preds = %bb.co
  %i.ara = load ptr, ptr %4, align 8, !tbaa !48
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.aqx
  store i8 -16, ptr %i.arb, align 1
  %i.arc = load i64, ptr %i.aqw, align 8, !tbaa !45
  %i.ard = add i64 %i.arc, 1
  store i64 %i.ard, ptr %i.aqw, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit33.i

_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit33.i: ; preds = %bb.cq, %bb.cp, %bb.cn
  %i.are = and i64 %i.aqe, 562949953421312
  %.not27.i = icmp eq i64 %i.are, 0
  br i1 %.not27.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit33.i
  %i.arf = load i32, ptr %i.o, align 4, !tbaa !43
  %i.arg = and i32 %i.arf, 32
  %.not28.i = icmp eq i32 %i.arg, 0
  br i1 %.not28.i, label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit35.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit33.i
  %i.arh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ari = load i64, ptr %i.arh, align 8, !tbaa !45 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ark = load i64, ptr %i.arj, align 8, !tbaa !46
  %.not.i.i34.i = icmp ult i64 %i.ari, %i.ark
  br i1 %.not.i.i34.i, label %bb.cu, label %bb.ct, !prof !47

bb.ct:                                            ; preds = %bb.cs
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef signext 62)
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit35.i

bb.cu:                                            ; preds = %bb.cs
  %i.arl = load ptr, ptr %4, align 8, !tbaa !48
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.ari
  store i8 62, ptr %i.arm, align 1
  %i.arn = load i64, ptr %i.arh, align 8, !tbaa !45
  %i.aro = add i64 %i.arn, 1
  store i64 %i.aro, ptr %i.arh, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit35.i

_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit35.i: ; preds = %bb.cu, %bb.ct, %bb.cr
  %i.arp = lshr i64 %i.aqe, 11
  %i.arq = and i64 %i.arp, 3
  switch i64 %i.arq, label %default.unreachable [
    i64 1, label %bb.cv
    i64 2, label %bb.cy
    i64 3, label %bb.db
    i64 0, label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit37.i
  ]

bb.cv:                                            ; preds = %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit35.i
  %i.arr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ars = load i64, ptr %i.arr, align 8, !tbaa !45 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !46
  %.not.i.i36.i = icmp ult i64 %i.ars, %i.aru
  br i1 %.not.i.i36.i, label %bb.cx, label %bb.cw, !prof !47

bb.cw:                                            ; preds = %bb.cv
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef signext 102)
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit37.i

bb.cx:                                            ; preds = %bb.cv
  %i.arv = load ptr, ptr %4, align 8, !tbaa !48
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 %i.ars
  store i8 102, ptr %i.arw, align 1
  %i.arx = load i64, ptr %i.arr, align 8, !tbaa !45
  %i.ary = add i64 %i.arx, 1
  store i64 %i.ary, ptr %i.arr, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit37.i

bb.cy:                                            ; preds = %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit35.i
  %i.arz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.asa = load i64, ptr %i.arz, align 8, !tbaa !45 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.asc = load i64, ptr %i.asb, align 8, !tbaa !46
  %.not.i.i38.i = icmp ult i64 %i.asa, %i.asc
  br i1 %.not.i.i38.i, label %bb.da, label %bb.cz, !prof !47

bb.cz:                                            ; preds = %bb.cy
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef signext -13)
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit37.i

bb.da:                                            ; preds = %bb.cy
  %i.asd = load ptr, ptr %4, align 8, !tbaa !48
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 %i.asa
  store i8 -13, ptr %i.ase, align 1
  %i.asf = load i64, ptr %i.arz, align 8, !tbaa !45
  %i.asg = add i64 %i.asf, 1
  store i64 %i.asg, ptr %i.arz, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit37.i

bb.db:                                            ; preds = %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit35.i
  %i.ash = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.asi = load i64, ptr %i.ash, align 8, !tbaa !45 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ask = load i64, ptr %i.asj, align 8, !tbaa !46
  %.not.i.i40.i = icmp ult i64 %i.asi, %i.ask
  br i1 %.not.i.i40.i, label %bb.dd, label %bb.dc, !prof !47

bb.dc:                                            ; preds = %bb.db
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef signext -14)
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit37.i

bb.dd:                                            ; preds = %bb.db
  %i.asl = load ptr, ptr %4, align 8, !tbaa !48
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 %i.asi
  store i8 -14, ptr %i.asm, align 1
  %i.asn = load i64, ptr %i.ash, align 8, !tbaa !45
  %i.aso = add i64 %i.asn, 1
  store i64 %i.aso, ptr %i.ash, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit37.i

_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit37.i: ; preds = %bb.dd, %bb.dc, %bb.da, %bb.cz, %bb.cx, %bb.cw, %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit35.i
  %i.asp = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val30.i = load i32, ptr %i.asp, align 8
  %.val31.i = load i64, ptr %i.aqg, align 8, !tbaa !222
  %i.asq = and i64 %.val31.i, 17179869184
  %.not6.i.i = icmp eq i64 %i.asq, 0
  br i1 %.not6.i.i, label %_ZNK12_GLOBAL__N_116X86MCCodeEmitter13emitREXPrefixEiRKN4llvm6MCInstERKNS1_15MCSubtargetInfoERNS1_15SmallVectorImplIcEE.exit.i, label %bb.de

bb.de:                                            ; preds = %_ZN12_GLOBAL__N_18emitByteEhRN4llvm15SmallVectorImplIcEE.exit37.i
  %i.asr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29.i = load ptr, ptr %i.asr, align 8
  %.val.i60 = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ass = getelementptr inbounds nuw i8, ptr %.val29.i, i64 160
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !204 ; 8 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
end_hunk_0
