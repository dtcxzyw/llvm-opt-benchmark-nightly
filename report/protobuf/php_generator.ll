inline.NumInlined: 4892
inline.NumDeleted: 1491
begin_hunk_0_@_ZNK6google8protobuf8compiler3php9Generator8GenerateEPKNS0_14FileDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.hi = load i64, ptr %i.hd, align 8, !tbaa !40
  %i.hj = icmp ult i64 %i.hi, %i.hg
  br i1 %i.hj, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i: ; preds = %bb.av
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.hc, ptr %i.he, i64 %i.hg)
  %i.hk = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.hk, label %.loopexit275.i.i.i.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread19.i.i.i.i.i

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

bb.ay:                                            ; preds = %.loopexit277.i.i.i.i.a
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.az:                                            ; preds = %bb.ao
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i
  %.sroa.9.0314.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i ], [ %.sroa.9.0314.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0234.0313.i.i.i.i = phi ptr [ %.sroa.0234.1.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i ], [ %.sroa.0234.0313.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %i.ii = load ptr, ptr %.sroa.9.0314.i.i.i.i, align 8, !tbaa !100 ; 18 uses
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
  br i1 %.not51.i.i.i.i.i, label %bb.bg, label %.thread.i.i.i.i.i, !prof !118

.thread.i.i.i.i.i:                                ; preds = %.critedge18.i.i.i.i.i
  %i.kn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.km, i1 true)
  %i.ko = zext nneg i16 %i.kn to i64
  %i.kp = add i64 %.sroa.7.0.i.i.i.i.i, %i.ko
  %i.kq = and i64 %i.kp, %i.ij
  %i.kr = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.jo, i64 %i.kq, i64 %.sroa.15.0.i.i.i.i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread251.i.i.i.i unwind label %bb.bu

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread251.i.i.i.i: ; preds = %.thread.i.i.i.i.i
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
  %43 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %43, 131071
  %i.lc = load ptr, ptr %i.dt, align 8
  %i.ld = icmp eq ptr %i.lc, %i.ii
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %i.ld, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.thread9.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.le = load ptr, ptr %i.dt, align 8, !tbaa !52 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.le, i32 0, i32 1, i32 1)
  %i.lf = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.lg = xor i64 %i.lf, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.lh = mul i64 %i.lg, -2543921745674291987
  %i.li = call noundef i64 @llvm.bswap.i64(i64 %i.lh)
  %i.lj = xor i64 %i.li, %i.lf
  %i.lk = mul i64 %i.lj, -2543921745674291987
  %i.ll = call noundef i64 @llvm.bswap.i64(i64 %i.lk) ; 2 uses
  %i.lm = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !94, !noalias !141
  %i.ln = and i64 %i.lm, 65535
  %i.lo = lshr i64 %i.ll, 7
  %i.lp = xor i64 %i.ln, %i.lo
  %i.lq = trunc i64 %i.ll to i8
  %i.lr = and i8 %i.lq, 127
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !52 ; 2 uses
  %i.ls = insertelement <16 x i8> poison, i8 %i.lr, i64 0
  %i.lt = shufflevector <16 x i8> %i.ls, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bm, %bb.bj
  %.pn.i6.i.i.i.i.i.i = phi i64 [ %i.lp, %bb.bj ], [ %i.ml, %bb.bm ]
  %.sroa.13.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bj ], [ %i.mk, %bb.bm ]
  %.sroa.6.0.i.i.i93.i.i.i.i = and i64 %.pn.i6.i.i.i.i.i.i, %i.kw ; 4 uses
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i93.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.lu, i32 0, i32 3, i32 1)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.le, i64 %.sroa.6.0.i.i.i93.i.i.i.i
  %i.lw = load <16 x i8>, ptr %i.lv, align 1, !tbaa !52 ; 2 uses
  %i.lx = icmp eq <16 x i8> %i.lt, %i.lw
  %i.ly = bitcast <16 x i1> %i.lx to i16          ; 2 uses
  %.not45.i.i.i.i.i.i.i = icmp eq i16 %i.ly, 0
  br i1 %.not45.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bk, %bb.bl
  %.sroa.017.046.i.i.i.i.i.i.i = phi i16 [ %i.mh, %bb.bl ], [ %i.ly, %bb.bk ] ; 3 uses
  %i.lz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i.i.i.i, i1 true)
  %i.ma = zext nneg i16 %i.lz to i64
  %i.mb = add i64 %.sroa.6.0.i.i.i93.i.i.i.i, %i.ma
  %i.mc = and i64 %i.mb, %i.kw                    ; 2 uses
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !100
  %i.mf = icmp eq ptr %i.me, %i.ii
  br i1 %i.mf, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i, label %bb.bl, !prof !137

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.mg = add i16 %.sroa.017.046.i.i.i.i.i.i.i, -1
  %i.mh = and i16 %i.mg, %.sroa.017.046.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.mh, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.bl, %bb.bk
  %i.mi = icmp eq <16 x i8> %i.lw, splat (i8 -128)
  %i.mj = bitcast <16 x i1> %i.mi to i16
  %.not43.i.i.i.i.i.i.i = icmp eq i16 %i.mj, 0
  br i1 %.not43.i.i.i.i.i.i.i, label %bb.bm, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i, !prof !118

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.mk = add i64 %.sroa.13.0.i.i.i.i.i.i.i, 16   ; 2 uses
  %i.ml = add i64 %i.mk, %.sroa.6.0.i.i.i93.i.i.i.i
  br label %bb.bk, !llvm.loop !144

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  invoke void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.mc, i64 noundef 16)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i unwind label %bb.bu

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.thread9.i.i.i.i.i: ; preds = %bb.bi
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !51
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.thread9.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i, %bb.bi
  %i.mm = load i64, ptr %21, align 8, !tbaa !93, !noalias !145 ; 5 uses
  %i.mn = icmp ne i64 %i.mm, 0
  call void @llvm.assume(i1 %i.mn)
  %i.mo = icmp ult i64 %i.mm, 2
  br i1 %i.mo, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i
  %i.mp = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !94, !noalias !160
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.mp, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !51, !noalias !160
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.mq = load ptr, ptr %i.dq, align 8, !tbaa !100, !noalias !160 ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.ii
  br i1 %i.mr, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ms = ptrtoint ptr %i.mq to i64               ; 2 uses
  %i.mt = xor i64 %i.ms, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.mu = mul i64 %i.mt, -2543921745674291987
  %i.mv = call noundef i64 @llvm.bswap.i64(i64 %i.mu)
  %i.mw = xor i64 %i.mv, %i.ms
  %i.mx = mul i64 %i.mw, 6679450291180483821
  %i.my = lshr i64 %i.mx, 56
  %i.mz = trunc nuw i64 %i.my to i8
  %i.na = and i8 %i.mz, 127
  %i.nb = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.nc = xor i64 %i.nb, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.nd = mul i64 %i.nc, -2543921745674291987
  %i.ne = call noundef i64 @llvm.bswap.i64(i64 %i.nd)
  %i.nf = xor i64 %i.ne, %i.nb
  %i.ng = mul i64 %i.nf, -2543921745674291987
  %i.nh = call noundef i64 @llvm.bswap.i64(i64 %i.ng)
  %i.ni = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.nh, i8 noundef signext %i.na)
          to label %.noexc95.i.i.i.i unwind label %bb.bv

.noexc95.i.i.i.i:                                 ; preds = %bb.bq
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !52, !noalias !160
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ni
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i.i.i.i

bb.br:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i
  %i.nk = load ptr, ptr %i.dq, align 8, !tbaa !52, !noalias !163 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.nk, i32 0, i32 1, i32 1), !noalias !163
  %i.nl = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.nm = xor i64 %i.nl, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.nn = mul i64 %i.nm, -2543921745674291987
  %i.no = call noundef i64 @llvm.bswap.i64(i64 %i.nn)
  %i.np = xor i64 %i.no, %i.nl
  %i.nq = mul i64 %i.np, -2543921745674291987
  %i.nr = call noundef i64 @llvm.bswap.i64(i64 %i.nq) ; 3 uses
  %i.ns = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !94, !noalias !166
  %i.nt = and i64 %i.ns, 65535
  %i.nu = lshr i64 %i.nr, 7
  %i.nv = xor i64 %i.nt, %i.nu
  %i.nw = trunc i64 %i.nr to i8
  %i.nx = and i8 %i.nw, 127
  %.sroa.0.0.copyload.i.i.i.i165.i.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !52, !noalias !163 ; 2 uses
  %i.ny = insertelement <16 x i8> poison, i8 %i.nx, i64 0
  %i.nz = shufflevector <16 x i8> %i.ny, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %bb.br
  %.pn.i166.i.i.i.i = phi i64 [ %i.nv, %bb.br ], [ %i.ox, %bb.bt ]
  %.sroa.15.0.i167.i.i.i.i = phi i64 [ 0, %bb.br ], [ %i.ow, %bb.bt ] ; 2 uses
  %.sroa.7.0.i168.i.i.i.i = and i64 %.pn.i166.i.i.i.i, %i.mm ; 5 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i165.i.i.i.i, i64 %.sroa.7.0.i168.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.oa, i32 0, i32 3, i32 1), !noalias !163
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.sroa.7.0.i168.i.i.i.i
  %i.oc = load <16 x i8>, ptr %i.ob, align 1, !tbaa !52, !noalias !163 ; 2 uses
  %i.od = icmp eq <16 x i8> %i.nz, %i.oc
  %i.oe = bitcast <16 x i1> %i.od to i16          ; 2 uses
  %.not59.i.i.i.i.i = icmp eq i16 %i.oe, 0
  br i1 %.not59.i.i.i.i.i, label %.critedge18.i172.i.i.i.i, label %.lr.ph.i169.i.i.i.i

.lr.ph.i169.i.i.i.i:                              ; preds = %bb.bs, %.critedge.i170.i.i.i.i
  %.sroa.033.060.i.i.i.i.i = phi i16 [ %i.on, %.critedge.i170.i.i.i.i ], [ %i.oe, %bb.bs ] ; 3 uses
  %i.of = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i.i.i.i.i, i1 true)
  %i.og = zext nneg i16 %i.of to i64
  %i.oh = add i64 %.sroa.7.0.i168.i.i.i.i, %i.og
  %i.oi = and i64 %i.oh, %i.mm
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i165.i.i.i.i, i64 %i.oi
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !100, !noalias !163
  %i.ol = icmp eq ptr %i.ok, %i.ii
  br i1 %i.ol, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i, label %.critedge.i170.i.i.i.i, !prof !137

.critedge.i170.i.i.i.i:                           ; preds = %.lr.ph.i169.i.i.i.i
  %i.om = add i16 %.sroa.033.060.i.i.i.i.i, -1
  %i.on = and i16 %i.om, %.sroa.033.060.i.i.i.i.i ; 2 uses
  %.not.i171.i.i.i.i = icmp eq i16 %i.on, 0
  br i1 %.not.i171.i.i.i.i, label %.critedge18.i172.i.i.i.i, label %.lr.ph.i169.i.i.i.i

.critedge18.i172.i.i.i.i:                         ; preds = %.critedge.i170.i.i.i.i, %bb.bs
  %i.oo = icmp eq <16 x i8> %i.oc, splat (i8 -128)
  %i.op = bitcast <16 x i1> %i.oo to i16          ; 2 uses
  %.not51.i173.i.i.i.i = icmp eq i16 %i.op, 0
  br i1 %.not51.i173.i.i.i.i, label %bb.bt, label %.thread.i174.i.i.i.i, !prof !118

.thread.i174.i.i.i.i:                             ; preds = %.critedge18.i172.i.i.i.i
  %i.oq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.op, i1 true)
  %i.or = zext nneg i16 %i.oq to i64
  %i.os = add i64 %.sroa.7.0.i168.i.i.i.i, %i.or
  %i.ot = and i64 %i.os, %i.mm
  %i.ou = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.nr, i64 %i.ot, i64 %.sroa.15.0.i167.i.i.i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread259.i.i.i.i unwind label %bb.bv

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread259.i.i.i.i: ; preds = %.thread.i174.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i22.i175.i.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !52, !noalias !163
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i175.i.i.i.i, i64 %i.ou
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i.i.i.i

bb.bt:                                            ; preds = %.critedge18.i172.i.i.i.i
  %i.ow = add i64 %.sroa.15.0.i167.i.i.i.i, 16    ; 2 uses
  %i.ox = add i64 %i.ow, %.sroa.7.0.i168.i.i.i.i
  br label %bb.bs

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread259.i.i.i.i, %.noexc95.i.i.i.i, %bb.bo
  %.sroa.5.0256.i.i.i.i = phi ptr [ %i.ov, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread259.i.i.i.i ], [ %i.dq, %bb.bo ], [ %i.nj, %.noexc95.i.i.i.i ]
  store ptr %i.ii, ptr %.sroa.5.0256.i.i.i.i, align 8, !tbaa !100
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i

bb.bu:                                            ; preds = %.thread.i193.i.i.i.i, %bb.ca, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i, %.thread.i.i.i.i.i, %bb.bd
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.bv:                                            ; preds = %.thread.i174.i.i.i.i, %bb.bq
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.bw:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread249.i.i.i.i
  br i1 %i.lb, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.pa = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !94, !noalias !169
  %.not.i.i.i.i.i.i104.i.i.i.i = icmp ult i64 %i.pa, 131072
  br i1 %.not.i.i.i.i.i.i104.i.i.i.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !51, !noalias !169
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.pb = load ptr, ptr %i.dt, align 8, !tbaa !100, !noalias !169 ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.ii
  br i1 %i.pc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread266.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pd = ptrtoint ptr %i.pb to i64               ; 2 uses
  %i.pe = xor i64 %i.pd, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.pf = mul i64 %i.pe, -2543921745674291987
  %i.pg = call noundef i64 @llvm.bswap.i64(i64 %i.pf)
  %i.ph = xor i64 %i.pg, %i.pd
  %i.pi = mul i64 %i.ph, 6679450291180483821
  %i.pj = lshr i64 %i.pi, 56
  %i.pk = trunc nuw i64 %i.pj to i8
  %i.pl = and i8 %i.pk, 127
  %i.pm = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.pn = xor i64 %i.pm, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.po = mul i64 %i.pn, -2543921745674291987
  %i.pp = call noundef i64 @llvm.bswap.i64(i64 %i.po)
  %i.pq = xor i64 %i.pp, %i.pm
  %i.pr = mul i64 %i.pq, -2543921745674291987
  %i.ps = call noundef i64 @llvm.bswap.i64(i64 %i.pr)
  %i.pt = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ps, i8 noundef signext %i.pl)
          to label %.noexc110.i.i.i.i unwind label %bb.bu

.noexc110.i.i.i.i:                                ; preds = %bb.ca
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i105.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !52, !noalias !169
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i105.i.i.i.i, i64 %i.pt
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread.i.i.i.i

bb.cb:                                            ; preds = %bb.bw
  %i.pv = load ptr, ptr %i.dt, align 8, !tbaa !52, !noalias !178 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.pv, i32 0, i32 1, i32 1), !noalias !178
  %i.pw = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.px = xor i64 %i.pw, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.py = mul i64 %i.px, -2543921745674291987
  %i.pz = call noundef i64 @llvm.bswap.i64(i64 %i.py)
  %i.qa = xor i64 %i.pz, %i.pw
  %i.qb = mul i64 %i.qa, -2543921745674291987
  %i.qc = call noundef i64 @llvm.bswap.i64(i64 %i.qb) ; 3 uses
  %i.qd = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !94, !noalias !181
  %i.qe = and i64 %i.qd, 65535
  %i.qf = lshr i64 %i.qc, 7
  %i.qg = xor i64 %i.qe, %i.qf
  %i.qh = trunc i64 %i.qc to i8
  %i.qi = and i8 %i.qh, 127
  %.sroa.0.0.copyload.i.i.i.i182.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !52, !noalias !178 ; 2 uses
  %i.qj = insertelement <16 x i8> poison, i8 %i.qi, i64 0
  %i.qk = shufflevector <16 x i8> %i.qj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  %.pn.i183.i.i.i.i = phi i64 [ %i.qg, %bb.cb ], [ %i.ri, %bb.cd ]
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_125GeneratedMetadataFileNameB5cxx11EPKNS0_14FileDescriptorERKNS2_7OptionsE:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.13, ptr %i.fv, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

bb.v:                                             ; preds = %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.w:                                             ; preds = %bb.o
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bd

bb.x:                                             ; preds = %bb.t
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bd

bb.y:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 12, ptr %7, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.14, ptr %i.fz, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.z unwind label %bb.al

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not183 = icmp eq i32 %.1.i.i, -1
  br i1 %.not183, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.gh = ptrtoint ptr %i.f to i64
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i96, %.lr.ph
  %.0185 = phi i32 [ 0, %.lr.ph ], [ %i.hq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i96 ] ; 2 uses
  %.041184 = phi i32 [ %.1.i.i, %.lr.ph ], [ %i.hy, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i96 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.gi = sext i32 %.0185 to i64                  ; 4 uses
  %i.gj = icmp ult i64 %.sroa.speculated.i, %i.gi
  br i1 %i.gj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i64 noundef %i.gi, i64 noundef %.sroa.speculated.i) #28
          to label %.noexc88 unwind label %.loopexit.split-lp

.noexc88:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.gk = sub nsw i32 %.041184, %.0185
  %i.gl = sext i32 %i.gk to i64
  %i.gm = sub nuw i64 %.sroa.speculated.i, %i.gi
  %.sroa.speculated.i85 = call i64 @llvm.umin.i64(i64 %i.gm, i64 %i.gl)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gi
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_122UnderscoresToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind noalias writable align 8 %8, i64 %.sroa.speculated.i85, ptr %i.gn)
          to label %bb.ad unwind label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.go = load ptr, ptr %4, align 8, !tbaa !44    ; 6 uses
  %i.gp = icmp eq ptr %i.go, %i.q
  %i.gq = load ptr, ptr %8, align 8, !tbaa !44    ; 5 uses
  %i.gr = icmp eq ptr %i.gq, %i.ga                ; 2 uses
  br i1 %i.gp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ad
  br i1 %i.gr, label %bb.ae, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ad
  br i1 %i.gr, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gs = load i64, ptr %i.gb, align 8, !tbaa !40 ; 3 uses
  %i.gt = icmp ult i64 %i.gs, 16
  call void @llvm.assume(i1 %i.gt)
  switch i64 %i.gs, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.gu = load i8, ptr %i.gq, align 1, !tbaa !52
  store i8 %i.gu, ptr %i.go, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.go, ptr align 1 %i.gq, i64 %i.gs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.gv = load i64, ptr %i.gb, align 8, !tbaa !40 ; 2 uses
  store i64 %i.gv, ptr %i.r, align 8, !tbaa !40
  %i.gw = load ptr, ptr %4, align 8, !tbaa !44
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gv
  store i8 0, ptr %i.gx, align 1, !tbaa !52
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gq, ptr %4, align 8, !tbaa !44
  %i.gy = load <2 x i64>, ptr %i.gb, align 8, !tbaa !52
  store <2 x i64> %i.gy, ptr %i.r, align 8, !tbaa !52
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gz = load i64, ptr %i.q, align 8, !tbaa !52
  store ptr %i.gq, ptr %4, align 8, !tbaa !44
  %i.ha = load <2 x i64>, ptr %i.gb, align 8, !tbaa !52
  store <2 x i64> %i.ha, ptr %i.r, align 8, !tbaa !52
  %.not.i89 = icmp eq ptr %i.go, null
  br i1 %.not.i89, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.go, ptr %8, align 8, !tbaa !44
  store i64 %i.gz, ptr %i.ga, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ga, ptr %8, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ah, %bb.ai
  %i.hb = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.go, %bb.ah ], [ %i.ga, %bb.ai ]
  store i64 0, ptr %i.gb, align 8, !tbaa !40
  store i8 0, ptr %i.hb, align 1, !tbaa !52
  %i.hc = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.ga
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.he = load i64, ptr %i.ga, align 8, !tbaa !52
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.hg = load ptr, ptr %4, align 8, !tbaa !44
  %i.hh = load i64, ptr %i.r, align 8, !tbaa !40
  invoke void @_ZN6google8protobuf8compiler3php18ReservedNamePrefixB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_14FileDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.hh, ptr %i.hg, ptr noundef nonnull %1)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hi = load ptr, ptr %10, align 8, !tbaa !44
  %i.hj = load i64, ptr %i.gc, align 8, !tbaa !40
  store i64 %i.hj, ptr %9, align 8
  store ptr %i.hi, ptr %i.gd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.hk = load ptr, ptr %4, align 8, !tbaa !44
  %i.hl = load i64, ptr %i.r, align 8, !tbaa !40
  store i64 %i.hl, ptr %11, align 8
  store ptr %i.hk, ptr %i.ge, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store i64 1, ptr %12, align 8
  store ptr @.str.13, ptr %i.gf, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_(ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.hm = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.gg
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.ak
  %i.ho = load i64, ptr %i.gg, align 8, !tbaa !52
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.hq = add nuw nsw i32 %.041184, 1             ; 2 uses
  %i.hr = sext i32 %i.hq to i64                   ; 3 uses
  %i.hs = icmp ugt i64 %.sroa.speculated.i, %i.hr
  br i1 %i.hs, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i96, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i96:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.ht = sub nuw i64 %.sroa.speculated.i, %i.hr
  %i.hu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hr
  %i.hv = call ptr @memchr(ptr noundef nonnull %i.hu, i32 noundef 47, i64 noundef %i.ht) #26 ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.hv, null
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = sub i64 %i.hw, %i.gh
  %i.hy = trunc i64 %i.hx to i32                  ; 2 uses
  %.not = icmp eq i32 %i.hy, -1
  %or.cond = select i1 %.not.i.i97, i1 true, i1 %.not
  br i1 %or.cond, label %.preheader.preheader, label %bb.aa, !llvm.loop !503

bb.al:                                            ; preds = %bb.y
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bd

.loopexit:                                        ; preds = %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bd

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.ao:                                            ; preds = %bb.aj
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ic = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.gg
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.ao
  %i.ie = load i64, ptr %i.gg, align 8, !tbaa !52
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.an
  %.pn = phi { ptr, i32 } [ %i.ia, %bb.an ], [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.ib, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bd

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.z, %bb.n, %bb.u, %bb.s, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %.1 = phi i32 [ %.1.i.i, %bb.n ], [ %.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.1.i.i, %bb.s ], [ %.1.i.i, %bb.u ], [ -1, %bb.z ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  %.not.i.i103 = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %.not.i.i103, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i96, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %.1235 = phi i32 [ %.1, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i96 ] ; 3 uses
  %.not13.i.i105255 = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %.not13.i.i105255, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107, label %.lr.ph257

.preheader:                                       ; preds = %.lr.ph257
  %.not13.i.i105 = icmp eq i64 %i.ig, 0
  br i1 %.not13.i.i105, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107, label %.lr.ph257, !llvm.loop !321

.lr.ph257:                                        ; preds = %.preheader.preheader, %.preheader
  %.1.i.i104256 = phi i64 [ %i.ig, %.preheader ], [ %.sroa.speculated.i, %.preheader.preheader ]
  %i.ig = add i64 %.1.i.i104256, -1               ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !52
  %i.ij = icmp eq i8 %i.ii, 47
  br i1 %i.ij, label %._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107.loopexit_crit_edge, label %.preheader, !llvm.loop !321

._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107.loopexit_crit_edge: ; preds = %.lr.ph257
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107, !llvm.loop !321

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107: ; preds = %.preheader, %.preheader.preheader, %._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107.loopexit_crit_edge, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %.1236 = phi i32 [ %.1, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ %.1235, %.preheader.preheader ], [ %.1235, %._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107.loopexit_crit_edge ], [ %.1235, %.preheader ]
  %.09.i.i106 = phi i64 [ -1, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ -1, %.preheader.preheader ], [ %i.ig, %._ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107.loopexit_crit_edge ], [ -1, %.preheader ] ; 2 uses
  %sext57.mask = and i64 %.09.i.i106, 4294967295
  %i.ik = icmp eq i64 %sext57.mask, 4294967295
  %i.il = trunc i64 %.09.i.i106 to i32
  %i.im = add nsw i32 %i.il, 1
  %.052 = select i1 %i.ik, i32 0, i32 %i.im       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.in = sext i32 %.052 to i64                   ; 4 uses
  %i.io = icmp ult i64 %.sroa.speculated.i, %i.in
  br i1 %i.io, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i64 noundef %i.in, i64 noundef %.sroa.speculated.i) #28
          to label %.noexc111 unwind label %bb.az

.noexc111:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit107
  %i.ip = sub nsw i32 %.1236, %.052
  %i.iq = sext i32 %i.ip to i64
  %i.ir = sub nuw i64 %.sroa.speculated.i, %i.in
  %.sroa.speculated.i108 = call i64 @llvm.umin.i64(i64 %i.ir, i64 %i.iq)
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.in
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_122UnderscoresToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind noalias writable align 8 %13, i64 %.sroa.speculated.i108, ptr %i.is)
          to label %bb.ar unwind label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.it = load ptr, ptr %4, align 8, !tbaa !44    ; 6 uses
  %i.iu = icmp eq ptr %i.it, %i.q
  %i.iv = load ptr, ptr %13, align 8, !tbaa !44   ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw                ; 2 uses
  br i1 %i.iu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i118: ; preds = %bb.ar
  br i1 %i.ix, label %bb.as, label %.thread.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i113: ; preds = %bb.ar
  br i1 %i.ix, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i114

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i118
  %i.iy = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !40 ; 3 uses
  %i.ja = icmp ult i64 %i.iz, 16
  call void @llvm.assume(i1 %i.ja)
  switch i64 %i.iz, label %bb.au [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116
    i64 1, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  %i.jb = load i8, ptr %i.iv, align 1, !tbaa !52
  store i8 %i.jb, ptr %i.it, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr align 1 %i.iv, i64 %i.iz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116: ; preds = %bb.au, %bb.at, %bb.as
  %i.jc = load i64, ptr %i.iy, align 8, !tbaa !40 ; 2 uses
  store i64 %i.jc, ptr %i.r, align 8, !tbaa !40
  %i.jd = load ptr, ptr %4, align 8, !tbaa !44
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jc
  store i8 0, ptr %i.je, align 1, !tbaa !52
  %.pre.i117 = load ptr, ptr %13, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120

.thread.i119:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i118
  store ptr %i.iv, ptr %4, align 8, !tbaa !44
  %i.jf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jg = load <2 x i64>, ptr %i.jf, align 8, !tbaa !52
  store <2 x i64> %i.jg, ptr %i.r, align 8, !tbaa !52
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i114: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i113
  %i.jh = load i64, ptr %i.q, align 8, !tbaa !52
  store ptr %i.iv, ptr %4, align 8, !tbaa !44
  %i.ji = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jj = load <2 x i64>, ptr %i.ji, align 8, !tbaa !52
  store <2 x i64> %i.jj, ptr %i.r, align 8, !tbaa !52
  %.not.i115 = icmp eq ptr %i.it, null
  br i1 %.not.i115, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i114
  store ptr %i.it, ptr %13, align 8, !tbaa !44
  store i64 %i.jh, ptr %i.iw, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i114, %.thread.i119
  store ptr %i.iw, ptr %13, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116, %bb.av, %bb.aw
  %i.jk = phi ptr [ %.pre.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116 ], [ %i.it, %bb.av ], [ %i.iw, %bb.aw ]
  %i.jl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.jl, align 8, !tbaa !40
  store i8 0, ptr %i.jk, align 1, !tbaa !52
  %i.jm = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !52
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.jr = load ptr, ptr %3, align 8, !tbaa !44
  %i.js = load i64, ptr %i.p, align 8, !tbaa !40
  store i64 %i.js, ptr %14, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.jr, ptr %i.jt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_124AnalyzeDependencyForFileEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS6_NS8_18container_internal6HashEqIS6_vE4HashENSC_2EqESaIS6_EEEPNS8_13flat_hash_mapIS6_SG_SD_SE_SaISt4pairIKS6_SG_EEEEPNSI_IS6_iSD_SE_SaISJ_ISK_iEEEE:bb.a
  br label %.thread32.i.i

bb.ae:                                            ; preds = %.critedge
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  resume { ptr, i32 } %i.ha

.thread32.i.i:                                    ; preds = %.lr.ph.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit
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
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit, label %bb.f, !prof !137

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

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit: ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.al
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 8)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9
  %.0 = phi i64 [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit ], [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge.i.i ]
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
end_hunk_2
