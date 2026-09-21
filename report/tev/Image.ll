Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Image?download=true
inline.NumInlined: 33261
inline.NumDeleted: 8209
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE4findIS7_EENS_15__hash_iteratorIPNS_11__hash_nodeISA_PvEEEERKT_:bb.a
  %i.by = select i1 %i.bs, ptr %i.bx, ptr %i.e    ; 2 uses
  br i1 %i.bl, label %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_RKS6_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.m
  %.not1922.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not1922.i.i.i, label %.critedge27, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.n
  %.01525.pn.i.i.i = phi ptr [ %.01525.i.i.i, %bb.n ], [ %i.bj, %.preheader.i.i.i ]
  %.024.i.i.i = phi ptr [ %i.cc, %bb.n ], [ %i.by, %.preheader.i.i.i ] ; 2 uses
  %.01623.i.i.i = phi i64 [ %i.cb, %bb.n ], [ %i.bp, %.preheader.i.i.i ]
  %.01525.i.i.i = getelementptr inbounds nuw i8, ptr %.01525.pn.i.i.i, i64 1 ; 2 uses
  %i.bz = load i8, ptr %.01525.i.i.i, align 1, !tbaa !126
  %i.ca = load i8, ptr %.024.i.i.i, align 1, !tbaa !126
  %.not20.i.i.i = icmp eq i8 %i.bz, %i.ca
  br i1 %.not20.i.i.i, label %bb.n, label %.critedge2

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.cb = add nsw i64 %.01623.i.i.i, -1           ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1
  %.not19.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not19.i.i.i, label %.critedge27, label %.lr.ph.i.i.i, !llvm.loop !106

_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_RKS6_.exit: ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.02238, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.ce, ptr %i.by, i64 %i.bn)
  %i.cf = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cf, label %.critedge27, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph.i.i.i, %bb.l, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit29, %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_RKS6_.exit
  %.022 = load ptr, ptr %.02238, align 8, !tbaa !488 ; 2 uses
  %.not26 = icmp eq ptr %.022, null
  br i1 %.not26, label %.critedge27, label %.lr.ph.split, !llvm.loop !10479

.critedge27:                                      ; preds = %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_RKS6_.exit, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit29, %.critedge2, %.preheader.i.i.i, %bb.n, %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_RKS6_.exit.us, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit29.us, %.critedge2.us, %.preheader.i.i.i.us, %bb.i, %.preheader, %_ZNKSt3__122__unordered_map_hasherINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_4hashIS6_EENS_8equal_toIS6_EELb1EEclB8ne180100ERKS6_.exit, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit
  %.sroa.0.0 = phi ptr [ %.02238, %bb.n ], [ null, %_ZNKSt3__122__unordered_map_hasherINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_4hashIS6_EENS_8equal_toIS6_EELb1EEclB8ne180100ERKS6_.exit ], [ null, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit ], [ %.02238.us, %bb.i ], [ null, %.preheader ], [ %.02238.us, %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_RKS6_.exit.us ], [ null, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit29.us ], [ null, %.critedge2.us ], [ %.02238.us, %.preheader.i.i.i.us ], [ %.02238, %.preheader.i.i.i ], [ null, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit29 ], [ %.02238, %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_RKS6_.exit ], [ null, %.critedge2 ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE20__node_insert_uniqueEPNS_11__hash_nodeISA_PvEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__1::__murmur2_or_cityhash", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = trunc i8 %i.b to i1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.g = select i1 %i.c, ptr %i.e, ptr %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = lshr i8 %i.b, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = select i1 %i.c, i64 %i.i, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.m = invoke noundef i64 @_ZNKSt3__121__murmur2_or_cityhashImLm64EEclB8ne180100EPKvm(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %i.g, i64 noundef %i.l)
          to label %_ZNKSt3__122__unordered_map_hasherINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_4hashIS6_EENS_8equal_toIS6_EELb1EEclB8ne180100ERKSA_.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #49
  unreachable

_ZNKSt3__122__unordered_map_hasherINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_4hashIS6_EENS_8equal_toIS6_EELb1EEclB8ne180100ERKSA_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.p, align 8, !tbaa !497
  %i.q = call noundef ptr @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE28__node_insert_unique_prepareB8ne180100EmRSA_(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a) ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %bb.m

bb.c:                                             ; preds = %_ZNKSt3__122__unordered_map_hasherINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_4hashIS6_EENS_8equal_toIS6_EELb1EEclB8ne180100ERKSA_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !183  ; 7 uses
  %i.u = load i64, ptr %i.p, align 8, !tbaa !497  ; 4 uses
  %i.v = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.t)
  %.not.i.i = icmp samesign ult i64 %i.v, 2       ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = add i64 %i.t, -1
  %i.x = and i64 %i.w, %i.u
  br label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.y = icmp ult i64 %i.u, %i.t
  br i1 %i.y, label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = urem i64 %i.u, %i.t
  br label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit.i

_ZNSt3__116__constrain_hashB8ne180100Emm.exit.i:  ; preds = %bb.f, %bb.e, %bb.d
  %i.aa = phi i64 [ %i.x, %bb.d ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !489   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !498 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZNSt3__116__constrain_hashB8ne180100Emm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !488
  store ptr %i.ag, ptr %1, align 8, !tbaa !488
  store ptr %1, ptr %i.af, align 8, !tbaa !488
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !498
  %i.ah = load ptr, ptr %1, align 8, !tbaa !488   ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE28__node_insert_unique_performB8ne180100EPNS_11__hash_nodeISA_PvEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !497 ; 4 uses
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = add i64 %i.t, -1
  %i.al = and i64 %i.aj, %i.ak
  br label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit19.i

bb.j:                                             ; preds = %bb.h
  %i.am = icmp ult i64 %i.aj, %i.t
  br i1 %i.am, label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit19.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = urem i64 %i.aj, %i.t
  br label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit19.i

_ZNSt3__116__constrain_hashB8ne180100Emm.exit19.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ao = phi i64 [ %i.al, %bb.i ], [ %i.an, %bb.k ], [ %i.aj, %bb.j ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ao
  store ptr %1, ptr %i.ap, align 8, !tbaa !498
  br label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE28__node_insert_unique_performB8ne180100EPNS_11__hash_nodeISA_PvEE.exit

bb.l:                                             ; preds = %_ZNSt3__116__constrain_hashB8ne180100Emm.exit.i
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !488
  store ptr %i.aq, ptr %1, align 8, !tbaa !488
  store ptr %1, ptr %i.ad, align 8, !tbaa !488
  br label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE28__node_insert_unique_performB8ne180100EPNS_11__hash_nodeISA_PvEE.exit

_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE28__node_insert_unique_performB8ne180100EPNS_11__hash_nodeISA_PvEE.exit: ; preds = %bb.g, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit19.i, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !183
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !183
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE28__node_insert_unique_performB8ne180100EPNS_11__hash_nodeISA_PvEE.exit, %_ZNKSt3__122__unordered_map_hasherINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_4hashIS6_EENS_8equal_toIS6_EELb1EEclB8ne180100ERKSA_.exit
  %.011 = phi i8 [ 1, %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE28__node_insert_unique_performB8ne180100EPNS_11__hash_nodeISA_PvEE.exit ], [ 0, %_ZNKSt3__122__unordered_map_hasherINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_4hashIS6_EENS_8equal_toIS6_EELb1EEclB8ne180100ERKSA_.exit ]
  %.0 = phi ptr [ %1, %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE28__node_insert_unique_performB8ne180100EPNS_11__hash_nodeISA_PvEE.exit ], [ %i.q, %_ZNKSt3__122__unordered_map_hasherINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_4hashIS6_EENS_8equal_toIS6_EELb1EEclB8ne180100ERKSA_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.011, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE28__node_insert_unique_prepareB8ne180100EmRSA_(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !183  ; 14 uses
  %.not = icmp eq i64 %i.b, 0                     ; 2 uses
  br i1 %.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.b)
  %.not.i = icmp samesign ult i64 %i.c, 2         ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add i64 %i.b, -1
  %i.e = and i64 %i.d, %1
  br label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ult i64 %1, %i.b
  br i1 %i.f, label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = urem i64 %1, %i.b
  br label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit

_ZNSt3__116__constrain_hashB8ne180100Emm.exit:    ; preds = %bb.c, %bb.d, %bb.e
  %i.h = phi i64 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %1, %bb.d ] ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !489
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !498  ; 2 uses
  %.not31 = icmp eq ptr %i.k, null
  br i1 %.not31, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %_ZNSt3__116__constrain_hashB8ne180100Emm.exit
  %.02749 = load ptr, ptr %i.k, align 8, !tbaa !488 ; 3 uses
  %.not3250 = icmp eq ptr %.02749, null
  br i1 %.not3250, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = add i64 %i.b, -1
  %3 = load i8, ptr %2, align 8                   ; 2 uses
  %4 = trunc i8 %3 to i1                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = load i64, ptr %i.m, align 8
  %6 = lshr i8 %3, 1
  %7 = zext nneg i8 %6 to i64
  %8 = select i1 %4, i64 %5, i64 %7               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %9 = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1
  %10 = select i1 %4, ptr %9, ptr %i.o            ; 4 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge2.us
  %.02751.us = phi ptr [ %.027.us, %.critedge2.us ], [ %.02749, %.lr.ph ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02751.us, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !497  ; 2 uses
  %i.r = icmp eq i64 %i.q, %1
  br i1 %i.r, label %bb.f, label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit34.us

_ZNSt3__116__constrain_hashB8ne180100Emm.exit34.us: ; preds = %.lr.ph.split.us
  %i.s = and i64 %i.q, %i.l
  %i.t = icmp eq i64 %i.s, %i.h
  br i1 %i.t, label %.critedge2.us, label %.critedge.thread

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.u = getelementptr inbounds nuw i8, ptr %.02751.us, i64 16 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8               ; 2 uses
  %i.w = trunc i8 %i.v to i1                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02751.us, i64 24
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = lshr i8 %i.v, 1                          ; 2 uses
  %i.aa = zext nneg i8 %i.z to i64                ; 2 uses
  %i.ab = select i1 %i.w, i64 %i.y, i64 %i.aa
  %.not.i.i.i.us = icmp eq i64 %i.ab, %8
  br i1 %.not.i.i.i.us, label %bb.g, label %.critedge2.us

bb.g:                                             ; preds = %bb.f
  br i1 %i.w, label %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_SH_.exit.us, label %.preheader.i.i.i.us

.preheader.i.i.i.us:                              ; preds = %bb.g
  %.not1922.i.i.i.us = icmp eq i8 %i.z, 0
  br i1 %.not1922.i.i.i.us, label %.critedge, label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.preheader.i.i.i.us, %bb.h
  %.01525.pn.i.i.i.us = phi ptr [ %.01525.i.i.i.us, %bb.h ], [ %i.u, %.preheader.i.i.i.us ]
  %.024.i.i.i.us = phi ptr [ %i.af, %bb.h ], [ %10, %.preheader.i.i.i.us ] ; 2 uses
  %.01623.i.i.i.us = phi i64 [ %i.ae, %bb.h ], [ %i.aa, %.preheader.i.i.i.us ]
  %.01525.i.i.i.us = getelementptr inbounds nuw i8, ptr %.01525.pn.i.i.i.us, i64 1 ; 2 uses
  %i.ac = load i8, ptr %.01525.i.i.i.us, align 1, !tbaa !126
  %i.ad = load i8, ptr %.024.i.i.i.us, align 1, !tbaa !126
  %.not20.i.i.i.us = icmp eq i8 %i.ac, %i.ad
  br i1 %.not20.i.i.i.us, label %bb.h, label %.critedge2.us

bb.h:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ae = add nsw i64 %.01623.i.i.i.us, -1        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.024.i.i.i.us, i64 1
  %.not19.i.i.i.us = icmp eq i64 %i.ae, 0
  br i1 %.not19.i.i.i.us, label %.critedge, label %.lr.ph.i.i.i.us, !llvm.loop !106

_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_SH_.exit.us: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.02751.us, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %bcmp.i.i.i.us = tail call i32 @bcmp(ptr %i.ah, ptr %10, i64 %i.y)
  %i.ai = icmp eq i32 %bcmp.i.i.i.us, 0
  br i1 %i.ai, label %.critedge, label %.critedge2.us

.critedge2.us:                                    ; preds = %.lr.ph.i.i.i.us, %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_SH_.exit.us, %bb.f, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit34.us
  %.027.us = load ptr, ptr %.02751.us, align 8, !tbaa !488 ; 2 uses
  %.not32.us = icmp eq ptr %.027.us, null
  br i1 %.not32.us, label %.critedge.thread, label %.lr.ph.split.us, !llvm.loop !10480

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge2
  %.02751 = phi ptr [ %.027, %.critedge2 ], [ %.02749, %.lr.ph ] ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02751, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !497 ; 4 uses
  %i.al = icmp eq i64 %i.ak, %1
  br i1 %i.al, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.am = icmp ult i64 %i.ak, %i.b
  br i1 %i.am, label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = urem i64 %i.ak, %i.b
  br label %_ZNSt3__116__constrain_hashB8ne180100Emm.exit34

_ZNSt3__116__constrain_hashB8ne180100Emm.exit34:  ; preds = %bb.i, %bb.j
  %i.ao = phi i64 [ %i.ak, %bb.i ], [ %i.an, %bb.j ]
  %i.ap = icmp eq i64 %i.ao, %i.h
  br i1 %i.ap, label %.critedge2, label %.critedge.thread

bb.k:                                             ; preds = %.lr.ph.split
  %i.aq = getelementptr inbounds nuw i8, ptr %.02751, i64 16 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8             ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02751, i64 24
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = lshr i8 %i.ar, 1                        ; 2 uses
  %i.aw = zext nneg i8 %i.av to i64               ; 2 uses
  %i.ax = select i1 %i.as, i64 %i.au, i64 %i.aw
  %.not.i.i.i = icmp eq i64 %i.ax, %8
  br i1 %.not.i.i.i, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %bb.k
  br i1 %i.as, label %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_SH_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.l
  %.not1922.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not1922.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.01525.pn.i.i.i = phi ptr [ %.01525.i.i.i, %bb.m ], [ %i.aq, %.preheader.i.i.i ]
  %.024.i.i.i = phi ptr [ %i.bb, %bb.m ], [ %10, %.preheader.i.i.i ] ; 2 uses
  %.01623.i.i.i = phi i64 [ %i.ba, %bb.m ], [ %i.aw, %.preheader.i.i.i ]
  %.01525.i.i.i = getelementptr inbounds nuw i8, ptr %.01525.pn.i.i.i, i64 1 ; 2 uses
  %i.ay = load i8, ptr %.01525.i.i.i, align 1, !tbaa !126
  %i.az = load i8, ptr %.024.i.i.i, align 1, !tbaa !126
  %.not20.i.i.i = icmp eq i8 %i.ay, %i.az
  br i1 %.not20.i.i.i, label %bb.m, label %.critedge2

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = add nsw i64 %.01623.i.i.i, -1           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1
  %.not19.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not19.i.i.i, label %.critedge, label %.lr.ph.i.i.i, !llvm.loop !106

_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_SH_.exit: ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.02751, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bd, ptr %10, i64 %i.au)
  %i.be = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.be, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph.i.i.i, %bb.k, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit34, %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_SH_.exit
  %.027 = load ptr, ptr %.02751, align 8, !tbaa !488 ; 2 uses
  %.not32 = icmp eq ptr %.027, null
  br i1 %.not32, label %.critedge.thread, label %.lr.ph.split, !llvm.loop !10480

.critedge.thread:                                 ; preds = %_ZNSt3__116__constrain_hashB8ne180100Emm.exit34, %.critedge2, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit34.us, %.critedge2.us, %.preheader, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit, %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !183
  %i.bh = add i64 %i.bg, 1
  %i.bi = uitofp i64 %i.bh to float               ; 2 uses
  %i.bj = uitofp i64 %i.b to float
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !119 ; 2 uses
  %i.bm = fmul float %i.bl, %i.bj
  %i.bn = fcmp olt float %i.bm, %i.bi
  %or.cond = or i1 %.not, %i.bn
  br i1 %or.cond, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.critedge.thread
  %i.bo = shl i64 %i.b, 1
  %i.bp = icmp ugt i64 %i.b, 2
  br i1 %i.bp, label %bb.o, label %_ZNSt3__116__is_hash_power2B8ne180100Em.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.b)
  %.not.i35 = icmp samesign ugt i64 %i.bq, 1
  %i.br = zext i1 %.not.i35 to i64
  br label %_ZNSt3__116__is_hash_power2B8ne180100Em.exit

_ZNSt3__116__is_hash_power2B8ne180100Em.exit:     ; preds = %bb.n, %bb.o
  %i.bs = phi i64 [ 1, %bb.n ], [ %i.br, %bb.o ]
  %i.bt = or disjoint i64 %i.bs, %i.bo
  %i.bu = fdiv float %i.bi, %i.bl
  %i.bv = tail call noundef float @llvm.ceil.f32(float %i.bu)
  %i.bw = fptoui float %i.bv to i64
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bw) ; 4 uses
  %i.bx = icmp eq i64 %.sroa.speculated, 1
  br i1 %i.bx, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNSt3__116__is_hash_power2B8ne180100Em.exit
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.speculated)
  %.not.i.i = icmp samesign ult i64 %i.by, 2
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = tail call noundef i64 @_ZNSt3__112__next_primeEm(i64 noundef %.sroa.speculated)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !183
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZNSt3__116__is_hash_power2B8ne180100Em.exit
  %i.ca = phi i64 [ %.pre, %bb.q ], [ %i.b, %bb.p ], [ %i.b, %_ZNSt3__116__is_hash_power2B8ne180100Em.exit ] ; 5 uses
  %.0.i.i = phi i64 [ %i.bz, %bb.q ], [ %.sroa.speculated, %bb.p ], [ 2, %_ZNSt3__116__is_hash_power2B8ne180100Em.exit ] ; 4 uses
  %i.cb = icmp ugt i64 %.0.i.i, %i.ca
  br i1 %i.cb, label %.sink.split.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = icmp ult i64 %.0.i.i, %i.ca
  br i1 %i.cc, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp ugt i64 %i.ca, 2
  %i.ce = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ca)
  %.not.i.i.i36 = icmp samesign ult i64 %i.ce, 2
  %or.cond.i.i = select i1 %i.cd, i1 %.not.i.i.i36, i1 false
  %i.cf = load i64, ptr %i.bf, align 8, !tbaa !183
  %i.cg = uitofp i64 %i.cf to float
  %i.ch = load float, ptr %i.bk, align 8, !tbaa !119
  %i.ci = fdiv float %i.cg, %i.ch
  %i.cj = tail call noundef float @llvm.ceil.f32(float %i.ci)
  %i.ck = fptoui float %i.cj to i64               ; 4 uses
  br i1 %or.cond.i.i, label %bb.u, label %_ZNSt3__116__is_hash_power2B8ne180100Em.exit.thread.i.i

bb.u:                                             ; preds = %bb.t
  %i.cl = icmp ult i64 %i.ck, 2
  br i1 %i.cl, label %_ZNSt3__116__next_hash_pow2B8ne180100Em.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = add i64 %i.ck, -1
  %i.cn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = sub nuw nsw i64 64, %i.cn
  %i.cp = shl nuw i64 1, %i.co
  br label %_ZNSt3__116__next_hash_pow2B8ne180100Em.exit.i.i

_ZNSt3__116__is_hash_power2B8ne180100Em.exit.thread.i.i: ; preds = %bb.t
  %i.cq = tail call noundef i64 @_ZNSt3__112__next_primeEm(i64 noundef %i.ck)
  br label %_ZNSt3__116__next_hash_pow2B8ne180100Em.exit.i.i

_ZNSt3__116__next_hash_pow2B8ne180100Em.exit.i.i: ; preds = %_ZNSt3__116__is_hash_power2B8ne180100Em.exit.thread.i.i, %bb.v, %bb.u
  %i.cr = phi i64 [ %i.cq, %_ZNSt3__116__is_hash_power2B8ne180100Em.exit.thread.i.i ], [ %i.cp, %bb.v ], [ %i.ck, %bb.u ]
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %.0.i.i, i64 %i.cr) ; 2 uses
  %i.cs = icmp ult i64 %.sroa.speculated.i.i, %i.ca
  br i1 %i.cs, label %.sink.split.i.i, label %.critedge

.sink.split.i.i:                                  ; preds = %_ZNSt3__116__next_hash_pow2B8ne180100Em.exit.i.i, %bb.r
  %.sroa.speculated.sink.i.i = phi i64 [ %.0.i.i, %bb.r ], [ %.sroa.speculated.i.i, %_ZNSt3__116__next_hash_pow2B8ne180100Em.exit.i.i ]
  tail call void @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3tev12ImageTextureEEENS_22__unordered_map_hasherIS7_SA_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SA_SF_SD_Lb1EEENS5_ISA_EEE11__do_rehashILb1EEEvm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %.sroa.speculated.sink.i.i)
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_SH_.exit, %.preheader.i.i.i, %bb.m, %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_SH_.exit.us, %.preheader.i.i.i.us, %bb.h, %.sink.split.i.i, %_ZNSt3__116__next_hash_pow2B8ne180100Em.exit.i.i, %bb.s, %.critedge.thread
  %.1 = phi ptr [ null, %.sink.split.i.i ], [ null, %.critedge.thread ], [ %.02751, %bb.m ], [ null, %bb.s ], [ null, %_ZNSt3__116__next_hash_pow2B8ne180100Em.exit.i.i ], [ %.02751.us, %bb.h ], [ %.02751.us, %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_SH_.exit.us ], [ %.02751.us, %.preheader.i.i.i.us ], [ %.02751, %.preheader.i.i.i ], [ %.02751, %_ZNKSt3__121__unordered_map_equalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17__hash_value_typeIS6_N3tev12ImageTextureEEENS_8equal_toIS6_EENS_4hashIS6_EELb1EEclB8ne180100ERKSA_SH_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4tlog6Logger3logIJRKbRKmNSt3__117basic_string_viewIcNS6_11char_traitsIcEEEESA_RNS6_12basic_stringIcS9_NS6_9allocatorIcEEEESE_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSK_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %class.anon.868, align 8           ; 5 uses
  %11 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %12 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %13 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %14 = alloca %"struct.fmt::v12::detail::format_arg_store.1637", align 16 ; 14 uses
  %15 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !247
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #44, !noalias !10487
  %i.d = load i8, ptr %4, align 1, !tbaa !262, !range !174, !noalias !10487, !noundef !175
  store i8 %i.d, ptr %14, align 16, !tbaa !126, !noalias !10487
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.f = load i64, ptr %5, align 8, !tbaa !183, !noalias !10487
  store i64 %i.f, ptr %i.e, align 16, !tbaa !126, !noalias !10487
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.h = load ptr, ptr %6, align 8, !tbaa !469, !noalias !10487
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !468, !noalias !10487
  store ptr %i.h, ptr %i.g, align 16, !tbaa !126, !noalias !10487
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %i.j, ptr %i.k, align 8, !tbaa !126, !noalias !10487
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.m = load ptr, ptr %7, align 8, !tbaa !469, !noalias !10487
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !468, !noalias !10487
  store ptr %i.m, ptr %i.l, align 16, !tbaa !126, !noalias !10487
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i64 %i.o, ptr %i.p, align 8, !tbaa !126, !noalias !10487
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.r = load i8, ptr %8, align 8, !noalias !10487 ; 2 uses
  %i.s = trunc i8 %i.r to i1                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !10487
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.w = select i1 %i.s, ptr %i.u, ptr %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noalias !10487
  %i.z = lshr i8 %i.r, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.s, i64 %i.y, i64 %i.aa
  store ptr %i.w, ptr %i.q, align 16, !tbaa !126, !noalias !10487
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !126, !noalias !10487
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.ae = load i8, ptr %9, align 8, !noalias !10487 ; 2 uses
  %i.af = trunc i8 %i.ae to i1                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !10487
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.aj = select i1 %i.af, ptr %i.ah, ptr %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !10487
  %i.am = lshr i8 %i.ae, 1
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = select i1 %i.af, i64 %i.al, i64 %i.an
  store ptr %i.aj, ptr %i.ad, align 16, !tbaa !126, !noalias !10487
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !126, !noalias !10487
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10488)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44, !noalias !10488
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 0, ptr %i.as, align 8, !noalias !10488
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ar, align 8, !tbaa !399, !noalias !10488
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store ptr %i.at, ptr %13, align 8, !tbaa !400, !noalias !10488
  store i64 500, ptr %i.aq, align 8, !tbaa !401, !noalias !10488
  %i.au = icmp eq i64 %3, 2
  br i1 %i.au, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.av = load i16, ptr %2, align 1
  %i.aw = icmp ne i16 %i.av, 32123
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %14, align 16, !tbaa !126, !noalias !10488
  %i.az = trunc i128 %.sroa.0.0.copyload.sink66.i to i1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  store i32 32768, ptr %11, align 4, !tbaa !802
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i8 32, ptr %i.ba, align 4, !tbaa !126
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 5
end_hunk_0
