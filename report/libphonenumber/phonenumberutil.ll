Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumberutil?download=true
inline.NumInlined: 4537
inline.NumDeleted: 1449
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_:bb.a
  %.pn.i = phi i64 [ %i.bs, %bb.c ], [ %i.r, %bb.a ]
  %.sroa.12.0.i = phi i64 [ %i.br, %bb.c ], [ 0, %bb.a ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.n             ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i
  %i.aw = load <16 x i8>, ptr %i.av, align 1, !tbaa !92 ; 2 uses
  %i.ax = icmp eq <16 x i8> %i.v, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not47.i = icmp eq i16 %i.ay, 0
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.az = zext i16 %i.ay to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, %.lr.ph.preheader.i
  %.sroa.014.048.i = phi i32 [ %i.bo, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i ], [ %i.az, %.lr.ph.preheader.i ] ; 3 uses
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.048.i, i1 true)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add i64 %.sroa.6.0.i, %i.bb
  %i.bd = and i64 %i.bc, %i.n                     ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !144 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !94
  %i.bi = icmp eq i64 %i.bh, %.fr12
  br i1 %i.bi, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, !prof !179

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i: ; preds = %.lr.ph.i
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !95
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bj, ptr %i.y, i64 %.fr12)
  %i.bk = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bk, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, !prof !180

.thread31.i:                                      ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.aj, %.lr.ph.i.us.us ], [ %i.bd, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.us-phi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.us-phi
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %.lr.ph.i
  %i.bn = add nuw nsw i32 %.sroa.014.048.i, 65535
  %i.bo = and i32 %i.bn, %.sroa.014.048.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, %.split
  %i.bp = icmp eq <16 x i8> %i.aw, splat (i8 -128)
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %.not43.i = icmp eq i16 %i.bq, 0
  br i1 %.not43.i, label %bb.c, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit, !prof !168

bb.c:                                             ; preds = %._crit_edge.i
  %i.br = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.bs = add i64 %i.br, %.sroa.6.0.i
  br label %.split, !llvm.loop !362

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread31.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bm, %.thread31.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.bl, %.thread31.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetRegionCodesForCountryCallingCodeEiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %bb.d
  %.02153.i.i = phi i64 [ %.2.i.i, %bb.d ], [ %i.i, %bb.a ] ; 3 uses
  %.sroa.038.052.i.i = phi ptr [ %.sroa.038.1.i.i, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %i.k = lshr i64 %.02153.i.i, 1                  ; 5 uses
  %.idx38 = shl nuw nsw i64 %i.k, 4               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.038.052.i.i, i64 %.idx38 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !181  ; 2 uses
  %i.n = icmp slt i32 %i.m, %1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = xor i64 %i.k, -1
  %i.q = add nsw i64 %.02153.i.i, %i.p
  br label %bb.d

bb.c:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.r = icmp slt i32 %1, %i.m
  br i1 %i.r, label %bb.d, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c
  %.not37 = icmp eq i64 %i.k, 0
  br i1 %.not37, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.critedge.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.k, %.critedge.i.i ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.sroa.038.052.i.i, %.critedge.i.i ] ; 2 uses
  %i.s = lshr i64 %.016.i.i.i, 1                  ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !181
  %i.v = icmp slt i32 %i.u, %1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = xor i64 %i.s, -1
  %i.y = add nsw i64 %.016.i.i.i, %i.x
  %.sroa.011.1.i.i.i = select i1 %i.v, ptr %i.w, ptr %.sroa.011.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.v, i64 %i.y, i64 %i.s  ; 2 uses
  %i.z = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i, !llvm.loop !15

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %.critedge.i.i
  %.sroa.011.0.lcssa.i.i.i = phi ptr [ %.sroa.038.052.i.i, %.critedge.i.i ], [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.02153.i.i, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ab = add nuw nsw i64 %.idx38, 16
  %gepdiff = sub nsw i64 %.idx, %i.ab
  %i.ac = ashr exact i64 %gepdiff, 4              ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i
  %.016.i28.i.i = phi i64 [ %.1.i33.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i ], [ %i.ac, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i ] ; 2 uses
  %.sroa.011.015.i29.i.i = phi ptr [ %.sroa.011.1.i32.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i ], [ %i.aa, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i ] ; 2 uses
  %i.ae = lshr i64 %.016.i28.i.i, 1               ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i29.i.i, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !181
  %i.ah = icmp slt i32 %1, %i.ag                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = xor i64 %i.ae, -1
  %i.ak = add nsw i64 %.016.i28.i.i, %i.aj
  %.sroa.011.1.i32.i.i = select i1 %i.ah, ptr %.sroa.011.015.i29.i.i, ptr %i.ai ; 2 uses
  %.1.i33.i.i = select i1 %i.ah, i64 %i.ae, i64 %i.ak ; 2 uses
  %i.al = icmp sgt i64 %.1.i33.i.i, 0
  br i1 %i.al, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit, !llvm.loop !363

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.038.1.i.i = phi ptr [ %i.o, %bb.b ], [ %.sroa.038.052.i.i, %bb.c ]
  %.2.i.i = phi i64 [ %i.q, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.am = icmp sgt i64 %.2.i.i, 0
  br i1 %i.am, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit.thread, !llvm.loop !364

_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i
  %.sroa.3.0.i.i = phi ptr [ %i.aa, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i ], [ %.sroa.011.1.i32.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i ]
  %.not = icmp eq ptr %.sroa.011.0.lcssa.i.i.i, %.sroa.3.0.i.i
  br i1 %.not, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit
  %i.an = load ptr, ptr %2, align 8, !tbaa !137
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !167 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !137
  %i.ar = tail call ptr @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertISt14_List_iteratorIS5_EvEESA_St20_List_const_iteratorIS5_ET_SD_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.an, ptr %i.aq, ptr nonnull %i.ap) ; 0 uses
  br label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit.thread

_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit.thread: ; preds = %bb.d, %bb.a, %bb.e, %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertISt14_List_iteratorIS5_EvEESA_St20_List_const_iteratorIS5_ET_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !138
  store ptr %4, ptr %4, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !140
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.d, %.noexc.i ], [ %2, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  invoke void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc.i unwind label %.body

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.d = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !137 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit, label %.lr.ph.i.i, !llvm.loop !365

.body:                                            ; preds = %.lr.ph.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.e

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !137   ; 4 uses
  %i.f = icmp eq ptr %.pre, %4
  br i1 %i.f, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit: ; preds = %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  %i.g = load i64, ptr %i.b, align 8, !tbaa !184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !184
  %i.j = add i64 %i.i, %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !184
  store i64 0, ptr %i.b, align 8, !tbaa !184
  %.pre10 = load ptr, ptr %4, align 8, !tbaa !137 ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre10, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pre10, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit ] ; 4 uses
  %i.k = load ptr, ptr %.09.i.i, align 8, !tbaa !137 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i7
  %i.p = load i64, ptr %i.n, align 8, !tbaa !92
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 48) #35
  %.not.i.i8 = icmp eq ptr %i.k, %4
  br i1 %.not.i.i8, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i7, !llvm.loop !7

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.a, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit
  %.sroa.06.022 = phi ptr [ %1, %bb.a ], [ %.pre, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit ], [ %1, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret ptr %.sroa.06.022
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !137    ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !137 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !92
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 48) #35
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !7

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers15PhoneNumberUtil22GetRegionCodeForNumberERKNS0_11PhoneNumberEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::list", align 8 ; 15 uses
  %6 = alloca %"class.i18n::phonenumbers::LoggerHandler", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.c, align 8, !tbaa !138
  store ptr %5, ptr %5, align 8, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !140
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetRegionCodesForCountryCallingCodeEiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.b, ptr noundef nonnull %5)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !184
  switch i64 %i.e, label %bb.s [
    i64 0, label %bb.c
    i64 1, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.f = load ptr, ptr @_ZN4i18n12phonenumbers6Logger5impl_E, align 8, !tbaa !48, !noalias !372 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50, !noalias !372
  %i.i = icmp slt i32 %i.h, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !47, !noalias !372
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !372
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.f)
          to label %bb.e unwind label %bb.o, !inline_history !19

bb.e:                                             ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi ptr [ null, %bb.c ], [ %i.f, %bb.d ]
  store ptr %storemerge.i.i, ptr %6, align 8, !tbaa !89, !alias.scope !372
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA39_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(39) @.str.28)
          to label %bb.f unwind label %bb.p       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZN4i18n12phonenumbers15ConvertToStringIiE6DoWorkB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.b)
          to label %.noexc12 unwind label %bb.p

.noexc12:                                         ; preds = %bb.g
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc12
  %i.r = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.u = load i64, ptr %i.s, align 8, !tbaa !92
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit

bb.i:                                             ; preds = %.noexc12
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !92
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.body

_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.f
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(2) @.str.29)
          to label %bb.j unwind label %bb.p       ; 0 uses

bb.j:                                             ; preds = %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit
  %i.ad = load ptr, ptr %6, align 8, !tbaa !89    ; 3 uses
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %bb.m, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !91
  store i8 10, ptr %i.ae, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.af, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.ag, align 1, !tbaa !92
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ae
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.k
  %i.am = load i64, ptr %i.ae, align 8, !tbaa !92
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i15: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #33
  unreachable

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i15, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.ar, ptr noundef nonnull @.str.143, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.r, %bb.m, %bb.s, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.g, %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
end_hunk_0
