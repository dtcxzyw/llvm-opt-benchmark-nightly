Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetFracture?download=true
inline.NumInlined: 28418
inline.NumDeleted: 8805
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 449
begin_hunk_0_@_ZN7openvdb5v13_05tools13GridResampler13transformBBoxINS1_8internal11TileSamplerINS1_10BoxSamplerENS0_4tree17ValueAccessorImplIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEESL_NS8_ISH_Lb1EvSK_EENS1_15GridTransformer15MatrixTransformEEEvRKT2_RKNS0_4math9CoordBBoxERKT0_RT1_RKSt8functionIFbvEERKT_:bb.a
  %i.aom = fadd double %i.aol, %i.aoj
  %i.aon = fdiv double %i.aom, %i.aoa
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aoq = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aos = load <2 x double>, ptr %i.aoo, align 8, !tbaa !335, !noalias !5911
  %i.aot = load <2 x double>, ptr %i.aop, align 8, !tbaa !335, !noalias !5911
  %i.aou = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aos, <2 x double> zeroinitializer, <2 x double> %i.aot)
  %i.aov = load <2 x double>, ptr %i.aoq, align 8, !tbaa !335, !noalias !5911
  %i.aow = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aov, <2 x double> zeroinitializer, <2 x double> %i.aou)
  %i.aox = load <2 x double>, ptr %i.aor, align 8, !tbaa !335, !noalias !5911
  %i.aoy = fadd <2 x double> %i.aox, %i.aow
  %i.aoz = insertelement <2 x double> poison, double %i.aoa, i64 0
  %i.apa = shufflevector <2 x double> %i.aoz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.apb = fdiv <2 x double> %i.aoy, %i.apa
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit153

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit153: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit149, %bb.bv
  %.sink18.i.i150 = phi double [ %i.aon, %bb.bv ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit149 ]
  %i.apc = phi <2 x double> [ %i.apb, %bb.bv ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit149 ]
  %i.apd = fsub double %.sink18.i.i150, %.sink18.i.i142
  %i.ape = fsub <2 x double> %i.apc, %i.amo
  %i.apf = fadd double %i.alg, %i.ale
  %i.apg = fadd double %i.alj, %i.apf             ; 3 uses
  %i.aph = fcmp oeq double %i.apg, 0.000000e+00
  br i1 %i.aph, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit157, label %bb.bw

bb.bw:                                            ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit153
  %i.api = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.apj = load double, ptr %i.api, align 8, !tbaa !335, !noalias !5912
  %i.apk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.apl = load double, ptr %i.apk, align 8, !tbaa !335, !noalias !5912
  %i.apm = fmul double %i.apl, 0.000000e+00
  %i.apn = tail call double @llvm.fmuladd.f64(double %i.apj, double 0.000000e+00, double %i.apm)
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.app = load double, ptr %i.apo, align 8, !tbaa !335, !noalias !5912
  %i.apq = fadd double %i.app, %i.apn
  %i.apr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aps = load double, ptr %i.apr, align 8, !tbaa !335, !noalias !5912
  %i.apt = fadd double %i.aps, %i.apq
  %i.apu = fdiv double %i.apt, %i.apg
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.apw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.apx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.apy = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.apz = load <2 x double>, ptr %i.apv, align 8, !tbaa !335, !noalias !5912
  %i.aqa = load <2 x double>, ptr %i.apw, align 8, !tbaa !335, !noalias !5912
  %i.aqb = fmul <2 x double> %i.aqa, zeroinitializer
  %i.aqc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.apz, <2 x double> zeroinitializer, <2 x double> %i.aqb)
  %i.aqd = load <2 x double>, ptr %i.apx, align 8, !tbaa !335, !noalias !5912
  %i.aqe = fadd <2 x double> %i.aqd, %i.aqc
  %i.aqf = load <2 x double>, ptr %i.apy, align 8, !tbaa !335, !noalias !5912
  %i.aqg = fadd <2 x double> %i.aqf, %i.aqe
  %i.aqh = insertelement <2 x double> poison, double %i.apg, i64 0
  %i.aqi = shufflevector <2 x double> %i.aqh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqj = fdiv <2 x double> %i.aqg, %i.aqi
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit157

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit157: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit153, %bb.bw
  %.sink18.i.i154 = phi double [ %i.apu, %bb.bw ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit153 ]
  %i.aqk = phi <2 x double> [ %i.aqj, %bb.bw ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit153 ]
  %i.aql = fsub double %.sink18.i.i154, %.sink18.i.i142
  %i.aqm = fsub <2 x double> %i.aqk, %i.amo
  %i.aqn = sitofp i32 %i.gm to double             ; 3 uses
  %i.aqo = extractelement <2 x i32> %i.gr, i64 0  ; 2 uses
  %i.aqp = sitofp i32 %i.aqo to double            ; 3 uses
  %i.aqq = extractelement <2 x i32> %i.gr, i64 1  ; 2 uses
  %i.aqr = sitofp i32 %i.aqq to double            ; 3 uses
  %i.aqs = fmul double %i.alc, %i.aqp
  %i.aqt = tail call double @llvm.fmuladd.f64(double %i.aqn, double %i.ala, double %i.aqs)
  %i.aqu = tail call double @llvm.fmuladd.f64(double %i.aqr, double %i.alg, double %i.aqt)
  %i.aqv = fadd double %i.alj, %i.aqu             ; 3 uses
  %i.aqw = fcmp oeq double %i.aqv, 0.000000e+00
  br i1 %i.aqw, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit161, label %bb.bx

bb.bx:                                            ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit157
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aqy = load double, ptr %i.aqx, align 8, !tbaa !335, !noalias !5913
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ara = load double, ptr %i.aqz, align 8, !tbaa !335, !noalias !5913
  %i.arb = fmul double %i.ara, %i.aqp
  %i.arc = tail call double @llvm.fmuladd.f64(double %i.aqn, double %i.aqy, double %i.arb)
  %i.ard = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.are = load double, ptr %i.ard, align 8, !tbaa !335, !noalias !5913
  %i.arf = tail call double @llvm.fmuladd.f64(double %i.aqr, double %i.are, double %i.arc)
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.arh = load double, ptr %i.arg, align 8, !tbaa !335, !noalias !5913
  %i.ari = fadd double %i.arh, %i.arf
  %i.arj = fdiv double %i.ari, %i.aqv
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.arm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aro = load <2 x double>, ptr %i.ark, align 8, !tbaa !335, !noalias !5913
  %i.arp = load <2 x double>, ptr %i.arl, align 8, !tbaa !335, !noalias !5913
  %i.arq = insertelement <2 x double> poison, double %i.aqp, i64 0
  %i.arr = shufflevector <2 x double> %i.arq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ars = fmul <2 x double> %i.arp, %i.arr
  %i.art = insertelement <2 x double> poison, double %i.aqn, i64 0
  %i.aru = shufflevector <2 x double> %i.art, <2 x double> poison, <2 x i32> zeroinitializer
  %i.arv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aru, <2 x double> %i.aro, <2 x double> %i.ars)
  %i.arw = load <2 x double>, ptr %i.arm, align 8, !tbaa !335, !noalias !5913
  %i.arx = insertelement <2 x double> poison, double %i.aqr, i64 0
  %i.ary = shufflevector <2 x double> %i.arx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.arz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ary, <2 x double> %i.arw, <2 x double> %i.arv)
  %i.asa = load <2 x double>, ptr %i.arn, align 8, !tbaa !335, !noalias !5913
  %i.asb = fadd <2 x double> %i.asa, %i.arz
  %i.asc = insertelement <2 x double> poison, double %i.aqv, i64 0
  %i.asd = shufflevector <2 x double> %i.asc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ase = fdiv <2 x double> %i.asb, %i.asd
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit161

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit161: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit157, %bb.bx
  %.sink18.i.i158 = phi double [ %i.arj, %bb.bx ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit157 ]
  %i.asf = phi <2 x double> [ %i.ase, %bb.bx ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit157 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.asg = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 15 uses
  store i32 0, ptr %i.asg, align 4, !tbaa !272
  %i.ash = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 20 uses
  store i32 0, ptr %i.ash, align 8, !tbaa !272
  store i32 %i.gm, ptr %9, align 8, !tbaa !272
  %.not78611 = icmp sgt i32 %i.gm, %i.gt
  br i1 %.not78611, label %_ZNKSt8functionIFbvEEclEv.exit164._crit_edge, label %.lr.ph615

.lr.ph615:                                        ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform12invTransformERKNS0_4math4Vec3IdEE.exit161
  %i.asi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.asl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.asm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.asn = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aso = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.asp = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.asq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.asr = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.2.0..sroa_idx.i.i237 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ast = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.asv = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.asw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.asx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.asy = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.asz = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ata = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 7 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 7 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ato = icmp sgt <2 x i32> %i.gr, %i.gu        ; 2 uses
  %i.atp = extractelement <2 x i1> %i.ato, i64 0
  %i.atq = extractelement <2 x i1> %i.ato, i64 1
  %i.atr = extractelement <2 x i32> %i.gs, i64 1
  %i.ats = extractelement <2 x i32> %i.gs, i64 0
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph615, %_ZNKSt8functionIFbvEEclEv.exit167._crit_edge
  %.sroa.0390.0614 = phi double [ %.sink18.i.i158, %.lr.ph615 ], [ %i.brm, %_ZNKSt8functionIFbvEEclEv.exit167._crit_edge ] ; 2 uses
  %i.att = phi <2 x double> [ %i.asf, %.lr.ph615 ], [ %i.brn, %_ZNKSt8functionIFbvEEclEv.exit167._crit_edge ] ; 2 uses
  %i.atu = load ptr, ptr %i.asi, align 8, !tbaa !384
  %.not.i.i162.not = icmp eq ptr %i.atu, null
  br i1 %.not.i.i162.not, label %bb.bz, label %_ZNKSt8functionIFbvEEclEv.exit164

_ZNKSt8functionIFbvEEclEv.exit164:                ; preds = %bb.by
  %i.atv = load ptr, ptr %i.asj, align 8, !tbaa !1339
  %i.atw = call noundef zeroext i1 %i.atv(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.atw, label %_ZNKSt8functionIFbvEEclEv.exit164._crit_edge, label %bb.bz

bb.bz:                                            ; preds = %_ZNKSt8functionIFbvEEclEv.exit164, %bb.by
  store i32 %i.aqo, ptr %i.asg, align 4, !tbaa !272
  br i1 %i.atp, label %_ZNKSt8functionIFbvEEclEv.exit167._crit_edge, label %.lr.ph609

.lr.ph609:                                        ; preds = %bb.bz, %._crit_edge603
  %.sroa.0387.0607 = phi double [ %i.bri, %._crit_edge603 ], [ %.sroa.0390.0614, %bb.bz ] ; 2 uses
  %i.atx = phi <2 x double> [ %i.brj, %._crit_edge603 ], [ %i.att, %bb.bz ] ; 2 uses
  %i.aty = load ptr, ptr %i.asi, align 8, !tbaa !384
  %.not.i.i165.not = icmp eq ptr %i.aty, null
  br i1 %.not.i.i165.not, label %bb.ca, label %_ZNKSt8functionIFbvEEclEv.exit167

_ZNKSt8functionIFbvEEclEv.exit167:                ; preds = %.lr.ph609
  %i.atz = load ptr, ptr %i.asj, align 8, !tbaa !1339
  %i.aua = call noundef zeroext i1 %i.atz(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.aua, label %_ZNKSt8functionIFbvEEclEv.exit167._crit_edge, label %bb.ca

bb.ca:                                            ; preds = %_ZNKSt8functionIFbvEEclEv.exit167, %.lr.ph609
  store i32 %i.aqq, ptr %i.ash, align 8, !tbaa !272
  br i1 %i.atq, label %._crit_edge603, label %.lr.ph602

.lr.ph602:                                        ; preds = %bb.ca, %_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8setValueERKNS0_4math5CoordERKd.exit244
  %.sroa.0.0597 = phi double [ %i.bre, %_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8setValueERKNS0_4math5CoordERKd.exit244 ], [ %.sroa.0387.0607, %bb.ca ] ; 5 uses
  %i.aub = phi <2 x double> [ %i.brf, %_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8setValueERKNS0_4math5CoordERKd.exit244 ], [ %i.atx, %bb.ca ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.auc = load i8, ptr %i.ask, align 1, !tbaa !2126, !range !488, !noundef !370
  %i.aud = trunc nuw i8 %i.auc to i1
  br i1 %i.aud, label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.thread.i168, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph602
  %i.aue = load double, ptr %5, align 8, !tbaa !335
  %i.auf = fadd double %i.aue, -1.000000e-15
  %i.aug = fcmp ogt double %.sroa.0.0597, %i.auf
  br i1 %i.aug, label %bb.cc, label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.thread.i168

bb.cc:                                            ; preds = %bb.cb
  %i.auh = load double, ptr %i.asl, align 8, !tbaa !335
  %i.aui = fadd double %i.auh, 1.000000e-15
  %i.auj = fcmp olt double %.sroa.0.0597, %i.aui
  br i1 %i.auj, label %bb.cd, label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.thread.i168

bb.cd:                                            ; preds = %bb.cc
  %i.auk = load double, ptr %i.asm, align 8, !tbaa !335
  %i.aul = fadd double %i.auk, -1.000000e-15
  %i.aum = extractelement <2 x double> %i.aub, i64 0 ; 2 uses
  %i.aun = fcmp ogt double %i.aum, %i.aul
  br i1 %i.aun, label %bb.ce, label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.thread.i168

bb.ce:                                            ; preds = %bb.cd
  %i.auo = load double, ptr %i.asn, align 8, !tbaa !335
  %i.aup = fadd double %i.auo, 1.000000e-15
  %i.auq = fcmp olt double %i.aum, %i.aup
  br i1 %i.auq, label %bb.cf, label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.thread.i168

bb.cf:                                            ; preds = %bb.ce
  %i.aur = load double, ptr %i.aso, align 8, !tbaa !335
  %i.aus = fadd double %i.aur, -1.000000e-15
  %i.aut = extractelement <2 x double> %i.aub, i64 1 ; 2 uses
  %i.auu = fcmp ogt double %i.aut, %i.aus
  br i1 %i.auu, label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.i170, label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.thread.i168

_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.i170: ; preds = %bb.cf
  %i.auv = load double, ptr %i.asp, align 8, !tbaa !335
  %i.auw = fadd double %i.auv, 1.000000e-15
  %i.aux = fcmp olt double %i.aut, %i.auw
  br i1 %i.aux, label %_ZNK7openvdb5v13_05tools8internal11TileSamplerINS1_10BoxSamplerENS0_4tree17ValueAccessorImplIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEE6sampleERKSJ_RKNS0_4math4Vec3IdEERd.exit171, label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.thread.i168

_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.thread.i168: ; preds = %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.i170, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %.lr.ph602
  %i.auy = call double @llvm.floor.f64(double %.sroa.0.0597)
  %i.auz = fptosi double %i.auy to i32            ; 2 uses
  %10 = extractelement <2 x double> %i.aub, i64 0
  %11 = call double @llvm.floor.f64(double %10)
  %12 = extractelement <2 x double> %i.aub, i64 1
  %13 = call double @llvm.floor.f64(double %12)
  %i.ava = sitofp i32 %i.auz to double
  %i.avb = fsub double %.sroa.0.0597, %i.ava
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.sroa.0.0.insert.ext.i235 = zext i32 %i.auz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %14 = insertelement <2 x double> poison, double %11, i64 0
  %15 = insertelement <2 x double> %14, double %13, i64 1
  %i.avc = fptosi <2 x double> %15 to <2 x i32>   ; 3 uses
  %i.avd = extractelement <2 x i32> %i.avc, i64 0
  %.sroa.2.0.insert.ext.i.i233 = zext i32 %i.avd to i64
  %.sroa.2.0.insert.shift.i.i234 = shl nuw i64 %.sroa.2.0.insert.ext.i.i233, 32
  %i.ave = sitofp <2 x i32> %i.avc to <2 x double>
  %i.avf = fsub <2 x double> %i.aub, %i.ave       ; 2 uses
  %.sroa.0.0.insert.insert.i236 = or disjoint i64 %.sroa.2.0.insert.shift.i.i234, %.sroa.0.0.insert.ext.i235
  store i64 %.sroa.0.0.insert.insert.i236, ptr %6, align 8
  %i.avg = extractelement <2 x i32> %i.avc, i64 1
  store i32 %i.avg, ptr %.sroa.2.0..sroa_idx.i.i237, align 8
  %i.avh = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.avi = load i32, ptr %.sroa.2.0..sroa_idx.i.i237, align 8, !tbaa !272
  %i.avj = add nsw i32 %i.avi, 1
  store i32 %i.avj, ptr %.sroa.2.0..sroa_idx.i.i237, align 8, !tbaa !272
  %i.avk = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ass)
  %i.avl = or i1 %i.avh, %i.avk
  %i.avm = load i32, ptr %i.ast, align 4, !tbaa !272
  %i.avn = add nsw i32 %i.avm, 1
  store i32 %i.avn, ptr %i.ast, align 4, !tbaa !272
  %i.avo = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.asv)
  %i.avp = or i1 %i.avl, %i.avo
  %i.avq = load i32, ptr %.sroa.2.0..sroa_idx.i.i237, align 8, !tbaa !272
  %i.avr = add nsw i32 %i.avq, -1
  store i32 %i.avr, ptr %.sroa.2.0..sroa_idx.i.i237, align 8, !tbaa !272
  %i.avs = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.asu)
  %i.avt = or i1 %i.avp, %i.avs
  %i.avu = load <2 x i32>, ptr %6, align 8, !tbaa !272
  %i.avv = add nsw <2 x i32> %i.avu, <i32 1, i32 -1>
  store <2 x i32> %i.avv, ptr %6, align 8, !tbaa !272
  %i.avw = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.asw)
  %i.avx = or i1 %i.avt, %i.avw
  %i.avy = load i32, ptr %.sroa.2.0..sroa_idx.i.i237, align 8, !tbaa !272
  %i.avz = add nsw i32 %i.avy, 1
  store i32 %i.avz, ptr %.sroa.2.0..sroa_idx.i.i237, align 8, !tbaa !272
  %i.awa = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.asx)
  %i.awb = or i1 %i.avx, %i.awa
  %i.awc = load i32, ptr %i.ast, align 4, !tbaa !272
  %i.awd = add nsw i32 %i.awc, 1
  store i32 %i.awd, ptr %i.ast, align 4, !tbaa !272
  %i.awe = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.asz)
  %i.awf = or i1 %i.awb, %i.awe
  %i.awg = load i32, ptr %.sroa.2.0..sroa_idx.i.i237, align 8, !tbaa !272
  %i.awh = add nsw i32 %i.awg, -1
  store i32 %i.awh, ptr %.sroa.2.0..sroa_idx.i.i237, align 8, !tbaa !272
  %i.awi = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.asy)
  %i.awj = or i1 %i.awf, %i.awi
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.awk = load <8 x double>, ptr %i.a, align 16, !tbaa !335 ; 4 uses
  %i.awl = shufflevector <8 x double> %i.awk, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.awm = shufflevector <8 x double> %i.awk, <8 x double> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.awn = fsub <2 x double> %i.awl, %i.awm
  %i.awo = shufflevector <2 x double> %i.avf, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.awp = fmul <2 x double> %i.awo, %i.awn
  %i.awq = fadd <2 x double> %i.awm, %i.awp       ; 2 uses
  %i.awr = shufflevector <8 x double> %i.awk, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.aws = shufflevector <8 x double> %i.awk, <8 x double> poison, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.awt = fsub <2 x double> %i.awr, %i.aws
  %i.awu = fmul <2 x double> %i.awo, %i.awt
  %i.awv = fadd <2 x double> %i.aws, %i.awu
  %i.aww = fsub <2 x double> %i.awv, %i.awq
  %i.awx = shufflevector <2 x double> %i.avf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awy = fmul <2 x double> %i.awx, %i.aww
  %i.awz = fadd <2 x double> %i.awq, %i.awy       ; 3 uses
  %i.axa = extractelement <2 x double> %i.awz, i64 0
  %shift715 = shufflevector <2 x double> %i.awz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop716 = fsub <2 x double> %shift715, %i.awz
  %i.axb = extractelement <2 x double> %foldExtExtBinop716, i64 0
  %i.axc = fmul double %i.avb, %i.axb
  %i.axd = fadd double %i.axa, %i.axc             ; 2 uses
  store double %i.axd, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.awj, label %bb.cg, label %bb.cq

_ZNK7openvdb5v13_05tools8internal11TileSamplerINS1_10BoxSamplerENS0_4tree17ValueAccessorImplIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEE6sampleERKSJ_RKNS0_4math4Vec3IdEERd.exit171: ; preds = %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.i170
  %i.axe = load double, ptr %i.asq, align 8, !tbaa !2125 ; 2 uses
  store double %i.axe, ptr %i.d, align 8, !tbaa !335
  %i.axf = load i8, ptr %i.asr, align 8, !tbaa !2124, !range !488, !noundef !370
  %i.axg = trunc nuw i8 %i.axf to i1
  br i1 %i.axg, label %bb.cg, label %bb.cq

bb.cg:                                            ; preds = %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.thread.i168, %_ZNK7openvdb5v13_05tools8internal11TileSamplerINS1_10BoxSamplerENS0_4tree17ValueAccessorImplIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEE6sampleERKSJ_RKNS0_4math4Vec3IdEERd.exit171
  %i.axh = phi double [ %i.axd, %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isInsideERKS4_.exit.thread.i168 ], [ %i.axe, %_ZNK7openvdb5v13_05tools8internal11TileSamplerINS1_10BoxSamplerENS0_4tree17ValueAccessorImplIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEE6sampleERKSJ_RKNS0_4math4Vec3IdEERd.exit171 ] ; 2 uses
  %i.axi = load i32, ptr %9, align 8, !tbaa !272  ; 5 uses
  %i.axj = and i32 %i.axi, -8
  %i.axk = load i32, ptr %i.atb, align 8, !tbaa !272
  %i.axl = icmp eq i32 %i.axj, %i.axk
  br i1 %i.axl, label %bb.ch, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm0EEEEbSM_.exit.thread.i238

bb.ch:                                            ; preds = %bb.cg
  %i.axm = load i32, ptr %i.asg, align 4, !tbaa !272 ; 2 uses
  %i.axn = and i32 %i.axm, -8
  %i.axo = load i32, ptr %i.atc, align 4, !tbaa !272
  %i.axp = icmp eq i32 %i.axn, %i.axo
  br i1 %i.axp, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm0EEEEbSM_.exit.i243, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm0EEEEbSM_.exit.thread.i238

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm0EEEEbSM_.exit.i243: ; preds = %bb.ch
  %i.axq = load i32, ptr %i.ash, align 8, !tbaa !272 ; 2 uses
  %i.axr = and i32 %i.axq, -8
  %i.axs = load i32, ptr %i.atd, align 8, !tbaa !272
  %i.axt = icmp eq i32 %i.axr, %i.axs
  br i1 %i.axt, label %bb.ci, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm0EEEEbSM_.exit.thread.i238

bb.ci:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm0EEEEbSM_.exit.i243
  %i.axu = load ptr, ptr %i.atm, align 8, !tbaa !457
  %i.axv = shl i32 %i.axi, 6
  %i.axw = and i32 %i.axv, 448                    ; 2 uses
  %i.axx = shl i32 %i.axm, 3
  %i.axy = and i32 %i.axx, 56
  %i.axz = and i32 %i.axq, 7
  %i.aya = or disjoint i32 %i.axz, %i.axy         ; 2 uses
  %i.ayb = or disjoint i32 %i.aya, %i.axw
  %i.ayc = load ptr, ptr %i.atn, align 8, !tbaa !2120
  %i.ayd = zext nneg i32 %i.ayb to i64
  %i.aye = getelementptr inbounds nuw [8 x i8], ptr %i.ayc, i64 %i.ayd
  store double %i.axh, ptr %i.aye, align 8, !tbaa !335
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axu, i64 16
  %i.ayg = zext nneg i32 %i.aya to i64
  %i.ayh = shl nuw i64 1, %i.ayg
  %i.ayi = lshr exact i32 %i.axw, 6
  %i.ayj = zext nneg i32 %i.ayi to i64
  %i.ayk = getelementptr inbounds nuw [8 x i8], ptr %i.ayf, i64 %i.ayj ; 2 uses
  %i.ayl = load i64, ptr %i.ayk, align 8, !tbaa !409
  %i.aym = or i64 %i.ayl, %i.ayh
  store i64 %i.aym, ptr %i.ayk, align 8, !tbaa !409
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8setValueERKNS0_4math5CoordERKd.exit244

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm0EEEEbSM_.exit.thread.i238: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm0EEEEbSM_.exit.i243, %bb.ch, %bb.cg
  %i.ayn = and i32 %i.axi, -128                   ; 2 uses
  %i.ayo = load i32, ptr %i.ate, align 4, !tbaa !272
  %i.ayp = icmp eq i32 %i.ayn, %i.ayo
  br i1 %i.ayp, label %bb.cj, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread.i239

bb.cj:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm0EEEEbSM_.exit.thread.i238
  %i.ayq = load i32, ptr %i.asg, align 4, !tbaa !272
  %i.ayr = and i32 %i.ayq, -128
  %i.ays = load i32, ptr %i.atf, align 8, !tbaa !272
  %i.ayt = icmp eq i32 %i.ayr, %i.ays
  br i1 %i.ayt, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.i242, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread.i239

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.i242: ; preds = %bb.cj
  %i.ayu = load i32, ptr %i.ash, align 8, !tbaa !272
  %i.ayv = and i32 %i.ayu, -128
  %i.ayw = load i32, ptr %i.atg, align 4, !tbaa !272
  %i.ayx = icmp eq i32 %i.ayv, %i.ayw
  br i1 %i.ayx, label %bb.ck, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread.i239

bb.ck:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.i242
  %i.ayy = load ptr, ptr %i.atl, align 8, !tbaa !1504
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ayy, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %3)
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8setValueERKNS0_4math5CoordERKd.exit244

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread.i239: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.i242, %bb.cj, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm0EEEEbSM_.exit.thread.i238
  %i.ayz = and i32 %i.axi, -4096
  %i.aza = load i32, ptr %i.ath, align 8, !tbaa !272
  %i.azb = icmp eq i32 %i.ayz, %i.aza
  br i1 %i.azb, label %bb.cl, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSG_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit.i240

bb.cl:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread.i239
  %i.azc = load i32, ptr %i.asg, align 4, !tbaa !272 ; 3 uses
  %i.azd = and i32 %i.azc, -4096
  %i.aze = load i32, ptr %i.ati, align 4, !tbaa !272
  %i.azf = icmp eq i32 %i.azd, %i.aze
  br i1 %i.azf, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit.i241, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSG_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit.i240

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit.i241: ; preds = %bb.cl
  %i.azg = load i32, ptr %i.ash, align 8, !tbaa !272 ; 3 uses
  %i.azh = and i32 %i.azg, -4096
  %i.azi = load i32, ptr %i.atj, align 8, !tbaa !272
  %i.azj = icmp eq i32 %i.azh, %i.azi
  br i1 %i.azj, label %bb.cm, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSG_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit.i240

bb.cm:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNSE_8setValueERKNS0_4math5CoordERKdEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit.i241
  %i.azk = load ptr, ptr %i.atk, align 8, !tbaa !1493 ; 6 uses
  %i.azl = shl i32 %i.axi, 3
  %i.azm = and i32 %i.azl, 31744
  %i.azn = lshr i32 %i.azc, 2
  %i.azo = and i32 %i.azn, 992
  %i.azp = or disjoint i32 %i.azo, %i.azm         ; 2 uses
  %i.azq = lshr i32 %i.azg, 7
  %i.azr = and i32 %i.azq, 31
  %i.azs = or disjoint i32 %i.azr, %i.azp         ; 3 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azk, i64 262144
  %i.azu = lshr i32 %i.azp, 6
  %i.azv = zext nneg i32 %i.azu to i64            ; 2 uses
  %i.azw = getelementptr inbounds nuw [8 x i8], ptr %i.azt, i64 %i.azv ; 3 uses
  %i.azx = load i64, ptr %i.azw, align 8, !tbaa !409
  %i.azy = and i32 %i.azs, 63
  %i.azz = zext nneg i32 %i.azy to i64
  %i.baa = shl nuw i64 1, %i.azz                  ; 4 uses
  %i.bab = and i64 %i.azx, %i.baa
  %.not.i357 = icmp eq i64 %i.bab, 0
  br i1 %.not.i357, label %bb.cn, label %..critedge22_crit_edge.i358

..critedge22_crit_edge.i358:                      ; preds = %bb.cm
  %.phi.trans.insert.i359 = zext nneg i32 %i.azs to i64 ; 2 uses
  %.phi.trans.insert24.i360 = getelementptr inbounds nuw [8 x i8], ptr %i.azk, i64 %.phi.trans.insert.i359
  %.pre.i361 = load ptr, ptr %.phi.trans.insert24.i360, align 8, !tbaa !299
  br label %.critedge22.i362

bb.cn:                                            ; preds = %bb.cm
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azk, i64 266240
end_hunk_0
