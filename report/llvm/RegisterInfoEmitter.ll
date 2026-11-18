Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterInfoEmitter?download=true
inline.NumInlined: 8854
inline.NumDeleted: 3653
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN12_GLOBAL__N_119RegisterInfoEmitter9runMCDescERN4llvm11raw_ostreamES3_NS1_9StringRefE:bb.a
_ZN4llvm9SetVectorIPKNS_15CodeGenRegisterENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPKNS_15CodeGenRegisterELj0EED2Ev.exit.i, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.01787.01938, i64 624 ; 2 uses
  %i.ajo = icmp eq ptr %i.ajn, %.sroa.101791.01939
  br i1 %i.ajo, label %bb.ek, label %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit

bb.ek:                                            ; preds = %_ZN4llvm9SetVectorIPKNS_15CodeGenRegisterENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit
  %i.ajp = getelementptr inbounds nuw i8, ptr %.sroa.131792.01940, i64 8 ; 2 uses
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !229 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 624
  br label %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit

_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit: ; preds = %_ZN4llvm9SetVectorIPKNS_15CodeGenRegisterENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit, %bb.ek
  %.sroa.01787.1 = phi ptr [ %i.ajq, %bb.ek ], [ %i.ajn, %_ZN4llvm9SetVectorIPKNS_15CodeGenRegisterENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit ] ; 2 uses
  %.sroa.101791.1 = phi ptr [ %i.ajr, %bb.ek ], [ %.sroa.101791.01939, %_ZN4llvm9SetVectorIPKNS_15CodeGenRegisterENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit ]
  %.sroa.131792.1 = phi ptr [ %i.ajp, %bb.ek ], [ %.sroa.131792.01940, %_ZN4llvm9SetVectorIPKNS_15CodeGenRegisterENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit ]
  %i.ajs = add i32 %.01941, 1
  %.not1877 = icmp eq ptr %.sroa.01787.1, %i.eu
  br i1 %.not1877, label %._crit_edge1943, label %bb.dj, !llvm.loop !718

bb.el:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_18CodeGenSubRegIndexELb1EE9push_backES3_.exit
  %.03731936 = phi ptr [ %i.aco, %.lr.ph ], [ %i.alj, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_18CodeGenSubRegIndexELb1EE9push_backES3_.exit ] ; 2 uses
  %i.ajt = load ptr, ptr %.03731936, align 8, !tbaa !229 ; 2 uses
  %i.aju = load ptr, ptr %i.acs, align 8, !tbaa !1045, !noalias !1046
  %i.ajv = load ptr, ptr %i.act, align 8, !tbaa !1047, !noalias !1046 ; 2 uses
  %i.ajw = load i32, ptr %i.acu, align 4, !tbaa !1048, !noalias !1046 ; 2 uses
  %i.ajx = icmp eq i32 %i.ajw, 0
  br i1 %i.ajx, label %_ZNK4llvm15CodeGenRegister14getSubRegIndexEPKS0_.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ajy = add i32 %i.ajw, -1                     ; 2 uses
  %i.ajz = ptrtoint ptr %i.ajt to i64
  %i.aka = mul i64 %i.ajz, -4658895280553007687   ; 2 uses
  %i.akb = lshr i64 %i.aka, 31
  %i.akc = xor i64 %i.akb, %i.aka
  %i.akd = trunc i64 %i.akc to i32
  %i.ake = and i32 %i.ajy, %i.akd                 ; 3 uses
  %i.akf = zext i32 %i.ake to i64                 ; 2 uses
  %i.akg = lshr i64 %i.akf, 5
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.akg
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !279
  %i.akj = and i32 %i.ake, 31
  %i.akk = lshr i32 %i.aki, %i.akj
  %i.akl = trunc i32 %i.akk to i1
  br i1 %i.akl, label %.lr.ph.i.i.i607, label %_ZNK4llvm15CodeGenRegister14getSubRegIndexEPKS0_.exit, !prof !377

.lr.ph.i.i.i607:                                  ; preds = %bb.em, %bb.en
  %i.akm = phi i64 [ %i.aks, %bb.en ], [ %i.akf, %bb.em ]
  %.017.i.i.i = phi i32 [ %i.akr, %bb.en ], [ %i.ake, %bb.em ]
  %i.akn = getelementptr inbounds nuw [16 x i8], ptr %i.aju, i64 %i.akm ; 2 uses
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !229
  %i.akp = icmp eq ptr %i.ajt, %i.ako
  br i1 %i.akp, label %bb.eo, label %bb.en, !prof !367

bb.en:                                            ; preds = %.lr.ph.i.i.i607
  %i.akq = add nuw i32 %.017.i.i.i, 1
  %i.akr = and i32 %i.akq, %i.ajy                 ; 3 uses
  %i.aks = zext i32 %i.akr to i64                 ; 2 uses
  %i.akt = lshr i64 %i.aks, 5
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.akt
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !279
  %i.akw = and i32 %i.akr, 31
  %i.akx = lshr i32 %i.akv, %i.akw
  %i.aky = trunc i32 %i.akx to i1
  br i1 %i.aky, label %.lr.ph.i.i.i607, label %_ZNK4llvm15CodeGenRegister14getSubRegIndexEPKS0_.exit, !prof !378

bb.eo:                                            ; preds = %.lr.ph.i.i.i607
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akn, i64 8
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !272
  br label %_ZNK4llvm15CodeGenRegister14getSubRegIndexEPKS0_.exit

_ZNK4llvm15CodeGenRegister14getSubRegIndexEPKS0_.exit: ; preds = %bb.en, %bb.el, %bb.em, %bb.eo
  %i.alb = phi ptr [ %i.ala, %bb.eo ], [ null, %bb.el ], [ null, %bb.em ], [ null, %bb.en ] ; 2 uses
  %i.alc = load i32, ptr %i.acv, align 8, !tbaa !307 ; 2 uses
  %i.ald = load i32, ptr %i.acw, align 4, !tbaa !343
  %.not.i608 = icmp ult i32 %i.alc, %i.ald
  br i1 %.not.i608, label %bb.eq, label %bb.ep, !prof !367

bb.ep:                                            ; preds = %_ZNK4llvm15CodeGenRegister14getSubRegIndexEPKS0_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_18CodeGenSubRegIndexELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.acn, ptr noundef %i.alb)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_18CodeGenSubRegIndexELb1EE9push_backES3_.exit

bb.eq:                                            ; preds = %_ZNK4llvm15CodeGenRegister14getSubRegIndexEPKS0_.exit
  %i.ale = zext i32 %i.alc to i64
  %i.alf = load ptr, ptr %i.acn, align 8, !tbaa !50
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %i.alf, i64 %i.ale
  store ptr %i.alb, ptr %i.alg, align 1
  %i.alh = load i32, ptr %i.acv, align 8, !tbaa !307
  %i.ali = add i32 %i.alh, 1
  store i32 %i.ali, ptr %i.acv, align 8, !tbaa !307
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_18CodeGenSubRegIndexELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKNS_18CodeGenSubRegIndexELb1EE9push_backES3_.exit: ; preds = %bb.ep, %bb.eq
  %i.alj = getelementptr inbounds nuw i8, ptr %.03731936, i64 8 ; 2 uses
  %.not389 = icmp eq ptr %i.alj, %i.acr
  br i1 %.not389, label %._crit_edge, label %bb.el

._crit_edge1953:                                  ; preds = %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit787, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.alk = load ptr, ptr %i.hk, align 8, !tbaa !182
  %i.all = load ptr, ptr %i.hm, align 8, !tbaa !183 ; 2 uses
  %i.alm = ptrtoint ptr %i.alk to i64
  %i.aln = ptrtoint ptr %i.all to i64
  %i.alo = sub i64 %i.alm, %i.aln
  %i.alp = icmp ult i64 %i.alo, 4
  br i1 %i.alp, label %bb.er, label %bb.es

bb.er:                                            ; preds = %._crit_edge1953
  %i.alq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.63, i64 noundef 4) #22 ; 0 uses
  %.pre2192 = load ptr, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit611

bb.es:                                            ; preds = %._crit_edge1953
  store i32 168442749, ptr %i.all, align 1
  %i.alr = load ptr, ptr %i.hm, align 8, !tbaa !183
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 4 ; 2 uses
  store ptr %i.als, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit611

_ZN4llvm11raw_ostreamlsEPKc.exit611:              ; preds = %bb.er, %bb.es
  %i.alt = phi ptr [ %.pre2192, %bb.er ], [ %i.als, %bb.es ] ; 2 uses
  %i.alu = load ptr, ptr %i.hk, align 8, !tbaa !182
  %i.alv = ptrtoint ptr %i.alu to i64
  %i.alw = ptrtoint ptr %i.alt to i64
  %i.alx = sub i64 %i.alv, %i.alw
  %i.aly = icmp ult i64 %i.alx, 23
  br i1 %i.aly, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit611
  %i.alz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.76, i64 noundef 23) #22 ; 2 uses
  %.phi.trans.insert2193 = getelementptr inbounds nuw i8, ptr %i.alz, i64 32
  %.pre2194 = load ptr, ptr %.phi.trans.insert2193, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit614

bb.eu:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.alt, ptr noundef nonnull align 1 dereferenceable(23) @.str.76, i64 23, i1 false)
  %i.ama = load ptr, ptr %i.hm, align 8, !tbaa !183
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 23 ; 2 uses
  store ptr %i.amb, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit614

_ZN4llvm11raw_ostreamlsEPKc.exit614:              ; preds = %bb.et, %bb.eu
  %i.amc = phi ptr [ %.pre2194, %bb.et ], [ %i.amb, %bb.eu ] ; 3 uses
  %.0.i.i613 = phi ptr [ %i.alz, %bb.et ], [ %1, %bb.eu ] ; 5 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.0.i.i613, i64 24
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !182
  %i.amf = getelementptr inbounds nuw i8, ptr %.0.i.i613, i64 32 ; 2 uses
  %i.amg = ptrtoint ptr %i.ame to i64
  %i.amh = ptrtoint ptr %i.amc to i64
  %i.ami = sub i64 %i.amg, %i.amh
  %i.amj = icmp ugt i64 %i.hj, %i.ami
  br i1 %i.amj, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit614
  %i.amk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i613, ptr noundef %i.hi, i64 noundef %i.hj) #22 ; 2 uses
  %.phi.trans.insert2195 = getelementptr inbounds nuw i8, ptr %i.amk, i64 32
  %.pre2196 = load ptr, ptr %.phi.trans.insert2195, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit617

bb.ew:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit614
  %.not.i615 = icmp eq i64 %i.hj, 0
  br i1 %.not.i615, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit617, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amc, ptr align 1 %i.hi, i64 %i.hj, i1 false)
  %i.aml = load ptr, ptr %i.amf, align 8, !tbaa !183
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.hj ; 2 uses
  store ptr %i.amm, ptr %i.amf, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit617

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit617:   ; preds = %bb.ev, %bb.ew, %bb.ex
  %i.amn = phi ptr [ %.pre2196, %bb.ev ], [ %i.amm, %bb.ex ], [ %i.amc, %bb.ew ] ; 2 uses
  %.0.i616 = phi ptr [ %i.amk, %bb.ev ], [ %.0.i.i613, %bb.ex ], [ %.0.i.i613, %bb.ew ] ; 3 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.0.i616, i64 24
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !182
  %i.amq = ptrtoint ptr %i.amp to i64
  %i.amr = ptrtoint ptr %i.amn to i64
  %i.ams = sub i64 %i.amq, %i.amr
  %i.amt = icmp ult i64 %i.ams, 22
  br i1 %i.amt, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit617
  %i.amu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i616, ptr noundef nonnull @.str.77, i64 noundef 22) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit620

bb.ez:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit617
  %i.amv = getelementptr inbounds nuw i8, ptr %.0.i616, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.amn, ptr noundef nonnull align 1 dereferenceable(22) @.str.77, i64 22, i1 false)
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !183
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 22
  store ptr %i.amx, ptr %i.amv, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit620

_ZN4llvm11raw_ostreamlsEPKc.exit620:              ; preds = %bb.ey, %bb.ez
  %i.amy = load ptr, ptr %i.c, align 8, !tbaa !131, !nonnull !48, !align !122
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 424
  %i.ana = load i32, ptr %i.amz, align 8, !tbaa !453 ; 2 uses
  %.not1958 = icmp eq i32 %i.ana, 0
  br i1 %.not1958, label %._crit_edge1961, label %.lr.ph1960

.lr.ph1960:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit620
  %i.anb = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 4 uses
  %i.and = zext i32 %i.ana to i64
  br label %bb.gv

bb.fa:                                            ; preds = %.lr.ph1952, %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit787
  %.11951 = phi i32 [ 0, %.lr.ph1952 ], [ %i.bau, %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit787 ] ; 2 uses
  %.sroa.131771.01950 = phi ptr [ %i.aaq, %.lr.ph1952 ], [ %.sroa.131771.1, %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit787 ] ; 2 uses
  %.sroa.101770.01949 = phi ptr [ %i.aar, %.lr.ph1952 ], [ %.sroa.101770.1, %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit787 ] ; 2 uses
  %.sroa.01766.01948 = phi ptr [ %i.aao, %.lr.ph1952 ], [ %.sroa.01766.1, %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit787 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %i.ane = getelementptr inbounds nuw i8, ptr %.sroa.01766.01948, i64 48 ; 3 uses
  store ptr %78, ptr %i.aas, align 8, !tbaa !330, !alias.scope !1049
  store ptr %78, ptr %78, align 8, !tbaa !190, !alias.scope !1049
  store i64 0, ptr %i.aat, align 8, !tbaa !331, !alias.scope !1049
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !190, !noalias !1049 ; 2 uses
  %.not4.i.i.i.i621 = icmp eq ptr %i.anf, %i.ane
  br i1 %.not4.i.i.i.i621, label %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit634, label %.lr.ph.i.i.i.i622

.lr.ph.i.i.i.i622:                                ; preds = %bb.fa, %.lr.ph.i.i.i.i622
  %.sroa.01.05.i.i.i.i623 = phi ptr [ %i.anl, %.lr.ph.i.i.i.i622 ], [ %i.anf, %bb.fa ] ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i.i623, i64 16
  %i.anh = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ani, ptr noundef nonnull align 8 dereferenceable(24) %i.ang, i64 24, i1 false), !tbaa.struct !332
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.anh, ptr noundef nonnull align 8 dereferenceable(32) %78) #22
  %i.anj = load i64, ptr %i.aat, align 8, !tbaa !333, !alias.scope !1049
  %i.ank = add i64 %i.anj, 1
  store i64 %i.ank, ptr %i.aat, align 8, !tbaa !333, !alias.scope !1049
  %i.anl = load ptr, ptr %.sroa.01.05.i.i.i.i623, align 8, !tbaa !190 ; 2 uses
  %.not.i.i.i.i624 = icmp eq ptr %i.anl, %i.ane
  br i1 %.not.i.i.i.i624, label %_ZNK4llvm15CodeGenRegister17getNativeRegUnitsEv.exit627, label %.lr.ph.i.i.i.i622, !llvm.loop !0

_ZNK4llvm15CodeGenRegister17getNativeRegUnitsEv.exit627: ; preds = %.lr.ph.i.i.i.i622
  %.pre.i.i626 = load ptr, ptr %78, align 8, !tbaa !190, !alias.scope !1049 ; 5 uses
  store ptr %.pre.i.i626, ptr %i.aau, align 8, !alias.scope !1049
  %i.anm = icmp eq ptr %.pre.i.i626, %78
  br i1 %i.anm, label %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit634, label %bb.fb

bb.fb:                                            ; preds = %_ZNK4llvm15CodeGenRegister17getNativeRegUnitsEv.exit627
  %i.ann = getelementptr inbounds nuw i8, ptr %.pre.i.i626, i64 16
  %i.ano = load i32, ptr %i.ann, align 8, !tbaa !335
  %i.anp = getelementptr inbounds nuw i8, ptr %.pre.i.i626, i64 24
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fc, %bb.fb
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.fc ], [ 0, %bb.fb ] ; 4 uses
  %i.anq = icmp samesign ult i64 %indvars.iv.i.i, 2
  call void @llvm.assume(i1 %i.anq)
  %i.anr = getelementptr inbounds nuw [8 x i8], ptr %i.anp, i64 %indvars.iv.i.i
  %i.ans = load i64, ptr %i.anr, align 8, !tbaa !227 ; 2 uses
  %.not.i.i628 = icmp eq i64 %i.ans, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %.not.i.i628, label %bb.fc, label %.lr.ph.i.i.i631, !llvm.loop !1

.lr.ph.i.i.i631:                                  ; preds = %bb.fc, %.lr.ph.i.i.i631
  %.09.i.i.i632 = phi ptr [ %i.ant, %.lr.ph.i.i.i631 ], [ %.pre.i.i626, %bb.fc ] ; 2 uses
  %i.ant = load ptr, ptr %.09.i.i.i632, align 8, !tbaa !190 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i632, i64 noundef 40) #23
  %.not.i.i.i633 = icmp eq ptr %i.ant, %78
  br i1 %.not.i.i.i633, label %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit634.loopexit, label %.lr.ph.i.i.i631, !llvm.loop !2

_ZN4llvm15SparseBitVectorILj128EED2Ev.exit634.loopexit: ; preds = %.lr.ph.i.i.i631
  %i.anu = shl i32 %i.ano, 7
  %i.anv = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.anw = shl nuw nsw i32 %i.anv, 6
  %i.anx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ans, i1 true)
  %i.any = trunc nuw nsw i64 %i.anx to i32
  %i.anz = or disjoint i32 %i.anw, %i.any
  %i.aoa = or disjoint i32 %i.anz, %i.anu
  br label %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit634

_ZN4llvm15SparseBitVectorILj128EED2Ev.exit634:    ; preds = %bb.fa, %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit634.loopexit, %_ZNK4llvm15CodeGenRegister17getNativeRegUnitsEv.exit627
  %.0.i6291852 = phi i32 [ -1, %_ZNK4llvm15CodeGenRegister17getNativeRegUnitsEv.exit627 ], [ %i.aoa, %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit634.loopexit ], [ -1, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  %i.aob = zext i32 %.11951 to i64                ; 5 uses
  %i.aoc = load ptr, ptr %63, align 8, !tbaa !50
  %i.aod = getelementptr inbounds nuw [32 x i8], ptr %i.aoc, i64 %i.aob ; 3 uses
  %i.aoe = load ptr, ptr %i.g, align 8, !tbaa !341 ; 2 uses
  %.not16.i.i.i.i = icmp eq ptr %i.aoe, null
  br i1 %.not16.i.i.i.i, label %._ZNKSt3mapIN4llvm11SmallVectorIsLj4EEEjNS0_21SequenceToOffsetTableIS2_St4lessIsEE7SeqLessESaISt4pairIKS2_jEEE11lower_boundERS9_.exit_crit_edge.i, label %.lr.ph.i.i.i.i635

._ZNKSt3mapIN4llvm11SmallVectorIsLj4EEEjNS0_21SequenceToOffsetTableIS2_St4lessIsEE7SeqLessESaISt4pairIKS2_jEEE11lower_boundERS9_.exit_crit_edge.i: ; preds = %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit634
  %.phi.trans.insert.i645 = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %.pre.i646 = load i64, ptr %.phi.trans.insert.i645, align 8, !tbaa !346
  br label %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE3getERKS2_.exit

.lr.ph.i.i.i.i635:                                ; preds = %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit634
  %i.aof = load ptr, ptr %i.aod, align 8, !tbaa !345, !noalias !1050 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !346, !noalias !1050 ; 4 uses
  %i.aoi = getelementptr inbounds nuw [2 x i8], ptr %i.aof, i64 %i.aoh ; 2 uses
  %i.aoj = sub nsw i64 0, %i.aoh
  br label %bb.fd

bb.fd:                                            ; preds = %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread11.i.i.i.i, %.lr.ph.i.i.i.i635
  %.018.i.i.i.i = phi ptr [ %i.aoe, %.lr.ph.i.i.i.i635 ], [ %.1.i.i.i.i642, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread11.i.i.i.i ] ; 5 uses
  %.0817.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i635 ], [ %.19.i.i.i.i641, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread11.i.i.i.i ]
  %i.aok = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 32
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !345, !noalias !1051 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 40
  %i.aon = load i64, ptr %i.aom, align 8, !tbaa !346, !noalias !1051 ; 2 uses
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.aol, i64 %i.aon ; 3 uses
  %i.aop = icmp ult i64 %i.aoh, %i.aon
  %i.aoq = getelementptr inbounds [2 x i8], ptr %i.aoo, i64 %i.aoj
  %storemerge.i.i.i.i.i.i.i.i636 = select i1 %i.aop, ptr %i.aoq, ptr %i.aol ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq ptr %i.aoo, %storemerge.i.i.i.i.i.i.i.i636
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i637

.lr.ph.i.i.i.i.i.i.i637:                          ; preds = %bb.fd, %bb.ff
  %.sroa.02.0.i.i.i.i.i.i = phi ptr [ %i.aot, %bb.ff ], [ %i.aoi, %bb.fd ]
  %i.aor = phi ptr [ %i.aos, %bb.ff ], [ %i.aoo, %bb.fd ]
  %i.aos = getelementptr inbounds i8, ptr %i.aor, i64 -2 ; 3 uses
  %i.aot = getelementptr inbounds i8, ptr %.sroa.02.0.i.i.i.i.i.i, i64 -2 ; 3 uses
  %i.aou = load i16, ptr %i.aos, align 2, !tbaa !362 ; 2 uses
  %i.aov = load i16, ptr %i.aot, align 2, !tbaa !362 ; 2 uses
  %i.aow = icmp slt i16 %i.aou, %i.aov
  br i1 %i.aow, label %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread.i.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i637
  %i.aox = icmp slt i16 %i.aov, %i.aou
  br i1 %i.aox, label %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread11.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %.not.i.i.i.i.i.i.i638 = icmp eq ptr %i.aos, %storemerge.i.i.i.i.i.i.i.i636
  br i1 %.not.i.i.i.i.i.i.i638, label %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i637, !llvm.loop !8

_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.i.i.i.i: ; preds = %bb.ff, %bb.fd
  %i.aoy = phi ptr [ %i.aoi, %bb.fd ], [ %i.aot, %bb.ff ]
  %.not13.i.i.i.i639 = icmp eq ptr %i.aoy, %i.aof
  br i1 %.not13.i.i.i.i639, label %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread11.i.i.i.i, label %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread.i.i.i.i

_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i637, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.i.i.i.i
  br label %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread11.i.i.i.i

_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread11.i.i.i.i: ; preds = %bb.fe, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread.i.i.i.i, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.i.i.i.i
  %.sink.i.i.i.i640 = phi i64 [ 24, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread.i.i.i.i ], [ 16, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.i.i.i.i ], [ 16, %bb.fe ]
  %.19.i.i.i.i641 = phi ptr [ %.0817.i.i.i.i, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread.i.i.i.i ], [ %.018.i.i.i.i, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.i.i.i.i ], [ %.018.i.i.i.i, %bb.fe ] ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %.sink.i.i.i.i640
  %.1.i.i.i.i642 = load ptr, ptr %i.aoz, align 8, !tbaa !338 ; 2 uses
  %.not.i.i.i.i643 = icmp eq ptr %.1.i.i.i.i642, null
  br i1 %.not.i.i.i.i643, label %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE3getERKS2_.exit, label %bb.fd, !llvm.loop !729

_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE3getERKS2_.exit: ; preds = %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread11.i.i.i.i, %._ZNKSt3mapIN4llvm11SmallVectorIsLj4EEEjNS0_21SequenceToOffsetTableIS2_St4lessIsEE7SeqLessESaISt4pairIKS2_jEEE11lower_boundERS9_.exit_crit_edge.i
  %i.apa = phi i64 [ %.pre.i646, %._ZNKSt3mapIN4llvm11SmallVectorIsLj4EEEjNS0_21SequenceToOffsetTableIS2_St4lessIsEE7SeqLessESaISt4pairIKS2_jEEE11lower_boundERS9_.exit_crit_edge.i ], [ %i.aoh, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread11.i.i.i.i ]
  %.08.lcssa.i.i.i.i644 = phi ptr [ %i.f, %._ZNKSt3mapIN4llvm11SmallVectorIsLj4EEEjNS0_21SequenceToOffsetTableIS2_St4lessIsEE7SeqLessESaISt4pairIKS2_jEEE11lower_boundERS9_.exit_crit_edge.i ], [ %.19.i.i.i.i641, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE7SeqLessclERKS2_S8_.exit.thread11.i.i.i.i ] ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i644, i64 64
  %i.apc = load i32, ptr %i.apb, align 8, !tbaa !460
  %i.apd = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i644, i64 40
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !346
  %i.apf = sub i64 %i.ape, %i.apa
  %i.apg = trunc i64 %i.apf to i32
  %i.aph = add i32 %i.apc, %i.apg
  %i.api = load ptr, ptr %i.hk, align 8, !tbaa !182
  %i.apj = load ptr, ptr %i.hm, align 8, !tbaa !183 ; 2 uses
  %i.apk = ptrtoint ptr %i.api to i64
  %i.apl = ptrtoint ptr %i.apj to i64
  %i.apm = sub i64 %i.apk, %i.apl
  %i.apn = icmp ult i64 %i.apm, 4
  br i1 %i.apn, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE3getERKS2_.exit
  %i.apo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.72, i64 noundef 4) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit649

bb.fh:                                            ; preds = %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorIsLj4EEESt4lessIsEE3getERKS2_.exit
  store i32 544940064, ptr %i.apj, align 1
  %i.app = load ptr, ptr %i.hm, align 8, !tbaa !183
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 4
  store ptr %i.apq, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit649

_ZN4llvm11raw_ostreamlsEPKc.exit649:              ; preds = %bb.fg, %bb.fh
  %.0.i.i648 = phi ptr [ %i.apo, %bb.fg ], [ %1, %bb.fh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #22
  %i.apr = load ptr, ptr %.sroa.01766.01948, align 8, !tbaa !177
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !225 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 24
  %.sroa.0.0.copyload.i.i.i650 = load ptr, ptr %i.apt, align 8, !tbaa !226 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i651 = getelementptr inbounds nuw i8, ptr %i.aps, i64 32
  %.sroa.2.0.copyload.i.i.i652 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i651, align 8, !tbaa !227 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %.not.i655 = icmp eq ptr %.sroa.0.0.copyload.i.i.i650, null
  store ptr %i.aav, ptr %79, align 8, !tbaa !58, !alias.scope !1052
  br i1 %.not.i655, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit649
  store i64 0, ptr %i.aaw, align 8, !tbaa !61, !alias.scope !1052
  store i8 0, ptr %i.aav, align 8, !tbaa !62, !alias.scope !1052
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit658

bb.fj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !1052
  store i64 %.sroa.2.0.copyload.i.i.i652, ptr %i.a, align 8, !tbaa !227, !noalias !1052
  %i.apu = icmp ugt i64 %.sroa.2.0.copyload.i.i.i652, 15
  br i1 %i.apu, label %bb.fk, label %._crit_edge.i.i.i656

bb.fk:                                            ; preds = %bb.fj
  %i.apv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.apv, ptr %79, align 8, !tbaa !63, !alias.scope !1052
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_119RegisterInfoEmitter9runMCDescERN4llvm11raw_ostreamES3_NS1_9StringRefE:bb.a
  %.sink.i.i.i.i768 = phi i64 [ 24, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE7SeqLessclERKS3_S9_.exit.thread.i.i.i.i ], [ 16, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE7SeqLessclERKS3_S9_.exit.i.i.i.i ], [ 16, %bb.gk ]
  %.19.i.i.i.i769 = phi ptr [ %.0817.i.i.i.i762, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE7SeqLessclERKS3_S9_.exit.thread.i.i.i.i ], [ %.018.i.i.i.i761, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE7SeqLessclERKS3_S9_.exit.i.i.i.i ], [ %.018.i.i.i.i761, %bb.gk ] ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i761, i64 %.sink.i.i.i.i768
  %.1.i.i.i.i770 = load ptr, ptr %i.ayr, align 8, !tbaa !338 ; 2 uses
  %.not.i.i.i.i771 = icmp eq ptr %.1.i.i.i.i770, null
  br i1 %.not.i.i.i.i771, label %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE3getERKS3_.exit, label %bb.gj, !llvm.loop !753

_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE3getERKS3_.exit: ; preds = %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE7SeqLessclERKS3_S9_.exit.thread11.i.i.i.i, %._ZNKSt3mapIN4llvm11SmallVectorINS0_11LaneBitmaskELj4EEEjNS0_21SequenceToOffsetTableIS3_St4lessIS2_EE7SeqLessESaISt4pairIKS3_jEEE11lower_boundERSA_.exit_crit_edge.i
  %i.ays = phi i32 [ %.pre.i774, %._ZNKSt3mapIN4llvm11SmallVectorINS0_11LaneBitmaskELj4EEEjNS0_21SequenceToOffsetTableIS3_St4lessIS2_EE7SeqLessESaISt4pairIKS3_jEEE11lower_boundERSA_.exit_crit_edge.i ], [ %i.axy, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE7SeqLessclERKS3_S9_.exit.thread11.i.i.i.i ]
  %.08.lcssa.i.i.i.i772 = phi ptr [ %i.ct, %._ZNKSt3mapIN4llvm11SmallVectorINS0_11LaneBitmaskELj4EEEjNS0_21SequenceToOffsetTableIS3_St4lessIS2_EE7SeqLessESaISt4pairIKS3_jEEE11lower_boundERSA_.exit_crit_edge.i ], [ %.19.i.i.i.i769, %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE7SeqLessclERKS3_S9_.exit.thread11.i.i.i.i ] ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i772, i64 80
  %i.ayu = load i32, ptr %i.ayt, align 8, !tbaa !472
  %i.ayv = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i772, i64 40
  %i.ayw = load i32, ptr %i.ayv, align 8, !tbaa !307
  %i.ayx = sub i32 %i.ayu, %i.ays
  %i.ayy = add i32 %i.ayx, %i.ayw
  %i.ayz = zext i32 %i.ayy to i64
  %i.aza = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i757, i64 noundef %i.ayz) #22 ; 4 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 24
  %i.azc = load ptr, ptr %i.azb, align 8, !tbaa !182
  %i.azd = getelementptr inbounds nuw i8, ptr %i.aza, i64 32 ; 3 uses
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !183 ; 2 uses
  %i.azf = ptrtoint ptr %i.azc to i64
  %i.azg = ptrtoint ptr %i.aze to i64
  %i.azh = sub i64 %i.azf, %i.azg
  %i.azi = icmp ult i64 %i.azh, 2
  br i1 %i.azi, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE3getERKS3_.exit
  %i.azj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aza, ptr noundef nonnull @.str.74, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit777

bb.gn:                                            ; preds = %_ZNK4llvm21SequenceToOffsetTableINS_11SmallVectorINS_11LaneBitmaskELj4EEESt4lessIS2_EE3getERKS3_.exit
  store i16 8236, ptr %i.aze, align 1
  %i.azk = load ptr, ptr %i.azd, align 8, !tbaa !183
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 2
  store ptr %i.azl, ptr %i.azd, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit777

_ZN4llvm11raw_ostreamlsEPKc.exit777:              ; preds = %bb.gm, %bb.gn
  %.0.i.i776 = phi ptr [ %i.azj, %bb.gm ], [ %i.aza, %bb.gn ]
  %i.azm = getelementptr inbounds nuw i8, ptr %.sroa.01766.01948, i64 43
  %i.azn = load i8, ptr %i.azm, align 1, !tbaa !473, !range !47, !noundef !48
  %i.azo = zext nneg i8 %i.azn to i64
  %i.azp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i776, i64 noundef %i.azo) #22 ; 4 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 24
  %i.azr = load ptr, ptr %i.azq, align 8, !tbaa !182
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azp, i64 32 ; 3 uses
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !183 ; 2 uses
  %i.azu = ptrtoint ptr %i.azr to i64
  %i.azv = ptrtoint ptr %i.azt to i64
  %i.azw = sub i64 %i.azu, %i.azv
  %i.azx = icmp ult i64 %i.azw, 2
  br i1 %i.azx, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit777
  %i.azy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.azp, ptr noundef nonnull @.str.74, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit780

bb.gp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit777
  store i16 8236, ptr %i.azt, align 1
  %i.azz = load ptr, ptr %i.azs, align 8, !tbaa !183
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 2
  store ptr %i.baa, ptr %i.azs, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit780

_ZN4llvm11raw_ostreamlsEPKc.exit780:              ; preds = %bb.go, %bb.gp
  %.0.i.i779 = phi ptr [ %i.azy, %bb.go ], [ %i.azp, %bb.gp ]
  %i.bab = getelementptr inbounds nuw i8, ptr %.sroa.01766.01948, i64 42
  %i.bac = load i8, ptr %i.bab, align 2, !tbaa !336, !range !47, !noundef !48
  %i.bad = zext nneg i8 %i.bac to i64
  %i.bae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i779, i64 noundef %i.bad) #22 ; 3 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 24
  %i.bag = load ptr, ptr %i.baf, align 8, !tbaa !182
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bae, i64 32 ; 3 uses
  %i.bai = load ptr, ptr %i.bah, align 8, !tbaa !183 ; 2 uses
  %i.baj = ptrtoint ptr %i.bag to i64
  %i.bak = ptrtoint ptr %i.bai to i64
  %i.bal = sub i64 %i.baj, %i.bak
  %i.bam = icmp ult i64 %i.bal, 4
  br i1 %i.bam, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit780
  %i.ban = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bae, ptr noundef nonnull @.str.75, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit783

bb.gr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit780
  store i32 170687776, ptr %i.bai, align 1
  %i.bao = load ptr, ptr %i.bah, align 8, !tbaa !183
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 4
  store ptr %i.bap, ptr %i.bah, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit783

_ZN4llvm11raw_ostreamlsEPKc.exit783:              ; preds = %bb.gq, %bb.gr
  %i.baq = load ptr, ptr %79, align 8, !tbaa !63  ; 2 uses
  %i.bar = icmp eq ptr %i.baq, %i.aav
  br i1 %i.bar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit783
  %i.bas = load i64, ptr %i.aav, align 8, !tbaa !62
  %i.bat = add i64 %i.bas, 1
  call void @_ZdlPvm(ptr noundef %i.baq, i64 noundef %i.bat) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit783, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  %i.bau = add i32 %.11951, 1
  %i.bav = getelementptr inbounds nuw i8, ptr %.sroa.01766.01948, i64 624 ; 2 uses
  %i.baw = icmp eq ptr %i.bav, %.sroa.101770.01949
  br i1 %i.baw, label %bb.gs, label %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit787

bb.gs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786
  %i.bax = getelementptr inbounds nuw i8, ptr %.sroa.131771.01950, i64 8 ; 2 uses
  %i.bay = load ptr, ptr %i.bax, align 8, !tbaa !229 ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 624
  br label %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit787

_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit787: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786, %bb.gs
  %.sroa.01766.1 = phi ptr [ %i.bay, %bb.gs ], [ %i.bav, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786 ] ; 2 uses
  %.sroa.101770.1 = phi ptr [ %i.baz, %bb.gs ], [ %.sroa.101770.01949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786 ]
  %.sroa.131771.1 = phi ptr [ %i.bax, %bb.gs ], [ %.sroa.131771.01950, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786 ]
  %.not1878 = icmp eq ptr %.sroa.01766.1, %i.aap
  br i1 %.not1878, label %._crit_edge1953, label %bb.fa

._crit_edge1961:                                  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit797, %_ZN4llvm11raw_ostreamlsEPKc.exit620
  %i.bba = load ptr, ptr %i.hk, align 8, !tbaa !182
  %i.bbb = load ptr, ptr %i.hm, align 8, !tbaa !183 ; 2 uses
  %i.bbc = ptrtoint ptr %i.bba to i64
  %i.bbd = ptrtoint ptr %i.bbb to i64
  %i.bbe = sub i64 %i.bbc, %i.bbd
  %i.bbf = icmp ult i64 %i.bbe, 4
  br i1 %i.bbf, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %._crit_edge1961
  %i.bbg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.63, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit790

bb.gu:                                            ; preds = %._crit_edge1961
  store i32 168442749, ptr %i.bbb, align 1
  %i.bbh = load ptr, ptr %i.hm, align 8, !tbaa !183
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 4
  store ptr %i.bbi, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit790

_ZN4llvm11raw_ostreamlsEPKc.exit790:              ; preds = %bb.gt, %bb.gu
  %i.bbj = call noundef zeroext i1 @_ZNK4llvm13CodeGenTarget24getRegistersAreIntervalsEv(ptr noundef nonnull align 8 dereferenceable(820) %i.hg) #22
  %.pre2204 = load ptr, ptr %i.hm, align 8, !tbaa !183 ; 3 uses
  br i1 %i.bbj, label %bb.hc, label %_ZN4llvm11raw_ostreamlsEPKc.exit820

bb.gv:                                            ; preds = %.lr.ph1960, %_ZN4llvm11raw_ostreamlsEPKc.exit797
  %indvars.iv = phi i64 [ 0, %.lr.ph1960 ], [ %indvars.iv.next, %_ZN4llvm11raw_ostreamlsEPKc.exit797 ] ; 2 uses
  %i.bbk = load ptr, ptr %i.c, align 8, !tbaa !131, !nonnull !48, !align !122
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 480
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !50
  %i.bbn = getelementptr inbounds nuw [32 x i8], ptr %i.bbm, i64 %indvars.iv ; 3 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 8 ; 3 uses
  %i.bbp = load ptr, ptr %i.bbo, align 8, !tbaa !229
  %.not2078 = icmp eq ptr %i.bbp, null            ; 3 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbn, i64 16
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !229
  %.not2077 = icmp eq ptr %i.bbr, null            ; 3 uses
  %i.bbs = load ptr, ptr %i.hk, align 8, !tbaa !182
  %i.bbt = load ptr, ptr %i.hm, align 8, !tbaa !183 ; 2 uses
  %i.bbu = ptrtoint ptr %i.bbs to i64
  %i.bbv = ptrtoint ptr %i.bbt to i64
  %i.bbw = sub i64 %i.bbu, %i.bbv
  %i.bbx = icmp ult i64 %i.bbw, 4
  br i1 %i.bbx, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.bby = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.72, i64 noundef 4) #22 ; 0 uses
  %.pre2198.pre = load ptr, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit793

bb.gx:                                            ; preds = %bb.gv
  store i32 544940064, ptr %i.bbt, align 1
  %i.bbz = load ptr, ptr %i.hm, align 8, !tbaa !183
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 4 ; 2 uses
  store ptr %i.bca, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit793

_ZN4llvm11raw_ostreamlsEPKc.exit793:              ; preds = %bb.gw, %bb.gx
  %.pre2198 = phi ptr [ %.pre2198.pre, %bb.gw ], [ %i.bca, %bb.gx ]
  %.idx2075 = select i1 %.not2077, i64 0, i64 8
  %.idx2076 = select i1 %.not2078, i64 0, i64 8
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbo, i64 %.idx2075
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 %.idx2076
  %.not3881954 = and i1 %.not2077, %.not2078
  br i1 %.not3881954, label %._crit_edge1957, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit802.peel

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit802.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit793
  %i.bcd = load ptr, ptr %i.bbo, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #22
  %i.bce = load ptr, ptr %i.bcd, align 8, !tbaa !177
  call void @_ZN4llvm16getQualifiedNameB5cxx11EPKNS_6RecordE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr noundef %i.bce) #22
  %i.bcf = load ptr, ptr %80, align 8, !tbaa !63
  %i.bcg = load i64, ptr %i.anb, align 8, !tbaa !61
  %i.bch = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.bcf, i64 noundef %i.bcg) #22 ; 0 uses
  %i.bci = load ptr, ptr %80, align 8, !tbaa !63  ; 2 uses
  %i.bcj = icmp eq ptr %i.bci, %i.anc
  br i1 %i.bcj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i804.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803.peel: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit802.peel
  %i.bck = load i64, ptr %i.anc, align 8, !tbaa !62
  %i.bcl = add i64 %i.bck, 1
  call void @_ZdlPvm(ptr noundef %i.bci, i64 noundef %i.bcl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i804.peel: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit802.peel
  %105 = load i64, ptr %i.anb, align 8, !tbaa !61
  %106 = icmp ult i64 %105, 16
  call void @llvm.assume(i1 %106)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i804.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  %.not388.peel = xor i1 %.not2077, %.not2078
  br i1 %.not388.peel, label %._crit_edge1957.loopexit, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805.peel
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bbn, i64 16
  br label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit

._crit_edge1957.loopexit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805.peel
  %.pre2197 = load ptr, ptr %i.hm, align 8, !tbaa !183
  br label %._crit_edge1957

._crit_edge1957:                                  ; preds = %._crit_edge1957.loopexit, %_ZN4llvm11raw_ostreamlsEPKc.exit793
  %i.bcn = phi ptr [ %.pre2197, %._crit_edge1957.loopexit ], [ %.pre2198, %_ZN4llvm11raw_ostreamlsEPKc.exit793 ] ; 2 uses
  %i.bco = load ptr, ptr %i.hk, align 8, !tbaa !182
  %i.bcp = ptrtoint ptr %i.bco to i64
  %i.bcq = ptrtoint ptr %i.bcn to i64
  %i.bcr = sub i64 %i.bcp, %i.bcq
  %i.bcs = icmp ult i64 %i.bcr, 4
  br i1 %i.bcs, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %._crit_edge1957
  %i.bct = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.75, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit797

bb.gz:                                            ; preds = %._crit_edge1957
  store i32 170687776, ptr %i.bcn, align 1
  %i.bcu = load ptr, ptr %i.hm, align 8, !tbaa !183
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 4
  store ptr %i.bcv, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit797

_ZN4llvm11raw_ostreamlsEPKc.exit797:              ; preds = %bb.gy, %bb.gz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.and
  br i1 %.not, label %._crit_edge1961, label %bb.gv, !llvm.loop !754

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit:   ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805
  %.03751956 = phi ptr [ %i.bdo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805 ], [ %i.bcm, %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next ] ; 2 uses
  %i.bcw = load ptr, ptr %.03751956, align 8, !tbaa !229
  %i.bcx = load ptr, ptr %i.hk, align 8, !tbaa !182
  %i.bcy = load ptr, ptr %i.hm, align 8, !tbaa !183 ; 2 uses
  %i.bcz = ptrtoint ptr %i.bcx to i64
  %i.bda = ptrtoint ptr %i.bcy to i64
  %i.bdb = sub i64 %i.bcz, %i.bda
  %i.bdc = icmp ult i64 %i.bdb, 2
  br i1 %i.bdc, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  %i.bdd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.74, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit802

bb.hb:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  store i16 8236, ptr %i.bcy, align 1
  %i.bde = load ptr, ptr %i.hm, align 8, !tbaa !183
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 2
  store ptr %i.bdf, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit802

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit802:   ; preds = %bb.ha, %bb.hb
  %.0.i801 = phi ptr [ %i.bdd, %bb.ha ], [ %1, %bb.hb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #22
  %i.bdg = load ptr, ptr %i.bcw, align 8, !tbaa !177
  call void @_ZN4llvm16getQualifiedNameB5cxx11EPKNS_6RecordE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr noundef %i.bdg) #22
  %i.bdh = load ptr, ptr %80, align 8, !tbaa !63
  %i.bdi = load i64, ptr %i.anb, align 8, !tbaa !61
  %i.bdj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i801, ptr noundef %i.bdh, i64 noundef %i.bdi) #22 ; 0 uses
  %i.bdk = load ptr, ptr %80, align 8, !tbaa !63  ; 2 uses
  %i.bdl = icmp eq ptr %i.bdk, %i.anc
  br i1 %i.bdl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit802
  %i.bdm = load i64, ptr %i.anc, align 8, !tbaa !62
  %i.bdn = add i64 %i.bdm, 1
  call void @_ZdlPvm(ptr noundef %i.bdk, i64 noundef %i.bdn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit802, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  %i.bdo = getelementptr inbounds nuw i8, ptr %.03751956, i64 8 ; 2 uses
  %.not388 = icmp eq ptr %i.bdo, %i.bcc
  br i1 %.not388, label %._crit_edge1957.loopexit, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit, !llvm.loop !755

bb.hc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit790
  %i.bdp = load ptr, ptr %i.hk, align 8, !tbaa !182
  %i.bdq = ptrtoint ptr %i.bdp to i64
  %i.bdr = ptrtoint ptr %.pre2204 to i64
  %i.bds = sub i64 %i.bdq, %i.bdr
  %i.bdt = icmp ult i64 %i.bds, 22
  br i1 %i.bdt, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.bdu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.78, i64 noundef 22) #22 ; 2 uses
  %.phi.trans.insert2199 = getelementptr inbounds nuw i8, ptr %i.bdu, i64 32
  %.pre2200 = load ptr, ptr %.phi.trans.insert2199, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit808

bb.he:                                            ; preds = %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %.pre2204, ptr noundef nonnull align 1 dereferenceable(22) @.str.78, i64 22, i1 false)
  %i.bdv = load ptr, ptr %i.hm, align 8, !tbaa !183
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 22 ; 2 uses
  store ptr %i.bdw, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit808

_ZN4llvm11raw_ostreamlsEPKc.exit808:              ; preds = %bb.hd, %bb.he
  %i.bdx = phi ptr [ %.pre2200, %bb.hd ], [ %i.bdw, %bb.he ] ; 3 uses
  %.0.i.i807 = phi ptr [ %i.bdu, %bb.hd ], [ %1, %bb.he ] ; 5 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %.0.i.i807, i64 24
  %i.bdz = load ptr, ptr %i.bdy, align 8, !tbaa !182
  %i.bea = getelementptr inbounds nuw i8, ptr %.0.i.i807, i64 32 ; 2 uses
  %i.beb = ptrtoint ptr %i.bdz to i64
  %i.bec = ptrtoint ptr %i.bdx to i64
  %i.bed = sub i64 %i.beb, %i.bec
  %i.bee = icmp ugt i64 %i.hj, %i.bed
  br i1 %i.bee, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit808
  %i.bef = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i807, ptr noundef %i.hi, i64 noundef %i.hj) #22 ; 2 uses
  %.phi.trans.insert2201 = getelementptr inbounds nuw i8, ptr %i.bef, i64 32
  %.pre2202 = load ptr, ptr %.phi.trans.insert2201, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit811

bb.hg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit808
  %.not.i809 = icmp eq i64 %i.hj, 0
  br i1 %.not.i809, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit811, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdx, ptr align 1 %i.hi, i64 %i.hj, i1 false)
  %i.beg = load ptr, ptr %i.bea, align 8, !tbaa !183
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 %i.hj ; 2 uses
  store ptr %i.beh, ptr %i.bea, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit811

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit811:   ; preds = %bb.hf, %bb.hg, %bb.hh
  %i.bei = phi ptr [ %.pre2202, %bb.hf ], [ %i.beh, %bb.hh ], [ %i.bdx, %bb.hg ] ; 2 uses
  %.0.i810 = phi ptr [ %i.bef, %bb.hf ], [ %.0.i.i807, %bb.hh ], [ %.0.i.i807, %bb.hg ] ; 3 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %.0.i810, i64 24
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !182
  %i.bel = ptrtoint ptr %i.bek to i64
  %i.bem = ptrtoint ptr %i.bei to i64
  %i.ben = sub i64 %i.bel, %i.bem
  %i.beo = icmp ult i64 %i.ben, 26
  br i1 %i.beo, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit811
  %i.bep = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i810, ptr noundef nonnull @.str.79, i64 noundef 26) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit814

bb.hj:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit811
  %i.beq = getelementptr inbounds nuw i8, ptr %.0.i810, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.bei, ptr noundef nonnull align 1 dereferenceable(26) @.str.79, i64 26, i1 false)
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !183
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 26
  store ptr %i.bes, ptr %i.beq, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit814

_ZN4llvm11raw_ostreamlsEPKc.exit814:              ; preds = %bb.hi, %bb.hj
  %i.bet = load ptr, ptr %i.hk, align 8, !tbaa !182
  %i.beu = load ptr, ptr %i.hm, align 8, !tbaa !183 ; 2 uses
  %i.bev = ptrtoint ptr %i.bet to i64
  %i.bew = ptrtoint ptr %i.beu to i64
  %i.bex = sub i64 %i.bev, %i.bew
  %i.bey = icmp ult i64 %i.bex, 12
  br i1 %i.bey, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit814
  %i.bez = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.80, i64 noundef 12) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit817

bb.hl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.beu, ptr noundef nonnull align 1 dereferenceable(12) @.str.80, i64 12, i1 false)
  %i.bfa = load ptr, ptr %i.hm, align 8, !tbaa !183
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 12
  store ptr %i.bfb, ptr %i.hm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit817

_ZN4llvm11raw_ostreamlsEPKc.exit817:              ; preds = %bb.hk, %bb.hl
  %i.bfc = load ptr, ptr %i.o, align 8, !tbaa !135, !noalias !1063 ; 2 uses
  %i.bfd = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !1064 ; 2 uses
  %.not18791962 = icmp eq ptr %i.bfc, %i.bfd
  br i1 %.not18791962, label %._crit_edge1967, label %.lr.ph1966

.lr.ph1966:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit817
  %i.bfe = load ptr, ptr %i.r, align 8, !tbaa !184, !noalias !1063
  %i.bff = load ptr, ptr %i.ah, align 8, !tbaa !185, !noalias !1063
  %i.bfg = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 3 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %81, i64 24 ; 2 uses
  br label %bb.ho

._crit_edge1967:                                  ; preds = %_ZNSt15_Deque_iteratorIN4llvm15CodeGenRegisterERKS1_PS2_EppEv.exit853, %_ZN4llvm11raw_ostreamlsEPKc.exit817
  %i.bfj = load ptr, ptr %i.hk, align 8, !tbaa !182
  %i.bfk = load ptr, ptr %i.hm, align 8, !tbaa !183 ; 2 uses
  %i.bfl = ptrtoint ptr %i.bfj to i64
  %i.bfm = ptrtoint ptr %i.bfk to i64
  %i.bfn = sub i64 %i.bfl, %i.bfm
  %i.bfo = icmp ult i64 %i.bfn, 4
  br i1 %i.bfo, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %._crit_edge1967
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_119RegisterInfoEmitter13runTargetDescERN4llvm11raw_ostreamES3_NS1_9StringRefE:bb.a
  store ptr %i.abj, ptr %i.abe, align 8, !tbaa !183
  store i8 41, ptr %i.abf, align 1, !tbaa !62
  br label %_ZL9printMaskRN4llvm11raw_ostreamENS_11LaneBitmaskE.exit

_ZL9printMaskRN4llvm11raw_ostreamENS_11LaneBitmaskE.exit: ; preds = %bb.dm, %bb.dn
  %i.abk = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.abl = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.abm = ptrtoint ptr %i.abk to i64
  %i.abn = ptrtoint ptr %i.abl to i64
  %i.abo = sub i64 %i.abm, %i.abn
  %i.abp = icmp ult i64 %i.abo, 5
  br i1 %i.abp, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZL9printMaskRN4llvm11raw_ostreamENS_11LaneBitmaskE.exit
  %i.abq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.273, i64 noundef 5) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit732

bb.dp:                                            ; preds = %_ZL9printMaskRN4llvm11raw_ostreamENS_11LaneBitmaskE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.abl, ptr noundef nonnull align 1 dereferenceable(5) @.str.273, i64 5, i1 false)
  %i.abr = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 5
  store ptr %i.abs, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit732

_ZN4llvm11raw_ostreamlsEPKc.exit732:              ; preds = %bb.do, %bb.dp
  %.0.i.i731 = phi ptr [ %i.abq, %bb.do ], [ %1, %bb.dp ]
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.02210.02429, i64 8
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !63
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.02210.02429, i64 16
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !61
  %i.abx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i731, ptr noundef %i.abu, i64 noundef %i.abw) #22 ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 32 ; 2 uses
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !183 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 24
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !182
  %.not.i733 = icmp ult ptr %i.abz, %i.acb
  br i1 %.not.i733, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit732
  %i.acc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.abx, i8 noundef zeroext 10) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.dr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit732
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abz, i64 1
  store ptr %i.acd, ptr %i.aby, align 8, !tbaa !183
  store i8 10, ptr %i.abz, align 1, !tbaa !62
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.dq, %bb.dr
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.02210.02429, i64 280 ; 2 uses
  %i.acf = icmp eq ptr %i.ace, %.sroa.102214.02428
  br i1 %i.acf, label %bb.ds, label %_ZNSt15_Deque_iteratorIN4llvm18CodeGenSubRegIndexERKS1_PS2_EppEv.exit735

bb.ds:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.acg = getelementptr inbounds nuw i8, ptr %.sroa.132215.02427, i64 8 ; 2 uses
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !272 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 280
  br label %_ZNSt15_Deque_iteratorIN4llvm18CodeGenSubRegIndexERKS1_PS2_EppEv.exit735

_ZNSt15_Deque_iteratorIN4llvm18CodeGenSubRegIndexERKS1_PS2_EppEv.exit735: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.ds
  %.sroa.132215.1 = phi ptr [ %i.acg, %bb.ds ], [ %.sroa.132215.02427, %_ZN4llvm11raw_ostreamlsEc.exit ]
  %.sroa.102214.1 = phi ptr [ %i.aci, %bb.ds ], [ %.sroa.102214.02428, %_ZN4llvm11raw_ostreamlsEc.exit ]
  %.sroa.02210.1 = phi ptr [ %i.ach, %bb.ds ], [ %i.ace, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 2 uses
  %.not2304 = icmp eq ptr %.sroa.02210.1, %i.vk
  br i1 %.not2304, label %._crit_edge2431, label %bb.dh

bb.dt:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit724
  %i.acj = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.ack = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.acl = ptrtoint ptr %i.acj to i64
  %i.acm = ptrtoint ptr %i.ack to i64
  %i.acn = sub i64 %i.acl, %i.acm
  %i.aco = icmp ult i64 %i.acn, 47
  br i1 %i.aco, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.acp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.275, i64 noundef 47) #22 ; 2 uses
  %.phi.trans.insert2721 = getelementptr inbounds nuw i8, ptr %i.acp, i64 32
  %.pre2722 = load ptr, ptr %.phi.trans.insert2721, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit738

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.ack, ptr noundef nonnull align 1 dereferenceable(47) @.str.275, i64 47, i1 false)
  %i.acq = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 47 ; 2 uses
  store ptr %i.acr, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit738

_ZN4llvm11raw_ostreamlsEPKc.exit738:              ; preds = %bb.du, %bb.dv
  %i.acs = phi ptr [ %.pre2722, %bb.du ], [ %i.acr, %bb.dv ] ; 3 uses
  %.0.i.i737 = phi ptr [ %i.acp, %bb.du ], [ %1, %bb.dv ] ; 5 uses
  %.sroa.0294.0.copyload = load ptr, ptr %29, align 8, !tbaa !226 ; 2 uses
  %.sroa.2295.0.copyload = load i64, ptr %i.cg, align 8, !tbaa !227 ; 5 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.0.i.i737, i64 24
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !182
  %i.acv = getelementptr inbounds nuw i8, ptr %.0.i.i737, i64 32 ; 2 uses
  %i.acw = ptrtoint ptr %i.acu to i64
  %i.acx = ptrtoint ptr %i.acs to i64
  %i.acy = sub i64 %i.acw, %i.acx
  %i.acz = icmp ugt i64 %.sroa.2295.0.copyload, %i.acy
  br i1 %i.acz, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit738
  %i.ada = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i737, ptr noundef %.sroa.0294.0.copyload, i64 noundef %.sroa.2295.0.copyload) #22 ; 2 uses
  %.phi.trans.insert2723 = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  %.pre2724 = load ptr, ptr %.phi.trans.insert2723, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit741

bb.dx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit738
  %.not.i739 = icmp eq i64 %.sroa.2295.0.copyload, 0
  br i1 %.not.i739, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit741, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acs, ptr align 1 %.sroa.0294.0.copyload, i64 %.sroa.2295.0.copyload, i1 false)
  %i.adb = load ptr, ptr %i.acv, align 8, !tbaa !183
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 %.sroa.2295.0.copyload ; 2 uses
  store ptr %i.adc, ptr %i.acv, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit741

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit741:   ; preds = %bb.dw, %bb.dx, %bb.dy
  %i.add = phi ptr [ %.pre2724, %bb.dw ], [ %i.adc, %bb.dy ], [ %i.acs, %bb.dx ] ; 2 uses
  %.0.i740 = phi ptr [ %i.ada, %bb.dw ], [ %.0.i.i737, %bb.dy ], [ %.0.i.i737, %bb.dx ] ; 4 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.0.i740, i64 24
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !182
  %i.adg = ptrtoint ptr %i.adf to i64
  %i.adh = ptrtoint ptr %i.add to i64
  %i.adi = sub i64 %i.adg, %i.adh
  %i.adj = icmp ult i64 %i.adi, 15
  br i1 %i.adj, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit741
  %i.adk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i740, ptr noundef nonnull @.str.276, i64 noundef 15) #22 ; 2 uses
  %.phi.trans.insert2725 = getelementptr inbounds nuw i8, ptr %i.adk, i64 32
  %.pre2726 = load ptr, ptr %.phi.trans.insert2725, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit744

bb.ea:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit741
  %i.adl = getelementptr inbounds nuw i8, ptr %.0.i740, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.add, ptr noundef nonnull align 1 dereferenceable(15) @.str.276, i64 15, i1 false)
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !183
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 15 ; 2 uses
  store ptr %i.adn, ptr %i.adl, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit744

_ZN4llvm11raw_ostreamlsEPKc.exit744:              ; preds = %bb.dz, %bb.ea
  %i.ado = phi ptr [ %.pre2726, %bb.dz ], [ %i.adn, %bb.ea ] ; 2 uses
  %.0.i.i743 = phi ptr [ %i.adk, %bb.dz ], [ %.0.i740, %bb.ea ] ; 3 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.0.i.i743, i64 24
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !182
  %i.adr = ptrtoint ptr %i.adq to i64
  %i.ads = ptrtoint ptr %i.ado to i64
  %i.adt = sub i64 %i.adr, %i.ads
  %i.adu = icmp ult i64 %i.adt, 5
  br i1 %i.adu, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit744
  %i.adv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i743, ptr noundef nonnull @.str.152, i64 noundef 5) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit747

bb.ec:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit744
  %i.adw = getelementptr inbounds nuw i8, ptr %.0.i.i743, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ado, ptr noundef nonnull align 1 dereferenceable(5) @.str.152, i64 5, i1 false)
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !183
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 5
  store ptr %i.ady, ptr %i.adw, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit747

_ZN4llvm11raw_ostreamlsEPKc.exit747:              ; preds = %bb.eb, %bb.ec
  br i1 %.not2608, label %._crit_edge2449, label %.lr.ph2448.preheader

.lr.ph2448.preheader:                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit747
  %wide.trip.count = zext i32 %i.cd to i64
  br label %.lr.ph2448

._crit_edge2449:                                  ; preds = %._crit_edge2446, %_ZN4llvm11raw_ostreamlsEPKc.exit747
  %i.adz = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.aea = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.aeb = ptrtoint ptr %i.adz to i64
  %i.aec = ptrtoint ptr %i.aea to i64
  %i.aed = sub i64 %i.aeb, %i.aec
  %i.aee = icmp ult i64 %i.aed, 3
  br i1 %i.aee, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %._crit_edge2449
  %i.aef = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.29, i64 noundef 3) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit750

bb.ee:                                            ; preds = %._crit_edge2449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aea, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, i64 3, i1 false)
  %i.aeg = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 3
  store ptr %i.aeh, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit750

_ZN4llvm11raw_ostreamlsEPKc.exit750:              ; preds = %bb.ed, %bb.ee
  %.sroa.02194.02459 = load ptr, ptr %i.bo, align 8, !tbaa !190 ; 2 uses
  %.not23052460 = icmp eq ptr %.sroa.02194.02459, %i.bo
  br i1 %.not23052460, label %.loopexit2348, label %.lr.ph2462

.lr.ph2462:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit750
  %i.aei = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  br label %bb.fn

.lr.ph2448:                                       ; preds = %.lr.ph2448.preheader, %._crit_edge2446
  %indvars.iv = phi i64 [ 0, %.lr.ph2448.preheader ], [ %indvars.iv.next, %._crit_edge2446 ] ; 10 uses
  %i.aek = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.ael = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.aem = ptrtoint ptr %i.aek to i64
  %i.aen = ptrtoint ptr %i.ael to i64
  %i.aeo = sub i64 %i.aem, %i.aen
  %i.aep = icmp ult i64 %i.aeo, 12
  br i1 %i.aep, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph2448
  %i.aeq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.277, i64 noundef 12) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit753

bb.eg:                                            ; preds = %.lr.ph2448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ael, ptr noundef nonnull align 1 dereferenceable(12) @.str.277, i64 12, i1 false)
  %i.aer = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 12
  store ptr %i.aes, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit753

_ZN4llvm11raw_ostreamlsEPKc.exit753:              ; preds = %bb.ef, %bb.eg
  %.0.i.i752 = phi ptr [ %i.aeq, %bb.ef ], [ %1, %bb.eg ]
  %i.aet = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i752, i64 noundef %indvars.iv) #22 ; 4 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 24
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !182
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 32 ; 3 uses
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !183 ; 2 uses
  %i.aey = ptrtoint ptr %i.aev to i64
  %i.aez = ptrtoint ptr %i.aex to i64
  %i.afa = sub i64 %i.aey, %i.aez
  %i.afb = icmp ult i64 %i.afa, 2
  br i1 %i.afb, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit753
  %i.afc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aet, ptr noundef nonnull @.str.278, i64 noundef 2) #22 ; 2 uses
  %.phi.trans.insert2727 = getelementptr inbounds nuw i8, ptr %i.afc, i64 32
  %.pre2728 = load ptr, ptr %.phi.trans.insert2727, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit756

bb.ei:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit753
  store i16 10272, ptr %i.aex, align 1
  %i.afd = load ptr, ptr %i.aew, align 8, !tbaa !183
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 2 ; 2 uses
  store ptr %i.afe, ptr %i.aew, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit756

_ZN4llvm11raw_ostreamlsEPKc.exit756:              ; preds = %bb.eh, %bb.ei
  %i.aff = phi ptr [ %.pre2728, %bb.eh ], [ %i.afe, %bb.ei ] ; 3 uses
  %.0.i.i755 = phi ptr [ %i.afc, %bb.eh ], [ %i.aet, %bb.ei ] ; 5 uses
  %i.afg = icmp eq i64 %indvars.iv, 0             ; 2 uses
  %i.afh = add nuw i64 %indvars.iv, 4294967295
  %i.afi = and i64 %i.afh, 4294967295
  %i.afj = load ptr, ptr %i.bu, align 8
  %i.afk = getelementptr inbounds nuw [40 x i8], ptr %i.afj, i64 %i.afi ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %.sroa.0.0.in.i = select i1 %i.afg, ptr @_ZN4llvm14CodeGenHwModes15DefaultModeNameE, ptr %i.afk
  %.sroa.3.0.in.i = select i1 %i.afg, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm14CodeGenHwModes15DefaultModeNameE, i64 8), ptr %.sroa.3.0..sroa_idx.i
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !tbaa !227 ; 5 uses
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !226 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.0.i.i755, i64 24
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !182
  %i.afn = getelementptr inbounds nuw i8, ptr %.0.i.i755, i64 32 ; 2 uses
  %i.afo = ptrtoint ptr %i.afm to i64
  %i.afp = ptrtoint ptr %i.aff to i64
  %i.afq = sub i64 %i.afo, %i.afp
  %i.afr = icmp ugt i64 %.sroa.3.0.i, %i.afq
  br i1 %i.afr, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit756
  %i.afs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i755, ptr noundef %.sroa.0.0.i, i64 noundef %.sroa.3.0.i) #22 ; 2 uses
  %.phi.trans.insert2729 = getelementptr inbounds nuw i8, ptr %i.afs, i64 32
  %.pre2730 = load ptr, ptr %.phi.trans.insert2729, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit761

bb.ek:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit756
  %.not.i759 = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %.not.i759, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit761, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aff, ptr align 1 %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 false)
  %i.aft = load ptr, ptr %i.afn, align 8, !tbaa !183
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 %.sroa.3.0.i ; 2 uses
  store ptr %i.afu, ptr %i.afn, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit761

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit761:   ; preds = %bb.ej, %bb.ek, %bb.el
  %i.afv = phi ptr [ %.pre2730, %bb.ej ], [ %i.afu, %bb.el ], [ %i.aff, %bb.ek ] ; 2 uses
  %.0.i760 = phi ptr [ %i.afs, %bb.ej ], [ %.0.i.i755, %bb.el ], [ %.0.i.i755, %bb.ek ] ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %.0.i760, i64 24
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !182
  %i.afy = ptrtoint ptr %i.afx to i64
  %i.afz = ptrtoint ptr %i.afv to i64
  %i.aga = sub i64 %i.afy, %i.afz
  %i.agb = icmp ult i64 %i.aga, 2
  br i1 %i.agb, label %bb.em, label %bb.en

bb.em:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit761
  %i.agc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i760, ptr noundef nonnull @.str.279, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit764

bb.en:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit761
  %i.agd = getelementptr inbounds nuw i8, ptr %.0.i760, i64 32 ; 2 uses
  store i16 2601, ptr %i.afv, align 1
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !183
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 2
  store ptr %i.agf, ptr %i.agd, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit764

_ZN4llvm11raw_ostreamlsEPKc.exit764:              ; preds = %bb.em, %bb.en
  %.sroa.02203.02442 = load ptr, ptr %i.bo, align 8, !tbaa !190 ; 2 uses
  %.not23062443 = icmp eq ptr %.sroa.02203.02442, %i.bo
  br i1 %.not23062443, label %._crit_edge2446, label %.lr.ph2445

._crit_edge2446:                                  ; preds = %_ZNSt6vectorIN4llvm3MVTESaIS1_EED2Ev.exit816, %_ZN4llvm11raw_ostreamlsEPKc.exit764
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond2667.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond2667.not, label %._crit_edge2449, label %.lr.ph2448, !llvm.loop !1193

.lr.ph2445:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit764, %_ZNSt6vectorIN4llvm3MVTESaIS1_EED2Ev.exit816
  %.sroa.02203.02444 = phi ptr [ %.sroa.02203.0, %_ZNSt6vectorIN4llvm3MVTESaIS1_EED2Ev.exit816 ], [ %.sroa.02203.02442, %_ZN4llvm11raw_ostreamlsEPKc.exit764 ] ; 8 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.02203.02444, i64 744
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !341 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.02203.02444, i64 736 ; 2 uses
  %.not10.i.i.i.i765 = icmp eq ptr %i.agh, null
  br i1 %.not10.i.i.i.i765, label %_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i, label %.lr.ph.i.i.i.i766

.lr.ph.i.i.i.i766:                                ; preds = %.lr.ph2445, %.lr.ph.i.i.i.i766
  %.012.i.i.i.i767 = phi ptr [ %.1.i.i.i.i772, %.lr.ph.i.i.i.i766 ], [ %i.agh, %.lr.ph2445 ] ; 3 uses
  %.0811.i.i.i.i768 = phi ptr [ %.19.i.i.i.i769, %.lr.ph.i.i.i.i766 ], [ %i.agi, %.lr.ph2445 ]
  %i.agj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i767, i64 32
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !279
  %i.agl = zext i32 %i.agk to i64
  %i.agm = icmp samesign ugt i64 %indvars.iv, %i.agl ; 2 uses
  %.19.i.i.i.i769 = select i1 %i.agm, ptr %.0811.i.i.i.i768, ptr %.012.i.i.i.i767 ; 4 uses
  %.1.in.v.i.i.i.i770 = select i1 %i.agm, i64 24, i64 16
  %.1.in.i.i.i.i771 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i767, i64 %.1.in.v.i.i.i.i770
  %.1.i.i.i.i772 = load ptr, ptr %.1.in.i.i.i.i771, align 8, !tbaa !338 ; 2 uses
  %.not.i.i.i.i773 = icmp eq ptr %.1.i.i.i.i772, null
  br i1 %.not.i.i.i.i773, label %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm11RegSizeInfoEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i766, !llvm.loop !19

_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm11RegSizeInfoEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i766
  %i.agn = icmp eq ptr %.19.i.i.i.i769, %i.agi
  br i1 %i.agn, label %_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i, label %_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i

_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm11RegSizeInfoEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.ago = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i769, i64 32
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !279
  %i.agq = zext i32 %i.agp to i64
  %i.agr = icmp samesign ult i64 %indvars.iv, %i.agq
  br i1 %i.agr, label %_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i, label %_ZNK4llvm12InfoByHwModeINS_11RegSizeInfoEE3getEj.exit

_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i: ; preds = %_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i, %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm11RegSizeInfoEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %.lr.ph2445
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.02203.02444, i64 752
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !329
  br label %_ZNK4llvm12InfoByHwModeINS_11RegSizeInfoEE3getEj.exit

_ZNK4llvm12InfoByHwModeINS_11RegSizeInfoEE3getEj.exit: ; preds = %_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i, %_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i
  %.19.i.i.i.pn.i774 = phi ptr [ %i.agt, %_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread.i ], [ %.19.i.i.i.i769, %_ZNKSt3mapIjN4llvm11RegSizeInfoESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.i ] ; 3 uses
  %.0.i775 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.pn.i774, i64 36
  %i.agu = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.agv = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.agw = ptrtoint ptr %i.agu to i64
  %i.agx = ptrtoint ptr %i.agv to i64
  %i.agy = sub i64 %i.agw, %i.agx
  %i.agz = icmp ult i64 %i.agy, 4
  br i1 %i.agz, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %_ZNK4llvm12InfoByHwModeINS_11RegSizeInfoEE3getEj.exit
  %i.aha = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.72, i64 noundef 4) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit778

bb.ep:                                            ; preds = %_ZNK4llvm12InfoByHwModeINS_11RegSizeInfoEE3getEj.exit
  store i32 544940064, ptr %i.agv, align 1
  %i.ahb = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 4
  store ptr %i.ahc, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit778

_ZN4llvm11raw_ostreamlsEPKc.exit778:              ; preds = %bb.eo, %bb.ep
  %.0.i.i777 = phi ptr [ %i.aha, %bb.eo ], [ %1, %bb.ep ]
  %i.ahd = load i32, ptr %.0.i775, align 4, !tbaa !485
  %i.ahe = zext i32 %i.ahd to i64
  %i.ahf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i777, i64 noundef %i.ahe) #22 ; 4 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 24
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !182
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahf, i64 32 ; 3 uses
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !183 ; 2 uses
  %i.ahk = ptrtoint ptr %i.ahh to i64
  %i.ahl = ptrtoint ptr %i.ahj to i64
  %i.ahm = sub i64 %i.ahk, %i.ahl
  %i.ahn = icmp ult i64 %i.ahm, 2
  br i1 %i.ahn, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit778
  %i.aho = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ahf, ptr noundef nonnull @.str.74, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit781
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_119RegisterInfoEmitter13runTargetDescERN4llvm11raw_ostreamES3_NS1_9StringRefE:bb.a
  %i.arh = load ptr, ptr %i.apk, align 8, !tbaa !63
  %i.ari = load i64, ptr %i.apm, align 8, !tbaa !61
  %i.arj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i872, ptr noundef %i.arh, i64 noundef %i.ari) #22 ; 4 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 24
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !182
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arj, i64 32 ; 3 uses
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !183 ; 2 uses
  %i.aro = ptrtoint ptr %i.arl to i64
  %i.arp = ptrtoint ptr %i.arn to i64
  %i.arq = sub i64 %i.aro, %i.arp
  %i.arr = icmp ult i64 %i.arq, 53
  br i1 %i.arr, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit873
  %i.ars = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.arj, ptr noundef nonnull @.str.286, i64 noundef 53) #22 ; 2 uses
  %.phi.trans.insert2743 = getelementptr inbounds nuw i8, ptr %i.ars, i64 32
  %.pre2744 = load ptr, ptr %.phi.trans.insert2743, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit876

bb.gb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.arn, ptr noundef nonnull align 1 dereferenceable(53) @.str.286, i64 53, i1 false)
  %i.art = load ptr, ptr %i.arm, align 8, !tbaa !183
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 53 ; 2 uses
  store ptr %i.aru, ptr %i.arm, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit876

_ZN4llvm11raw_ostreamlsEPKc.exit876:              ; preds = %bb.ga, %bb.gb
  %i.arv = phi ptr [ %.pre2744, %bb.ga ], [ %i.aru, %bb.gb ] ; 2 uses
  %.0.i.i875 = phi ptr [ %i.ars, %bb.ga ], [ %i.arj, %bb.gb ] ; 3 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %.0.i.i875, i64 24
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !182
  %i.ary = ptrtoint ptr %i.arx to i64
  %i.arz = ptrtoint ptr %i.arv to i64
  %i.asa = sub i64 %i.ary, %i.arz
  %i.asb = icmp ult i64 %i.asa, 39
  br i1 %i.asb, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit876
  %i.asc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i875, ptr noundef nonnull @.str.287, i64 noundef 39) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit879

bb.gd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit876
  %i.asd = getelementptr inbounds nuw i8, ptr %.0.i.i875, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.arv, ptr noundef nonnull align 1 dereferenceable(39) @.str.287, i64 39, i1 false)
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !183
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 39
  store ptr %i.asf, ptr %i.asd, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit879

_ZN4llvm11raw_ostreamlsEPKc.exit879:              ; preds = %bb.gc, %bb.gd
  %i.asg = getelementptr inbounds nuw i8, ptr %.sroa.02194.02461, i64 112 ; 5 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %.sroa.02194.02461, i64 120 ; 3 uses
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !1422
  %i.asj = load ptr, ptr %i.asg, align 8, !tbaa !480
  %i.ask = ptrtoint ptr %i.asi to i64
  %i.asl = ptrtoint ptr %i.asj to i64
  %i.asm = sub i64 %i.ask, %i.asl
  %i.asn = sdiv exact i64 %i.asm, 144
  %i.aso = trunc i64 %i.asn to i32                ; 2 uses
  %.not2451 = icmp eq i32 %i.aso, 1
  br i1 %.not2451, label %._crit_edge2454, label %.lr.ph2453

._crit_edge2454:                                  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit896, %_ZN4llvm11raw_ostreamlsEPKc.exit879
  %i.asp = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.asq = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.asr = ptrtoint ptr %i.asp to i64
  %i.ass = ptrtoint ptr %i.asq to i64
  %i.ast = sub i64 %i.asr, %i.ass
  %i.asu = icmp ult i64 %i.ast, 40
  br i1 %i.asu, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %._crit_edge2454
  %i.asv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.291, i64 noundef 40) #22 ; 2 uses
  %.phi.trans.insert2745 = getelementptr inbounds nuw i8, ptr %i.asv, i64 32
  %.pre2746 = load ptr, ptr %.phi.trans.insert2745, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit882

bb.gf:                                            ; preds = %._crit_edge2454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.asq, ptr noundef nonnull align 1 dereferenceable(40) @.str.291, i64 40, i1 false)
  %i.asw = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 40 ; 2 uses
  store ptr %i.asx, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit882

_ZN4llvm11raw_ostreamlsEPKc.exit882:              ; preds = %bb.ge, %bb.gf
  %i.asy = phi ptr [ %.pre2746, %bb.ge ], [ %i.asx, %bb.gf ] ; 2 uses
  %.0.i.i881 = phi ptr [ %i.asv, %bb.ge ], [ %1, %bb.gf ] ; 3 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %.0.i.i881, i64 24
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !182
  %i.atb = ptrtoint ptr %i.ata to i64
  %i.atc = ptrtoint ptr %i.asy to i64
  %i.atd = sub i64 %i.atb, %i.atc
  %i.ate = icmp ult i64 %i.atd, 20
  br i1 %i.ate, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit882
  %i.atf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i881, ptr noundef nonnull @.str.292, i64 noundef 20) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit885

bb.gh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit882
  %i.atg = getelementptr inbounds nuw i8, ptr %.0.i.i881, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.asy, ptr noundef nonnull align 1 dereferenceable(20) @.str.292, i64 20, i1 false)
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !183
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 20
  store ptr %i.ati, ptr %i.atg, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit885

_ZN4llvm11raw_ostreamlsEPKc.exit885:              ; preds = %bb.gg, %bb.gh
  %i.atj = load ptr, ptr %i.ash, align 8, !tbaa !1422
  %i.atk = load ptr, ptr %i.asg, align 8, !tbaa !480
  %i.atl = ptrtoint ptr %i.atj to i64
  %i.atm = ptrtoint ptr %i.atk to i64
  %i.atn = sub i64 %i.atl, %i.atm
  %i.ato = sdiv exact i64 %i.atn, 144
  %i.atp = trunc i64 %i.ato to i32                ; 2 uses
  %.not5582455 = icmp eq i32 %i.atp, 1
  br i1 %.not5582455, label %._crit_edge2458, label %.lr.ph2457

.lr.ph2453:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit879, %_ZN4llvm11raw_ostreamlsEPKc.exit896
  %indvars.iv2673 = phi i64 [ %indvars.iv.next2674, %_ZN4llvm11raw_ostreamlsEPKc.exit896 ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit879 ] ; 3 uses
  %i.atq = load ptr, ptr %i.asg, align 8, !tbaa !480
  %i.atr = getelementptr inbounds nuw [144 x i8], ptr %i.atq, i64 %indvars.iv2673 ; 2 uses
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !50 ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.atr, i64 8
  %i.atu = load i32, ptr %i.att, align 8, !tbaa !307 ; 3 uses
  %i.atv = icmp eq i32 %i.atu, 0
  br i1 %i.atv, label %_ZN4llvm11raw_ostreamlsEPKc.exit896, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph2453
  %i.atw = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.atx = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.aty = ptrtoint ptr %i.atw to i64
  %i.atz = ptrtoint ptr %i.atx to i64
  %i.aua = sub i64 %i.aty, %i.atz
  %i.aub = icmp ult i64 %i.aua, 33
  br i1 %i.aub, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.auc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.288, i64 noundef 33) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit890

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.atx, ptr noundef nonnull align 1 dereferenceable(33) @.str.288, i64 33, i1 false)
  %i.aud = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 33
  store ptr %i.aue, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit890

_ZN4llvm11raw_ostreamlsEPKc.exit890:              ; preds = %bb.gj, %bb.gk
  %.0.i.i889 = phi ptr [ %i.auc, %bb.gj ], [ %1, %bb.gk ]
  %i.auf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i889, i64 noundef %indvars.iv2673) #22 ; 3 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 24
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !182
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auf, i64 32 ; 3 uses
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !183 ; 2 uses
  %i.auk = ptrtoint ptr %i.auh to i64
  %i.aul = ptrtoint ptr %i.auj to i64
  %i.aum = sub i64 %i.auk, %i.aul
  %i.aun = icmp ult i64 %i.aum, 6
  br i1 %i.aun, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit890
  %i.auo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.auf, ptr noundef nonnull @.str.289, i64 noundef 6) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit893

bb.gm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.auj, ptr noundef nonnull align 1 dereferenceable(6) @.str.289, i64 6, i1 false)
  %i.aup = load ptr, ptr %i.aui, align 8, !tbaa !183
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 6
  store ptr %i.auq, ptr %i.aui, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit893

_ZN4llvm11raw_ostreamlsEPKc.exit893:              ; preds = %bb.gl, %bb.gm
  %i.aur = zext i32 %i.atu to i64
  %i.aus = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.aut = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.auu = icmp eq ptr %i.aus, %i.aut
  br i1 %i.auu, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit893
  store i8 32, ptr %i.aut, align 1
  %i.auv = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 1
  store ptr %i.auw, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit900.peel

bb.go:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit893
  %i.aux = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.89, i64 noundef 1) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit900.peel

_ZN4llvm11raw_ostreamlsEPKc.exit900.peel:         ; preds = %bb.go, %bb.gn
  %.0.i.i899.peel = phi ptr [ %i.aux, %bb.go ], [ %1, %bb.gn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.auy = load ptr, ptr %i.ats, align 8, !tbaa !265
  call void @_ZN4llvm16getQualifiedNameB5cxx11EPKNS_6RecordE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef %i.auy) #22
  %i.auz = load ptr, ptr %35, align 8, !tbaa !63
  %i.ava = load i64, ptr %i.aei, align 8, !tbaa !61
  %i.avb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i899.peel, ptr noundef %i.auz, i64 noundef %i.ava) #22 ; 0 uses
  %i.avc = load ptr, ptr %35, align 8, !tbaa !63  ; 2 uses
  %i.avd = icmp eq ptr %i.avc, %i.aej
  br i1 %i.avd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit900.peel
  %i.ave = load i64, ptr %i.aej, align 8, !tbaa !62
  %i.avf = add i64 %i.ave, 1
  call void @_ZdlPvm(ptr noundef %i.avc, i64 noundef %i.avf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit900.peel
  %68 = load i64, ptr %i.aei, align 8, !tbaa !61
  %69 = icmp ult i64 %68, 16
  call void @llvm.assume(i1 %69)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %.not559.peel = icmp eq i32 %i.atu, 1
  br i1 %.not559.peel, label %.loopexit2672, label %.peel.next

.loopexit2672:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.avg = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.avh = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.avi = ptrtoint ptr %i.avg to i64
  %i.avj = ptrtoint ptr %i.avh to i64
  %i.avk = sub i64 %i.avi, %i.avj
  %i.avl = icmp ult i64 %i.avk, 4
  br i1 %i.avl, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %.loopexit2672
  %i.avm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.290, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit896

bb.gq:                                            ; preds = %.loopexit2672
  store i32 171670816, ptr %i.avh, align 1
  %i.avn = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 4
  store ptr %i.avo, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit896

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv2668 = phi i64 [ %indvars.iv.next2669, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.avp = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.avq = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.avr = ptrtoint ptr %i.avp to i64
  %i.avs = ptrtoint ptr %i.avq to i64
  %i.avt = sub i64 %i.avr, %i.avs
  %i.avu = icmp ult i64 %i.avt, 2
  br i1 %i.avu, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %.peel.next
  %i.avv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.74, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit900

bb.gs:                                            ; preds = %.peel.next
  store i16 8236, ptr %i.avq, align 1
  %i.avw = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 2
  store ptr %i.avx, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit900

_ZN4llvm11raw_ostreamlsEPKc.exit900:              ; preds = %bb.gr, %bb.gs
  %.0.i.i899 = phi ptr [ %i.avv, %bb.gr ], [ %1, %bb.gs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.avy = getelementptr inbounds nuw [8 x i8], ptr %i.ats, i64 %indvars.iv2668
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !265
  call void @_ZN4llvm16getQualifiedNameB5cxx11EPKNS_6RecordE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef %i.avz) #22
  %i.awa = load ptr, ptr %35, align 8, !tbaa !63
  %i.awb = load i64, ptr %i.aei, align 8, !tbaa !61
  %i.awc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i899, ptr noundef %i.awa, i64 noundef %i.awb) #22 ; 0 uses
  %i.awd = load ptr, ptr %35, align 8, !tbaa !63  ; 2 uses
  %i.awe = icmp eq ptr %i.awd, %i.aej
  br i1 %i.awe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit900
  %i.awf = load i64, ptr %i.aej, align 8, !tbaa !62
  %i.awg = add i64 %i.awf, 1
  call void @_ZdlPvm(ptr noundef %i.awd, i64 noundef %i.awg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit900, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %indvars.iv.next2669 = add nuw nsw i64 %indvars.iv2668, 1 ; 2 uses
  %.not559 = icmp eq i64 %indvars.iv.next2669, %i.aur
  br i1 %.not559, label %.loopexit2672, label %.peel.next, !llvm.loop !1205

_ZN4llvm11raw_ostreamlsEPKc.exit896:              ; preds = %bb.gq, %bb.gp, %.lr.ph2453
  %indvars.iv.next2674 = add nuw nsw i64 %indvars.iv2673, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next2674 to i32
  %exitcond2676 = icmp eq i32 %lftr.wideiv, %i.aso
  br i1 %exitcond2676, label %._crit_edge2454, label %.lr.ph2453, !llvm.loop !1206

._crit_edge2458:                                  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit914, %_ZN4llvm11raw_ostreamlsEPKc.exit885
  %i.awh = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.awi = load ptr, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.awj = ptrtoint ptr %i.awh to i64
  %i.awk = ptrtoint ptr %i.awi to i64
  %i.awl = sub i64 %i.awj, %i.awk
  %i.awm = icmp ult i64 %i.awl, 33
  br i1 %i.awm, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %._crit_edge2458
  %i.awn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.295, i64 noundef 33) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit903

bb.gu:                                            ; preds = %._crit_edge2458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.awi, ptr noundef nonnull align 1 dereferenceable(33) @.str.295, i64 33, i1 false)
  %i.awo = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 33
  store ptr %i.awp, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit903

_ZN4llvm11raw_ostreamlsEPKc.exit903:              ; preds = %bb.gt, %bb.gu
  %.0.i.i902 = phi ptr [ %i.awn, %bb.gt ], [ %1, %bb.gu ]
  %i.awq = load ptr, ptr %i.apk, align 8, !tbaa !63
  %i.awr = load i64, ptr %i.apm, align 8, !tbaa !61
  %i.aws = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i902, ptr noundef %i.awq, i64 noundef %i.awr) #22 ; 4 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 24
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !182
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aws, i64 32 ; 3 uses
  %i.aww = load ptr, ptr %i.awv, align 8, !tbaa !183 ; 2 uses
  %i.awx = ptrtoint ptr %i.awu to i64
  %i.awy = ptrtoint ptr %i.aww to i64
  %i.awz = sub i64 %i.awx, %i.awy
  %i.axa = icmp ult i64 %i.awz, 43
  br i1 %i.axa, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit903
  %i.axb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aws, ptr noundef nonnull @.str.296, i64 noundef 43) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit906

bb.gw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.aww, ptr noundef nonnull align 1 dereferenceable(43) @.str.296, i64 43, i1 false)
  %i.axc = load ptr, ptr %i.awv, align 8, !tbaa !183
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 43
  store ptr %i.axd, ptr %i.awv, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit906

_ZN4llvm11raw_ostreamlsEPKc.exit906:              ; preds = %bb.gv, %bb.gw
  %.0.i.i905 = phi ptr [ %i.axb, %bb.gv ], [ %i.aws, %bb.gw ]
  %i.axe = load ptr, ptr %i.ash, align 8, !tbaa !1422
  %i.axf = load ptr, ptr %i.asg, align 8, !tbaa !480
  %i.axg = ptrtoint ptr %i.axe to i64
  %i.axh = ptrtoint ptr %i.axf to i64
  %i.axi = sub i64 %i.axg, %i.axh
  %i.axj = sdiv exact i64 %i.axi, 144
  %i.axk = and i64 %i.axj, 4294967295
  %i.axl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i905, i64 noundef %i.axk) #22 ; 3 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 24
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !182
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axl, i64 32 ; 3 uses
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !183 ; 2 uses
  %i.axq = ptrtoint ptr %i.axn to i64
  %i.axr = ptrtoint ptr %i.axp to i64
  %i.axs = sub i64 %i.axq, %i.axr
  %i.axt = icmp ult i64 %i.axs, 29
  br i1 %i.axt, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit906
  %i.axu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.axl, ptr noundef nonnull @.str.297, i64 noundef 29) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit909

bb.gy:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.axp, ptr noundef nonnull align 1 dereferenceable(29) @.str.297, i64 29, i1 false)
  %i.axv = load ptr, ptr %i.axo, align 8, !tbaa !183
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 29
  store ptr %i.axw, ptr %i.axo, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit909

.lr.ph2457:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit885, %_ZN4llvm11raw_ostreamlsEPKc.exit914
  %indvars.iv2677 = phi i64 [ %indvars.iv.next2678, %_ZN4llvm11raw_ostreamlsEPKc.exit914 ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit885 ] ; 3 uses
  %i.axx = load ptr, ptr %i.asg, align 8, !tbaa !480
  %i.axy = getelementptr inbounds nuw [144 x i8], ptr %i.axx, i64 %indvars.iv2677
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 8
  %i.aya = load i32, ptr %i.axz, align 8, !tbaa !307
  %i.ayb = icmp eq i32 %i.aya, 0
  %i.ayc = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.ayd = load ptr, ptr %i.q, align 8, !tbaa !183 ; 3 uses
  %i.aye = ptrtoint ptr %i.ayc to i64
  %i.ayf = ptrtoint ptr %i.ayd to i64
  %i.ayg = sub i64 %i.aye, %i.ayf                 ; 2 uses
  br i1 %i.ayb, label %bb.gz, label %bb.hc

bb.gz:                                            ; preds = %.lr.ph2457
  %i.ayh = icmp ult i64 %i.ayg, 27
  br i1 %i.ayh, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.ayi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.293, i64 noundef 27) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit914

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ayd, ptr noundef nonnull align 1 dereferenceable(27) @.str.293, i64 27, i1 false)
  %i.ayj = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 27
  store ptr %i.ayk, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit914

bb.hc:                                            ; preds = %.lr.ph2457
  %i.ayl = icmp ult i64 %i.ayg, 24
  br i1 %i.ayl, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.aym = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.294, i64 noundef 24) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit917

bb.he:                                            ; preds = %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ayd, ptr noundef nonnull align 1 dereferenceable(24) @.str.294, i64 24, i1 false)
  %i.ayn = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 24
  store ptr %i.ayo, ptr %i.q, align 8, !tbaa !183
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit917

_ZN4llvm11raw_ostreamlsEPKc.exit917:              ; preds = %bb.hd, %bb.he
  %.0.i.i916 = phi ptr [ %i.aym, %bb.hd ], [ %1, %bb.he ]
  %i.ayp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i916, i64 noundef %indvars.iv2677) #22 ; 0 uses
end_hunk_3
