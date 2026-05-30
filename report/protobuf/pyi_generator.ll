inline.NumInlined: 2685
inline.NumDeleted: 1108
begin_hunk_0_@_ZNK6google8protobuf8compiler6python12PyiGenerator12PrintImportsEv:bb.a
  %i.rj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i204, i64 %i.ri ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i213 = load i64, ptr %i.rj, align 8, !tbaa !40, !noalias !206
  %i.rk = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i213, 6
  br i1 %i.rk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i226, label %.critedge.i216, !prof !128

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i226: ; preds = %.lr.ph.i211
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i214 = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i215 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i214, align 8, !tbaa !95, !noalias !206 ; 2 uses
  %i.rl = load i32, ptr %.sroa.22.0.copyload.i.i.i.i.i.i215, align 1
  %i.rm = xor i32 %i.rl, 1969516397
  %i.rn = getelementptr i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i215, i64 4
  %i.ro = load i16, ptr %i.rn, align 1
  %i.rp = zext i16 %i.ro to i32
  %i.rq = xor i32 %i.rp, 25964
  %i.rr = or i32 %i.rm, %i.rq
  %i.rs = icmp ne i32 %i.rr, 0
  %i.rt = zext i1 %i.rs to i32
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i, label %.critedge.i216

.critedge.i216:                                   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i226, %.lr.ph.i211
  %i.rv = add i16 %.sroa.034.060.i212, -1
  %i.rw = and i16 %i.rv, %.sroa.034.060.i212      ; 2 uses
  %.not.i217 = icmp eq i16 %i.rw, 0
  br i1 %.not.i217, label %.critedge18.i218, label %.lr.ph.i211

.critedge18.i218:                                 ; preds = %.critedge.i216, %bb.ek
  %i.rx = icmp eq <16 x i8> %i.rc, splat (i8 -128)
  %i.ry = bitcast <16 x i1> %i.rx to i16          ; 2 uses
  %.not52.i219 = icmp eq i16 %i.ry, 0
  br i1 %.not52.i219, label %bb.el, label %.thread.i220, !prof !126

.thread.i220:                                     ; preds = %.critedge18.i218
  %i.rz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ry, i1 true)
  %i.sa = zext nneg i16 %i.rz to i64
  %i.sb = add i64 %.sroa.7.0.i209, %i.sa
  %i.sc = and i64 %i.sb, %i.qy
  %i.sd = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.nu, i64 %i.sc, i64 %.sroa.15.0.i208)
          to label %bb.em unwind label %bb.ey

bb.el:                                            ; preds = %.critedge18.i218
  %i.se = add i64 %.sroa.15.0.i208, 16            ; 2 uses
  %i.sf = add i64 %i.se, %.sroa.7.0.i209
  br label %bb.ek

.loopexit473:                                     ; preds = %bb.ej, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit475 = landingpad { ptr, i32 }
          cleanup
  br label %.body195

.loopexit.split-lp474:                            ; preds = %bb.es
  %lpad.loopexit.split-lp476 = landingpad { ptr, i32 }
          cleanup
  br label %.body195

bb.em:                                            ; preds = %.thread.i220
  %.sroa.0.0.copyload.i.i.i.i23.i221 = load ptr, ptr %i.nz, align 8, !tbaa !33, !noalias !206
  %i.sg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i221, i64 %i.sd ; 4 uses
  store i64 6, ptr %i.sg, align 8, !tbaa !40
  %.sroa.7437.0..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  store ptr @.str.42, ptr %.sroa.7437.0..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !95
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  store i64 %i.qu, ptr %i.sh, align 8, !tbaa !40
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sg, i64 24
  store ptr %i.qt, ptr %.sroa.12.16..sroa_idx, align 8, !tbaa !95
  %.pre555.a = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i170, align 8, !tbaa !33, !noalias !212
  %.pre556 = load i64, ptr %i.nv, align 8, !tbaa !34, !noalias !215
  %.pre557.a = load i64, ptr %7, align 8, !tbaa !29, !noalias !215
  %.sroa.0.0.copyload.i.i.i.i.pre = load ptr, ptr %i.nz, align 8, !tbaa !33, !noalias !212
  %.pre563 = and i64 %.pre556, 65535
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i226, %bb.em
  %.pre-phi = phi i64 [ %.pre563, %bb.em ], [ %i.qx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i226 ]
  %.sroa.0.0.copyload.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.pre, %bb.em ], [ %.sroa.0.0.copyload.i.i.i.i204, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i226 ] ; 2 uses
  %i.si = phi i64 [ %.pre557.a, %bb.em ], [ %i.qy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i226 ] ; 3 uses
  %i.sj = phi ptr [ %.pre555.a, %bb.em ], [ %i.qv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i226 ] ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.sj, i32 0, i32 1, i32 1), !noalias !212
  %i.sk = xor i64 %.pre-phi, %i.oi
  br label %bb.en

bb.en:                                            ; preds = %bb.eo, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i
  %.pn.i197 = phi i64 [ %i.sk, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i ], [ %i.tp, %bb.eo ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i ], [ %i.to, %bb.eo ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i197, %i.si         ; 5 uses
  %i.sl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.sl, i32 0, i32 3, i32 1), !noalias !212
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.sroa.7.0.i
  %i.sn = load <16 x i8>, ptr %i.sm, align 1, !tbaa !33, !noalias !212 ; 2 uses
  %i.so = icmp eq <16 x i8> %i.om, %i.sn
  %i.sp = bitcast <16 x i1> %i.so to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.sp, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.en, %.critedge.i
  %.sroa.034.060.i = phi i16 [ %i.tg, %.critedge.i ], [ %i.sp, %bb.en ] ; 3 uses
  %i.sq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060.i, i1 true)
  %i.sr = zext nneg i16 %i.sq to i64
  %i.ss = add i64 %.sroa.7.0.i, %i.sr
  %i.st = and i64 %i.ss, %i.si
  %i.su = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.st ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.su, align 8, !tbaa !40, !noalias !212
  %i.sv = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 13
  br i1 %i.sv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, label %.critedge.i, !prof !128

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !95, !noalias !212 ; 2 uses
  %i.sw = load i64, ptr %.sroa.22.0.copyload.i.i.i.i.i.i, align 1
  %i.sx = xor i64 %i.sw, 6874014074497361261
  %i.sy = getelementptr i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i, i64 5
  %i.sz = load i64, ptr %i.sy, align 1
  %i.ta = xor i64 %i.sz, 8319100054834996583
  %i.tb = or i64 %i.sx, %i.ta
  %i.tc = icmp ne i64 %i.tb, 0
  %i.td = zext i1 %i.tc to i32
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.tf = add i16 %.sroa.034.060.i, -1
  %i.tg = and i16 %i.tf, %.sroa.034.060.i         ; 2 uses
  %.not.i = icmp eq i16 %i.tg, 0
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.en
  %i.th = icmp eq <16 x i8> %i.sn, splat (i8 -128)
  %i.ti = bitcast <16 x i1> %i.th to i16          ; 2 uses
  %.not52.i = icmp eq i16 %i.ti, 0
  br i1 %.not52.i, label %bb.eo, label %.thread.i, !prof !126

.thread.i:                                        ; preds = %.critedge18.i
  %i.tj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ti, i1 true)
  %i.tk = zext nneg i16 %i.tj to i64
  %i.tl = add i64 %.sroa.7.0.i, %i.tk
  %i.tm = and i64 %i.tl, %i.si
  %i.tn = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.oh, i64 %i.tm, i64 %.sroa.15.0.i)
          to label %bb.ep unwind label %bb.ey

bb.eo:                                            ; preds = %.critedge18.i
  %i.to = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.tp = add i64 %i.to, %.sroa.7.0.i
  br label %bb.en

bb.ep:                                            ; preds = %.thread.i
  %.sroa.0.0.copyload.i.i.i.i23.i = load ptr, ptr %i.nz, align 8, !tbaa !33, !noalias !212
  %i.tq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i, i64 %i.tn ; 4 uses
  store i64 13, ptr %i.tq, align 8, !tbaa !40
  %.sroa.17.32..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store ptr @.str.43, ptr %.sroa.17.32..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.1.i.sroa_idx, align 8, !tbaa !95
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  store i64 %i.qq, ptr %i.tr, align 8, !tbaa !40
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  store ptr %i.qs, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !95
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ql, i64 160 ; 6 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !221, !noalias !218 ; 7 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ql, i64 168 ; 3 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !224, !noalias !218
  %.not.i.i.i = icmp eq ptr %i.tt, %i.tv
  br i1 %.not.i.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store i64 0, ptr %i.tx, align 8, !noalias !218
  store i64 %i.on, ptr %i.tt, align 8, !tbaa !225, !noalias !218
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.tw, align 8, !tbaa !227, !noalias !218
  %i.ty = load ptr, ptr %i.ts, align 8, !tbaa !221, !noalias !218
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  store ptr %i.tz, ptr %i.ts, align 8, !tbaa !221, !noalias !218
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i

bb.er:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ql, i64 152 ; 2 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !228 ; 5 uses
  %i.uc = ptrtoint ptr %i.tt to i64
  %i.ud = ptrtoint ptr %i.ub to i64               ; 2 uses
  %i.ue = sub i64 %i.uc, %i.ud                    ; 3 uses
  %i.uf = icmp eq i64 %i.ue, 9223372036854775776
  br i1 %i.uf, label %bb.es, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #31
          to label %.noexc306 unwind label %.loopexit.split-lp474

.noexc306:                                        ; preds = %bb.es
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.er
  %i.ug = ashr exact i64 %i.ue, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ug, i64 1)
  %i.uh = add nsw i64 %.sroa.speculated.i.i, %i.ug ; 2 uses
  %i.ui = icmp ult i64 %i.uh, %i.ug
  %i.uj = call i64 @llvm.umin.i64(i64 %i.uh, i64 288230376151711743)
  %i.uk = select i1 %i.ui, i64 288230376151711743, i64 %i.uj ; 2 uses
  %i.ul = shl nuw nsw i64 %i.uk, 5
  %i.um = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ul) #32
          to label %.noexc307 unwind label %.loopexit473 ; 5 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.ue ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  store i64 0, ptr %i.up, align 8
  store i64 %i.on, ptr %i.un, align 8, !tbaa !225
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.uo, align 8, !tbaa !227
  %.not10.i.i.i.i = icmp eq ptr %i.ub, %i.tt
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc307, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ux, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.um, %.noexc307 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.uw, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ub, %.noexc307 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.uq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.ur = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !229, !noalias !232
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !234, !alias.scope !232, !noalias !229
  store ptr %i.us, ptr %i.uq, align 8, !tbaa !234, !alias.scope !229, !noalias !232
  %i.ut = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !237, !alias.scope !232, !noalias !229 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !238, !alias.scope !239
  store ptr %i.uu, ptr %i.uv, align 8, !tbaa !237, !alias.scope !229, !noalias !232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ut, i8 0, i64 16, i1 false), !alias.scope !232, !noalias !229
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.uw, %i.tt
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i, label %.lr.ph.i.i.i.i, !llvm.loop !240

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc307
  %.0.lcssa.i.i.i.i = phi ptr [ %i.um, %.noexc307 ], [ %i.ux, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.uy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i26.i = icmp eq ptr %i.ub, null
  br i1 %.not.i26.i, label %.noexc, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i
  %i.uz = load ptr, ptr %i.tu, align 8, !tbaa !224
  %i.va = ptrtoint ptr %i.uz to i64
  %i.vb = sub i64 %i.va, %i.ud
  call void @_ZdlPvm(ptr noundef nonnull %i.ub, i64 noundef %i.vb) #30
  br label %.noexc

.noexc:                                           ; preds = %bb.et, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i
  store ptr %i.um, ptr %i.ua, align 8, !tbaa !228
  store ptr %i.uy, ptr %i.ts, align 8, !tbaa !221
  %i.vc = getelementptr inbounds nuw [32 x i8], ptr %i.um, i64 %i.uk
  store ptr %i.vc, ptr %i.tu, align 8, !tbaa !224
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i: ; preds = %.noexc, %bb.eq
  store ptr %i.ql, ptr %i.oo, align 8, !tbaa !241, !alias.scope !242
  store i8 1, ptr %3, align 8, !tbaa !245, !alias.scope !242
  store i32 65792, ptr %.sroa.4.0..sroa_idx.i, align 1
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx.i, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %i.ql, i64 56, ptr nonnull @.str.41, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %4)
          to label %bb.eu unwind label %bb.ex

bb.eu:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i
  %i.vd = load ptr, ptr %i.ts, align 8, !tbaa !221 ; 2 uses
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 -32 ; 3 uses
  store ptr %i.ve, ptr %i.ts, align 8, !tbaa !221
  %i.vf = getelementptr inbounds i8, ptr %i.vd, i64 -16
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ez, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.vh = invoke noundef zeroext i1 %i.vg(ptr noundef nonnull align 8 dereferenceable(32) %i.ve, ptr noundef nonnull align 8 dereferenceable(32) %i.ve, i32 noundef 3)
          to label %bb.ez unwind label %bb.ew     ; 0 uses

bb.ew:                                            ; preds = %bb.ev
  %i.vi = landingpad { ptr, i32 }
          catch ptr null
  %i.vj = extractvalue { ptr, i32 } %i.vi, 0
  call void @__clang_call_terminate(ptr %i.vj) #29
  unreachable

bb.ex:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body195

bb.ey:                                            ; preds = %.thread.i220, %.thread.i
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %.body195

bb.ez:                                            ; preds = %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.vm = load i64, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.vn = icmp eq i64 %i.vm, 0
  br i1 %i.vn, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vo = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i170, align 8, !tbaa !33
  %i.vp = load i64, ptr %i.nv, align 8, !tbaa !34
  %i.vq = and i64 %i.vp, 65536
  %i.vr = icmp ne i64 %i.vq, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.vm, ptr noundef %i.vo, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.vr)
          to label %bb.fc unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.vs = landingpad { ptr, i32 }
          catch ptr null
  %i.vt = extractvalue { ptr, i32 } %i.vs, 0
  call void @__clang_call_terminate(ptr %i.vt) #29
  unreachable

.body195:                                         ; preds = %.loopexit473, %.loopexit.split-lp474, %bb.ex, %bb.ey
  %.pn.i = phi { ptr, i32 } [ %i.vl, %bb.ey ], [ %i.vk, %bb.ex ], [ %lpad.loopexit475, %.loopexit473 ], [ %lpad.loopexit.split-lp476, %.loopexit.split-lp474 ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body171

bb.fc:                                            ; preds = %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, 1 ; 2 uses
  %i.vu = load i32, ptr %i.qb, align 8, !tbaa !173
  %i.vv = sext i32 %i.vu to i64
  %i.vw = icmp slt i64 %indvars.iv.next546, %i.vv
  br i1 %i.vw, label %bb.ej, label %.preheader, !llvm.loop !247

._crit_edge514:                                   ; preds = %bb.fw, %.preheader
  %i.vx = load ptr, ptr %32, align 8, !tbaa !41   ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.pe
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %._crit_edge514
  %i.vz = load i64, ptr %i.pe, align 8, !tbaa !33
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %._crit_edge514, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %i.wb = load ptr, ptr %i.f, align 8, !tbaa !172 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 52
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !181
  %i.we = sext i32 %i.wd to i64
  %i.wf = icmp slt i64 %indvars.iv.next552, %i.we
  br i1 %i.wf, label %bb.eg, label %._crit_edge517, !llvm.loop !248

bb.fd:                                            ; preds = %.lr.ph513, %bb.fw
  %indvars.iv548 = phi i64 [ 0, %.lr.ph513 ], [ %indvars.iv.next549, %bb.fw ] ; 2 uses
  %i.wg = load ptr, ptr %i.fg, align 8, !tbaa !100 ; 5 uses
  %i.wh = load ptr, ptr %i.qi, align 8, !tbaa !249
  %i.wi = getelementptr inbounds nuw [88 x i8], ptr %i.wh, i64 %indvars.iv548
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !61 ; 2 uses
  %.0.copyload.i.i.i176 = load i16, ptr %i.wk, align 1
  %i.wl = zext i16 %.0.copyload.i.i.i176 to i64   ; 2 uses
  %i.wm = xor i64 %i.wl, -1
  %i.wn = getelementptr inbounds i8, ptr %i.wk, i64 %i.wm
  %i.wo = load ptr, ptr %32, align 8, !tbaa !41
  %i.wp = load i64, ptr %i.nr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i179, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 2)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i181 unwind label %.loopexit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i181: ; preds = %bb.fd
  %i.wq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i179, align 8, !tbaa !33, !noalias !250 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.wq, i32 0, i32 1, i32 1), !noalias !250
  %i.wr = load i64, ptr %i.op, align 8, !tbaa !34, !noalias !253
  %i.ws = and i64 %i.wr, 65535                    ; 2 uses
  %i.wt = load i64, ptr %6, align 8, !tbaa !29, !noalias !253 ; 4 uses
  %i.wu = xor i64 %i.ws, %i.nw
  %.sroa.0.0.copyload.i.i.i.i278 = load ptr, ptr %i.oq, align 8, !tbaa !33, !noalias !250 ; 3 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.ff, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i181
  %.pn.i281 = phi i64 [ %i.wu, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i181 ], [ %i.ya, %bb.ff ]
  %.sroa.15.0.i282 = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i181 ], [ %i.xz, %bb.ff ] ; 2 uses
  %.sroa.7.0.i283 = and i64 %.pn.i281, %i.wt      ; 5 uses
  %i.wv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i278, i64 %.sroa.7.0.i283
  call void @llvm.prefetch.p0(ptr %i.wv, i32 0, i32 3, i32 1), !noalias !250
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wq, i64 %.sroa.7.0.i283
  %i.wx = load <16 x i8>, ptr %i.ww, align 1, !tbaa !33, !noalias !250 ; 2 uses
  %i.wy = icmp eq <16 x i8> %i.ob, %i.wx
  %i.wz = bitcast <16 x i1> %i.wy to i16          ; 2 uses
  %.not59.i284 = icmp eq i16 %i.wz, 0
  br i1 %.not59.i284, label %.critedge18.i292, label %.lr.ph.i285
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler6python12PyiGenerator12PrintImportsEv:bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i287 = load i64, ptr %i.xe, align 8, !tbaa !40, !noalias !250
  %i.xf = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i287, 6
  br i1 %i.xf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i300, label %.critedge.i290, !prof !128

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i300: ; preds = %.lr.ph.i285
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i288 = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i289 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i288, align 8, !tbaa !95, !noalias !250 ; 2 uses
  %i.xg = load i32, ptr %.sroa.22.0.copyload.i.i.i.i.i.i289, align 1
  %i.xh = xor i32 %i.xg, 1969516397
  %i.xi = getelementptr i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i289, i64 4
  %i.xj = load i16, ptr %i.xi, align 1
  %i.xk = zext i16 %i.xj to i32
  %i.xl = xor i32 %i.xk, 25964
  %i.xm = or i32 %i.xh, %i.xl
  %i.xn = icmp ne i32 %i.xm, 0
  %i.xo = zext i1 %i.xn to i32
  %i.xp = icmp eq i32 %i.xo, 0
  br i1 %i.xp, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i184, label %.critedge.i290

.critedge.i290:                                   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i300, %.lr.ph.i285
  %i.xq = add i16 %.sroa.034.060.i286, -1
  %i.xr = and i16 %i.xq, %.sroa.034.060.i286      ; 2 uses
  %.not.i291 = icmp eq i16 %i.xr, 0
  br i1 %.not.i291, label %.critedge18.i292, label %.lr.ph.i285

.critedge18.i292:                                 ; preds = %.critedge.i290, %bb.fe
  %i.xs = icmp eq <16 x i8> %i.wx, splat (i8 -128)
  %i.xt = bitcast <16 x i1> %i.xs to i16          ; 2 uses
  %.not52.i293 = icmp eq i16 %i.xt, 0
  br i1 %.not52.i293, label %bb.ff, label %.thread.i294, !prof !126

.thread.i294:                                     ; preds = %.critedge18.i292
  %i.xu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.xt, i1 true)
  %i.xv = zext nneg i16 %i.xu to i64
  %i.xw = add i64 %.sroa.7.0.i283, %i.xv
  %i.xx = and i64 %i.xw, %i.wt
  %i.xy = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.nu, i64 %i.xx, i64 %.sroa.15.0.i282)
          to label %bb.fg unwind label %bb.fs

bb.ff:                                            ; preds = %.critedge18.i292
  %i.xz = add i64 %.sroa.15.0.i282, 16            ; 2 uses
  %i.ya = add i64 %i.xz, %.sroa.7.0.i283
  br label %bb.fe

.loopexit:                                        ; preds = %bb.fd, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i328
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body241

.loopexit.split-lp:                               ; preds = %bb.fm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body241

bb.fg:                                            ; preds = %.thread.i294
  %.sroa.0.0.copyload.i.i.i.i23.i295 = load ptr, ptr %i.oq, align 8, !tbaa !33, !noalias !250
  %i.yb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i295, i64 %i.xy ; 4 uses
  store i64 6, ptr %i.yb, align 8, !tbaa !40
  %.sroa.7444.0..sroa.7439.8..sroa.2.0.copyload.i.i.i.i.i.i.i188.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  store ptr @.str.42, ptr %.sroa.7444.0..sroa.7439.8..sroa.2.0.copyload.i.i.i.i.i.i.i188.sroa_idx, align 8, !tbaa !95
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  store i64 %i.wp, ptr %i.yc, align 8, !tbaa !40
  %.sroa.12446.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  store ptr %i.wo, ptr %.sroa.12446.16..sroa_idx, align 8, !tbaa !95
  %.pre559.a = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i179, align 8, !tbaa !33, !noalias !256
  %.pre560 = load i64, ptr %i.op, align 8, !tbaa !34, !noalias !259
  %.pre561 = load i64, ptr %6, align 8, !tbaa !29, !noalias !259
  %.sroa.0.0.copyload.i.i.i.i247.pre = load ptr, ptr %i.oq, align 8, !tbaa !33, !noalias !256
  %.pre564 = and i64 %.pre560, 65535
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i184

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i184: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i300, %bb.fg
  %.pre-phi565 = phi i64 [ %.pre564, %bb.fg ], [ %i.ws, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i300 ]
  %.sroa.0.0.copyload.i.i.i.i247 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i247.pre, %bb.fg ], [ %.sroa.0.0.copyload.i.i.i.i278, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i300 ] ; 2 uses
  %i.yd = phi i64 [ %.pre561, %bb.fg ], [ %i.wt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i300 ] ; 3 uses
  %i.ye = phi ptr [ %.pre559.a, %bb.fg ], [ %i.wq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i300 ] ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.ye, i32 0, i32 1, i32 1), !noalias !256
  %i.yf = xor i64 %.pre-phi565, %i.ox
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fi, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i184
  %.pn.i250 = phi i64 [ %i.yf, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i184 ], [ %i.zl, %bb.fi ]
  %.sroa.15.0.i251 = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i184 ], [ %i.zk, %bb.fi ] ; 2 uses
  %.sroa.7.0.i252 = and i64 %.pn.i250, %i.yd      ; 5 uses
  %i.yg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i247, i64 %.sroa.7.0.i252
  call void @llvm.prefetch.p0(ptr %i.yg, i32 0, i32 3, i32 1), !noalias !256
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 %.sroa.7.0.i252
  %i.yi = load <16 x i8>, ptr %i.yh, align 1, !tbaa !33, !noalias !256 ; 2 uses
  %i.yj = icmp eq <16 x i8> %i.pb, %i.yi
  %i.yk = bitcast <16 x i1> %i.yj to i16          ; 2 uses
  %.not59.i253 = icmp eq i16 %i.yk, 0
  br i1 %.not59.i253, label %.critedge18.i261, label %.lr.ph.i254

.lr.ph.i254:                                      ; preds = %bb.fh, %.critedge.i259
  %.sroa.034.060.i255 = phi i16 [ %i.zc, %.critedge.i259 ], [ %i.yk, %bb.fh ] ; 3 uses
  %i.yl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060.i255, i1 true)
  %i.ym = zext nneg i16 %i.yl to i64
  %i.yn = add i64 %.sroa.7.0.i252, %i.ym
  %i.yo = and i64 %i.yn, %i.yd
  %i.yp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i247, i64 %i.yo ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i256 = load i64, ptr %i.yp, align 8, !tbaa !40, !noalias !256
  %i.yq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i256, 10
  br i1 %i.yq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i269, label %.critedge.i259, !prof !128

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i269: ; preds = %.lr.ph.i254
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i257 = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i258 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i257, align 8, !tbaa !95, !noalias !256 ; 2 uses
  %i.yr = load i64, ptr %.sroa.22.0.copyload.i.i.i.i.i.i258, align 1
  %i.ys = xor i64 %i.yr, 7020095180673216101
  %i.yt = getelementptr i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i258, i64 8
  %i.yu = load i16, ptr %i.yt, align 1
  %i.yv = zext i16 %i.yu to i64
  %i.yw = xor i64 %i.yv, 29555
  %i.yx = or i64 %i.ys, %i.yw
  %i.yy = icmp ne i64 %i.yx, 0
  %i.yz = zext i1 %i.yy to i32
  %i.za = icmp eq i32 %i.yz, 0
  br i1 %i.za, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i186, label %.critedge.i259

.critedge.i259:                                   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i269, %.lr.ph.i254
  %i.zb = add i16 %.sroa.034.060.i255, -1
  %i.zc = and i16 %i.zb, %.sroa.034.060.i255      ; 2 uses
  %.not.i260 = icmp eq i16 %i.zc, 0
  br i1 %.not.i260, label %.critedge18.i261, label %.lr.ph.i254

.critedge18.i261:                                 ; preds = %.critedge.i259, %bb.fh
  %i.zd = icmp eq <16 x i8> %i.yi, splat (i8 -128)
  %i.ze = bitcast <16 x i1> %i.zd to i16          ; 2 uses
  %.not52.i262 = icmp eq i16 %i.ze, 0
  br i1 %.not52.i262, label %bb.fi, label %.thread.i263, !prof !126

.thread.i263:                                     ; preds = %.critedge18.i261
  %i.zf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ze, i1 true)
  %i.zg = zext nneg i16 %i.zf to i64
  %i.zh = add i64 %.sroa.7.0.i252, %i.zg
  %i.zi = and i64 %i.zh, %i.yd
  %i.zj = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ow, i64 %i.zi, i64 %.sroa.15.0.i251)
          to label %bb.fj unwind label %bb.fs

bb.fi:                                            ; preds = %.critedge18.i261
  %i.zk = add i64 %.sroa.15.0.i251, 16            ; 2 uses
  %i.zl = add i64 %i.zk, %.sroa.7.0.i252
  br label %bb.fh

bb.fj:                                            ; preds = %.thread.i263
  %.sroa.0.0.copyload.i.i.i.i23.i264 = load ptr, ptr %i.oq, align 8, !tbaa !33, !noalias !256
  %i.zm = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i264, i64 %i.zj ; 4 uses
  store i64 10, ptr %i.zm, align 8, !tbaa !40
  %.sroa.17448.32..sroa.7439.8..sroa.2.0.copyload.i.i.i.i.i.i.1.i187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  store ptr @.str.45, ptr %.sroa.17448.32..sroa.7439.8..sroa.2.0.copyload.i.i.i.i.i.i.1.i187.sroa_idx, align 8, !tbaa !95
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  store i64 %i.wl, ptr %i.zn, align 8, !tbaa !40
  %.sroa.22450.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zm, i64 24
  store ptr %i.wn, ptr %.sroa.22450.48..sroa_idx, align 8, !tbaa !95
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i186

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i186: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i269, %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.zo = getelementptr inbounds nuw i8, ptr %i.wg, i64 160 ; 6 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !221, !noalias !262 ; 7 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.wg, i64 168 ; 3 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !224, !noalias !262
  %.not.i.i.i232 = icmp eq ptr %i.zp, %i.zr
  br i1 %.not.i.i.i232, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i186
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  store i64 0, ptr %i.zt, align 8, !noalias !262
  store i64 %i.pc, ptr %i.zp, align 8, !tbaa !225, !noalias !262
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.zs, align 8, !tbaa !227, !noalias !262
  %i.zu = load ptr, ptr %i.zo, align 8, !tbaa !221, !noalias !262
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 32
  store ptr %i.zv, ptr %i.zo, align 8, !tbaa !221, !noalias !262
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i233

bb.fl:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i186
  %i.zw = getelementptr inbounds nuw i8, ptr %i.wg, i64 152 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !228 ; 5 uses
  %i.zy = ptrtoint ptr %i.zp to i64
  %i.zz = ptrtoint ptr %i.zx to i64               ; 2 uses
  %i.aaa = sub i64 %i.zy, %i.zz                   ; 3 uses
  %i.aab = icmp eq i64 %i.aaa, 9223372036854775776
  br i1 %i.aab, label %bb.fm, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i328

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #31
          to label %.noexc352 unwind label %.loopexit.split-lp

.noexc352:                                        ; preds = %bb.fm
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i328: ; preds = %bb.fl
  %i.aac = ashr exact i64 %i.aaa, 5               ; 3 uses
  %.sroa.speculated.i.i329 = call i64 @llvm.umax.i64(i64 %i.aac, i64 1)
  %i.aad = add nsw i64 %.sroa.speculated.i.i329, %i.aac ; 2 uses
  %i.aae = icmp ult i64 %i.aad, %i.aac
  %i.aaf = call i64 @llvm.umin.i64(i64 %i.aad, i64 288230376151711743)
  %i.aag = select i1 %i.aae, i64 288230376151711743, i64 %i.aaf ; 2 uses
  %i.aah = shl nuw nsw i64 %i.aag, 5
  %i.aai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aah) #32
          to label %.noexc353 unwind label %.loopexit ; 5 uses

.noexc353:                                        ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i328
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aaa ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  store i64 0, ptr %i.aal, align 8
  store i64 %i.pc, ptr %i.aaj, align 8, !tbaa !225
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.aak, align 8, !tbaa !227
  %.not10.i.i.i.i331 = icmp eq ptr %i.zx, %i.zp
  br i1 %.not10.i.i.i.i331, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i349, label %.lr.ph.i.i.i.i332

.lr.ph.i.i.i.i332:                                ; preds = %.noexc353, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i337
  %.012.i.i.i.i333 = phi ptr [ %i.aat, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i337 ], [ %i.aai, %.noexc353 ] ; 5 uses
  %.0911.i.i.i.i334 = phi ptr [ %i.aas, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i337 ], [ %i.zx, %.noexc353 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.aam = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i333, i64 24
  %i.aan = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i334, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i333, i8 0, i64 24, i1 false), !alias.scope !265, !noalias !268
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !234, !alias.scope !268, !noalias !265
  store ptr %i.aao, ptr %i.aam, align 8, !tbaa !234, !alias.scope !265, !noalias !268
  %i.aap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i334, i64 16 ; 2 uses
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !237, !alias.scope !268, !noalias !265 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i335 = icmp eq ptr %i.aaq, null
  br i1 %.not.i.i.not.i.i.i.i.i.i335, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i337, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i336

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i336: ; preds = %.lr.ph.i.i.i.i332
  %i.aar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i333, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i333, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i334, i64 16, i1 false), !tbaa.struct !238, !alias.scope !270
  store ptr %i.aaq, ptr %i.aar, align 8, !tbaa !237, !alias.scope !265, !noalias !268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aap, i8 0, i64 16, i1 false), !alias.scope !268, !noalias !265
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i337

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i337: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i336, %.lr.ph.i.i.i.i332
  %i.aas = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i334, i64 32 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i333, i64 32 ; 2 uses
  %.not.i.i.i.i338 = icmp eq ptr %i.aas, %i.zp
  br i1 %.not.i.i.i.i338, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i349, label %.lr.ph.i.i.i.i332, !llvm.loop !240

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i349: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i337, %.noexc353
  %.0.lcssa.i.i.i.i340 = phi ptr [ %i.aai, %.noexc353 ], [ %i.aat, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i337 ]
  %i.aau = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i340, i64 32
  %.not.i26.i351 = icmp eq ptr %i.zx, null
  br i1 %.not.i26.i351, label %.noexc240, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i349
  %i.aav = load ptr, ptr %i.zq, align 8, !tbaa !224
  %i.aaw = ptrtoint ptr %i.aav to i64
  %i.aax = sub i64 %i.aaw, %i.zz
  call void @_ZdlPvm(ptr noundef nonnull %i.zx, i64 noundef %i.aax) #30
  br label %.noexc240

.noexc240:                                        ; preds = %bb.fn, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i349
  store ptr %i.aai, ptr %i.zw, align 8, !tbaa !228
  store ptr %i.aau, ptr %i.zo, align 8, !tbaa !221
  %i.aay = getelementptr inbounds nuw [32 x i8], ptr %i.aai, i64 %i.aag
  store ptr %i.aay, ptr %i.zq, align 8, !tbaa !224
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i233

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i233: ; preds = %.noexc240, %bb.fk
  store ptr %i.wg, ptr %i.pd, align 8, !tbaa !241, !alias.scope !271
  store i8 1, ptr %1, align 8, !tbaa !245, !alias.scope !271
  store i32 65792, ptr %.sroa.4.0..sroa_idx.i234, align 1
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx.i235, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %i.wg, i64 50, ptr nonnull @.str.44, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %2)
          to label %bb.fo unwind label %bb.fr

bb.fo:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i233
  %i.aaz = load ptr, ptr %i.zo, align 8, !tbaa !221 ; 2 uses
  %i.aba = getelementptr inbounds i8, ptr %i.aaz, i64 -32 ; 3 uses
  store ptr %i.aba, ptr %i.zo, align 8, !tbaa !221
  %i.abb = getelementptr inbounds i8, ptr %i.aaz, i64 -16
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i.i.i.i239 = icmp eq ptr %i.abc, null
  br i1 %.not.i.i.i.i.i.i239, label %bb.ft, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.abd = invoke noundef zeroext i1 %i.abc(ptr noundef nonnull align 8 dereferenceable(32) %i.aba, ptr noundef nonnull align 8 dereferenceable(32) %i.aba, i32 noundef 3)
          to label %bb.ft unwind label %bb.fq     ; 0 uses

bb.fq:                                            ; preds = %bb.fp
  %i.abe = landingpad { ptr, i32 }
          catch ptr null
  %i.abf = extractvalue { ptr, i32 } %i.abe, 0
  call void @__clang_call_terminate(ptr %i.abf) #29
  unreachable

bb.fr:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i233
  %i.abg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.body241

bb.fs:                                            ; preds = %.thread.i294, %.thread.i263
  %i.abh = landingpad { ptr, i32 }
          cleanup
  br label %.body241

bb.ft:                                            ; preds = %bb.fp, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.abi = load i64, ptr %6, align 8, !tbaa !29   ; 2 uses
  %i.abj = icmp eq i64 %i.abi, 0
  br i1 %i.abj, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.abk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i179, align 8, !tbaa !33
  %i.abl = load i64, ptr %i.op, align 8, !tbaa !34
  %i.abm = and i64 %i.abl, 65536
  %i.abn = icmp ne i64 %i.abm, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.abi, ptr noundef %i.abk, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.abn)
          to label %bb.fw unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.abo = landingpad { ptr, i32 }
          catch ptr null
  %i.abp = extractvalue { ptr, i32 } %i.abo, 0
  call void @__clang_call_terminate(ptr %i.abp) #29
  unreachable

.body241:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.fr, %bb.fs
  %.pn.i180 = phi { ptr, i32 } [ %i.abh, %bb.fs ], [ %i.abg, %bb.fr ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.body171

bb.fw:                                            ; preds = %bb.fu, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %i.abq = load i32, ptr %i.qf, align 4, !tbaa !175
  %i.abr = sext i32 %i.abq to i64
  %i.abs = icmp slt i64 %indvars.iv.next549, %i.abr
  br i1 %i.abs, label %bb.fd, label %._crit_edge514, !llvm.loop !274

.body171:                                         ; preds = %.body241, %.body195
  %.pn64 = phi { ptr, i32 } [ %.pn.i, %.body195 ], [ %.pn.i180, %.body241 ] ; 2 uses
  %i.abt = load ptr, ptr %32, align 8, !tbaa !41  ; 2 uses
  %i.abu = icmp eq ptr %i.abt, %i.pe
  br i1 %i.abu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %.body171
  %i.abv = load i64, ptr %i.pe, align 8, !tbaa !33
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abt, i64 noundef %i.abw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %.body171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.ei
  %.pn64.pn = phi { ptr, i32 } [ %i.qk, %bb.ei ], [ %.pn64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %.pn64, %.body171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %.body

bb.fx:                                            ; preds = %bb.ee, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.abx = load i64, ptr %24, align 8, !tbaa !29
  %i.aby = icmp eq i64 %i.abx, 0
  br i1 %i.aby, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %24, ptr %5, align 8, !tbaa !275
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 32, ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i194 unwind label %bb.fz

.noexc.i194:                                      ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.abz = load i64, ptr %24, align 8, !tbaa !29
  %i.aca = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !33
  %i.acb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.acc = load i64, ptr %i.acb, align 8, !tbaa !34
  %i.acd = and i64 %i.acc, 65536
  %i.ace = icmp ne i64 %i.acd, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %i.abz, ptr noundef %i.aca, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ace)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev.exit unwind label %bb.fz

bb.fz:                                            ; preds = %.noexc.i194, %bb.fy
  %i.acf = landingpad { ptr, i32 }
          catch ptr null
  %i.acg = extractvalue { ptr, i32 } %i.acf, 0
  call void @__clang_call_terminate(ptr %i.acg) #29
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev.exit: ; preds = %bb.fx, %.noexc.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  ret void

.body:                                            ; preds = %bb.bi, %bb.bu, %bb.cg, %bb.cp, %bb.dc, %bb.dn, %bb.dy, %bb.ec, %bb.be, %bb.dt, %bb.dh, %bb.cw, %bb.ck, %bb.ca, %bb.bo, %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %bb.r, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn68.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.bl, %bb.r ], [ %i.qj, %bb.eh ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %i.bq, %bb.t ], [ %.pn64.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %i.hg, %bb.bi ], [ %i.hx, %bb.bo ], [ %i.ii, %bb.bu ], [ %i.it, %bb.ca ], [ %i.je, %bb.cg ], [ %i.jp, %bb.ck ], [ %i.ka, %bb.cp ], [ %i.kr, %bb.cw ], [ %i.lf, %bb.dc ], [ %i.lq, %bb.dh ], [ %i.me, %bb.dn ], [ %i.ms, %bb.dt ], [ %i.nd, %bb.dy ], [ %i.gw, %bb.be ], [ %i.pg, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %common.resume
}

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE:bb.a
  %i.dc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.db, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = add nuw nsw i64 %i.cx, %i.dd
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.t:                                             ; preds = %bb.r, %bb.q
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.cp, i64 noundef %i.w, i64 noundef %i.cn)
  br label %bb.u

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.s, %bb.p
  %.2.i = phi i64 [ %i.de, %bb.s ], [ %i.cv, %bb.p ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.cp, ptr %i.df, align 1, !tbaa !576
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dg, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.t
  %i.dh = add i16 %.sroa.055.062, -1
  %i.di = and i16 %i.dh, %.sroa.055.062           ; 2 uses
  %.not = icmp eq i16 %i.di, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #18

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.87") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !40 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !95
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34, !noalias !578
  %i.h = and i64 %i.g, 65535
  %i.i = load i64, ptr %1, align 8, !tbaa !29, !noalias !578 ; 3 uses
  %i.j = lshr i64 %i.e, 7
  %i.k = xor i64 %i.h, %i.j
  %i.l = trunc i64 %i.e to i8
  %i.m = and i8 %i.l, 127
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !33 ; 2 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.k, %bb.a ], [ %i.ar, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.i                 ; 5 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !33 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.q, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not59 = icmp eq i16 %i.w, 0
  br i1 %.not59, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.034.060 = phi i16 [ %i.af, %.critedge ], [ %i.w, %bb.b ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.7.0, %i.y
  %i.aa = and i64 %i.z, %i.i                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.aa ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !40
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !95
  %i.ac = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ac, label %bb.c, label %.critedge, !prof !128

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.r, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i)
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ae = add i16 %.sroa.034.060, -1
  %i.af = and i16 %i.ae, %.sroa.034.060           ; 2 uses
  %.not = icmp eq i16 %i.af, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ag = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not52 = icmp eq i16 %i.ah, 0
  br i1 %.not52, label %bb.d, label %.thread, !prof !126

.thread:                                          ; preds = %.critedge18
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.aq = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.at, align 8, !tbaa !133
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #8

declare void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296), i64, ptr, ptr, i64, ptr noundef byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !245, !range !98, !noundef !99
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !581
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !221  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !221
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !237  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit: ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_SC_NSK_18container_internal10StringHashENSM_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !228    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #31
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = load i64, ptr %2, align 8, !tbaa !225
  store i64 %i.u, ptr %i.q, align 8, !tbaa !225
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.s, align 8, !tbaa !234
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.r, align 8, !tbaa !237
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !583, !noalias !586
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !234, !alias.scope !586, !noalias !583
  store ptr %i.x, ptr %i.v, align 8, !tbaa !234, !alias.scope !583, !noalias !586
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !237, !alias.scope !586, !noalias !583 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !238, !alias.scope !588
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !237, !alias.scope !583, !noalias !586
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !586, !noalias !583
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !240

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !589, !noalias !592
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !234, !alias.scope !592, !noalias !589
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !234, !alias.scope !589, !noalias !592
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !237, !alias.scope !592, !noalias !589 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !238, !alias.scope !594
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !237, !alias.scope !589, !noalias !592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !592, !noalias !589
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !240

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ], [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !224
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #30
  br label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !228
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !221
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !40, !noalias !601
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !95, !noalias !601
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.a = load ptr, ptr %1, align 8, !tbaa !569, !noalias !605
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !605
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !605
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.b, align 8, !noalias !605
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !605 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !605
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i

_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !40, !noalias !605
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !95, !noalias !605
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %0, align 8, !tbaa !40, !alias.scope !601
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !95, !alias.scope !601
  store i8 0, ptr %i.h, align 8, !tbaa !606, !alias.scope !605
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !35, !alias.scope !605
  store i8 0, ptr %i.j, align 8, !alias.scope !605
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.k, align 8, !tbaa !38, !alias.scope !605
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.l, align 8, !tbaa !608, !alias.scope !605
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit: ; preds = %bb.a, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i
  %.sink.i.i = phi i8 [ 1, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink.i.i, ptr %i.m, align 8, !tbaa !616, !alias.scope !605
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_EUlSA_E_, ptr %0, align 8, !tbaa !618
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !227
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !225
  store i64 %i.a, ptr %0, align 8, !tbaa !225
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !29
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !33 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !40 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !95
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !40
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !95
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2025051216strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag:bb.a
  %i.ad = load ptr, ptr %.012.i.i.i.i.i.prol, align 8, !tbaa !654
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !656
  store i64 %i.af, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ai = add nsw i64 %.0910.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol, !llvm.loop !661

.lr.ph.i.i.i.i.i55.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i55.prol, %.lr.ph.i.i.i.i.i55.preheader
  %.012.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i55.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i55.prol ]
  %.0910.i.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i55.prol ]
  %i.aj = icmp ult i64 %i.d, 4
  br i1 %i.aj, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i55 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i55 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i55 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 2 uses
  %i.ak = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !654
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !656
  store i64 %i.am, ptr %.0811.i.i.i.i.i, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !654
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !656
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.1, align 8, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !654
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !656
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.2, align 8, !tbaa !95
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !654
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !656
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.3, align 8, !tbaa !95
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.be = add nsw i64 %.0910.i.i.i.i.i, -4
  %i.bf = icmp sgt i64 %.0910.i.i.i.i.i, 4
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i55, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !663

_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bg, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.bh = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !654
  %i.bi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !656
  store i64 %i.bj, ptr %.011.i.i.i.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store ptr %i.bh, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bl, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !664

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !659
  br label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bn = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bo = sub nuw nsw i64 %i.d, %i.n
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bo ; 3 uses
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !659
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i57 ], [ %i.bp, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i57 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i58, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i59, i64 16, i1 false), !tbaa.struct !132
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 16
  %.not.i.i.i.i.i60 = icmp eq ptr %i.bq, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !660

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre107 = load ptr, ptr %i.g, align 8, !tbaa !659
  br label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62: ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit
  %i.bs = phi ptr [ %.pre107, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit ], [ %i.bp, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.m
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !659
  %i.bu = ashr exact i64 %i.m, 4                  ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i64.preheader, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol

.lr.ph.i.i.i.i.i64.prol:                          ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64.prol
  %.012.i.i.i.i.i65.prol = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ], [ %2, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0811.i.i.i.i.i66.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ], [ %1, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0910.i.i.i.i.i67.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i64.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i64.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i64.prol ], [ 0, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.bw = load ptr, ptr %.012.i.i.i.i.i65.prol, align 8, !tbaa !654
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !656
  store i64 %i.by, ptr %.0811.i.i.i.i.i66.prol, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol, align 8, !tbaa !95
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 16 ; 2 uses
  %i.cb = add nsw i64 %.0910.i.i.i.i.i67.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol, !llvm.loop !665

.lr.ph.i.i.i.i.i64.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i64.prol, %.lr.ph.i.i.i.i.i64.preheader
  %.012.i.i.i.i.i65.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ]
  %.0811.i.i.i.i.i66.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ]
  %.0910.i.i.i.i.i67.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i64.prol ]
  %i.cc = icmp ult i64 %i.bu, 4
  br i1 %i.cc, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64
  %.012.i.i.i.i.i65 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i64 ], [ %.012.i.i.i.i.i65.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i64 ], [ %.0811.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i67 = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i64 ], [ %.0910.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 2 uses
  %i.cd = load ptr, ptr %.012.i.i.i.i.i65, align 8, !tbaa !654
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !656
  store i64 %i.cf, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68, align 8, !tbaa !95
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 16
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !654
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !656
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 24
  store ptr %i.ci, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.1, align 8, !tbaa !95
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 32
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !654
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !656
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 40
  store ptr %i.cn, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.2, align 8, !tbaa !95
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 48
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !654
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 56
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !656
  store i64 %i.cu, ptr %i.cr, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 56
  store ptr %i.cs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.3, align 8, !tbaa !95
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 64
  %i.cx = add nsw i64 %.0910.i.i.i.i.i67, -4
  %i.cy = icmp sgt i64 %.0910.i.i.i.i.i67, 4
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !663

bb.h:                                             ; preds = %bb.b
  %i.cz = load ptr, ptr %0, align 8, !tbaa !371   ; 5 uses
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = sub i64 %i.j, %i.da
  %i.dc = ashr exact i64 %i.db, 4                 ; 4 uses
  %i.dd = sub nsw i64 576460752303423487, %i.dc
  %i.de = icmp ult i64 %i.dd, %i.d
  br i1 %i.de, label %bb.i, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #31
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %i.d)
  %i.df = add nsw i64 %.sroa.speculated.i, %i.dc  ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dc
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 2 uses
  %4 = shl nuw nsw i64 %i.di, 4
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #32 ; 4 uses
  %.not.i = icmp eq ptr %i.cz, %1
  br i1 %.not.i, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i71 ], [ %5, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i71 ], [ %i.cz, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i72, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i73, i64 16, i1 false), !tbaa.struct !132
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 16 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.dj, %1
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71, !llvm.loop !660

.lr.ph.i.i.i.i77.preheader:                       ; preds = %.lr.ph.i.i.i.i.i71, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit
  %.011.i.i.i.i78.ph = phi ptr [ %5, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.dk, %.lr.ph.i.i.i.i.i71 ]
  br label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %.lr.ph.i.i.i.i77.preheader, %.lr.ph.i.i.i.i77
  %.011.i.i.i.i78 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i77 ], [ %.011.i.i.i.i78.ph, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %.0810.i.i.i.i79 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i77 ], [ %2, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %.0810.i.i.i.i79, align 8, !tbaa !654
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !656
  store i64 %i.dn, ptr %.011.i.i.i.i78, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 8
  store ptr %i.dl, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 16 ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.dp, %3
  br i1 %.not.i.i.i.i80, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, label %.lr.ph.i.i.i.i77, !llvm.loop !664

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82: ; preds = %.lr.ph.i.i.i.i77
  %.not11.i.i.i.i.i83 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i83, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84

.lr.ph.i.i.i.i.i84:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, %.lr.ph.i.i.i.i.i84
  %.013.i.i.i.i.i85 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i84 ], [ %i.dq, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i86 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i84 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i85, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i86, i64 16, i1 false), !tbaa.struct !132
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i86, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i85, i64 16 ; 2 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.dr, %i.h
  br i1 %.not.i.i.i.i.i87, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84, !llvm.loop !660

_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89: ; preds = %.lr.ph.i.i.i.i.i84, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82
  %.0.lcssa.i.i.i.i.i88 = phi ptr [ %i.dq, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ], [ %i.ds, %.lr.ph.i.i.i.i.i84 ]
  %.not.i90 = icmp eq ptr %i.cz, null
  br i1 %.not.i90, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89
  %i.dt = load ptr, ptr %i.e, align 8, !tbaa !373
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dv) #30
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, %bb.j
  store ptr %5, ptr %0, align 8, !tbaa !371
  store ptr %.0.lcssa.i.i.i.i.i88, ptr %i.g, align 8, !tbaa !659
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.di
  store ptr %i.dw, ptr %i.e, align 8, !tbaa !373
  br label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit: ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64, %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2025051213base_internal18ThrowStdOutOfRangeEPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer8AnnotateINS0_19EnumValueDescriptorEEEvSt17basic_string_viewIcSt11char_traitsIcEES8_PKT_St8optionalINS1_19AnnotationCollector8SemanticEE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef %5, i64 %6) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.174", align 8   ; 10 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !634
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZNK6google8protobuf19EnumValueDescriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %7)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !666
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !363
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38
  store i64 %i.l, ptr %8, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_ZN6google8protobuf2io7Printer8AnnotateESt17basic_string_viewIcSt11char_traitsIcEES6_S6_RKSt6vectorIiSaIiEESt8optionalINS1_19AnnotationCollector8SemanticEE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %7, align 8, !tbaa !635    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !637
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %7, align 8, !tbaa !635    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIiSaIiEED2Ev.exit13, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !637
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit13

_ZNSt6vectorIiSaIiEED2Ev.exit13:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %i.t
}

declare void @_ZNK6google8protobuf19EnumValueDescriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #8

declare void @_ZN6google8protobuf8compiler6python27NamePrefixedWithNestedTypesINS0_10DescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_St17basic_string_viewIcS8_E(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(160), i64, ptr) local_unnamed_addr #8

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer8AnnotateINS0_10DescriptorEEEvSt17basic_string_viewIcSt11char_traitsIcEEPKT_St8optionalINS1_19AnnotationCollector8SemanticEE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, ptr noundef %3, i64 %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.174", align 8   ; 10 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !634
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6google8protobuf2io7Printer8AnnotateINS0_10DescriptorEEEvSt17basic_string_viewIcSt11char_traitsIcEES8_PKT_St8optionalINS1_19AnnotationCollector8SemanticEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZNK6google8protobuf10Descriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !390
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  store i64 %i.j, ptr %6, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.h, ptr %i.k, align 8
  invoke void @_ZN6google8protobuf2io7Printer8AnnotateESt17basic_string_viewIcSt11char_traitsIcEES6_S6_RKSt6vectorIiSaIiEESt8optionalINS1_19AnnotationCollector8SemanticEE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, i64 %1, ptr %2, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %5, align 8, !tbaa !635    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !637
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN6google8protobuf2io7Printer8AnnotateINS0_10DescriptorEEEvSt17basic_string_viewIcSt11char_traitsIcEES8_PKT_St8optionalINS1_19AnnotationCollector8SemanticEE.exit

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 8, !tbaa !635    ; 3 uses
  %.not.i.i.i12.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i12.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit13.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !637
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit13.i

_ZNSt6vectorIiSaIiEED2Ev.exit13.i:                ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.r

_ZN6google8protobuf2io7Printer8AnnotateINS0_10DescriptorEEEvSt17basic_string_viewIcSt11char_traitsIcEES8_PKT_St8optionalINS1_19AnnotationCollector8SemanticEE.exit: ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

declare void @_ZNK6google8protobuf10Descriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_2025051215AsciiStrToUpperEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer5PrintIJA14_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(14) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 11 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 12 uses
  %7 = alloca %"struct.std::pair.87", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  store i64 %i.a, ptr %5, align 16, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  store i64 %i.f, ptr %i.c, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.h, align 16, !tbaa !129
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.61, ptr %i.i, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader unwind label %bb.b

end_hunk_3
