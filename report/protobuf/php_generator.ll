inline.NumInlined: 4892
inline.NumDeleted: 1491
begin_hunk_0_@_ZNK6google8protobuf8compiler3php9Generator8GenerateEPKNS0_14FileDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.sroa.013.026.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE5beginEv.exit.i.i.i.i.i ], [ %.sroa.013.1.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i ]
  %i.he = load ptr, ptr %.sroa.8.027.i.i.i.i.i, align 8, !tbaa !44
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.8.027.i.i.i.i.i, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !40 ; 3 uses
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %.loopexit277.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE14const_iteratorppEv.exit.i.i.i.i.i
  %i.hi = load i64, ptr %i.hd, align 8, !tbaa !40
  %i.hj = icmp ult i64 %i.hi, %i.hg
  br i1 %i.hj, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i: ; preds = %bb.av
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.hc, ptr %i.he, i64 %i.hg)
  %i.hk = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.hk, label %.loopexit277.i.i.i.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i, %bb.av
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i.i.i.i.i, i64 1 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.8.027.i.i.i.i.i, i64 32 ; 2 uses
  %i.hn = load i8, ptr %i.hl, align 1, !tbaa !96  ; 2 uses
  %i.ho = icmp slt i8 %i.hn, -1
  br i1 %i.ho, label %.lr.ph.i.i.i12.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i12.i.i.i.i.i:                         ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i, %.lr.ph.i.i.i12.i.i.i.i.i
  %i.hp = phi ptr [ %i.hz, %.lr.ph.i.i.i12.i.i.i.i.i ], [ %i.hm, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i ]
  %i.hq = phi ptr [ %i.hy, %.lr.ph.i.i.i12.i.i.i.i.i ], [ %i.hl, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i ] ; 2 uses
  %i.hr = load <16 x i8>, ptr %i.hq, align 1, !tbaa !52
  %i.hs = icmp slt <16 x i8> %i.hr, splat (i8 -1)
  %i.ht = bitcast <16 x i1> %i.hs to i16
  %i.hu = zext i16 %i.ht to i32
  %i.hv = add nuw nsw i32 %i.hu, 1
  %i.hw = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hv, i1 true)
  %i.hx = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hx ; 3 uses
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.hx ; 2 uses
  %i.ia = load i8, ptr %i.hy, align 1, !tbaa !96  ; 2 uses
  %i.ib = icmp slt i8 %i.ia, -1
  br i1 %i.ib, label %.lr.ph.i.i.i12.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i, !llvm.loop !119

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i12.i.i.i.i.i, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i
  %.sroa.013.1.i.i.i.i.i = phi ptr [ %i.hl, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i ], [ %i.hy, %.lr.ph.i.i.i12.i.i.i.i.i ]
  %.sroa.8.1.i.i.i.i.i = phi ptr [ %i.hm, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i ], [ %i.hz, %.lr.ph.i.i.i12.i.i.i.i.i ]
  %i.ic = phi i8 [ %i.hn, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i ], [ %i.ia, %.lr.ph.i.i.i12.i.i.i.i.i ]
  %i.id = icmp eq i8 %i.ic, -1
  br i1 %i.id, label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115NeedsUnwrappingEPKNS0_14FileDescriptorERKNS2_7OptionsE.exit.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE14const_iteratorppEv.exit.i.i.i.i.i, !prof !118

bb.aw:                                            ; preds = %bb.al
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.ax:                                            ; preds = %_ZN6google8protobuf17FileDescriptorSetC2Ev.exit.i.i.i.i
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ay:                                            ; preds = %.loopexit279.i.i.i.i
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.az:                                            ; preds = %bb.ao
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i
  %.sroa.9.0316.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i ], [ %.sroa.9.0316.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0234.0315.i.i.i.i = phi ptr [ %.sroa.0234.1.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i ], [ %.sroa.0234.0315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %i.ii = load ptr, ptr %.sroa.9.0316.i.i.i.i, align 8, !tbaa !100 ; 18 uses
  %i.ij = load i64, ptr %20, align 8, !tbaa !93, !noalias !121 ; 6 uses
  %i.ik = icmp ne i64 %i.ij, 0
  call void @llvm.assume(i1 %i.ik)
  %i.il = icmp ult i64 %i.ij, 2
  br i1 %i.il, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i
  %i.im = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !94, !noalias !128
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.im, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !51, !noalias !128
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.in = load ptr, ptr %i.dt, align 8, !tbaa !100, !noalias !128 ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.ii
  br i1 %i.io, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread249.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ip = ptrtoint ptr %i.in to i64               ; 2 uses
  %i.iq = xor i64 %i.ip, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ir = mul i64 %i.iq, -2543921745674291987
  %i.is = call noundef i64 @llvm.bswap.i64(i64 %i.ir)
  %i.it = xor i64 %i.is, %i.ip
  %i.iu = mul i64 %i.it, 6679450291180483821
  %i.iv = lshr i64 %i.iu, 56
  %i.iw = trunc nuw i64 %i.iv to i8
  %i.ix = and i8 %i.iw, 127
  %i.iy = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.iz = xor i64 %i.iy, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ja = mul i64 %i.iz, -2543921745674291987
  %i.jb = call noundef i64 @llvm.bswap.i64(i64 %i.ja)
  %i.jc = xor i64 %i.jb, %i.iy
  %i.jd = mul i64 %i.jc, -2543921745674291987
  %i.je = call noundef i64 @llvm.bswap.i64(i64 %i.jd)
  %i.jf = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.je, i8 noundef signext %i.ix)
          to label %.noexc91.i.i.i.i unwind label %bb.bu

.noexc91.i.i.i.i:                                 ; preds = %bb.bd
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !52, !noalias !128
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.jf
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread.i.i.i.i

bb.be:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jh = load ptr, ptr %i.dt, align 8, !tbaa !52, !noalias !131 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.jh, i32 0, i32 1, i32 1), !noalias !131
  %i.ji = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.jj = xor i64 %i.ji, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.jk = mul i64 %i.jj, -2543921745674291987
  %i.jl = call noundef i64 @llvm.bswap.i64(i64 %i.jk)
  %i.jm = xor i64 %i.jl, %i.ji
  %i.jn = mul i64 %i.jm, -2543921745674291987
  %i.jo = call noundef i64 @llvm.bswap.i64(i64 %i.jn) ; 3 uses
  %i.jp = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !94, !noalias !134
  %i.jq = and i64 %i.jp, 65535
  %i.jr = lshr i64 %i.jo, 7
  %i.js = xor i64 %i.jq, %i.jr
  %i.jt = trunc i64 %i.jo to i8
  %i.ju = and i8 %i.jt, 127
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !52, !noalias !131 ; 2 uses
  %i.jv = insertelement <16 x i8> poison, i8 %i.ju, i64 0
  %i.jw = shufflevector <16 x i8> %i.jv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  %.pn.i.i.i.i.i = phi i64 [ %i.js, %bb.be ], [ %i.ku, %bb.bg ]
  %.sroa.15.0.i.i.i.i.i = phi i64 [ 0, %bb.be ], [ %i.kt, %bb.bg ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.ij ; 5 uses
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.jx, i32 0, i32 3, i32 1), !noalias !131
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.sroa.7.0.i.i.i.i.i
  %i.jz = load <16 x i8>, ptr %i.jy, align 1, !tbaa !52, !noalias !131 ; 2 uses
  %i.ka = icmp eq <16 x i8> %i.jw, %i.jz
  %i.kb = bitcast <16 x i1> %i.ka to i16          ; 2 uses
  %.not58.i.i.i.i.i = icmp eq i16 %i.kb, 0
  br i1 %.not58.i.i.i.i.i, label %.critedge18.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bf, %.critedge.i.i.i.i.i
  %.sroa.033.059.i.i.i.i.i = phi i16 [ %i.kk, %.critedge.i.i.i.i.i ], [ %i.kb, %bb.bf ] ; 3 uses
  %i.kc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i.i.i.i.i, i1 true)
  %i.kd = zext nneg i16 %i.kc to i64
  %i.ke = add i64 %.sroa.7.0.i.i.i.i.i, %i.kd
  %i.kf = and i64 %i.ke, %i.ij
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.kf ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !100, !noalias !131
  %i.ki = icmp eq ptr %i.kh, %i.ii
  br i1 %i.ki, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread249.i.i.i.i, label %.critedge.i.i.i.i.i, !prof !137

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.kj = add i16 %.sroa.033.059.i.i.i.i.i, -1
  %i.kk = and i16 %i.kj, %.sroa.033.059.i.i.i.i.i ; 2 uses
  %.not.i163.i.i.i.i = icmp eq i16 %i.kk, 0
  br i1 %.not.i163.i.i.i.i, label %.critedge18.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.critedge18.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i, %bb.bf
  %i.kl = icmp eq <16 x i8> %i.jz, splat (i8 -128)
  %i.km = bitcast <16 x i1> %i.kl to i16          ; 2 uses
  %.not51.i.i.i.i.i = icmp eq i16 %i.km, 0
  br i1 %.not51.i.i.i.i.i, label %bb.bg, label %.thread.i.i.i.i.i.a, !prof !118

.thread.i.i.i.i.i.a:                              ; preds = %.critedge18.i.i.i.i.i
  %i.kn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.km, i1 true)
  %i.ko = zext nneg i16 %i.kn to i64
  %i.kp = add i64 %.sroa.7.0.i.i.i.i.i, %i.ko
  %i.kq = and i64 %i.kp, %i.ij
  %i.kr = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.jo, i64 %i.kq, i64 %.sroa.15.0.i.i.i.i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread251.i.i.i.i unwind label %bb.bu

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread251.i.i.i.i: ; preds = %.thread.i.i.i.i.i.a
  %.sroa.0.0.copyload.i.i.i.i22.i.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !52, !noalias !131
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i.i.i.i.i, i64 %i.kr
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread.i.i.i.i

bb.bg:                                            ; preds = %.critedge18.i.i.i.i.i
  %i.kt = add i64 %.sroa.15.0.i.i.i.i.i, 16       ; 2 uses
  %i.ku = add i64 %i.kt, %.sroa.7.0.i.i.i.i.i
  br label %bb.bf

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread251.i.i.i.i, %.noexc91.i.i.i.i, %bb.bb
  %.sroa.3.0247.i.i.i.i = phi ptr [ %i.ks, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread251.i.i.i.i ], [ %i.dt, %bb.bb ], [ %i.jg, %.noexc91.i.i.i.i ] ; 3 uses
  store ptr %i.ii, ptr %.sroa.3.0247.i.i.i.i, align 8, !tbaa !138
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.3.0247.i.i.i.i, i64 8
  store i32 0, ptr %i.kv, align 8, !tbaa !140
  %.pre258.i.i.i = load i64, ptr %20, align 8, !tbaa !93
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread249.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread249.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread.i.i.i.i, %bb.bc
  %i.kw = phi i64 [ 1, %bb.bc ], [ %.pre258.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread.i.i.i.i ], [ %i.ij, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.3.0248.i.i.i.i = phi ptr [ %i.dt, %bb.bc ], [ %.sroa.3.0247.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread.i.i.i.i ], [ %i.kg, %.lr.ph.i.i.i.i.i ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.3.0248.i.i.i.i, i64 8
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !3
  %i.kz = icmp eq i32 %i.ky, 1
  %i.la = icmp ne i64 %i.kw, 0
  call void @llvm.assume(i1 %i.la)
  %i.lb = icmp ult i64 %i.kw, 2                   ; 2 uses
  br i1 %i.kz, label %bb.bh, label %bb.bw

bb.bh:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread249.i.i.i.i
  br i1 %i.lb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lc = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.lc, 131071
  %i.ld = load ptr, ptr %i.dt, align 8
  %i.le = icmp eq ptr %i.ld, %i.ii
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %i.le, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.thread9.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.lf = load ptr, ptr %i.dt, align 8, !tbaa !52 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.lf, i32 0, i32 1, i32 1)
  %i.lg = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.lh = xor i64 %i.lg, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.li = mul i64 %i.lh, -2543921745674291987
  %i.lj = call noundef i64 @llvm.bswap.i64(i64 %i.li)
  %i.lk = xor i64 %i.lj, %i.lg
  %i.ll = mul i64 %i.lk, -2543921745674291987
  %i.lm = call noundef i64 @llvm.bswap.i64(i64 %i.ll) ; 2 uses
  %i.ln = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !94, !noalias !141
  %i.lo = and i64 %i.ln, 65535
  %i.lp = lshr i64 %i.lm, 7
  %i.lq = xor i64 %i.lo, %i.lp
  %i.lr = trunc i64 %i.lm to i8
  %i.ls = and i8 %i.lr, 127
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !52 ; 2 uses
  %i.lt = insertelement <16 x i8> poison, i8 %i.ls, i64 0
  %i.lu = shufflevector <16 x i8> %i.lt, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bm, %bb.bj
  %.pn.i6.i.i.i.i.i.i = phi i64 [ %i.lq, %bb.bj ], [ %i.mm, %bb.bm ]
  %.sroa.13.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bj ], [ %i.ml, %bb.bm ]
  %.sroa.6.0.i.i.i93.i.i.i.i = and i64 %.pn.i6.i.i.i.i.i.i, %i.kw ; 4 uses
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i93.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.lv, i32 0, i32 3, i32 1)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.sroa.6.0.i.i.i93.i.i.i.i
  %i.lx = load <16 x i8>, ptr %i.lw, align 1, !tbaa !52 ; 2 uses
  %i.ly = icmp eq <16 x i8> %i.lu, %i.lx
  %i.lz = bitcast <16 x i1> %i.ly to i16          ; 2 uses
  %.not45.i.i.i.i.i.i.i = icmp eq i16 %i.lz, 0
  br i1 %.not45.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bk, %bb.bl
  %.sroa.017.046.i.i.i.i.i.i.i = phi i16 [ %i.mi, %bb.bl ], [ %i.lz, %bb.bk ] ; 3 uses
  %i.ma = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i.i.i.i, i1 true)
  %i.mb = zext nneg i16 %i.ma to i64
  %i.mc = add i64 %.sroa.6.0.i.i.i93.i.i.i.i, %i.mb
  %i.md = and i64 %i.mc, %i.kw                    ; 2 uses
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.md
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !100
  %i.mg = icmp eq ptr %i.mf, %i.ii
  br i1 %i.mg, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i.a, label %bb.bl, !prof !137

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.mh = add i16 %.sroa.017.046.i.i.i.i.i.i.i, -1
  %i.mi = and i16 %i.mh, %.sroa.017.046.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.mi, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.bl, %bb.bk
  %i.mj = icmp eq <16 x i8> %i.lx, splat (i8 -128)
  %i.mk = bitcast <16 x i1> %i.mj to i16
  %.not43.i.i.i.i.i.i.i = icmp eq i16 %i.mk, 0
  br i1 %.not43.i.i.i.i.i.i.i, label %bb.bm, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i, !prof !118

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ml = add i64 %.sroa.13.0.i.i.i.i.i.i.i, 16   ; 2 uses
  %i.mm = add i64 %i.ml, %.sroa.6.0.i.i.i93.i.i.i.i
  br label %bb.bk, !llvm.loop !144

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i.a: ; preds = %.lr.ph.i.i.i.i.i.i.i
  invoke void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.md, i64 noundef 16)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i unwind label %bb.bu

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.thread9.i.i.i.i.i: ; preds = %bb.bi
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !51
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.thread9.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i.a, %bb.bi
  %i.mn = load i64, ptr %21, align 8, !tbaa !93, !noalias !145 ; 5 uses
  %i.mo = icmp ne i64 %i.mn, 0
  call void @llvm.assume(i1 %i.mo)
  %i.mp = icmp ult i64 %i.mn, 2
  br i1 %i.mp, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i
  %i.mq = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !94, !noalias !160
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.mq, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !51, !noalias !160
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.mr = load ptr, ptr %i.dq, align 8, !tbaa !100, !noalias !160 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.ii
  br i1 %i.ms, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mt = ptrtoint ptr %i.mr to i64               ; 2 uses
  %i.mu = xor i64 %i.mt, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.mv = mul i64 %i.mu, -2543921745674291987
  %i.mw = call noundef i64 @llvm.bswap.i64(i64 %i.mv)
  %i.mx = xor i64 %i.mw, %i.mt
  %i.my = mul i64 %i.mx, 6679450291180483821
  %i.mz = lshr i64 %i.my, 56
  %i.na = trunc nuw i64 %i.mz to i8
  %i.nb = and i8 %i.na, 127
  %i.nc = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.nd = xor i64 %i.nc, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ne = mul i64 %i.nd, -2543921745674291987
  %i.nf = call noundef i64 @llvm.bswap.i64(i64 %i.ne)
  %i.ng = xor i64 %i.nf, %i.nc
  %i.nh = mul i64 %i.ng, -2543921745674291987
  %i.ni = call noundef i64 @llvm.bswap.i64(i64 %i.nh)
  %i.nj = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ni, i8 noundef signext %i.nb)
          to label %.noexc95.i.i.i.i unwind label %bb.bv

.noexc95.i.i.i.i:                                 ; preds = %bb.bq
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !52, !noalias !160
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.nj
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i.i.i.i

bb.br:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i
  %i.nl = load ptr, ptr %i.dq, align 8, !tbaa !52, !noalias !163 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.nl, i32 0, i32 1, i32 1), !noalias !163
  %i.nm = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.nn = xor i64 %i.nm, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.no = mul i64 %i.nn, -2543921745674291987
  %i.np = call noundef i64 @llvm.bswap.i64(i64 %i.no)
  %i.nq = xor i64 %i.np, %i.nm
  %i.nr = mul i64 %i.nq, -2543921745674291987
  %i.ns = call noundef i64 @llvm.bswap.i64(i64 %i.nr) ; 3 uses
  %i.nt = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !94, !noalias !166
  %i.nu = and i64 %i.nt, 65535
  %i.nv = lshr i64 %i.ns, 7
  %i.nw = xor i64 %i.nu, %i.nv
  %i.nx = trunc i64 %i.ns to i8
  %i.ny = and i8 %i.nx, 127
  %.sroa.0.0.copyload.i.i.i.i165.i.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !52, !noalias !163 ; 2 uses
  %i.nz = insertelement <16 x i8> poison, i8 %i.ny, i64 0
  %i.oa = shufflevector <16 x i8> %i.nz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %bb.br
  %.pn.i166.i.i.i.i = phi i64 [ %i.nw, %bb.br ], [ %i.oy, %bb.bt ]
  %.sroa.15.0.i167.i.i.i.i = phi i64 [ 0, %bb.br ], [ %i.ox, %bb.bt ] ; 2 uses
  %.sroa.7.0.i168.i.i.i.i = and i64 %.pn.i166.i.i.i.i, %i.mn ; 5 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i165.i.i.i.i, i64 %.sroa.7.0.i168.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.ob, i32 0, i32 3, i32 1), !noalias !163
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.sroa.7.0.i168.i.i.i.i
  %i.od = load <16 x i8>, ptr %i.oc, align 1, !tbaa !52, !noalias !163 ; 2 uses
  %i.oe = icmp eq <16 x i8> %i.oa, %i.od
  %i.of = bitcast <16 x i1> %i.oe to i16          ; 2 uses
  %.not59.i.i.i.i.i = icmp eq i16 %i.of, 0
  br i1 %.not59.i.i.i.i.i, label %.critedge18.i172.i.i.i.i, label %.lr.ph.i169.i.i.i.i

.lr.ph.i169.i.i.i.i:                              ; preds = %bb.bs, %.critedge.i170.i.i.i.i
  %.sroa.033.060.i.i.i.i.i = phi i16 [ %i.oo, %.critedge.i170.i.i.i.i ], [ %i.of, %bb.bs ] ; 3 uses
  %i.og = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i.i.i.i.i, i1 true)
  %i.oh = zext nneg i16 %i.og to i64
  %i.oi = add i64 %.sroa.7.0.i168.i.i.i.i, %i.oh
  %i.oj = and i64 %i.oi, %i.mn
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i165.i.i.i.i, i64 %i.oj
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !100, !noalias !163
  %i.om = icmp eq ptr %i.ol, %i.ii
  br i1 %i.om, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i, label %.critedge.i170.i.i.i.i, !prof !137

.critedge.i170.i.i.i.i:                           ; preds = %.lr.ph.i169.i.i.i.i
  %i.on = add i16 %.sroa.033.060.i.i.i.i.i, -1
  %i.oo = and i16 %i.on, %.sroa.033.060.i.i.i.i.i ; 2 uses
  %.not.i171.i.i.i.i = icmp eq i16 %i.oo, 0
  br i1 %.not.i171.i.i.i.i, label %.critedge18.i172.i.i.i.i, label %.lr.ph.i169.i.i.i.i

.critedge18.i172.i.i.i.i:                         ; preds = %.critedge.i170.i.i.i.i, %bb.bs
  %i.op = icmp eq <16 x i8> %i.od, splat (i8 -128)
  %i.oq = bitcast <16 x i1> %i.op to i16          ; 2 uses
  %.not51.i173.i.i.i.i = icmp eq i16 %i.oq, 0
  br i1 %.not51.i173.i.i.i.i, label %bb.bt, label %.thread.i174.i.i.i.i, !prof !118

.thread.i174.i.i.i.i:                             ; preds = %.critedge18.i172.i.i.i.i
  %i.or = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.oq, i1 true)
  %i.os = zext nneg i16 %i.or to i64
  %i.ot = add i64 %.sroa.7.0.i168.i.i.i.i, %i.os
  %i.ou = and i64 %i.ot, %i.mn
  %i.ov = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ns, i64 %i.ou, i64 %.sroa.15.0.i167.i.i.i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread259.i.i.i.i unwind label %bb.bv

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread259.i.i.i.i: ; preds = %.thread.i174.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i22.i175.i.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !52, !noalias !163
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i175.i.i.i.i, i64 %i.ov
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i.i.i.i

bb.bt:                                            ; preds = %.critedge18.i172.i.i.i.i
  %i.ox = add i64 %.sroa.15.0.i167.i.i.i.i, 16    ; 2 uses
  %i.oy = add i64 %i.ox, %.sroa.7.0.i168.i.i.i.i
  br label %bb.bs

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread259.i.i.i.i, %.noexc95.i.i.i.i, %bb.bo
  %.sroa.5.0256.i.i.i.i = phi ptr [ %i.ow, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread259.i.i.i.i ], [ %i.dq, %bb.bo ], [ %i.nk, %.noexc95.i.i.i.i ]
  store ptr %i.ii, ptr %.sroa.5.0256.i.i.i.i, align 8, !tbaa !100
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i

bb.bu:                                            ; preds = %.thread.i193.i.i.i.i, %bb.ca, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i.a, %.thread.i.i.i.i.i.a, %bb.bd
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.bv:                                            ; preds = %.thread.i174.i.i.i.i, %bb.bq
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.bw:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread249.i.i.i.i
  br i1 %i.lb, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.pb = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !94, !noalias !169
  %.not.i.i.i.i.i.i104.i.i.i.i = icmp ult i64 %i.pb, 131072
  br i1 %.not.i.i.i.i.i.i104.i.i.i.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !51, !noalias !169
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.pc = load ptr, ptr %i.dt, align 8, !tbaa !100, !noalias !169 ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.ii
  br i1 %i.pd, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread266.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pe = ptrtoint ptr %i.pc to i64               ; 2 uses
  %i.pf = xor i64 %i.pe, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.pg = mul i64 %i.pf, -2543921745674291987
  %i.ph = call noundef i64 @llvm.bswap.i64(i64 %i.pg)
  %i.pi = xor i64 %i.ph, %i.pe
  %i.pj = mul i64 %i.pi, 6679450291180483821
  %i.pk = lshr i64 %i.pj, 56
  %i.pl = trunc nuw i64 %i.pk to i8
  %i.pm = and i8 %i.pl, 127
  %i.pn = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.po = xor i64 %i.pn, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.pp = mul i64 %i.po, -2543921745674291987
  %i.pq = call noundef i64 @llvm.bswap.i64(i64 %i.pp)
  %i.pr = xor i64 %i.pq, %i.pn
  %i.ps = mul i64 %i.pr, -2543921745674291987
  %i.pt = call noundef i64 @llvm.bswap.i64(i64 %i.ps)
  %i.pu = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.pt, i8 noundef signext %i.pm)
          to label %.noexc110.i.i.i.i unwind label %bb.bu

.noexc110.i.i.i.i:                                ; preds = %bb.ca
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i105.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !52, !noalias !169
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i105.i.i.i.i, i64 %i.pu
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread.i.i.i.i

bb.cb:                                            ; preds = %bb.bw
  %i.pw = load ptr, ptr %i.dt, align 8, !tbaa !52, !noalias !178 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.pw, i32 0, i32 1, i32 1), !noalias !178
  %i.px = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.py = xor i64 %i.px, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.pz = mul i64 %i.py, -2543921745674291987
  %i.qa = call noundef i64 @llvm.bswap.i64(i64 %i.pz)
  %i.qb = xor i64 %i.qa, %i.px
  %i.qc = mul i64 %i.qb, -2543921745674291987
  %i.qd = call noundef i64 @llvm.bswap.i64(i64 %i.qc) ; 3 uses
  %i.qe = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !94, !noalias !181
  %i.qf = and i64 %i.qe, 65535
  %i.qg = lshr i64 %i.qd, 7
  %i.qh = xor i64 %i.qf, %i.qg
  %i.qi = trunc i64 %i.qd to i8
  %i.qj = and i8 %i.qi, 127
  %.sroa.0.0.copyload.i.i.i.i182.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !52, !noalias !178 ; 2 uses
  %i.qk = insertelement <16 x i8> poison, i8 %i.qj, i64 0
  %i.ql = shufflevector <16 x i8> %i.qk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  %.pn.i183.i.i.i.i = phi i64 [ %i.qh, %bb.cb ], [ %i.rj, %bb.cd ]
  %.sroa.15.0.i184.i.i.i.i = phi i64 [ 0, %bb.cb ], [ %i.ri, %bb.cd ] ; 2 uses
  %.sroa.7.0.i185.i.i.i.i = and i64 %.pn.i183.i.i.i.i, %i.kw ; 5 uses
  %i.qm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i182.i.i.i.i, i64 %.sroa.7.0.i185.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.qm, i32 0, i32 3, i32 1), !noalias !178
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pw, i64 %.sroa.7.0.i185.i.i.i.i
  %i.qo = load <16 x i8>, ptr %i.qn, align 1, !tbaa !52, !noalias !178 ; 2 uses
  %i.qp = icmp eq <16 x i8> %i.ql, %i.qo
  %i.qq = bitcast <16 x i1> %i.qp to i16          ; 2 uses
  %.not58.i186.i.i.i.i = icmp eq i16 %i.qq, 0
  br i1 %.not58.i186.i.i.i.i, label %.critedge18.i191.i.i.i.i, label %.lr.ph.i187.i.i.i.i

.lr.ph.i187.i.i.i.i:                              ; preds = %bb.cc, %.critedge.i189.i.i.i.i
  %.sroa.033.059.i188.i.i.i.i = phi i16 [ %i.qz, %.critedge.i189.i.i.i.i ], [ %i.qq, %bb.cc ] ; 3 uses
  %i.qr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i188.i.i.i.i, i1 true)
  %i.qs = zext nneg i16 %i.qr to i64
  %i.qt = add i64 %.sroa.7.0.i185.i.i.i.i, %i.qs
  %i.qu = and i64 %i.qt, %i.kw
  %i.qv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i182.i.i.i.i, i64 %i.qu ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !100, !noalias !178
  %i.qx = icmp eq ptr %i.qw, %i.ii
  br i1 %i.qx, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread266.i.i.i.i, label %.critedge.i189.i.i.i.i, !prof !137

.critedge.i189.i.i.i.i:                           ; preds = %.lr.ph.i187.i.i.i.i
  %i.qy = add i16 %.sroa.033.059.i188.i.i.i.i, -1
  %i.qz = and i16 %i.qy, %.sroa.033.059.i188.i.i.i.i ; 2 uses
  %.not.i190.i.i.i.i = icmp eq i16 %i.qz, 0
  br i1 %.not.i190.i.i.i.i, label %.critedge18.i191.i.i.i.i, label %.lr.ph.i187.i.i.i.i

.critedge18.i191.i.i.i.i:                         ; preds = %.critedge.i189.i.i.i.i, %bb.cc
  %i.ra = icmp eq <16 x i8> %i.qo, splat (i8 -128)
  %i.rb = bitcast <16 x i1> %i.ra to i16          ; 2 uses
  %.not51.i192.i.i.i.i = icmp eq i16 %i.rb, 0
  br i1 %.not51.i192.i.i.i.i, label %bb.cd, label %.thread.i193.i.i.i.i, !prof !118

.thread.i193.i.i.i.i:                             ; preds = %.critedge18.i191.i.i.i.i
  %i.rc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.rb, i1 true)
  %i.rd = zext nneg i16 %i.rc to i64
  %i.re = add i64 %.sroa.7.0.i185.i.i.i.i, %i.rd
  %i.rf = and i64 %i.re, %i.kw
  %i.rg = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.qd, i64 %i.rf, i64 %.sroa.15.0.i184.i.i.i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread268.i.i.i.i unwind label %bb.bu

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread268.i.i.i.i: ; preds = %.thread.i193.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i22.i194.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !52, !noalias !178
  %i.rh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i194.i.i.i.i, i64 %i.rg
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread.i.i.i.i

bb.cd:                                            ; preds = %.critedge18.i191.i.i.i.i
  %i.ri = add i64 %.sroa.15.0.i184.i.i.i.i, 16    ; 2 uses
  %i.rj = add i64 %i.ri, %.sroa.7.0.i185.i.i.i.i
  br label %bb.cc

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread268.i.i.i.i, %.noexc110.i.i.i.i, %bb.by
  %.sroa.3243.0264.i.i.i.i = phi ptr [ %i.rh, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread268.i.i.i.i ], [ %i.dt, %bb.by ], [ %i.pv, %.noexc110.i.i.i.i ] ; 3 uses
  store ptr %i.ii, ptr %.sroa.3243.0264.i.i.i.i, align 8, !tbaa !138
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.3243.0264.i.i.i.i, i64 8
  store i32 0, ptr %i.rk, align 8, !tbaa !140
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread266.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread266.i.i.i.i: ; preds = %.lr.ph.i187.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread.i.i.i.i, %bb.bz
  %.sroa.3243.0265.i.i.i.i = phi ptr [ %i.dt, %bb.bz ], [ %.sroa.3243.0264.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread.i.i.i.i ], [ %i.qv, %.lr.ph.i187.i.i.i.i ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.3243.0265.i.i.i.i, i64 8 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !3
  %i.rn = add nsw i32 %i.rm, -1
  store i32 %i.rn, ptr %i.rl, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i: ; preds = %.lr.ph.i169.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread266.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i.i.i.i, %bb.bp
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.0234.0315.i.i.i.i, i64 1 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.9.0316.i.i.i.i, i64 8 ; 2 uses
  %i.rq = load i8, ptr %i.ro, align 1, !tbaa !96  ; 2 uses
  %i.rr = icmp slt i8 %i.rq, -1
  br i1 %i.rr, label %.lr.ph.i.i113.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i

.lr.ph.i.i113.i.i.i.i:                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i, %.lr.ph.i.i113.i.i.i.i
  %i.rs = phi ptr [ %i.sc, %.lr.ph.i.i113.i.i.i.i ], [ %i.rp, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i ]
  %i.rt = phi ptr [ %i.sb, %.lr.ph.i.i113.i.i.i.i ], [ %i.ro, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i ] ; 2 uses
  %i.ru = load <16 x i8>, ptr %i.rt, align 1, !tbaa !52
  %i.rv = icmp slt <16 x i8> %i.ru, splat (i8 -1)
  %i.rw = bitcast <16 x i1> %i.rv to i16
  %i.rx = zext i16 %i.rw to i32
  %i.ry = add nuw nsw i32 %i.rx, 1
  %i.rz = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ry, i1 true)
  %i.sa = zext nneg i32 %i.rz to i64              ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.sa ; 3 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.sa ; 2 uses
  %i.sd = load i8, ptr %i.sb, align 1, !tbaa !96  ; 2 uses
  %i.se = icmp slt i8 %i.sd, -1
  br i1 %i.se, label %.lr.ph.i.i113.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i, !llvm.loop !98

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i113.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i
  %.sroa.0234.1.i.i.i.i = phi ptr [ %i.ro, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i ], [ %i.sb, %.lr.ph.i.i113.i.i.i.i ]
  %.sroa.9.1.i.i.i.i = phi ptr [ %i.rp, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i ], [ %i.sc, %.lr.ph.i.i113.i.i.i.i ]
  %i.sf = phi i8 [ %i.rq, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i ], [ %i.sd, %.lr.ph.i.i113.i.i.i.i ]
  %i.sg = icmp eq i8 %i.sf, -1
  br i1 %i.sg, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !118

.loopexit277.i.i.i.i:                             ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE14const_iteratorppEv.exit.i.i.i.i.i, %._crit_edge.i.i.i.i
  %i.sh = load i64, ptr %i.ef, align 8, !tbaa !184 ; 3 uses
  %i.si = trunc i64 %i.sh to i1
  br i1 %i.si, label %bb.ce, label %bb.cf, !prof !118

bb.ce:                                            ; preds = %.loopexit277.i.i.i.i
  %i.sj = add nsw i64 %i.sh, -1
  %i.sk = inttoptr i64 %i.sj to ptr
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !186
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i

bb.cf:                                            ; preds = %.loopexit277.i.i.i.i
  %i.sm = inttoptr i64 %i.sh to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.sl, %bb.ce ], [ %i.sm, %bb.cf ]
  %i.sn = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_19FileDescriptorProtoEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef %.0.i.i.i.i.i.i.i)
          to label %bb.cg unwind label %bb.cr     ; 12 uses

bb.cg:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i
  %i.so = load i32, ptr %i.eh, align 8, !tbaa !3
  %i.sp = or i32 %i.so, 1
  store i32 %i.sp, ptr %i.eh, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.sq = load ptr, ptr %i.a, align 8, !tbaa !100
  invoke void @_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14FileDescriptorEb(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::FileDescriptorProto") align 8 %23, ptr noundef nonnull align 8 dereferenceable(184) %i.sq, i1 noundef zeroext false)
          to label %bb.ch unwind label %bb.cs

bb.ch:                                            ; preds = %bb.cg
  %i.sr = icmp eq ptr %i.sn, %23
  br i1 %i.sr, label %bb.cq, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !184 ; 3 uses
  %i.su = trunc i64 %i.st to i1
  br i1 %i.su, label %bb.cj, label %bb.ck, !prof !118

bb.cj:                                            ; preds = %bb.ci
  %i.sv = add nsw i64 %i.st, -1
  %i.sw = inttoptr i64 %i.sv to ptr
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !186
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i115.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.sy = inttoptr i64 %i.st to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i115.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i115.i.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i116.i.i.i.i = phi ptr [ %i.sx, %bb.cj ], [ %i.sy, %bb.ck ]
  %i.sz = load i64, ptr %i.ei, align 8, !tbaa !184 ; 3 uses
  %i.ta = trunc i64 %i.sz to i1
  br i1 %i.ta, label %bb.cl, label %bb.cm, !prof !118

bb.cl:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i115.i.i.i.i
  %i.tb = add nsw i64 %i.sz, -1
  %i.tc = inttoptr i64 %i.tb to ptr
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !186
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i

bb.cm:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i115.i.i.i.i
  %i.te = inttoptr i64 %i.sz to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.td, %bb.cl ], [ %i.te, %bb.cm ]
  %i.tf = icmp eq ptr %.0.i.i.i116.i.i.i.i, %.0.i.i7.i.i.i.i.i
  br i1 %i.tf, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i
  invoke void @_ZN6google8protobuf19FileDescriptorProto12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(200) %i.sn, ptr noundef nonnull align 8 dereferenceable(200) %23)
          to label %bb.cq unwind label %bb.cp

bb.co:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i
  invoke void @_ZN6google8protobuf19FileDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %i.sn, ptr noundef nonnull align 8 dereferenceable(200) %23)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.tg = landingpad { ptr, i32 }
          catch ptr null
  %i.th = extractvalue { ptr, i32 } %i.tg, 0
  call void @__clang_call_terminate(ptr %i.th) #29
  unreachable

bb.cq:                                            ; preds = %bb.co, %bb.cn, %bb.ch
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sn, i64 16 ; 4 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !3
  %i.tk = or i32 %i.tj, 1
  store i32 %i.tk, ptr %i.ti, align 4, !tbaa !3
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sn, i64 24 ; 4 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !189
  %i.tn = ptrtoint ptr %i.tm to i64               ; 2 uses
  %i.to = and i64 %i.tn, 1
  %i.tp = icmp eq i64 %i.to, 0
  %i.tq = add i64 %i.tn, -1
  %i.tr = inttoptr i64 %i.tq to ptr
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = select i1 %i.tp, ptr %i.tl, ptr %i.ts   ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sn, i64 32
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !192 ; 2 uses
  %i.tw = sext i32 %i.tv to i64
  %.idx.i.i.i.i = shl nsw i64 %i.tw, 3
  %i.tx = getelementptr inbounds i8, ptr %i.tt, i64 %.idx.i.i.i.i
  %.not275317.i.i.i.i = icmp eq i32 %i.tv, 0
  br i1 %.not275317.i.i.i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i.i, label %.lr.ph320.i.i.i.i

bb.cr:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cs:                                            ; preds = %bb.cg
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.dm

bb.ct:                                            ; preds = %bb.db
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cu:                                            ; preds = %._crit_edge.thread.i.i.i.i.i.i.i
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.lr.ph320.i.i.i.i:                                ; preds = %bb.cq, %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i
  %.sroa.0217.0318.i.i.i.i = phi ptr [ %i.vx, %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i ], [ %i.tt, %bb.cq ] ; 4 uses
  %i.uc = load ptr, ptr %.sroa.0217.0318.i.i.i.i, align 8, !tbaa !193 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !40
  %i.uf = icmp eq i64 %i.ue, 32
  br i1 %i.uf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph320.i.i.i.i
  %i.ug = load ptr, ptr %i.uc, align 8, !tbaa !44 ; 2 uses
  %i.uh = load i128, ptr %i.ug, align 1
  %i.ui = xor i128 %i.uh, 63005710922238749866870542373108019047
  %i.uj = getelementptr i8, ptr %i.ug, i64 16
  %i.uk = load i128, ptr %i.uj, align 1
  %i.ul = xor i128 %i.uk, 148148874381910705952234547080544347492
  %i.um = or i128 %i.ui, %i.ul
  %i.un = icmp ne i128 %i.um, 0
  %i.uo = zext i1 %i.un to i32
  %i.up = icmp eq i32 %i.uo, 0
  br i1 %i.up, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.lr.ph320.i.i.i.i
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0217.0318.i.i.i.i, i64 8
  %i.ur = ptrtoint ptr %.sroa.0217.0318.i.i.i.i to i64
  %i.us = ptrtoint ptr %i.tt to i64               ; 2 uses
  %i.ut = sub i64 %i.ur, %i.us                    ; 2 uses
  %i.uu = lshr exact i64 %i.ut, 3
  %i.uv = trunc i64 %i.uu to i32                  ; 2 uses
  %i.uw = ptrtoint ptr %i.uq to i64
  %i.ux = sub i64 %i.uw, %i.us
  %i.uy = lshr exact i64 %i.ux, 3
  %i.uz = trunc i64 %i.uy to i32
  %i.va = sub nsw i32 %i.uz, %i.uv                ; 3 uses
  %sext12.i.i.i.i.i.i = shl i64 %i.ut, 29
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE:bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !52
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !52
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !52
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !118

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #20

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !51 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !225
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !94, !noalias !557
  %i.h = and i64 %i.g, 65535
  %i.i = load i64, ptr %1, align 8, !tbaa !93, !noalias !557 ; 3 uses
  %i.j = lshr i64 %i.e, 7
  %i.k = xor i64 %i.h, %i.j
  %i.l = trunc i64 %i.e to i8
  %i.m = and i8 %i.l, 127
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !52 ; 2 uses
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
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !52 ; 2 uses
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
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !51
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !225
  %i.ac = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ac, label %bb.c, label %.critedge, !prof !296

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
  br i1 %.not52, label %bb.d, label %.thread, !prof !118

.thread:                                          ; preds = %.critedge18
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !52
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
  store i8 %.sink, ptr %i.at, align 8, !tbaa !504
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #23

declare void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296), i64, ptr, ptr, i64, ptr noundef byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !311, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !560
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !303  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !303
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !313  ; 2 uses
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
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_SC_NSK_18container_internal10StringHashENSM_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !331    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = load i64, ptr %2, align 8, !tbaa !305
  store i64 %i.u, ptr %i.q, align 8, !tbaa !305
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.s, align 8, !tbaa !337
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.r, align 8, !tbaa !313
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !562, !noalias !565
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !337, !alias.scope !565, !noalias !562
  store ptr %i.x, ptr %i.v, align 8, !tbaa !337, !alias.scope !562, !noalias !565
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !313, !alias.scope !565, !noalias !562 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !567
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !313, !alias.scope !562, !noalias !565
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !565, !noalias !562
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !341

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !568, !noalias !571
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !337, !alias.scope !571, !noalias !568
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !337, !alias.scope !568, !noalias !571
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !313, !alias.scope !571, !noalias !568 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !339, !alias.scope !573
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !313, !alias.scope !568, !noalias !571
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !571, !noalias !568
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !341

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ], [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !304
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #27
  br label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !331
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !303
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !304
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.93") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !51, !noalias !580
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !225, !noalias !580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.a = load ptr, ptr %1, align 8, !tbaa !300, !noalias !584
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !584
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !584
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.b, align 8, !noalias !584
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !584 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !584
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i

_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !51, !noalias !584
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !225, !noalias !584
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %0, align 8, !tbaa !51, !alias.scope !580
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !225, !alias.scope !580
  store i8 0, ptr %i.h, align 8, !tbaa !585, !alias.scope !584
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !50, !alias.scope !584
  store i8 0, ptr %i.j, align 8, !alias.scope !584
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.k, align 8, !tbaa !40, !alias.scope !584
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.l, align 8, !tbaa !587, !alias.scope !584
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit: ; preds = %bb.a, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i
  %.sink.i.i = phi i8 [ 1, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink.i.i, ptr %i.m, align 8, !tbaa !595, !alias.scope !584
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_EUlSA_E_, ptr %0, align 8, !tbaa !597
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !193
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !305
  store i64 %i.a, ptr %0, align 8, !tbaa !305
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !93
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !51 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !225
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !51
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !225
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52, !nonnull !19, !noundef !19
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !51 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !225
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !94, !noalias !599
  %i.r = and i64 %i.q, 65535
  %i.s = load i64, ptr %0, align 8, !tbaa !93, !noalias !599 ; 4 uses
  %i.t = lshr i64 %i.o, 7
  %i.u = xor i64 %i.r, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.o to i8
  %i.w = and i8 %i.v, 127
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !52   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !52 ; 4 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ab, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.ak, %bb.f ], [ %i.u, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.aj, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.s      ; 4 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i.us
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !52 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.aa, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ah = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not43.i.us = icmp eq i16 %i.ai, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit, !prof !118

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.aj = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !602

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.as, %bb.g ], [ %i.ag, %.split.us ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i.us, %i.am
  %i.ao = and i64 %i.an, %i.s                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ao ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us = load i64, ptr %i.ap, align 8, !tbaa !51
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us, 0
  br i1 %i.aq, label %.thread32.i, label %bb.g, !prof !296

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.ar = add i16 %.sroa.017.046.i.us.us, -1
  %i.as = and i16 %i.ar, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.as, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bl, %bb.i ], [ %i.u, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.s            ; 4 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !52 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.aa, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.ax, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bh, %bb.h ], [ %i.ax, %.split ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i, %i.az
  %i.bb = and i64 %i.ba, %i.s                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bb ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10 = load i64, ptr %i.bc, align 8, !tbaa !51
  %i.bd = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, label %bb.h, !prof !296

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i11, align 8, !tbaa !225
  %bcmp.i.i.i.i.i.i.i.i14 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i12, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i14, 0
  br i1 %i.be, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
  %i.bg = add i16 %.sroa.017.046.i, -1
  %i.bh = and i16 %i.bg, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bi = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %.not43.i = icmp eq i16 %i.bj, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit, !prof !118

bb.i:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.6.0.i
  br label %.split, !llvm.loop !602

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bf, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi18, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_121GenerateMessageToPoolESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorEPNS0_2io7PrinterE(i64 %0, ptr %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %32 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !429
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 51
  %i.g = load i8, ptr %i.f, align 1, !tbaa !52, !range !18, !noundef !19
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.cf, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.i = icmp eq i64 %0, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  br i1 %i.i, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.j, ptr %9, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !40
  store i8 0, ptr %i.j, align 8, !tbaa !52
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %0, ptr %10, align 8, !tbaa !51
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !225
  store i64 1, ptr %11, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.12, ptr %i.l, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %._crit_edge416 unwind label %.thread341

._crit_edge416:                                   ; preds = %bb.c
  %.pre = load ptr, ptr %9, align 8, !tbaa !44
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre417 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge416, %._crit_edge.i.i
  %i.m = phi i64 [ %.pre417, %._crit_edge416 ], [ 0, %._crit_edge.i.i ]
  %i.n = phi ptr [ %.pre, %._crit_edge416 ], [ %i.j, %._crit_edge.i.i ]
  store i64 %i.m, ptr %8, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.n, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !404  ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.q, align 1
  %i.r = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.s = xor i64 %i.r, -1
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !603
  invoke void @_ZN6google8protobuf8compiler3php18ReservedNamePrefixB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_14FileDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.r, ptr nonnull %i.t, ptr noundef %i.v)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %13, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40
  store i64 %i.y, ptr %12, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !404 ; 2 uses
  %.0.copyload.i.i.i147 = load i16, ptr %i.aa, align 1
  %i.ab = zext i16 %.0.copyload.i.i.i147 to i64   ; 2 uses
  %i.ac = xor i64 %i.ab, -1
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac
  store i64 %i.ab, ptr %14, align 8, !tbaa !51
  %.sroa.2.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ad, ptr %.sroa.2.0..sroa_idx.i150, align 8, !tbaa !225
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ae = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !52
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.aj = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !52
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %.val = load ptr, ptr %i.p, align 8, !tbaa !404
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_118DescriptorFullNameINS0_10DescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_b(ptr dead_on_unwind noalias writable align 8 %15, ptr %.val, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cSA_EEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %3, i64 78, ptr nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(8) @.str.49, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 1 dereferenceable(11) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %15, align 8, !tbaa !44   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.h
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !52
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_117BinaryToPhpStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i42, %.noexc44
  %i.dc = phi ptr [ %.pre.i.i43, %.noexc44 ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i42 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  store i8 %i.ct, ptr %i.dd, align 1, !tbaa !52
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit25
  %.sink = phi i64 [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit29 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit25 ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !40
  %i.de = load ptr, ptr %0, align 8, !tbaa !44
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sink
  store i8 0, ptr %i.df, align 1, !tbaa !52
  %i.dg = add nuw i64 %.046, 1                    ; 2 uses
  %i.dh = load i64, ptr %i.c, align 8, !tbaa !40
  %i.di = icmp ult i64 %i.dg, %i.dh
  br i1 %i.di, label %.lr.ph, label %._crit_edge, !llvm.loop !639

._crit_edge:                                      ; preds = %bb.y, %.preheader
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf17FileDescriptorSetD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_124AnalyzeDependencyForFileEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS6_NS8_18container_internal6HashEqIS6_vE4HashENSC_2EqESaIS6_EEEPNS8_13flat_hash_mapIS6_SG_SD_SE_SaISt4pairIKS6_SG_EEEEPNSI_IS6_iSD_SE_SaISJ_ISK_iEEEE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.173", align 8    ; 5 uses
  %5 = alloca %"struct.std::pair.173", align 8    ; 5 uses
  %6 = alloca %"struct.std::pair.184", align 8    ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_set.147", align 8 ; 7 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !206  ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.027116 = phi i32 [ %i.w, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = tail call noundef ptr @_ZNK6google8protobuf14FileDescriptor10dependencyEi(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %.027116)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40
  %i.k = icmp eq i64 %i.j, 32
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.m = load i128, ptr %i.l, align 1
  %i.n = xor i128 %i.m, 63005710922238749866870542373108019047
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i128, ptr %i.o, align 1
  %i.q = xor i128 %i.p, 148148874381910705952234547080544347492
  %i.r = or i128 %i.n, %i.q
  %i.s = icmp ne i128 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.v = add nsw i32 %i.d, -1
  br label %.loopexit

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.w = add nuw nsw i32 %.027116, 1              ; 2 uses
  %i.x = load i32, ptr %i.c, align 8, !tbaa !206
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph, label %.loopexit, !llvm.loop !640

.loopexit:                                        ; preds = %bb.c, %bb.a, %.thread
  %.2 = phi i32 [ %i.v, %.thread ], [ %i.d, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.z = icmp eq i32 %.2, 0
  br i1 %i.z, label %bb.d, label %bb.l

bb.d:                                             ; preds = %.loopexit
  %i.aa = load i64, ptr %1, align 8, !tbaa !93, !noalias !641 ; 5 uses
  %i.ab = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp ult i64 %i.aa, 2
  br i1 %i.ac, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !94, !noalias !656
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ae, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 131072, ptr %i.ad, align 8, !tbaa !51, !noalias !656
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !100, !noalias !656 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = xor i64 %i.aj, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.al = mul i64 %i.ak, -2543921745674291987
  %i.am = tail call noundef i64 @llvm.bswap.i64(i64 %i.al)
  %i.an = xor i64 %i.am, %i.aj
  %i.ao = mul i64 %i.an, 6679450291180483821
  %i.ap = lshr i64 %i.ao, 56
  %i.aq = trunc nuw i64 %i.ap to i8
  %i.ar = and i8 %i.aq, 127
  %i.as = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.at = xor i64 %i.as, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.au = mul i64 %i.at, -2543921745674291987
  %i.av = tail call noundef i64 @llvm.bswap.i64(i64 %i.au)
  %i.aw = xor i64 %i.av, %i.as
  %i.ax = mul i64 %i.aw, -2543921745674291987
  %i.ay = tail call noundef i64 @llvm.bswap.i64(i64 %i.ax)
  %i.az = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ay, i8 noundef signext %i.ar), !noalias !656
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !52, !noalias !656
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.az
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.i:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !52, !noalias !659 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bd, i32 0, i32 1, i32 1), !noalias !659
  %i.be = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.bf = xor i64 %i.be, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bg = mul i64 %i.bf, -2543921745674291987
  %i.bh = tail call noundef i64 @llvm.bswap.i64(i64 %i.bg)
  %i.bi = xor i64 %i.bh, %i.be
  %i.bj = mul i64 %i.bi, -2543921745674291987
  %i.bk = tail call noundef i64 @llvm.bswap.i64(i64 %i.bj) ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !94, !noalias !662
  %i.bn = and i64 %i.bm, 65535
  %i.bo = lshr i64 %i.bk, 7
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = trunc i64 %i.bk to i8
  %i.br = and i8 %i.bq, 127
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !52, !noalias !659 ; 2 uses
  %i.bt = insertelement <16 x i8> poison, i8 %i.br, i64 0
  %i.bu = shufflevector <16 x i8> %i.bt, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.pn.i60 = phi i64 [ %i.bp, %bb.i ], [ %i.cs, %bb.k ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.i ], [ %i.cr, %bb.k ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i60, %i.aa          ; 5 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1), !noalias !659
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sroa.7.0.i
  %i.bx = load <16 x i8>, ptr %i.bw, align 1, !tbaa !52, !noalias !659 ; 2 uses
  %i.by = icmp eq <16 x i8> %i.bu, %i.bx
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.bz, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.critedge.i
  %.sroa.033.060.i = phi i16 [ %i.ci, %.critedge.i ], [ %i.bz, %bb.j ] ; 3 uses
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = add i64 %.sroa.7.0.i, %i.cb
  %i.cd = and i64 %i.cc, %i.aa
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !100, !noalias !659
  %i.cg = icmp eq ptr %i.cf, %0
  br i1 %i.cg, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, label %.critedge.i, !prof !137

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ch = add i16 %.sroa.033.060.i, -1
  %i.ci = and i16 %i.ch, %.sroa.033.060.i         ; 2 uses
  %.not.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.j
  %i.cj = icmp eq <16 x i8> %i.bx, splat (i8 -128)
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.ck, 0
  br i1 %.not51.i, label %bb.k, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread92, !prof !118

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread92: ; preds = %.critedge18.i
  %i.cl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ck, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = add i64 %.sroa.7.0.i, %i.cm
  %i.co = and i64 %i.cn, %i.aa
  %i.cp = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.bk, i64 %i.co, i64 %.sroa.15.0.i), !noalias !659
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.bs, align 8, !tbaa !52, !noalias !659
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.cp
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.k:                                             ; preds = %.critedge18.i
  %i.cr = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.cs = add i64 %i.cr, %.sroa.7.0.i
  br label %bb.j

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.f, %bb.h, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread92
  %.sroa.485.089 = phi ptr [ %i.cq, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread92 ], [ %i.af, %bb.f ], [ %i.bb, %bb.h ]
  store ptr %0, ptr %.sroa.485.089, align 8, !tbaa !100
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

bb.l:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.ct = load i64, ptr %3, align 8, !tbaa !93, !noalias !674 ; 2 uses
  %i.cu = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp ult i64 %i.ct, 2
  br i1 %i.cv, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !94, !noalias !678
  %.not.i.i.i.i.i.i = icmp ult i64 %i.cx, 131072
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 131072, ptr %i.cw, align 8, !tbaa !51, !noalias !678
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE26find_or_prepare_insert_sooIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !100, !noalias !678 ; 2 uses
  %i.db = icmp eq ptr %i.da, %0
  br i1 %i.db, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE26find_or_prepare_insert_sooIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dd = xor i64 %i.dc, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.de = mul i64 %i.dd, -2543921745674291987
  %i.df = tail call noundef i64 @llvm.bswap.i64(i64 %i.de)
  %i.dg = xor i64 %i.df, %i.dc
  %i.dh = mul i64 %i.dg, 6679450291180483821
  %i.di = lshr i64 %i.dh, 56
  %i.dj = trunc nuw i64 %i.di to i8
  %i.dk = and i8 %i.dj, 127
  %i.dl = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.dm = xor i64 %i.dl, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dn = mul i64 %i.dm, -2543921745674291987
  %i.do = tail call noundef i64 @llvm.bswap.i64(i64 %i.dn)
  %i.dp = xor i64 %i.do, %i.dl
  %i.dq = mul i64 %i.dp, -2543921745674291987
  %i.dr = tail call noundef i64 @llvm.bswap.i64(i64 %i.dq)
  %i.ds = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.dr, i8 noundef signext %i.dk), !noalias !678
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dt, align 8, !tbaa !52, !noalias !678
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.ds
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE26find_or_prepare_insert_sooIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE26find_or_prepare_insert_sooIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sink16.i.i.i.i.i = phi ptr [ %i.du, %bb.p ], [ %i.cy, %bb.n ], [ %i.cz, %bb.o ]
  %.sink.i.i.i.i.i = phi i8 [ 1, %bb.p ], [ 1, %bb.n ], [ 0, %bb.o ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sink16.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !678
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i

bb.q:                                             ; preds = %bb.l
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE30find_or_prepare_insert_non_sooIS8_EESE_INSI_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.184") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !679, !range !18, !alias.scope !682
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !100
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.q, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE26find_or_prepare_insert_sooIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.i
  %.pre = phi ptr [ %0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE26find_or_prepare_insert_sooIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.i ], [ %.pre.pre, %bb.q ] ; 3 uses
  %i.dv = phi i8 [ %.sink.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE26find_or_prepare_insert_sooIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.i ], [ %.pre.i.i.i, %bb.q ]
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.r, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !682 ; 2 uses
  store ptr %.pre, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !138
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i32 0, ptr %i.dx, align 8, !tbaa !140
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i, %bb.r
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store i32 %.2, ptr %i.dy, align 4, !tbaa !3
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !206
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph118, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

.lr.ph118:                                        ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i.i39 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0..sroa_idx.i.i.i43 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph118, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit34
  %i.eh = phi ptr [ %.pre, %.lr.ph118 ], [ %i.ke, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit34 ]
  %.029117 = phi i32 [ 0, %.lr.ph118 ], [ %i.kd, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit34 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ei = call noundef ptr @_ZNK6google8protobuf14FileDescriptor10dependencyEi(ptr noundef nonnull align 8 dereferenceable(184) %i.eh, i32 noundef %.029117) ; 5 uses
  store ptr %i.ei, ptr %i.b, align 8, !tbaa !100
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !40
  %i.en = icmp eq i64 %i.em, 32
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eo = load ptr, ptr %i.ek, align 8, !tbaa !44 ; 2 uses
  %i.ep = load i128, ptr %i.eo, align 1
  %i.eq = xor i128 %i.ep, 63005710922238749866870542373108019047
  %i.er = getelementptr i8, ptr %i.eo, i64 16
  %i.es = load i128, ptr %i.er, align 1
  %i.et = xor i128 %i.es, 148148874381910705952234547080544347492
  %i.eu = or i128 %i.eq, %i.et
  %i.ev = icmp ne i128 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit34, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ey = load i64, ptr %2, align 8, !tbaa !93    ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 2
  br i1 %i.ez, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fa = load i64, ptr %i.ed, align 8, !tbaa !94
  %.not.i.i.i = icmp ult i64 %i.fa, 131072
  br i1 %.not.i.i.i, label %.critedge, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit.a

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit.a: ; preds = %bb.v
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !tbaa !52
  %i.fb = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !100
  %.not = icmp eq ptr %i.fb, %i.ei
  br i1 %.not, label %.thread32.i.i, label %.critedge

bb.w:                                             ; preds = %bb.u
  %i.fc = load ptr, ptr %i.ec, align 8, !tbaa !52 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.fc, i32 0, i32 1, i32 1)
  %i.fd = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.fe = xor i64 %i.fd, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ff = mul i64 %i.fe, -2543921745674291987
  %i.fg = call noundef i64 @llvm.bswap.i64(i64 %i.ff)
  %i.fh = xor i64 %i.fg, %i.fd
  %i.fi = mul i64 %i.fh, -2543921745674291987
  %i.fj = call noundef i64 @llvm.bswap.i64(i64 %i.fi) ; 2 uses
  %i.fk = load i64, ptr %i.ed, align 8, !tbaa !94, !noalias !683
  %i.fl = and i64 %i.fk, 65535
  %i.fm = lshr i64 %i.fj, 7
  %i.fn = xor i64 %i.fl, %i.fm
  %i.fo = trunc i64 %i.fj to i8
  %i.fp = and i8 %i.fo, 127
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !tbaa !52 ; 2 uses
  %i.fq = insertelement <16 x i8> poison, i8 %i.fp, i64 0
  %i.fr = shufflevector <16 x i8> %i.fq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %.pn.i6.i = phi i64 [ %i.fn, %bb.w ], [ %i.gj, %bb.z ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.w ], [ %i.gi, %bb.z ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.ey       ; 4 uses
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  call void @llvm.prefetch.p0(ptr %i.fs, i32 0, i32 3, i32 1)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.sroa.6.0.i.i
  %i.fu = load <16 x i8>, ptr %i.ft, align 1, !tbaa !52 ; 2 uses
  %i.fv = icmp eq <16 x i8> %i.fr, %i.fu
  %i.fw = bitcast <16 x i1> %i.fv to i16          ; 2 uses
  %.not45.i.i = icmp eq i16 %i.fw, 0
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.y
  %.sroa.017.046.i.i = phi i16 [ %i.gf, %bb.y ], [ %i.fw, %bb.x ] ; 3 uses
  %i.fx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i, i1 true)
  %i.fy = zext nneg i16 %i.fx to i64
  %i.fz = add i64 %.sroa.6.0.i.i, %i.fy
  %i.ga = and i64 %i.fz, %i.ey
  %i.gb = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !100
  %i.gd = icmp eq ptr %i.gc, %i.ei
  br i1 %i.gd, label %.thread32.i.i, label %bb.y, !prof !137

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.ge = add i16 %.sroa.017.046.i.i, -1
  %i.gf = and i16 %i.ge, %.sroa.017.046.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.gf, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.x
  %i.gg = icmp eq <16 x i8> %i.fu, splat (i8 -128)
  %i.gh = bitcast <16 x i1> %i.gg to i16
  %.not43.i.i = icmp eq i16 %i.gh, 0
  br i1 %.not43.i.i, label %bb.z, label %.critedge, !prof !118

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.gi = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.gj = add i64 %i.gi, %.sroa.6.0.i.i
  br label %bb.x, !llvm.loop !686

.critedge:                                        ; preds = %._crit_edge.i.i, %bb.v, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 1, ptr %7, align 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.173") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %.critedge
  %i.gk = load i8, ptr %i.ef, align 8, !tbaa !108, !range !18, !alias.scope !693, !noundef !19
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i40 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i39, align 8, !alias.scope !693 ; 3 uses
  %i.gm = load ptr, ptr %i.b, align 8, !tbaa !100, !noalias !693
  store ptr %i.gm, ptr %.sroa.2.0.copyload.i.i.i40, align 8, !tbaa !112
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i40, i64 8
  store i64 1, ptr %i.gn, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i40, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.noexc
  %.sroa.2.0.copyload.i38 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i39, align 8 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i38, i64 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !93 ; 3 uses
  %i.gq = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %i.gq)
  %i.gr = icmp ult i64 %i.gp, 2
  br i1 %i.gr, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i38, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !52
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i38, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !94
  %i.gw = and i64 %i.gv, 65536
  %i.gx = icmp ne i64 %i.gw, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.go, i64 noundef %i.gp, ptr noundef %i.gt, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.gx)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #29
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit: ; preds = %bb.ac, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.thread32.i.i

bb.ae:                                            ; preds = %.critedge
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  resume { ptr, i32 } %i.ha

.thread32.i.i:                                    ; preds = %.lr.ph.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.173") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.hb = load i8, ptr %i.eg, align 8, !tbaa !108, !range !18, !alias.scope !700, !noundef !19
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.af, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEEixIS8_SG_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit46

bb.af:                                            ; preds = %.thread32.i.i
  %.sroa.2.0.copyload.i.i.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i43, align 8, !alias.scope !700 ; 3 uses
  %i.hd = load ptr, ptr %i.b, align 8, !tbaa !100, !noalias !700
  store ptr %i.hd, ptr %.sroa.2.0.copyload.i.i.i44, align 8, !tbaa !112
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i44, i64 8
  store i64 1, ptr %i.he, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i44, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i45, align 8
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEEixIS8_SG_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit46

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEEixIS8_SG_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit46: ; preds = %.thread32.i.i, %bb.af
  %.sroa.2.0.copyload.i42 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i43, align 8 ; 8 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i42, i64 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !93, !noalias !701 ; 5 uses
  %i.hh = icmp ne i64 %i.hg, 0
  call void @llvm.assume(i1 %i.hh)
  %i.hi = icmp ult i64 %i.hg, 2
  br i1 %i.hi, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEEixIS8_SG_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit46
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i42, i64 16 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !94, !noalias !716
  %.not.i.i.i.i.i.i.i.i.i52 = icmp ult i64 %i.hk, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i52, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i64 131072, ptr %i.hj, align 8, !tbaa !51, !noalias !716
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i42, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread

bb.ai:                                            ; preds = %bb.ag
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i42, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !100, !noalias !716 ; 2 uses
  %i.ho = load ptr, ptr %i.a, align 8, !tbaa !100, !noalias !716 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hq = ptrtoint ptr %i.hn to i64               ; 2 uses
  %i.hr = xor i64 %i.hq, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.hs = mul i64 %i.hr, -2543921745674291987
  %i.ht = call noundef i64 @llvm.bswap.i64(i64 %i.hs)
  %i.hu = xor i64 %i.ht, %i.hq
  %i.hv = mul i64 %i.hu, 6679450291180483821
  %i.hw = lshr i64 %i.hv, 56
  %i.hx = trunc nuw i64 %i.hw to i8
  %i.hy = and i8 %i.hx, 127
  %i.hz = ptrtoint ptr %i.ho to i64               ; 2 uses
  %i.ia = xor i64 %i.hz, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ib = mul i64 %i.ia, -2543921745674291987
  %i.ic = call noundef i64 @llvm.bswap.i64(i64 %i.ib)
  %i.id = xor i64 %i.ic, %i.hz
  %i.ie = mul i64 %i.id, -2543921745674291987
  %i.if = call noundef i64 @llvm.bswap.i64(i64 %i.ie)
  %i.ig = call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.if, i8 noundef signext %i.hy), !noalias !716
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i42, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i53 = load ptr, ptr %i.ih, align 8, !tbaa !52, !noalias !716
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i53, i64 %i.ig
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread

bb.ak:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEEixIS8_SG_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit46
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i42, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !52, !noalias !719 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.ik, i32 0, i32 1, i32 1), !noalias !719
  %i.il = load ptr, ptr %i.a, align 8, !tbaa !100, !noalias !719 ; 2 uses
  %i.im = ptrtoint ptr %i.il to i64               ; 2 uses
  %i.in = xor i64 %i.im, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.io = mul i64 %i.in, -2543921745674291987
  %i.ip = call noundef i64 @llvm.bswap.i64(i64 %i.io)
  %i.iq = xor i64 %i.ip, %i.im
  %i.ir = mul i64 %i.iq, -2543921745674291987
  %i.is = call noundef i64 @llvm.bswap.i64(i64 %i.ir) ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i42, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !94, !noalias !722
  %i.iv = and i64 %i.iu, 65535
  %i.iw = lshr i64 %i.is, 7
  %i.ix = xor i64 %i.iw, %i.iv
  %i.iy = trunc i64 %i.is to i8
  %i.iz = and i8 %i.iy, 127
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i42, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i61 = load ptr, ptr %i.ja, align 8, !tbaa !52, !noalias !719 ; 2 uses
  %i.jb = insertelement <16 x i8> poison, i8 %i.iz, i64 0
  %i.jc = shufflevector <16 x i8> %i.jb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %.pn.i62 = phi i64 [ %i.ix, %bb.ak ], [ %i.ka, %bb.am ]
  %.sroa.15.0.i63 = phi i64 [ 0, %bb.ak ], [ %i.jz, %bb.am ] ; 2 uses
  %.sroa.7.0.i64 = and i64 %.pn.i62, %i.hg        ; 5 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i61, i64 %.sroa.7.0.i64
  call void @llvm.prefetch.p0(ptr %i.jd, i32 0, i32 3, i32 1), !noalias !719
  %i.je = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.sroa.7.0.i64
  %i.jf = load <16 x i8>, ptr %i.je, align 1, !tbaa !52, !noalias !719 ; 2 uses
  %i.jg = icmp eq <16 x i8> %i.jc, %i.jf
  %i.jh = bitcast <16 x i1> %i.jg to i16          ; 2 uses
  %.not59.i65 = icmp eq i16 %i.jh, 0
  br i1 %.not59.i65, label %.critedge18.i70, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.al, %.critedge.i68
  %.sroa.033.060.i67 = phi i16 [ %i.jq, %.critedge.i68 ], [ %i.jh, %bb.al ] ; 3 uses
  %i.ji = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i67, i1 true)
  %i.jj = zext nneg i16 %i.ji to i64
  %i.jk = add i64 %.sroa.7.0.i64, %i.jj
  %i.jl = and i64 %i.jk, %i.hg
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i61, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !100, !noalias !719
  %i.jo = icmp eq ptr %i.jn, %i.il
  br i1 %i.jo, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit59, label %.critedge.i68, !prof !137

.critedge.i68:                                    ; preds = %.lr.ph.i66
  %i.jp = add i16 %.sroa.033.060.i67, -1
  %i.jq = and i16 %i.jp, %.sroa.033.060.i67       ; 2 uses
  %.not.i69 = icmp eq i16 %i.jq, 0
  br i1 %.not.i69, label %.critedge18.i70, label %.lr.ph.i66

.critedge18.i70:                                  ; preds = %.critedge.i68, %bb.al
  %i.jr = icmp eq <16 x i8> %i.jf, splat (i8 -128)
  %i.js = bitcast <16 x i1> %i.jr to i16          ; 2 uses
  %.not51.i71 = icmp eq i16 %i.js, 0
  br i1 %.not51.i71, label %bb.am, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread100, !prof !118

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread100: ; preds = %.critedge18.i70
  %i.jt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.js, i1 true)
  %i.ju = zext nneg i16 %i.jt to i64
  %i.jv = add i64 %.sroa.7.0.i64, %i.ju
  %i.jw = and i64 %i.jv, %i.hg
  %i.jx = call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.is, i64 %i.jw, i64 %.sroa.15.0.i63), !noalias !719
  %.sroa.0.0.copyload.i.i.i.i22.i73 = load ptr, ptr %i.ja, align 8, !tbaa !52, !noalias !719
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i73, i64 %i.jx
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread

bb.am:                                            ; preds = %.critedge18.i70
  %i.jz = add i64 %.sroa.15.0.i63, 16             ; 2 uses
  %i.ka = add i64 %i.jz, %.sroa.7.0.i64
  br label %bb.al

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread: ; preds = %bb.ah, %bb.aj, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread100
  %.sroa.4.097 = phi ptr [ %i.jy, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread100 ], [ %i.hl, %bb.ah ], [ %i.ii, %bb.aj ]
  %i.kb = load ptr, ptr %i.a, align 8, !tbaa !100, !noalias !725
  store ptr %i.kb, ptr %.sroa.4.097, align 8, !tbaa !100
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit59

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit59: ; preds = %.lr.ph.i66, %bb.ai, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread
  %i.kc = load ptr, ptr %i.b, align 8, !tbaa !100
  call fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_124AnalyzeDependencyForFileEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS6_NS8_18container_internal6HashEqIS6_vE4HashENSC_2EqESaIS6_EEEPNS8_13flat_hash_mapIS6_SG_SD_SE_SaISt4pairIKS6_SG_EEEEPNSI_IS6_iSD_SE_SaISJ_ISK_iEEEE(ptr noundef %i.kc, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit34

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit34: ; preds = %bb.t, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.kd = add nuw nsw i32 %.029117, 1             ; 2 uses
  %i.ke = load ptr, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !206
  %i.kh = icmp slt i32 %i.kd, %i.kg
  br i1 %i.kh, label %bb.s, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, !llvm.loop !726

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit34, %.lr.ph.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit, %bb.g, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !93     ; 4 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !94
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.h = load ptr, ptr %1, align 8, !tbaa !100
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !94, !noalias !727
  %i.v = and i64 %i.u, 65535
  %i.w = lshr i64 %i.s, 7
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.s to i8
  %i.z = and i8 %i.y, 127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i = phi i64 [ %i.x, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.a        ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !52 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.a                     ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a, label %bb.f, !prof !137

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.i = icmp eq i16 %i.as, 0
  br i1 %.not43.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, !prof !118

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !730

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !51
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a: ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.al
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 8)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9
  %.0 = phi i64 [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a ], [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !94
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, ptr noundef %i.e, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !94
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, ptr noundef %i.e, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.210, align 8            ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !93
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %0, ptr %1, align 8, !tbaa !203
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 40, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setISA_NS3_6HashEqISA_vE4HashENSD_2EqESaISA_EEEEESE_SF_SaISt4pairIKSA_SH_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSQ_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.c = load i64, ptr %0, align 8, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !94
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, ptr noundef %i.e, i64 noundef 40, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE15destructor_implEv.exit: ; preds = %bb.a, %.noexc
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #29
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

declare void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.173") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !94, !noalias !731
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !93, !noalias !731 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !52 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !52 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !137

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !118

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ] ; 2 uses
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink77) ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_6HashEqIPKN6google8protobuf14FileDescriptorEvE4HashES8_EEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE19transfer_n_slots_fnEPvSM_SM_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit
  %.014 = phi i64 [ %i.o, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.q, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit ], [ %1, %bb.a ] ; 3 uses
  %.01012 = phi ptr [ %i.p, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit ], [ %2, %bb.a ] ; 5 uses
  %i.a = load ptr, ptr %.01012, align 8, !tbaa !112
  store ptr %i.a, ptr %.0913, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 3 uses
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEC2EOSF_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93   ; 3 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ult i64 %i.d, 2
  br i1 %i.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.01012, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %.01012, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !94
  %i.k = and i64 %i.j, 65536
  %i.l = icmp ne i64 %i.k, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.d, ptr noundef %i.h, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.l)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #29
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit: ; preds = %.lr.ph, %bb.b
  %i.o = add i64 %.014, -1                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01012, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !734

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSR_PFvSR_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !93     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !735

.lr.ph:                                           ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit
  %.sroa.054.061 = phi i16 [ %i.bp, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.w ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !137

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !137

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !52
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !118

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !96
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 2 uses
  store ptr %i.y, ptr %i.ba, align 8, !tbaa !112
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEC2EOSF_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bc) #26
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !93 ; 3 uses
  %i.be = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp ult i64 %i.bd, 2
  br i1 %i.bf, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !94
  %i.bk = and i64 %i.bj, 65536
  %i.bl = icmp ne i64 %i.bk, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 noundef %i.bd, ptr noundef %i.bh, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.bl)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #29
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE8transferEPNS1_13map_slot_typeIS8_SF_EESO_.exit: ; preds = %bb.i, %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bo = add i16 %.sroa.054.061, -1
  %i.bp = and i16 %i.bo, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bp, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEC2EOSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"struct.absl::lts_20250512::container_internal::HeapPtrs", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.a = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.a, ptr %0, align 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 1, ptr %1, align 8
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE30find_or_prepare_insert_non_sooIS8_EESE_INSI_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.184") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !94, !noalias !736
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !93, !noalias !736 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !52 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !52 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !137

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !118

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ] ; 2 uses
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink77) ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !679
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm16EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #18 comdat {
bb.a:
  %i.a = shl i64 %3, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSO_PFvSO_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !93     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !739

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bc, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !137

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !137

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !52
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !118

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !96
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ba, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bb = add i16 %.sroa.054.061, -1
  %i.bc = and i16 %i.bb, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm8EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #18 comdat {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !93     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !740

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bd, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !137

bb.d:                                             ; preds = %.lr.ph
end_hunk_2
begin_hunk_3_@_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorINSt7__cxx1112basic_stringIcS7_SaIcEEESaISF_EESF_Lb0EEclERKS9_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEPNSt7__cxx1112basic_stringIcS4_SaIcEEEET0_T_SI_SH_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.017 = phi ptr [ %i.o, %bb.e ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.09.016 = phi ptr [ %i.n, %bb.e ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.09.016, align 8, !tbaa !51 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !225 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.017, i64 16 ; 3 uses
  store ptr %i.b, ptr %.017, align 8, !tbaa !50
  %i.c = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  %i.d = icmp ne i64 %.sroa.0.0.copyload.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.d, %i.c
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %.lr.ph
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.a, align 8, !tbaa !51
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i.i, 15
  br i1 %i.e, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.017, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %.loopexit ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.f, ptr %.017, align 8, !tbaa !44
  %i.g = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.g, ptr %i.b, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc8, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc8 ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 1, !tbaa !52
  store i8 %i.i, ptr %i.h, align 1, !tbaa !52
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.017, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !40
  %i.l = load ptr, ptr %.017, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.017, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1496

.loopexit:                                        ; preds = %.noexc.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.noexc.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.p = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #28
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %bb.e ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.r

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #29
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooISt17basic_string_viewIcS7_EEESt4pairINSE_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !51 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !225
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !94, !noalias !1497
  %i.h = and i64 %i.g, 65535
  %i.i = load i64, ptr %1, align 8, !tbaa !93, !noalias !1497 ; 3 uses
  %i.j = lshr i64 %i.e, 7
  %i.k = xor i64 %i.h, %i.j
  %i.l = trunc i64 %i.e to i8
  %i.m = and i8 %i.l, 127
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !52 ; 2 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.k, %bb.a ], [ %i.au, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.i                 ; 5 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !52 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.q, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.w, 0
  br i1 %.not60, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.035.061 = phi i16 [ %i.ai, %.critedge ], [ %i.w, %bb.b ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.061, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.7.0, %i.y
  %i.aa = and i64 %i.z, %i.i                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.aa ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !40
  %i.af = icmp eq i64 %i.ae, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.af, label %bb.c, label %.critedge, !prof !296

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.r, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ac, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i)
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ag, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.ah = add i16 %.sroa.035.061, -1
  %i.ai = and i16 %i.ah, %.sroa.035.061           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not53 = icmp eq i16 %i.ak, 0
  br i1 %.not53, label %bb.d, label %.thread, !prof !118

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.i
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i24 = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i24, i64 %i.ap
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink79 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ] ; 2 uses
  %.sink77 = phi ptr [ %i.as, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink79) ]
  store ptr %.sink79, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink77, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.a, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE19transfer_n_slots_fnEPvSF_SF_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit
  %.014 = phi i64 [ %i.m, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.o, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit ], [ %1, %bb.a ] ; 5 uses
  %.01012 = phi ptr [ %i.n, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit ], [ %2, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 3 uses
  store ptr %i.a, ptr %.0913, align 8, !tbaa !50
  %i.b = load ptr, ptr %.01012, align 8, !tbaa !44 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.b, ptr %.0913, align 8, !tbaa !44
  %i.i = load i64, ptr %i.c, align 8, !tbaa !52
  store i64 %i.i, ptr %i.a, align 8, !tbaa !52
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !40
  store ptr %i.c, ptr %.01012, align 8, !tbaa !44
  store i64 0, ptr %i.j, align 8, !tbaa !40
  store i8 0, ptr %i.c, align 8, !tbaa !52
  %i.m = add i64 %.014, -1                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1500

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSK_PFvSK_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !93     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.063 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.063
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.063 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not61 = icmp eq i16 %i.r, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.c
  %i.s = add nuw i64 %.063, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !1501

.lr.ph:                                           ; preds = %bb.c, %bb.v
  %.sroa.055.062 = phi i16 [ %i.dv, %bb.v ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.055.062, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.063, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.w ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44   ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !40  ; 14 uses
  %i.ab = icmp ult i64 %i.aa, 9
  br i1 %i.ab, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.ac = icmp samesign ugt i64 %i.aa, 3
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i = load i32, ptr %i.y, align 1
  %i.ad = zext i32 %.0.copyload.i.i.i to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.ag, align 1
  %i.ah = zext i32 %.0.copyload.i4.i.i to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %i.y, align 1, !tbaa !52
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = getelementptr i8, ptr %i.y, i64 %i.aa
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !52
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.al, %i.ap
  %i.ar = lshr i64 %i.aa, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = or disjoint i64 %i.aq, %i.av
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i.i = phi i64 [ %i.ai, %bb.e ], [ %i.aw, %bb.g ]
  %i.ax = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ay = mul i64 %i.ax, -2543921745674291987
  %i.az = tail call noundef i64 @llvm.bswap.i64(i64 %i.ay)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ba = icmp ult i64 %i.aa, 17
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i = load i64, ptr %i.y, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.bc, align 1
  %i.bd = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.be = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.bf = zext i64 %i.bd to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.k:                                             ; preds = %bb.i
  %i.bl = icmp ult i64 %i.aa, 33
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.0.copyload.i.i20.i = load i64, ptr %i.y, align 1
  %i.bm = xor i64 %.0.copyload.i.i20.i, 1376283091369227076
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload.i.i21.i = load i64, ptr %i.bn, align 1
  %i.bo = xor i64 %.0.copyload.i.i21.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bp = zext i64 %i.bm to i128
  %i.bq = zext i64 %i.bo to i128
  %i.br = mul nuw i128 %i.bq, %i.bp               ; 2 uses
  %i.bs = getelementptr i8, ptr %i.y, i64 %i.aa   ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -16
  %.0.copyload.i.i22.i = load i64, ptr %i.bt, align 1
end_hunk_3
