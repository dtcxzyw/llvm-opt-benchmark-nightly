Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZL31_compute_avar2_reachable_rangesP16hb_subset_plan_t10hb_array_tIKN2OT10AxisRecordEEPKNS2_4avarEb:bb.a
  %.sroa.5.sroa.0.1.ph.i.i.i = phi i32 [ %.sroa.5.sroa.0.0.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i ]
  %.sroa.02.1.ph.i.i.i = phi ptr [ %.sroa.02.0.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i ]
  %i.jm = zext i32 %.sroa.5.sroa.0.1.ph.i.i.i to i64
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i193

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i193: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i197, %_ZL5beginIR12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS5_.exit
  %.sroa.5.sroa.0.0.i.i.i195 = phi i32 [ %i.jq, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i197 ], [ %i.jc, %_ZL5beginIR12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS5_.exit ] ; 2 uses
  %.sroa.02.0.i.i.i196 = phi ptr [ %i.jr, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i197 ], [ %.val150, %_ZL5beginIR12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS5_.exit ] ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i196, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !noalias !447
  %i.jp = trunc i32 %i.jo to i1
  br i1 %i.jp, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i198, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i197

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i197: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i193
  %i.jq = add i32 %.sroa.5.sroa.0.0.i.i.i195, -1  ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i196, i64 32
  %i.js = icmp eq i32 %i.jq, 0
  br i1 %i.js, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i198, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i193, !llvm.loop !5

_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i198: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i197, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i193
  %.sroa.5.sroa.0.1.ph.i.i.i200 = phi i32 [ %.sroa.5.sroa.0.0.i.i.i195, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i193 ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i197 ]
  %.sroa.02.1.ph.i.i.i201 = phi ptr [ %.sroa.02.0.i.i.i196, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i193 ], [ %scevgep.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i197 ]
  %i.jt = zext i32 %.sroa.5.sroa.0.1.ph.i.i.i200 to i64
  br label %_ZL3endIR12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS5_.exit

_ZL3endIR12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS5_.exit: ; preds = %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EEixEi.exit, %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i198
  %.sroa.5.sroa.0.0.insert.insert.i.i.i311 = phi i64 [ %i.jm, %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i198 ], [ 0, %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EEixEi.exit ] ; 3 uses
  %.sroa.02.1.i.i.i310 = phi ptr [ %.sroa.02.1.ph.i.i.i, %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i198 ], [ %.val150, %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EEixEi.exit ] ; 2 uses
  %.sroa.02.1.i.i.i202 = phi ptr [ %.sroa.02.1.ph.i.i.i201, %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i198 ], [ %.val150, %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EEixEi.exit ]
  %.sroa.5.sroa.0.0.insert.insert.i.i.i203 = phi i64 [ %i.jt, %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i198 ], [ 0, %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EEixEi.exit ]
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %.sroa.02.1.i.i.i202, i64 %.sroa.5.sroa.0.0.insert.insert.i.i.i203 ; 2 uses
  %.not.i.i.i204371 = icmp ne ptr %.sroa.02.1.i.i.i310, %i.ju
  %i.jv = icmp ne i64 %.sroa.5.sroa.0.0.insert.insert.i.i.i311, 0
  %i.jw = or i1 %i.jv, %.not.i.i.i204371
  br i1 %i.jw, label %.lr.ph377.preheader, label %._crit_edge

.lr.ph377.preheader:                              ; preds = %_ZL3endIR12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS5_.exit
  %.sroa.7269.8.extract.trunc370 = trunc nuw i64 %.sroa.5.sroa.0.0.insert.insert.i.i.i311 to i32
  %i.jx = load ptr, ptr %i.bh, align 8, !tbaa !156 ; 4 uses
  %.not.i205 = icmp eq ptr %i.jx, null
  %i.jy = load i32, ptr %i.eh, align 8
  %i.jz = load i32, ptr %i.ei, align 4
  br label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph377.preheader, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit"
  %.sroa.7269.8.extract.trunc376 = phi i32 [ %.sroa.7269.8.extract.trunc, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit" ], [ %.sroa.7269.8.extract.trunc370, %.lr.ph377.preheader ]
  %.sroa.0268.0373 = phi ptr [ %.sroa.0268.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit" ], [ %.sroa.02.1.i.i.i310, %.lr.ph377.preheader ] ; 2 uses
  %.sroa.7269.0372 = phi i64 [ %.sroa.7269.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit" ], [ %.sroa.5.sroa.0.0.insert.insert.i.i.i311, %.lr.ph377.preheader ]
  %i.ka = phi <2 x double> [ %i.mo, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit" ], [ splat (double 1.000000e+00), %.lr.ph377.preheader ]
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.7269.8.extract.trunc376, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit", !prof !32

bb.ab:                                            ; preds = %.lr.ph377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false), !noalias !448
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit": ; preds = %bb.ab, %.lr.ph377
  %.0.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.ab ], [ %.sroa.0268.0373, %.lr.ph377 ] ; 4 uses
  %i.kb = load i32, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !166, !noalias !449 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %.sroa.4468.8.copyload = load double, ptr %i.kc, align 8 ; 8 uses
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %.sroa.6.8.copyload = load double, ptr %.sroa.6.8..sroa_idx, align 8 ; 14 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  %.sroa.7.8.copyload = load double, ptr %.sroa.7.8..sroa_idx, align 8 ; 8 uses
  br i1 %.not.i205, label %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE3hasIS1_EEbRKjPPT_.exit216.thread, label %bb.ac

bb.ac:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit"
  %i.kd = mul i32 %i.kb, 506952113
  %i.ke = and i32 %i.kd, 1073741823
  %i.kf = urem i32 %i.ke, %i.jy                   ; 2 uses
  %i.kg = zext nneg i32 %i.kf to i64              ; 2 uses
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %i.kg ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4            ; 2 uses
  %i.kk = and i32 %i.kj, 2
  %.not15.i.i.i207 = icmp eq i32 %i.kk, 0
  br i1 %.not15.i.i.i207, label %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE3hasIS1_EEbRKjPPT_.exit216.thread, label %.lr.ph.i.i.i208

.lr.ph.i.i.i208:                                  ; preds = %bb.ac
  %i.kl = load i32, ptr %i.kh, align 4, !tbaa !19
  %i.km = icmp eq i32 %i.kl, %i.kb
  br i1 %i.km, label %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE10fetch_itemERKjj.exit.i.i213, label %.lr.ph.i.i209

bb.ad:                                            ; preds = %.lr.ph.i.i209
  %i.kn = load i32, ptr %i.kt, align 4, !tbaa !19
  %i.ko = icmp eq i32 %i.kn, %i.kb
  br i1 %i.ko, label %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE10fetch_itemERKjj.exit.i.i213, label %.lr.ph.i.i209, !llvm.loop !412

.lr.ph.i.i209:                                    ; preds = %.lr.ph.i.i.i208, %bb.ad
  %.01016.i20.i.i210 = phi i32 [ %i.kr, %bb.ad ], [ %i.kf, %.lr.ph.i.i.i208 ]
  %.017.i19.i.i211 = phi i32 [ %i.kp, %bb.ad ], [ 0, %.lr.ph.i.i.i208 ]
  %i.kp = add i32 %.017.i19.i.i211, 1             ; 2 uses
  %i.kq = add i32 %i.kp, %.01016.i20.i.i210
  %i.kr = and i32 %i.kq, %i.jz                    ; 2 uses
  %i.ks = zext i32 %i.kr to i64                   ; 2 uses
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %i.ks ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.kv = load i32, ptr %i.ku, align 4            ; 2 uses
  %i.kw = and i32 %i.kv, 2
  %.not.i.i.i212 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i.i212, label %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE3hasIS1_EEbRKjPPT_.exit216.thread, label %bb.ad, !llvm.loop !412

_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE10fetch_itemERKjj.exit.i.i213: ; preds = %bb.ad, %.lr.ph.i.i.i208
  %.lcssa17.i.i214 = phi i32 [ %i.kj, %.lr.ph.i.i.i208 ], [ %i.kv, %bb.ad ]
  %i.kx = phi i64 [ %i.kg, %.lr.ph.i.i.i208 ], [ %i.ks, %bb.ad ]
  %i.ky = trunc i32 %.lcssa17.i.i214 to i1
  br i1 %i.ky, label %bb.ae, label %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE3hasIS1_EEbRKjPPT_.exit216.thread

bb.ae:                                            ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE10fetch_itemERKjj.exit.i.i213
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %i.kx ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load double, ptr %i.la, align 8, !tbaa !450
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !451
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE3hasIS1_EEbRKjPPT_.exit216.thread

_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE3hasIS1_EEbRKjPPT_.exit216.thread: ; preds = %.lr.ph.i.i209, %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE10fetch_itemERKjj.exit.i.i213, %bb.ac, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit", %bb.ae
  %.096 = phi double [ %i.lb, %bb.ae ], [ -1.000000e+00, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit" ], [ -1.000000e+00, %bb.ac ], [ -1.000000e+00, %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE10fetch_itemERKjj.exit.i.i213 ], [ -1.000000e+00, %.lr.ph.i.i209 ] ; 7 uses
  %.0 = phi double [ %i.ld, %bb.ae ], [ 1.000000e+00, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit" ], [ 1.000000e+00, %bb.ac ], [ 1.000000e+00, %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE10fetch_itemERKjj.exit.i.i213 ], [ 1.000000e+00, %.lr.ph.i.i209 ] ; 7 uses
  %i.le = fcmp ogt double %.sroa.4468.8.copyload, %.sroa.6.8.copyload
  %i.lf = fcmp ogt double %.sroa.6.8.copyload, %.sroa.7.8.copyload
  %i.lg = select i1 %i.le, i1 true, i1 %i.lf, !prof !32
  br i1 %i.lg, label %_ZL10_tent_evalRK6Tripled.exit16.i, label %bb.af, !prof !32

bb.af:                                            ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE3hasIS1_EEbRKjPPT_.exit216.thread
  %i.lh = fcmp olt double %.sroa.4468.8.copyload, 0.000000e+00
  %i.li = fcmp ogt double %.sroa.7.8.copyload, 0.000000e+00
  %or.cond.i.i = select i1 %i.lh, i1 %i.li, i1 false
  %i.lj = fcmp une double %.sroa.6.8.copyload, 0.000000e+00
  %i.lk = and i1 %i.lj, %or.cond.i.i
  br i1 %i.lk, label %_ZL10_tent_evalRK6Tripled.exit16.i, label %bb.ag, !prof !32

bb.ag:                                            ; preds = %bb.af
  %i.ll = fcmp oeq double %.sroa.6.8.copyload, 0.000000e+00 ; 2 uses
  %i.lm = fcmp oeq double %.096, %.sroa.6.8.copyload
  %or.cond33.i.i = or i1 %i.ll, %i.lm
  br i1 %or.cond33.i.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ln = fcmp ugt double %.096, %.sroa.4468.8.copyload
  %i.lo = fcmp ugt double %.sroa.7.8.copyload, %.096
  %or.cond34.i.i = select i1 %i.ln, i1 %i.lo, i1 false
  br i1 %or.cond34.i.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.lp = fcmp olt double %.096, %.sroa.6.8.copyload
  br i1 %i.lp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.lq = fsub double %.096, %.sroa.4468.8.copyload
  %i.lr = fsub double %.sroa.6.8.copyload, %.sroa.4468.8.copyload
  %i.ls = fdiv double %i.lq, %i.lr
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.lt = fsub double %.sroa.7.8.copyload, %.096
  %i.lu = fsub double %.sroa.7.8.copyload, %.sroa.6.8.copyload
  %i.lv = fdiv double %i.lt, %i.lu
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.ag
  %.0.i.ph.ph.i = phi double [ %i.lv, %bb.ak ], [ 1.000000e+00, %bb.ag ], [ %i.ls, %bb.aj ], [ 0.000000e+00, %bb.ah ] ; 4 uses
  %i.lw = fcmp oeq double %.0, %.sroa.6.8.copyload
  %or.cond33.i13.i = or i1 %i.ll, %i.lw
  br i1 %or.cond33.i13.i, label %_ZL10_tent_evalRK6Tripled.exit16.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lx = fcmp ugt double %.0, %.sroa.4468.8.copyload
  %i.ly = fcmp ugt double %.sroa.7.8.copyload, %.0
  %or.cond34.i14.i = select i1 %i.lx, i1 %i.ly, i1 false
  br i1 %or.cond34.i14.i, label %bb.an, label %_ZL10_tent_evalRK6Tripled.exit16.i

bb.an:                                            ; preds = %bb.am
  %i.lz = fcmp olt double %.0, %.sroa.6.8.copyload
  br i1 %i.lz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ma = fsub double %.0, %.sroa.4468.8.copyload
  %i.mb = fsub double %.sroa.6.8.copyload, %.sroa.4468.8.copyload
  %i.mc = fdiv double %i.ma, %i.mb
  br label %_ZL10_tent_evalRK6Tripled.exit16.i

bb.ap:                                            ; preds = %bb.an
  %i.md = fsub double %.sroa.7.8.copyload, %.0
  %i.me = fsub double %.sroa.7.8.copyload, %.sroa.6.8.copyload
  %i.mf = fdiv double %i.md, %i.me
  br label %_ZL10_tent_evalRK6Tripled.exit16.i

_ZL10_tent_evalRK6Tripled.exit16.i:               ; preds = %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.af, %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE3hasIS1_EEbRKjPPT_.exit216.thread
  %.0.i28.i = phi double [ %.0.i.ph.ph.i, %bb.ap ], [ %.0.i.ph.ph.i, %bb.am ], [ 1.000000e+00, %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE3hasIS1_EEbRKjPPT_.exit216.thread ], [ %.0.i.ph.ph.i, %bb.al ], [ %.0.i.ph.ph.i, %bb.ao ], [ 1.000000e+00, %bb.af ] ; 4 uses
  %.0.i15.i = phi double [ %i.mf, %bb.ap ], [ 0.000000e+00, %bb.am ], [ 1.000000e+00, %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE3hasIS1_EEbRKjPPT_.exit216.thread ], [ 1.000000e+00, %bb.al ], [ %i.mc, %bb.ao ], [ 1.000000e+00, %bb.af ] ; 4 uses
  %i.mg = fcmp ole double %.0.i28.i, %.0.i15.i
  %i.mh = fcmp oge double %.0.i28.i, %.0.i15.i
  %.sroa.speculated19.i = select i1 %i.mh, double %.0.i28.i, double %.0.i15.i ; 2 uses
  %i.mi = fcmp ugt double %.096, %.sroa.6.8.copyload
  %i.mj = fcmp ugt double %.sroa.6.8.copyload, %.0
  %or.cond.i = or i1 %i.mi, %i.mj
  %i.mk = fcmp oge double %.sroa.speculated19.i, 1.000000e+00
  %i.ml = select i1 %or.cond.i, i1 true, i1 %i.mk
  %.0294.a = select i1 %i.ml, double %.sroa.speculated19.i, double 1.000000e+00
  %.sroa.speculated22.i = select i1 %i.mg, double %.0.i28.i, double %.0.i15.i
  %i.mm = insertelement <2 x double> poison, double %.0294.a, i64 0
  %i.mn = insertelement <2 x double> %i.mm, double %.sroa.speculated22.i, i64 1
  %i.mo = fmul <2 x double> %i.ka, %i.mn          ; 4 uses
  %i.mp = extractelement <2 x double> %i.mo, i64 0
  %i.mq = fcmp une double %i.mp, 0.000000e+00
  br i1 %i.mq, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %_ZL10_tent_evalRK6Tripled.exit16.i, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i"
  %.sroa.7269.1 = phi i64 [ %.sroa.7269.8.insert.ext, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i" ], [ %.sroa.7269.0372, %_ZL10_tent_evalRK6Tripled.exit16.i ] ; 2 uses
  %.sroa.0268.1 = phi ptr [ %i.ms, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i" ], [ %.sroa.0268.0373, %_ZL10_tent_evalRK6Tripled.exit16.i ] ; 3 uses
  %.sroa.7269.8.extract.trunc273 = trunc i64 %.sroa.7269.1 to i32 ; 2 uses
  %.not.i.i.i.i.i.i217 = icmp eq i32 %.sroa.7269.8.extract.trunc273, 0
  br i1 %.not.i.i.i.i.i.i217, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i, !prof !32

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i: ; preds = %.preheader
  %i.mr = add i32 %.sroa.7269.8.extract.trunc273, -1 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0268.1, i64 32 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.mr, 0
  br i1 %.not.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit", label %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i"

"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i
  %.sroa.7269.8.insert.ext = zext i32 %i.mr to i64 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0268.1, i64 36
  %i.mu = load i32, ptr %i.mt, align 4
  %i.mv = trunc i32 %i.mu to i1
  br i1 %i.mv, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit", label %.preheader, !llvm.loop !6

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit": ; preds = %.preheader, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i"
  %.sroa.7269.2 = phi i64 [ %.sroa.7269.1, %.preheader ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i ], [ %.sroa.7269.8.insert.ext, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i" ] ; 2 uses
  %.sroa.0268.2 = phi ptr [ %.sroa.0268.1, %.preheader ], [ %i.ms, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i ], [ %i.ms, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i" ] ; 2 uses
  %.sroa.7269.8.extract.trunc = trunc i64 %.sroa.7269.2 to i32 ; 2 uses
  %.not.i.i.i204 = icmp ne ptr %.sroa.0268.2, %i.ju
  %i.mw = icmp ne i32 %.sroa.7269.8.extract.trunc, 0
  %i.mx = or i1 %.not.i.i.i204, %i.mw
  br i1 %i.mx, label %.lr.ph377, label %._crit_edge

._crit_edge:                                      ; preds = %_ZL10_tent_evalRK6Tripled.exit16.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit", %_ZL3endIR12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS5_.exit
  %i.my = phi <2 x double> [ splat (double 1.000000e+00), %_ZL3endIR12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS5_.exit ], [ %i.mo, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit" ], [ %i.mo, %_ZL10_tent_evalRK6Tripled.exit16.i ] ; 2 uses
  %i.mz = icmp sgt i32 %.1.i, 0
  br i1 %i.mz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge
  %i.na = uitofp nneg i32 %.1.i to double
  %i.nb = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nc = insertelement <2 x double> poison, double %i.na, i64 0
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ne = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> %i.nd, <2 x double> %i.hj)
  br label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread

bb.ar:                                            ; preds = %._crit_edge
  %i.nf = sitofp i32 %.1.i to double
  %i.ng = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.nh = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ni = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> %i.nh, <2 x double> %i.hj)
  br label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread

_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread: ; preds = %bb.s, %bb.t, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit, %bb.ar, %bb.aq
  %i.nj = phi <2 x double> [ %i.hj, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit ], [ %i.ni, %bb.ar ], [ %i.ne, %bb.aq ], [ %i.hj, %bb.t ], [ %i.hj, %bb.s ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.hb
  br i1 %exitcond.not, label %.loopexit, label %bb.s, !llvm.loop !443

.loopexit:                                        ; preds = %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread, %bb.r, %bb.p
  %i.nk = phi <2 x double> [ zeroinitializer, %bb.p ], [ zeroinitializer, %bb.r ], [ %i.nj, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread ] ; 3 uses
  %i.nl = extractelement <2 x double> %i.nk, i64 0 ; 2 uses
  %i.nm = extractelement <2 x double> %i.nk, i64 1
  %i.nn = fcmp oeq double %i.nl, %i.nm
  %or.cond147 = select i1 %4, i1 %i.nn, i1 false
  br i1 %or.cond147, label %bb.as, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit229.thread

bb.as:                                            ; preds = %.loopexit
  %i.no = load ptr, ptr %i.en, align 8, !tbaa !134 ; 4 uses
  %.not.i218 = icmp eq ptr %i.no, null
  br i1 %.not.i218, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit229.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val.i219 = load i32, ptr %i.d, align 4, !tbaa !19 ; 4 uses
  %i.np = mul i32 %.val.i219, 506952113
  %i.nq = and i32 %i.np, 1073741823
  %i.nr = load i32, ptr %i.eo, align 8, !tbaa !135
  %i.ns = urem i32 %i.nq, %i.nr                   ; 2 uses
  %i.nt = zext nneg i32 %i.ns to i64              ; 2 uses
  %i.nu = getelementptr inbounds nuw [32 x i8], ptr %i.no, i64 %i.nt ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.nw = load i32, ptr %i.nv, align 4            ; 2 uses
  %i.nx = and i32 %i.nw, 2
  %.not15.i.i.i220 = icmp eq i32 %i.nx, 0
  br i1 %.not15.i.i.i220, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit229.thread, label %.lr.ph.i.i.i221

.lr.ph.i.i.i221:                                  ; preds = %bb.at
  %i.ny = load i32, ptr %i.ep, align 4
  %i.nz = load i32, ptr %i.nu, align 4, !tbaa !19
  %i.oa = icmp eq i32 %i.nz, %.val.i219
  br i1 %i.oa, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i226, label %.lr.ph.i.i222

bb.au:                                            ; preds = %.lr.ph.i.i222
  %i.ob = load i32, ptr %i.oh, align 4, !tbaa !19
  %i.oc = icmp eq i32 %i.ob, %.val.i219
  br i1 %i.oc, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i226, label %.lr.ph.i.i222, !llvm.loop !3

.lr.ph.i.i222:                                    ; preds = %.lr.ph.i.i.i221, %bb.au
  %.01016.i20.i.i223 = phi i32 [ %i.of, %bb.au ], [ %i.ns, %.lr.ph.i.i.i221 ]
  %.017.i19.i.i224 = phi i32 [ %i.od, %bb.au ], [ 0, %.lr.ph.i.i.i221 ]
  %i.od = add i32 %.017.i19.i.i224, 1             ; 2 uses
  %i.oe = add i32 %i.od, %.01016.i20.i.i223
  %i.of = and i32 %i.oe, %i.ny                    ; 2 uses
  %i.og = zext i32 %i.of to i64                   ; 2 uses
  %i.oh = getelementptr inbounds nuw [32 x i8], ptr %i.no, i64 %i.og ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.oj = load i32, ptr %i.oi, align 4            ; 2 uses
  %i.ok = and i32 %i.oj, 2
  %.not.i.i.i225 = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i.i225, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit229.thread, label %bb.au, !llvm.loop !3

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i226: ; preds = %bb.au, %.lr.ph.i.i.i221
  %.lcssa17.i.i227 = phi i32 [ %i.nw, %.lr.ph.i.i.i221 ], [ %i.oj, %bb.au ]
  %i.ol = phi i64 [ %i.nt, %.lr.ph.i.i.i221 ], [ %i.og, %bb.au ]
  %i.om = trunc i32 %.lcssa17.i.i227 to i1
  br i1 %i.om, label %bb.av, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit229.thread

bb.av:                                            ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i226
  %i.on = getelementptr inbounds nuw [32 x i8], ptr %i.no, i64 %i.ol ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load double, ptr %i.oo, align 8, !tbaa !138
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.or = load double, ptr %i.oq, align 8, !tbaa !139 ; 2 uses
  %i.os = fcmp oeq double %i.op, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.ou = load double, ptr %i.ot, align 8
  %i.ov = fcmp oeq double %i.or, %i.ou
  %i.ow = select i1 %i.os, i1 %i.ov, i1 false
  br i1 %i.ow, label %bb.aw, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit229.thread

bb.aw:                                            ; preds = %bb.av
  %i.ox = load double, ptr %i.fx, align 8, !tbaa !450
  %i.oy = fptrunc double %i.ox to float
  %i.oz = fmul float %i.oy, 1.638400e+04
  %i.pa = fadd float %i.oz, 5.000000e-01
  %i.pb = call noundef float @llvm.floor.f32(float %i.pa)
  %i.pc = fptosi float %i.pb to i32
  %i.pd = fptrunc double %i.nl to float
  %i.pe = fadd float %i.pd, 5.000000e-01
  %i.pf = call noundef float @llvm.floor.f32(float %i.pe)
  %i.pg = fptosi float %i.pf to i32
  %i.ph = add nsw i32 %i.pc, %i.pg
  %.sroa.speculate.load.false.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ph, i32 -16384)
  %.sroa.speculated257 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 16384)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.pi = sitofp i32 %.sroa.speculated257 to double
  %i.pj = fmul nnan double %i.pi, f0x3F10000000000000
  store double %i.pj, ptr %i.e, align 8, !tbaa !143
  %i.pk = mul i32 %.val.i219, -1640531535
  %i.pl = call noundef zeroext i1 @_ZN12hb_hashmap_tIjdLb0EE13set_with_hashIRKjdEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.eq, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.pk, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br i1 %i.pl, label %select.unfold, label %.thread337

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit229.thread: ; preds = %.lr.ph.i.i222, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i226, %bb.at, %bb.as, %bb.av, %.loopexit
  %i.pm = fmul <2 x double> %i.nk, splat (double f0x3F10000000000000)
  %i.pn = load <2 x double>, ptr %i.fx, align 8, !tbaa !143
  %i.po = fadd <2 x double> %i.pm, %i.pn
  %i.pp = fadd <2 x double> %i.po, <double f0xBF10000000000000, double f0x3F10000000000000> ; 2 uses
  %i.pq = fcmp oge <2 x double> %i.pp, splat (double -1.000000e+00)
  %i.pr = select <2 x i1> %i.pq, <2 x double> %i.pp, <2 x double> splat (double -1.000000e+00) ; 2 uses
  %i.ps = fcmp ole <2 x double> %i.pr, splat (double 1.000000e+00)
  %i.pt = select <2 x i1> %i.ps, <2 x double> %i.pr, <2 x double> splat (double 1.000000e+00)
  %i.pu = fmul <2 x double> %i.pt, splat (double 1.638400e+04) ; 2 uses
  %i.pv = extractelement <2 x double> %i.pu, i64 0
  %i.pw = call double @llvm.floor.f64(double %i.pv)
  %i.px = fmul double %i.pw, f0x3F10000000000000  ; 4 uses
  %i.py = extractelement <2 x double> %i.pu, i64 1
  %i.pz = call double @llvm.ceil.f64(double %i.py)
  %i.qa = fmul double %i.pz, f0x3F10000000000000  ; 4 uses
  %i.qb = fcmp ole double %i.px, -1.000000e+00
  %i.qc = fcmp oge double %i.qa, 1.000000e+00
  %or.cond = select i1 %i.qb, i1 %i.qc, i1 false
  br i1 %or.cond, label %select.unfold, label %bb.ax

bb.ax:                                            ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit229.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.qd = fcmp ole double %i.px, 0.000000e+00
  %i.qe = select i1 %i.qd, double 0.000000e+00, double %i.px ; 2 uses
  %i.qf = fcmp ole double %i.qe, %i.qa
  %.sroa.speculated243 = select i1 %i.qf, double %i.qe, double %i.qa
  store double %i.px, ptr %8, align 8, !tbaa !138
  store double %.sroa.speculated243, ptr %i.es, align 8, !tbaa !139
  store double %i.qa, ptr %i.et, align 8, !tbaa !140
  %.val.i232 = load i32, ptr %i.d, align 4, !tbaa !19
  %i.qg = mul i32 %.val.i232, -1640531535
  %i.qh = call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE13set_with_hashIRKjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.er, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.qg, ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br i1 %i.qh, label %select.unfold, label %.thread337

.thread337:                                       ; preds = %bb.aw, %bb.ax, %bb.m, %bb.n, %_ZNK12hb_hashmap_tIj9hb_pair_tIddELb0EE10fetch_itemERKjj.exit.i.i, %bb.q, %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit, %.lr.ph.i.i176, %_ZNK2OT7VarData16get_region_indexEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.loopexit342

select.unfold:                                    ; preds = %bb.ax, %bb.aw, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit229.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next416, %i.bi
  br i1 %exitcond419.not, label %.loopexit342, label %bb.m, !llvm.loop !444

end_hunk_0
