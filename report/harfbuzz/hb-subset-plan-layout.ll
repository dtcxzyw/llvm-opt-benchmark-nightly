Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-layout?download=true
inline.NumInlined: 8393
inline.NumDeleted: 3725
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZL33_GSUBGPOS_find_duplicate_featuresRKN2OT8GSUBGPOSEPK8hb_map_tPK8hb_set_tPK12hb_hashmap_tIjPKNS_7FeatureELb0EEPS3_:bb.a
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load i32, ptr %i.if, align 4            ; 2 uses
  %i.ih = and i32 %i.ig, 2
  %.not.i.i.i130 = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i.i130, label %_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE3hasIS3_EEbRKjPPT_.exit134.thread, label %bb.ac, !llvm.loop !3

_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE10fetch_itemERKjj.exit.i.i131: ; preds = %bb.ac, %.lr.ph.i.i.i126
  %.lcssa17.i.i132 = phi i32 [ %i.ht, %.lr.ph.i.i.i126 ], [ %i.ig, %bb.ac ]
  %i.ii = phi i64 [ %i.hq, %.lr.ph.i.i.i126 ], [ %i.id, %bb.ac ]
  %i.ij = trunc i32 %.lcssa17.i.i132 to i1
  br i1 %i.ij, label %bb.ad, label %_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE3hasIS3_EEbRKjPPT_.exit134.thread

bb.ad:                                            ; preds = %_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE10fetch_itemERKjj.exit.i.i131
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.ii
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !169
  br label %_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE3hasIS3_EEbRKjPPT_.exit134.thread

_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE3hasIS3_EEbRKjPPT_.exit134.thread: ; preds = %.lr.ph.i.i127, %_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE10fetch_itemERKjj.exit.i.i131, %bb.ab, %_ZNK2OT8GSUBGPOS11get_featureEj.exit122, %bb.ad
  %.029 = phi ptr [ %i.im, %bb.ad ], [ %.0.i.i1.i.i120, %_ZNK2OT8GSUBGPOS11get_featureEj.exit122 ], [ %.0.i.i1.i.i120, %bb.ab ], [ %.0.i.i1.i.i120, %_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE10fetch_itemERKjj.exit.i.i131 ], [ %.0.i.i1.i.i120, %.lr.ph.i.i127 ] ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.030, i64 2
  %i.io = getelementptr inbounds nuw i8, ptr %.030, i64 4 ; 3 uses
  %i.ip = load i16, ptr %i.in, align 1, !tbaa !56 ; 2 uses
  %i.iq = call noundef i16 @llvm.bswap.i16(i16 %i.ip) ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i16 %i.iq to i64
  %.sroa.11.sroa.0236.0.extract.trunc = zext i16 %i.iq to i32 ; 2 uses
  %.not8.i.i.i = icmp eq i16 %i.ip, 0
  br i1 %.not8.i.i.i, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", label %.lr.ph.i.i.i140

.lr.ph.i.i.i140:                                  ; preds = %_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE3hasIS3_EEbRKjPPT_.exit134.thread
  %i.ir = load ptr, ptr %i.am, align 8, !tbaa !89, !noalias !854 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i140
  %i.is = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 1
  %i.it = add nuw nsw i64 %i.is, 8589934590
  %i.iu = and i64 %i.it, 8589934590
  %i.iv = getelementptr i8, ptr %i.io, i64 %i.iu
  %scevgep.i.i.i = getelementptr i8, ptr %i.iv, i64 2
  br label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit"

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i140
  %i.iw = load i32, ptr %i.ao, align 8, !tbaa !90, !noalias !854
  %scevgep = getelementptr i8, ptr %.030, i64 6
  %i.ix = add nsw i32 %.sroa.11.sroa.0236.0.extract.trunc, -1
  %i.iy = zext i32 %i.ix to i64
  %i.iz = shl nuw nsw i64 %i.iy, 1
  %scevgep327 = getelementptr i8, ptr %scevgep, i64 %i.iz
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.11.sroa.0236.1 = phi i32 [ %.sroa.11.sroa.0236.0.extract.trunc, %.lr.ph.split.i.i.i ], [ %i.jy, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0228.1 = phi ptr [ %i.io, %.lr.ph.split.i.i.i ], [ %i.jz, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ] ; 3 uses
  %.val4.i.i.i = load i16, ptr %.sroa.0228.1, align 1, !tbaa !56, !noalias !854
  %i.ja = call noundef i16 @llvm.bswap.i16(i16 %.val4.i.i.i)
  %i.jb = zext i16 %i.ja to i32                   ; 3 uses
  %i.jc = mul i32 %i.jb, 506952113
  %i.jd = and i32 %i.jc, 1073741823
  %i.je = urem i32 %i.jd, %i.iw                   ; 2 uses
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [12 x i8], ptr %i.ir, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !noalias !854 ; 2 uses
  %i.jj = and i32 %i.ji, 2
  %.not15.i.i.i.i.i.i.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not15.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ae
  %i.jk = load i32, ptr %i.an, align 4, !noalias !854
  %i.jl = load i32, ptr %i.jg, align 4, !tbaa !91, !noalias !854
  %i.jm = icmp eq i32 %i.jl, %i.jb
  br i1 %i.jm, label %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.jn = load i32, ptr %i.jt, align 4, !tbaa !91, !noalias !854
  %i.jo = icmp eq i32 %i.jn, %i.jb
  br i1 %i.jo, label %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.af
  %.01016.i20.i.i.i.i.i.i.i = phi i32 [ %i.jr, %bb.af ], [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i = phi i32 [ %i.jp, %bb.af ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.jp = add i32 %.017.i19.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.jq = add i32 %i.jp, %.01016.i20.i.i.i.i.i.i.i
  %i.jr = and i32 %i.jq, %i.jk                    ; 2 uses
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [12 x i8], ptr %i.ir, i64 %i.js ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !noalias !854 ; 2 uses
  %i.jw = and i32 %i.jv, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.jw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, label %bb.af, !llvm.loop !1

"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i": ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i = phi i32 [ %i.ji, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.jv, %bb.af ]
  %i.jx = trunc i32 %.lcssa17.i.i.i.i.i.i.i to i1
  br i1 %i.jx, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", %bb.ae
  %i.jy = add i32 %.sroa.11.sroa.0236.1, -1       ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0228.1, i64 2
  %.not.i.i.i141 = icmp eq i32 %i.jy, 0
  br i1 %.not.i.i.i141, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", label %bb.ae, !llvm.loop !23

"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit": ; preds = %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, %_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE3hasIS3_EEbRKjPPT_.exit134.thread, %.lr.ph.split.us.i.i.i
  %.sroa.11.sroa.0236.2 = phi i32 [ 0, %_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE3hasIS3_EEbRKjPPT_.exit134.thread ], [ 0, %.lr.ph.split.us.i.i.i ], [ %.sroa.11.sroa.0236.1, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0228.2 = phi ptr [ %i.io, %_ZNK12hb_hashmap_tIjPKN2OT7FeatureELb0EE3hasIS3_EEbRKjPPT_.exit134.thread ], [ %scevgep.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0228.1, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i" ], [ %scevgep327, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.kb = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 3 uses
  %i.kc = load i16, ptr %i.ka, align 1, !tbaa !56 ; 2 uses
  %i.kd = call noundef i16 @llvm.bswap.i16(i16 %i.kc) ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i143 = zext i16 %i.kd to i64
  %.sroa.11.sroa.0.0.extract.trunc = zext i16 %i.kd to i32 ; 2 uses
  %.not8.i.i.i153 = icmp eq i16 %i.kc, 0
  br i1 %.not8.i.i.i153, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171", label %.lr.ph.i.i.i154

.lr.ph.i.i.i154:                                  ; preds = %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit"
  %i.ke = load ptr, ptr %i.am, align 8, !tbaa !89, !noalias !855 ; 3 uses
  %.not.i.i.i.i.i.i156 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i.i.i156, label %.lr.ph.split.us.i.i.i169, label %.lr.ph.split.i.i.i157

.lr.ph.split.us.i.i.i169:                         ; preds = %.lr.ph.i.i.i154
  %i.kf = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i143, 1
  %i.kg = add nuw nsw i64 %i.kf, 8589934590
  %i.kh = and i64 %i.kg, 8589934590
  %i.ki = getelementptr i8, ptr %i.kb, i64 %i.kh
  %scevgep.i.i.i170 = getelementptr i8, ptr %i.ki, i64 2
  br label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171"

.lr.ph.split.i.i.i157:                            ; preds = %.lr.ph.i.i.i154
  %i.kj = load i32, ptr %i.ao, align 8, !tbaa !90, !noalias !855
  %scevgep328 = getelementptr i8, ptr %.029, i64 6
  %i.kk = add nsw i32 %.sroa.11.sroa.0.0.extract.trunc, -1
  %i.kl = zext i32 %i.kk to i64
  %i.km = shl nuw nsw i64 %i.kl, 1
  %scevgep329 = getelementptr i8, ptr %scevgep328, i64 %i.km
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i167, %.lr.ph.split.i.i.i157
  %.sroa.11.sroa.0.1 = phi i32 [ %.sroa.11.sroa.0.0.extract.trunc, %.lr.ph.split.i.i.i157 ], [ %i.ll, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i167 ] ; 2 uses
  %.sroa.0214.1 = phi ptr [ %i.kb, %.lr.ph.split.i.i.i157 ], [ %i.lm, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i167 ] ; 3 uses
  %.val4.i.i.i158 = load i16, ptr %.sroa.0214.1, align 1, !tbaa !56, !noalias !855
  %i.kn = call noundef i16 @llvm.bswap.i16(i16 %.val4.i.i.i158)
  %i.ko = zext i16 %i.kn to i32                   ; 3 uses
  %i.kp = mul i32 %i.ko, 506952113
  %i.kq = and i32 %i.kp, 1073741823
  %i.kr = urem i32 %i.kq, %i.kj                   ; 2 uses
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.ks ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !noalias !855 ; 2 uses
  %i.kw = and i32 %i.kv, 2
  %.not15.i.i.i.i.i.i.i.i159 = icmp eq i32 %i.kw, 0
  br i1 %.not15.i.i.i.i.i.i.i.i159, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i167, label %.lr.ph.i.i.i.i.i.i.i.i160

.lr.ph.i.i.i.i.i.i.i.i160:                        ; preds = %bb.ag
  %i.kx = load i32, ptr %i.an, align 4, !noalias !855
  %i.ky = load i32, ptr %i.kt, align 4, !tbaa !91, !noalias !855
  %i.kz = icmp eq i32 %i.ky, %i.ko
  br i1 %i.kz, label %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i165", label %.lr.ph.i.i.i.i.i.i.i161

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i161
  %i.la = load i32, ptr %i.lg, align 4, !tbaa !91, !noalias !855
  %i.lb = icmp eq i32 %i.la, %i.ko
  br i1 %i.lb, label %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i165", label %.lr.ph.i.i.i.i.i.i.i161, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i161:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i160, %bb.ah
  %.01016.i20.i.i.i.i.i.i.i162 = phi i32 [ %i.le, %bb.ah ], [ %i.kr, %.lr.ph.i.i.i.i.i.i.i.i160 ]
  %.017.i19.i.i.i.i.i.i.i163 = phi i32 [ %i.lc, %bb.ah ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i160 ]
  %i.lc = add i32 %.017.i19.i.i.i.i.i.i.i163, 1   ; 2 uses
  %i.ld = add i32 %i.lc, %.01016.i20.i.i.i.i.i.i.i162
  %i.le = and i32 %i.ld, %i.kx                    ; 2 uses
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !noalias !855 ; 2 uses
  %i.lj = and i32 %i.li, 2
  %.not.i.i.i.i.i.i.i.i164 = icmp eq i32 %i.lj, 0
  br i1 %.not.i.i.i.i.i.i.i.i164, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i167, label %bb.ah, !llvm.loop !1

"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i165": ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i.i.i160
  %.lcssa17.i.i.i.i.i.i.i166 = phi i32 [ %i.kv, %.lr.ph.i.i.i.i.i.i.i.i160 ], [ %i.li, %bb.ah ]
  %i.lk = trunc i32 %.lcssa17.i.i.i.i.i.i.i166 to i1
  br i1 %i.lk, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171", label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i167

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i167: ; preds = %.lr.ph.i.i.i.i.i.i.i161, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i165", %bb.ag
  %i.ll = add i32 %.sroa.11.sroa.0.1, -1          ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0214.1, i64 2
  %.not.i.i.i168 = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i.i168, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171", label %bb.ag, !llvm.loop !23

"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171": ; preds = %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i165", %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i167, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", %.lr.ph.split.us.i.i.i169
  %.sroa.11.sroa.0.2 = phi i32 [ 0, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit" ], [ 0, %.lr.ph.split.us.i.i.i169 ], [ %.sroa.11.sroa.0.1, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i165" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i167 ] ; 2 uses
  %.sroa.0214.2 = phi ptr [ %i.kb, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit" ], [ %scevgep.i.i.i170, %.lr.ph.split.us.i.i.i169 ], [ %.sroa.0214.1, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i165" ], [ %scevgep329, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i167 ]
  %.not273295 = icmp eq i32 %.sroa.11.sroa.0236.2, 0
  br i1 %.not273295, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171", %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209"
  %.0302 = phi i8 [ %.0., %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209" ], [ 1, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171" ]
  %.sroa.0214.0301 = phi ptr [ %.sroa.0214.4, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209" ], [ %.sroa.0214.2, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171" ] ; 4 uses
  %.sroa.11.sroa.0.0300 = phi i32 [ %.sroa.11.sroa.0.4, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209" ], [ %.sroa.11.sroa.0.2, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171" ] ; 4 uses
  %.sroa.0228.0298 = phi ptr [ %.sroa.0228.4, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209" ], [ %.sroa.0228.2, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171" ] ; 4 uses
  %.sroa.11.sroa.0236.0297 = phi i32 [ %.sroa.11.sroa.0236.4, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209" ], [ %.sroa.11.sroa.0236.2, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171" ] ; 3 uses
  %.not274 = icmp eq i32 %.sroa.11.sroa.0.0300, 0
  br i1 %.not274, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph
  %i.ln = load i16, ptr %.sroa.0228.0298, align 1, !tbaa !56
  %i.lo = load i16, ptr %.sroa.0214.0301, align 1, !tbaa !56
  %.not = icmp eq i16 %i.ln, %i.lo                ; 2 uses
  %.0. = select i1 %.not, i8 %.0302, i8 0         ; 2 uses
  br i1 %.not, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i, label %.critedge

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i: ; preds = %bb.ai
  %i.lp = add i32 %.sroa.11.sroa.0236.0297, -1    ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0228.0298, i64 2 ; 2 uses
  %.not.i2.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i2.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i188, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i
  %i.lr = load ptr, ptr %i.am, align 8, !tbaa !89, !noalias !856 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.us.preheader.i, label %.lr.ph.split.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.us.preheader.i: ; preds = %.lr.ph.i
  %i.ls = add i32 %.sroa.11.sroa.0236.0297, -2
  %i.lt = zext i32 %i.ls to i64
  %i.lu = shl nuw nsw i64 %i.lt, 1
  %i.lv = getelementptr i8, ptr %.sroa.0228.0298, i64 %i.lu
  %scevgep.i = getelementptr i8, ptr %i.lv, i64 4
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i188

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.lw = load i32, ptr %i.ao, align 8, !tbaa !90, !noalias !856
  %scevgep330 = getelementptr i8, ptr %.sroa.0228.0298, i64 4
  %i.lx = add i32 %.sroa.11.sroa.0236.0297, -2
  %i.ly = zext i32 %i.lx to i64
  %i.lz = shl nuw nsw i64 %i.ly, 1
  %scevgep331 = getelementptr i8, ptr %scevgep330, i64 %i.lz
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i, %.lr.ph.split.i
  %.sroa.11.sroa.0236.3 = phi i32 [ %i.lp, %.lr.ph.split.i ], [ %i.my, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i ] ; 2 uses
  %.sroa.0228.3 = phi ptr [ %i.lq, %.lr.ph.split.i ], [ %i.mz, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i ] ; 3 uses
  %.val1.i.i = load i16, ptr %.sroa.0228.3, align 1, !tbaa !56, !noalias !856
  %i.ma = call noundef i16 @llvm.bswap.i16(i16 %.val1.i.i)
  %i.mb = zext i16 %i.ma to i32                   ; 3 uses
  %i.mc = mul i32 %i.mb, 506952113
  %i.md = and i32 %i.mc, 1073741823
  %i.me = urem i32 %i.md, %i.lw                   ; 2 uses
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [12 x i8], ptr %i.lr, i64 %i.mf ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mi = load i32, ptr %i.mh, align 4, !noalias !856 ; 2 uses
  %i.mj = and i32 %i.mi, 2
  %.not15.i.i.i.i.i.i.i = icmp eq i32 %i.mj, 0
  br i1 %.not15.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i, label %.lr.ph.i.i.i.i.i.i.i184

.lr.ph.i.i.i.i.i.i.i184:                          ; preds = %bb.aj
  %i.mk = load i32, ptr %i.an, align 4, !noalias !856
  %i.ml = load i32, ptr %i.mg, align 4, !tbaa !91, !noalias !856
  %i.mm = icmp eq i32 %i.ml, %i.mb
  br i1 %i.mm, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.mn = load i32, ptr %i.mt, align 4, !tbaa !91, !noalias !856
  %i.mo = icmp eq i32 %i.mn, %i.mb
  br i1 %i.mo, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i184, %bb.ak
  %.01016.i20.i.i.i.i.i.i = phi i32 [ %i.mr, %bb.ak ], [ %i.me, %.lr.ph.i.i.i.i.i.i.i184 ]
  %.017.i19.i.i.i.i.i.i = phi i32 [ %i.mp, %bb.ak ], [ 0, %.lr.ph.i.i.i.i.i.i.i184 ]
  %i.mp = add i32 %.017.i19.i.i.i.i.i.i, 1        ; 2 uses
  %i.mq = add i32 %i.mp, %.01016.i20.i.i.i.i.i.i
  %i.mr = and i32 %i.mq, %i.mk                    ; 2 uses
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %i.lr, i64 %i.ms ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.mv = load i32, ptr %i.mu, align 4, !noalias !856 ; 2 uses
  %i.mw = and i32 %i.mv, 2
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.mw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i, label %bb.ak, !llvm.loop !1

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i: ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.i.i184
  %.lcssa17.i.i.i.i.i.i = phi i32 [ %i.mi, %.lr.ph.i.i.i.i.i.i.i184 ], [ %i.mv, %bb.ak ]
  %i.mx = trunc i32 %.lcssa17.i.i.i.i.i.i to i1
  br i1 %i.mx, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i188, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i, !prof !294

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, %bb.aj
  %i.my = add i32 %.sroa.11.sroa.0236.3, -1       ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0228.3, i64 2
  %.not.i.i185 = icmp eq i32 %i.my, 0
  br i1 %.not.i.i185, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i188, label %bb.aj, !llvm.loop !24

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i188: ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.us.preheader.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i
  %.sroa.11.sroa.0236.4 = phi i32 [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.us.preheader.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i ], [ %.sroa.11.sroa.0236.3, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0228.4 = phi ptr [ %scevgep.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.us.preheader.i ], [ %i.lq, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i ], [ %scevgep331, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i ], [ %.sroa.0228.3, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i ]
  %i.na = add i32 %.sroa.11.sroa.0.0300, -1       ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0214.0301, i64 2 ; 2 uses
  %.not.i2.i191 = icmp eq i32 %i.na, 0
  br i1 %.not.i2.i191, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209", label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i188
  %i.nc = load ptr, ptr %i.am, align 8, !tbaa !89, !noalias !857 ; 3 uses
  %.not.i.i.i.i.i194 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i.i.i194, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.us.preheader.i207, label %.lr.ph.split.i195

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.us.preheader.i207: ; preds = %.lr.ph.i192
  %i.nd = add i32 %.sroa.11.sroa.0.0300, -2
  %i.ne = zext i32 %i.nd to i64
  %i.nf = shl nuw nsw i64 %i.ne, 1
  %i.ng = getelementptr i8, ptr %.sroa.0214.0301, i64 %i.nf
  %scevgep.i208 = getelementptr i8, ptr %i.ng, i64 4
  br label %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209"

.lr.ph.split.i195:                                ; preds = %.lr.ph.i192
  %i.nh = load i32, ptr %i.ao, align 8, !tbaa !90, !noalias !857
  %scevgep332 = getelementptr i8, ptr %.sroa.0214.0301, i64 4
  %i.ni = add i32 %.sroa.11.sroa.0.0300, -2
  %i.nj = zext i32 %i.ni to i64
  %i.nk = shl nuw nsw i64 %i.nj, 1
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.nk
  br label %bb.al

bb.al:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i205, %.lr.ph.split.i195
  %.sroa.11.sroa.0.3 = phi i32 [ %i.na, %.lr.ph.split.i195 ], [ %i.oj, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i205 ] ; 2 uses
  %.sroa.0214.3 = phi ptr [ %i.nb, %.lr.ph.split.i195 ], [ %i.ok, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i205 ] ; 3 uses
  %.val1.i.i196 = load i16, ptr %.sroa.0214.3, align 1, !tbaa !56, !noalias !857
  %i.nl = call noundef i16 @llvm.bswap.i16(i16 %.val1.i.i196)
  %i.nm = zext i16 %i.nl to i32                   ; 3 uses
  %i.nn = mul i32 %i.nm, 506952113
  %i.no = and i32 %i.nn, 1073741823
  %i.np = urem i32 %i.no, %i.nh                   ; 2 uses
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [12 x i8], ptr %i.nc, i64 %i.nq ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.nt = load i32, ptr %i.ns, align 4, !noalias !857 ; 2 uses
  %i.nu = and i32 %i.nt, 2
  %.not15.i.i.i.i.i.i.i197 = icmp eq i32 %i.nu, 0
  br i1 %.not15.i.i.i.i.i.i.i197, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i205, label %.lr.ph.i.i.i.i.i.i.i198

.lr.ph.i.i.i.i.i.i.i198:                          ; preds = %bb.al
  %i.nv = load i32, ptr %i.an, align 4, !noalias !857
  %i.nw = load i32, ptr %i.nr, align 4, !tbaa !91, !noalias !857
  %i.nx = icmp eq i32 %i.nw, %i.nm
  br i1 %i.nx, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i203, label %.lr.ph.i.i.i.i.i.i199

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i199
  %i.ny = load i32, ptr %i.oe, align 4, !tbaa !91, !noalias !857
  %i.nz = icmp eq i32 %i.ny, %i.nm
  br i1 %i.nz, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i203, label %.lr.ph.i.i.i.i.i.i199, !llvm.loop !1

.lr.ph.i.i.i.i.i.i199:                            ; preds = %.lr.ph.i.i.i.i.i.i.i198, %bb.am
  %.01016.i20.i.i.i.i.i.i200 = phi i32 [ %i.oc, %bb.am ], [ %i.np, %.lr.ph.i.i.i.i.i.i.i198 ]
  %.017.i19.i.i.i.i.i.i201 = phi i32 [ %i.oa, %bb.am ], [ 0, %.lr.ph.i.i.i.i.i.i.i198 ]
  %i.oa = add i32 %.017.i19.i.i.i.i.i.i201, 1     ; 2 uses
  %i.ob = add i32 %i.oa, %.01016.i20.i.i.i.i.i.i200
  %i.oc = and i32 %i.ob, %i.nv                    ; 2 uses
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [12 x i8], ptr %i.nc, i64 %i.od ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %i.og = load i32, ptr %i.of, align 4, !noalias !857 ; 2 uses
  %i.oh = and i32 %i.og, 2
  %.not.i.i.i.i.i.i.i202 = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i.i.i.i.i.i202, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i205, label %bb.am, !llvm.loop !1

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i203: ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i.i198
  %.lcssa17.i.i.i.i.i.i204 = phi i32 [ %i.nt, %.lr.ph.i.i.i.i.i.i.i198 ], [ %i.og, %bb.am ]
  %i.oi = trunc i32 %.lcssa17.i.i.i.i.i.i204 to i1
  br i1 %i.oi, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209", label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i205, !prof !294

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i205: ; preds = %.lr.ph.i.i.i.i.i.i199, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i203, %bb.al
  %i.oj = add i32 %.sroa.11.sroa.0.3, -1          ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0214.3, i64 2
  %.not.i.i206 = icmp eq i32 %i.oj, 0
  br i1 %.not.i.i206, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209", label %bb.al, !llvm.loop !24

"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i203, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i205, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i188, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.us.preheader.i207
  %.sroa.11.sroa.0.4 = phi i32 [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.us.preheader.i207 ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i188 ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i205 ], [ %.sroa.11.sroa.0.3, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i203 ] ; 2 uses
  %.sroa.0214.4 = phi ptr [ %scevgep.i208, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.us.preheader.i207 ], [ %i.nb, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i188 ], [ %scevgep333, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i205 ], [ %.sroa.0214.3, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i203 ]
  %.not273 = icmp eq i32 %.sroa.11.sroa.0236.4, 0
  br i1 %.not273, label %.critedge.thread.loopexit, label %.lr.ph, !llvm.loop !853

.critedge.thread.loopexit:                        ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EERS4_EppEv.exit209"
  %11 = icmp eq i8 %.0., 0
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171"
  %.sroa.11.sroa.0.0.lcssa = phi i32 [ %.sroa.11.sroa.0.2, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171" ], [ %.sroa.11.sroa.0.4, %.critedge.thread.loopexit ]
  %.0.lcssa = phi i1 [ false, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit171" ], [ %11, %.critedge.thread.loopexit ]
  %.old = icmp ne i32 %.sroa.11.sroa.0.0.lcssa, 0
  %or.cond270 = or i1 %.old, %.0.lcssa
  br i1 %or.cond270, label %.critedge, label %.thread265

.thread265:                                       ; preds = %.critedge.thread
  %.val.i175 = load i32, ptr %i.h, align 4, !tbaa !91
  %i.ol = mul i32 %.val.i175, -1640531535
  %i.om = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.ol, ptr noundef nonnull align 4 dereferenceable(4) %i.j, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.ay

.critedge:                                        ; preds = %.lr.ph, %bb.ai, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  %i.on = load ptr, ptr %10, align 8, !tbaa !170  ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 48
  %i.op = load i8, ptr %i.oo, align 8, !tbaa !69, !range !70, !noundef !71
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %bb.ao, label %bb.an, !prof !65

bb.an:                                            ; preds = %.critedge
  %i.or = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.on, ptr noundef nonnull %i.ag) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

bb.ao:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.os = load i32, ptr %i.ag, align 8, !tbaa !91 ; 5 uses
  store i32 %i.os, ptr %i.c, align 4, !tbaa !91
  %i.ot = icmp eq i32 %i.os, -2
  br i1 %i.ot, label %bb.ap, label %bb.aq, !prof !65

bb.ap:                                            ; preds = %bb.ao
  store i32 -1, ptr %i.ag, align 8, !tbaa !91
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 %i.os, ptr %i.d, align 4, !tbaa !91
  %i.ou = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.on, ptr noundef nonnull %i.d) ; 0 uses
  %i.ov = add i32 %i.os, 1                        ; 2 uses
  %i.ow = load i32, ptr %i.d, align 4, !tbaa !91
  %i.ox = icmp ult i32 %i.ov, %i.ow
  br i1 %i.ox, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.os, ptr %i.d, align 4, !tbaa !91
  %i.oy = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.on, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.oz = load i32, ptr %i.d, align 4, !tbaa !91
  %i.pa = add i32 %i.oz, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink.i.i.i177 = phi i32 [ %i.pa, %bb.ar ], [ %i.ov, %bb.aq ]
  store i32 %.sink.i.i.i177, ptr %i.ag, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i:   ; preds = %bb.at, %bb.an
  %i.pb = load i32, ptr %i.ak, align 4, !tbaa !171 ; 2 uses
  %.not.i.i176 = icmp eq i32 %i.pb, 0
  br i1 %.not.i.i176, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, label %bb.au, !prof !65

bb.au:                                            ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i
  %i.pc = add i32 %i.pb, -1
  store i32 %i.pc, ptr %i.ak, align 4, !tbaa !171
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit: ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i, %bb.au
  %i.pd = load i32, ptr %i.ag, align 8, !tbaa !165 ; 2 uses
  %.not272 = icmp eq i32 %i.pd, -1
  br i1 %.not272, label %._crit_edge, label %.lr.ph305

._crit_edge:                                      ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit88
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.pe = load i32, ptr %i.h, align 4, !tbaa !91  ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.pg = load i8, ptr %i.pf, align 8, !tbaa !69, !range !70, !noundef !71
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.av, label %bb.aw, !prof !65

bb.av:                                            ; preds = %._crit_edge
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.eu, i32 noundef %i.pe)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit178

bb.aw:                                            ; preds = %._crit_edge
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.eu, i32 noundef %i.pe)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit178

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit178: ; preds = %bb.av, %bb.aw
  %.val.i179 = load i32, ptr %i.h, align 4, !tbaa !91
  %i.pi = mul i32 %.val.i179, -1640531535
  %i.pj = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.pi, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i1 noundef zeroext true) ; 0 uses
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  br label %.loopexit

bb.ay:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit178, %.thread265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  %i.pk = load ptr, ptr %8, align 8, !tbaa !170   ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 48
  %i.pm = load i8, ptr %i.pl, align 8, !tbaa !69, !range !70, !noundef !71
  %i.pn = trunc nuw i8 %i.pm to i1
  br i1 %i.pn, label %bb.ba, label %bb.az, !prof !65

bb.az:                                            ; preds = %bb.ay
  %i.po = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.pk, ptr noundef nonnull %i.ab) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i180

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.pp = load i32, ptr %i.ab, align 8, !tbaa !91 ; 5 uses
  store i32 %i.pp, ptr %i.a, align 4, !tbaa !91
  %i.pq = icmp eq i32 %i.pp, -2
  br i1 %i.pq, label %bb.bb, label %bb.bc, !prof !65

bb.bb:                                            ; preds = %bb.ba
  store i32 -1, ptr %i.ab, align 8, !tbaa !91
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.pp, ptr %i.b, align 4, !tbaa !91
  %i.pr = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.pk, ptr noundef nonnull %i.b) ; 0 uses
  %i.ps = add i32 %i.pp, 1                        ; 2 uses
  %i.pt = load i32, ptr %i.b, align 4, !tbaa !91
  %i.pu = icmp ult i32 %i.ps, %i.pt
  br i1 %i.pu, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.pp, ptr %i.b, align 4, !tbaa !91
  %i.pv = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.pk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.pw = load i32, ptr %i.b, align 4, !tbaa !91
  %i.px = add i32 %i.pw, 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink.i.i.i182 = phi i32 [ %i.px, %bb.bd ], [ %i.ps, %bb.bc ]
  store i32 %.sink.i.i.i182, ptr %i.ab, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i180

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i180: ; preds = %bb.bf, %bb.az
  %i.py = load i32, ptr %i.al, align 4, !tbaa !171 ; 2 uses
  %.not.i.i181 = icmp eq i32 %i.py, 0
  br i1 %.not.i.i181, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit183, label %bb.bg, !prof !65

bb.bg:                                            ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i180
  %i.pz = add i32 %i.py, -1
  store i32 %i.pz, ptr %i.al, align 4, !tbaa !171
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit183

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit183: ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i180, %bb.bg
  %i.qa = load i32, ptr %i.ab, align 8, !tbaa !165 ; 2 uses
  %.not271 = icmp eq i32 %i.qa, -1
  br i1 %.not271, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit183, %bb.f, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE4finiEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT8GSUBGPOS13prune_langsysEPK8hb_map_tPK8hb_set_tP12hb_hashmap_tIjN2hb10unique_ptrIS4_EELb0EEPS4_(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.OT::hb_prune_langsys_context_t", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %0, ptr %5, align 8, !tbaa !859
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !297
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !298
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !299
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !300
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 0, ptr %i.e, align 4, !tbaa !301
  %i.f = load i16, ptr %0, align 1, !tbaa !56
  %cond.i.i = icmp eq i16 %i.f, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS16get_script_countEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %i.g, align 1, !tbaa !56   ; 2 uses
  %i.i = icmp eq i16 %i.h, 0
end_hunk_0
