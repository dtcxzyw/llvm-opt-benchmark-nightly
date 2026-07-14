inline.NumInlined: 7661
inline.NumDeleted: 2990
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6duckdb7Catalog10GetSchemasERNS_21CatalogEntryRetrieverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ai) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.al = load ptr, ptr %.05.i.i.i, align 8, !tbaa !63 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZSt8_DestroyIN6duckdb18CatalogSearchEntryEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.al) #35
  br label %_ZSt8_DestroyIN6duckdb18CatalogSearchEntryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb18CatalogSearchEntryEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.af
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !192

_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb18CatalogSearchEntryEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !188
  br label %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.ap = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ag, %._crit_edge ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #35
  br label %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EED2Ev.exit: ; preds = %_ZNK6duckdb21CatalogEntryRetriever13GetSearchPathEv.exit, %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit.i, %bb.j
  %.sroa.11.0.lcssa175181 = phi ptr [ %.sroa.11.0.lcssa, %bb.j ], [ %.sroa.11.0.lcssa, %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit.i ], [ null, %_ZNK6duckdb21CatalogEntryRetriever13GetSearchPathEv.exit ] ; 2 uses
  %.sroa.091.0.lcssa176180 = phi ptr [ %.sroa.091.0.lcssa, %bb.j ], [ %.sroa.091.0.lcssa, %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit.i ], [ null, %_ZNK6duckdb21CatalogEntryRetriever13GetSearchPathEv.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !515 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.aq, %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EED2Ev.exit ] ; 2 uses
  %i.ar = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #35
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !516

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EED2Ev.exit
  %i.as = load ptr, ptr %5, align 8, !tbaa !509
  %i.at = load i64, ptr %i.c, align 8, !tbaa !511
  %i.au = shl i64 %i.at, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %i.au, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.av = load ptr, ptr %5, align 8, !tbaa !509   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.av) #35
  br label %bb.ab

bb.l:                                             ; preds = %.noexc33, %bb.d, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %.lr.ph, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit
  %.sroa.091.0127 = phi ptr [ null, %.lr.ph ], [ %.sroa.091.1, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit ] ; 12 uses
  %.sroa.11.0126 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit ] ; 9 uses
  %.sroa.20.0125 = phi ptr [ null, %.lr.ph ], [ %.sroa.20.1, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit ] ; 5 uses
  %.sroa.088.0124 = phi ptr [ %.pre, %.lr.ph ], [ %i.dh, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit ] ; 2 uses
  %i.ay = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb7Catalog10GetCatalogERNS_21CatalogEntryRetrieverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.088.0124)
          to label %bb.n unwind label %bb.t       ; 7 uses

bb.n:                                             ; preds = %bb.m
  %i.az = load i64, ptr %i.ae, align 8, !tbaa !517
  %.not.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.n, %bb.o
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.o ], [ %i.d, %bb.n ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !73 ; 3 uses
  %.not.i.i38 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i38, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !518
  %i.bc = icmp eq ptr %i.ay, %i.bb
  br i1 %i.bc, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, label %.preheader, !llvm.loop !520

bb.p:                                             ; preds = %bb.n
  %i.bd = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.be = load i64, ptr %i.c, align 8, !tbaa !511 ; 2 uses
  %i.bf = urem i64 %i.bd, %i.be                   ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !509
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !415 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i36, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !73 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !417
  %i.bn = icmp eq i64 %i.bm, %i.bd
  %i.bo = load ptr, ptr %i.bk, align 8
  %i.bp = icmp eq ptr %i.ay, %i.bo
  %i.bq = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %i.bq, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, label %.lr.ph.i.i.i.i37

bb.r:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bs = icmp eq i64 %i.by, %i.bd
  %i.bt = load ptr, ptr %i.br, align 8
  %i.bu = icmp eq ptr %i.ay, %i.bt
  %i.bv = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %i.bv, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, label %.lr.ph.i.i.i.i37, !llvm.loop !521

.lr.ph.i.i.i.i37:                                 ; preds = %bb.q, %bb.r
  %.020.i.i.i.i = phi ptr [ %i.bw, %bb.r ], [ %i.bj, %bb.q ]
  %i.bw = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !73 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !417 ; 2 uses
  %i.bz = urem i64 %i.by, %i.be
  %.not19.i.i.i.i = icmp eq i64 %i.bz, %i.bf
  br i1 %.not19.i.i.i.i, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !521

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.s
  br label %.loopexit, !llvm.loop !521

bb.t:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i37, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store ptr %i.ay, ptr %7, align 8, !tbaa !518
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %5, ptr %4, align 8, !tbaa !522
  %i.cb = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.u unwind label %bb.z       ; 0 uses

bb.u:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %.not.i.i40 = icmp eq ptr %.sroa.11.0126, %.sroa.20.0125
  br i1 %.not.i.i40, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = ptrtoint ptr %i.ay to i64
  store i64 %i.cc, ptr %.sroa.11.0126, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.11.0126, i64 8
  br label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit

bb.w:                                             ; preds = %bb.u
  %i.ce = ptrtoint ptr %.sroa.11.0126 to i64      ; 2 uses
  %i.cf = ptrtoint ptr %.sroa.091.0127 to i64     ; 3 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.x, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #36
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i.i41 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #38
          to label %.noexc43 unwind label %.loopexit109 ; 8 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  %i.cq = ptrtoint ptr %i.ay to i64
  store i64 %i.cq, ptr %i.cp, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.091.0127, %.sroa.11.0126
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc43
  %i.cr = ptrtoaddr ptr %i.co to i64
  %9 = sub i64 %i.ce, %i.cf
  %10 = add i64 %9, -8                            ; 2 uses
  %i.cs = lshr i64 %10, 3
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 24
  %i.cu = sub i64 %i.cf, %i.cr
  %diff.check = icmp ugt i64 %i.cu, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader205, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ct, 4611686018427387900     ; 3 uses
  %i.cv = shl i64 %n.vec, 3                       ; 2 uses
  %i.cw = getelementptr i8, ptr %i.co, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %.sroa.091.0127, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.co, i64 %i.cy ; 2 uses
  %next.gep202 = getelementptr i8, ptr %.sroa.091.0127, i64 %i.cy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.cz = getelementptr i8, ptr %next.gep202, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep202, align 8, !alias.scope !527, !noalias !524
  %wide.load203 = load <2 x i64>, ptr %i.cz, align 8, !alias.scope !527, !noalias !524
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !524, !noalias !527
  store <2 x i64> %wide.load203, ptr %i.da, align 8, !alias.scope !524, !noalias !527
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !529

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader205

.lr.ph.i.i.i.i.i.i.i.preheader205:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.091.0127, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader205, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader205 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader205 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.dc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !527, !noalias !524
  store i64 %i.dc, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !524, !noalias !527
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dd, %.sroa.11.0126
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !532

_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc43
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.co, %.noexc43 ], [ %i.cw, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %.sroa.091.0127, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.091.0127) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  br label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit

_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit: ; preds = %bb.r, %bb.o, %bb.v, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.q
  %.sroa.20.1 = phi ptr [ %.sroa.20.0125, %bb.v ], [ %.sroa.20.0125, %bb.o ], [ %.sroa.20.0125, %bb.q ], [ %i.dg, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.20.0125, %bb.r ]
  %.sroa.11.1 = phi ptr [ %i.cd, %bb.v ], [ %.sroa.11.0126, %bb.o ], [ %.sroa.11.0126, %bb.q ], [ %i.df, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.11.0126, %bb.r ] ; 2 uses
  %.sroa.091.1 = phi ptr [ %.sroa.091.0127, %bb.v ], [ %.sroa.091.0127, %bb.o ], [ %.sroa.091.0127, %bb.q ], [ %i.co, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.091.0127, %bb.r ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.088.0124, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.dh, %.pre141
  br i1 %.not, label %._crit_edge.loopexit, label %bb.m

bb.z:                                             ; preds = %.loopexit
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.aa

.loopexit109:                                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit109, %.loopexit.split-lp, %bb.z, %bb.t
  %.pn28 = phi { ptr, i32 } [ %i.ca, %bb.t ], [ %i.di, %bb.z ], [ %lpad.loopexit, %.loopexit109 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.body

.body:                                            ; preds = %bb.i, %bb.aa, %bb.l
  %.sroa.091.2 = phi ptr [ %.sroa.091.0127, %bb.aa ], [ null, %bb.l ], [ null, %bb.i ]
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28, %bb.aa ], [ %i.ax, %bb.l ], [ %i.ac, %bb.i ]
  call void @_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit70

.thread:                                          ; preds = %bb.a
  %i.dj = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb7Catalog10GetCatalogERNS_21CatalogEntryRetrieverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.dk = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38 ; 3 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  store i64 %i.dl, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.lr.ph132

bb.ab:                                            ; preds = %bb.k, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not106129 = icmp eq ptr %.sroa.091.0.lcssa176180, %.sroa.11.0.lcssa175181
  br i1 %.not106129, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %.thread, %bb.ab
  %.sroa.091.3186 = phi ptr [ %i.dk, %.thread ], [ %.sroa.091.0.lcssa176180, %bb.ab ] ; 4 uses
  %.sroa.11.2185 = phi ptr [ %i.dm, %.thread ], [ %.sroa.11.0.lcssa175181, %bb.ab ]
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.do = ptrtoint ptr %8 to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ad

._crit_edge133:                                   ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit, %bb.ab
  %.sroa.091.3187 = phi ptr [ %.sroa.091.0.lcssa176180, %bb.ab ], [ %.sroa.091.3186, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit ] ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %.sroa.091.3187, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge133
  call void @_ZdlPv(ptr noundef nonnull %.sroa.091.3187) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EED2Ev.exit: ; preds = %._crit_edge133, %bb.ac
  ret void

bb.ad:                                            ; preds = %.lr.ph132, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit
  %.sroa.076.0130 = phi ptr [ %.sroa.091.3186, %.lr.ph132 ], [ %i.es, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.dt = load i64, ptr %.sroa.076.0130, align 8
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.dv = load ptr, ptr %i.dn, align 8, !tbaa !162, !nonnull !82, !align !83
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !533
  store i64 0, ptr %i.dq, align 8, !noalias !533
  store i64 %i.do, ptr %3, align 8, !tbaa !407, !noalias !533
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_7Catalog10GetSchemasERNS0_13ClientContextEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_7Catalog10GetSchemasERNS0_13ClientContextEE3$_0E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.dp, align 8, !tbaa !193, !noalias !533
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !7, !noalias !533
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(512) %i.dv, ptr noundef nonnull %3)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dz = load ptr, ptr %i.dp, align 8, !tbaa !154, !noalias !533 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i62, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.ak unwind label %bb.ag     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #37
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %i.dp, align 8, !tbaa !154, !noalias !533 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ee, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit5.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = invoke noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5.i unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit5.i:                ; preds = %bb.ai, %bb.ah
  %i.ei = load ptr, ptr %8, align 8, !tbaa !409, !alias.scope !533 ; 2 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i61, label %.body63, label %.body63.sink.split

bb.ak:                                            ; preds = %bb.af, %bb.ae
end_hunk_0
begin_hunk_1_@_ZN6duckdb17DependencyManager12ReorderEntryENS_18CatalogTransactionERNS_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS2_ENS_24CatalogEntryHashFunctionENS_20CatalogEntryEqualityESaIS6_EERNS_6vectorIS6_Lb1ES9_EE:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !415  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !417
  %i.w = icmp eq i64 %i.v, %i.l
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = icmp eq ptr %i.b, %i.x
  %i.z = select i1 %i.w, i1 %i.y, i1 false
  br i1 %i.z, label %.critedge, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ab = icmp eq i64 %i.ah, %i.l
  %i.ac = load ptr, ptr %i.aa, align 8
  %i.ad = icmp eq ptr %i.b, %i.ac
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %.critedge, label %.lr.ph.i.i.i.i.i, !llvm.loop !1057

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i = phi ptr [ %i.af, %bb.g ], [ %i.s, %bb.f ]
  %i.af = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !73 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !417 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.n
  %.not19.i.i.i.i.i = icmp eq i64 %i.ai, %i.o
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !1057

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.h
  br label %.loopexit, !llvm.loop !1057

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i.i, %bb.e
  %i.aj = add i64 %i.e, -1
  %i.ak = icmp eq i64 %i.d, %i.aj
  br i1 %i.ak, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.am = load i8, ptr %i.al, align 2, !tbaa !68, !range !180, !noundef !82
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %.loopexit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZN6duckdb17DependencyManager19GetLookupPropertiesERKNS_12CatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::CatalogEntryInfo") align 8 %8, ptr noundef nonnull align 8 dereferenceable(240) %2)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.ao = ptrtoint ptr %7 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ar, align 8
  store i64 %i.ao, ptr %9, align 8, !tbaa !543
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb15DependencyEntryEEZNS0_17DependencyManager12ReorderEntryENS0_18CatalogTransactionERNS0_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS6_ENS0_24CatalogEntryHashFunctionENS0_20CatalogEntryEqualityESaISA_EERNS0_6vectorISA_Lb1ESD_EEE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.aq, align 8, !tbaa !690
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb15DependencyEntryEEZNS0_17DependencyManager12ReorderEntryENS0_18CatalogTransactionERNS0_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS6_ENS0_24CatalogEntryHashFunctionENS0_20CatalogEntryEqualityESaISA_EERNS0_6vectorISA_Lb1ESD_EEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.ap, align 8, !tbaa !154
  invoke void @_ZN6duckdb17DependencyManager15ScanSetInternalENS_18CatalogTransactionERKNS_16CatalogEntryInfoEbRKSt8functionIFvRNS_15DependencyEntryEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %8, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !154 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.aw = load ptr, ptr %7, align 8, !tbaa !840   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !840 ; 2 uses
  %.not44 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not44, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %i.b, ptr %10, align 8, !tbaa !818
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr %3, ptr %5, align 8, !tbaa !1058
  %i.az = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb12CatalogEntryEES3_SaIS3_ENSt8__detail9_IdentityENS1_20CatalogEntryEqualityENS1_24CatalogEntryHashFunctionENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.z       ; 0 uses

bb.n:                                             ; preds = %.critedge2
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.o:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !154 ; 2 uses
  %.not.i23 = icmp eq ptr %i.bc, null
  br i1 %.not.i23, label %_ZNSt14_Function_baseD2Ev.exit24, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit24 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit24:                 ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.ab

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.r
  %.sroa.032.045 = phi ptr [ %i.bh, %bb.r ], [ %i.aw, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.032.045, align 8, !tbaa !818
  invoke void @_ZN6duckdb17DependencyManager12ReorderEntryENS_18CatalogTransactionERNS_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS2_ENS_24CatalogEntryHashFunctionENS_20CatalogEntryEqualityESaIS6_EERNS_6vectorIS6_Lb1ES9_EE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %1, ptr noundef nonnull align 8 dereferenceable(240) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.032.045, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.ay
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1055 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1060
  %.not.i.i25 = icmp eq ptr %i.bk, %i.bm
  br i1 %.not.i.i25, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = ptrtoint ptr %i.b to i64
  store i64 %i.bn, ptr %i.bk, align 8
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !1055
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !1055
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit

bb.v:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr %4, align 8, !tbaa !545   ; 7 uses
  %i.br = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.w, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #36
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.w
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #38
          to label %.noexc26 unwind label %bb.aa  ; 8 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  %i.cd = ptrtoint ptr %i.b to i64
  store i64 %i.cd, ptr %i.cc, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bk
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc26
  %i.ce = ptrtoaddr ptr %i.cb to i64
  %11 = sub i64 %i.br, %i.bs
  %12 = add i64 %11, -8                           ; 2 uses
  %i.cf = lshr i64 %12, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 72
  %i.ch = sub i64 %i.bs, %i.ce
  %diff.check = icmp ugt i64 %i.ch, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cg, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cb, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bq, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.cl ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bq, i64 %i.cl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.cm = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep65, align 8, !alias.scope !1064, !noalias !1061
  %wide.load66 = load <2 x i64>, ptr %i.cm, align 8, !alias.scope !1064, !noalias !1061
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1061, !noalias !1064
  store <2 x i64> %wide.load66, ptr %i.cn, align 8, !alias.scope !1061, !noalias !1064
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !1066

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader68

.lr.ph.i.i.i.i.i.i.i.preheader68:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader68, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader68 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader68 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.cp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1064, !noalias !1061
  store i64 %i.cp, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1061, !noalias !1064
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.bk
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1067

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc26
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.noexc26 ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.cb, ptr %4, align 8, !tbaa !545
  store ptr %i.cs, ptr %i.bj, align 8, !tbaa !1055
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.ct, ptr %i.bl, align 8, !tbaa !1060
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !63 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit
  call void @_ZdlPv(ptr noundef %i.cv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !63 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZN6duckdb16CatalogEntryInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.cz) #35
  br label %_ZN6duckdb16CatalogEntryInfoD2Ev.exit

_ZN6duckdb16CatalogEntryInfoD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.dc = load ptr, ptr %7, align 8, !tbaa !545   ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb16CatalogEntryInfoD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.dc) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit: ; preds = %_ZN6duckdb16CatalogEntryInfoD2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.d, %bb.f, %bb.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit
  ret void

bb.z:                                             ; preds = %._crit_edge
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.w
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.s, %_ZNSt14_Function_baseD2Ev.exit24
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.s ], [ %i.de, %bb.aa ], [ %i.dd, %bb.z ], [ %i.bb, %_ZNSt14_Function_baseD2Ev.exit24 ]
  call void @_ZN6duckdb16CatalogEntryInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #34
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.ba, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.df = load ptr, ptr %7, align 8, !tbaa !545   ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit29, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef nonnull %i.df) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit29

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit29: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIN6duckdb10DependencyENS0_22DependencyHashFunctionENS0_18DependencyEqualityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !807  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN6duckdb10DependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_18DependencyEqualityENS0_22DependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !73 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #35
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN6duckdb10DependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_18DependencyEqualityENS0_22DependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !808

_ZNSt10_HashtableIN6duckdb10DependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_18DependencyEqualityENS0_22DependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !802
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !804
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !802    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN6duckdb10DependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_18DependencyEqualityENS0_22DependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb10DependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_18DependencyEqualityENS0_22DependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #35
  br label %_ZNSt10_HashtableIN6duckdb10DependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_18DependencyEqualityENS0_22DependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN6duckdb10DependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_18DependencyEqualityENS0_22DependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb10DependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_18DependencyEqualityENS0_22DependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17DependencyManager4ScanERNS_13ClientContextERKSt8functionIFvRNS_12CatalogEntryES5_RKNS_24DependencyDependentFlagsEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::CatalogTransaction", align 8 ; 8 uses
  %4 = alloca %"class.std::unordered_set.1291", align 8 ; 13 uses
  %5 = alloca %"class.std::function.513", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::CatalogEntryInfo", align 8 ; 10 uses
  %7 = alloca %"class.std::function.1308", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = load ptr, ptr %0, align 8, !tbaa !822, !nonnull !82, !align !83
  call void @_ZN6duckdb18CatalogTransactionC1ERNS_7CatalogERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %1)
  %i.b = load ptr, ptr %0, align 8, !tbaa !822, !nonnull !82, !align !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.d = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #36
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZSt8_DestroyIPN6duckdb14DependencyInfoEEvT_S3_:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1492", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !1275
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1275
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !224, !noalias !1275 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227, !noalias !1275 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #35
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !228

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !224, !noalias !1275
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #35
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !1275
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !1275
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %common.resume
}

declare void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1055 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !545    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1060
  %i.i = load ptr, ptr %0, align 8, !tbaa !545    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i, !prof !148

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #35
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !545
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !1060
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1055
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !354

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 8
  store i64 %i.aa, ptr %i.i, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !354

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 8
  store i64 %i.ad, ptr %i.i, align 8
  br label %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !545   ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !1055 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !545
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !1055 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %2 = ptrtoint ptr %i.al to i64
  %3 = ptrtoint ptr %i.ae to i64
  %i.an = add i64 %i.ai, %2
  %i.ao = add i64 %i.an, -8
  %i.ap = add i64 %3, %i.ah
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 72
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8
  %wide.load33 = load <2 x i64>, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load33, ptr %i.az, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader35

.lr.ph.i.i.i.i.preheader35:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader35, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %i.bb = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bb, ptr %.011.i.i.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1279

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !545
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !1055
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #25

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_13ClientContextELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !139
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKS8_EET_SP_mRKSF_RKSD_RKS9_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %3)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !146
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2EmRKSF_RKSD_RKS9_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !148

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !479
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !148

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc9.i unwind label %bb.g

end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  store i8 0, ptr %i.bb, align 8, !tbaa !65, !alias.scope !1444, !noalias !1441
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56 ; 3 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !62, !alias.scope !1441, !noalias !1444
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !63, !alias.scope !1444, !noalias !1441 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !64, !alias.scope !1444, !noalias !1441 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false), !alias.scope !1446
  br label %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !63, !alias.scope !1441, !noalias !1444
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !65, !alias.scope !1444, !noalias !1441
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !65, !alias.scope !1441, !noalias !1444
  %.phi.trans.insert5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48
  %.pre6.i.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i.i, align 8, !tbaa !64, !alias.scope !1444, !noalias !1441
  br label %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i, %bb.f
  %i.bw = phi i64 [ %i.bs, %bb.f ], [ %.pre6.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !64, !alias.scope !1441, !noalias !1444
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !63, !alias.scope !1444, !noalias !1441
  store i64 0, ptr %i.bx, align 8, !tbaa !64, !alias.scope !1444, !noalias !1441
  store i8 0, ptr %i.bp, align 8, !tbaa !65, !alias.scope !1444, !noalias !1441
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !tbaa.struct !497, !alias.scope !1446
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 104 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !505

_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN6duckdb13CatalogLookupC2EOS0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZN6duckdb13CatalogLookupC2EOS0_.exit ], [ %i.cc, %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 104 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i27
  %.012.i.i.i.i18 = phi ptr [ %i.dk, %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i27 ], [ %i.cd, %_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.dj, %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i27 ], [ %1, %_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  %i.ce = load ptr, ptr %.0911.i.i.i.i19, align 8, !tbaa !474, !alias.scope !1450, !noalias !1447, !nonnull !82, !align !83
  store ptr %i.ce, ptr %.012.i.i.i.i18, align 8, !tbaa !153, !alias.scope !1447, !noalias !1450
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24 ; 3 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !62, !alias.scope !1447, !noalias !1450
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !63, !alias.scope !1450, !noalias !1447 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !64, !alias.scope !1450, !noalias !1447 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false), !alias.scope !1452
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !63, !alias.scope !1447, !noalias !1450
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !65, !alias.scope !1450, !noalias !1447
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !65, !alias.scope !1447, !noalias !1450
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !64, !alias.scope !1450, !noalias !1447
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.g
  %i.cq = phi i64 [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ], [ %i.cm, %bb.g ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !64, !alias.scope !1447, !noalias !1450
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !63, !alias.scope !1450, !noalias !1447
  store i64 0, ptr %i.cr, align 8, !tbaa !64, !alias.scope !1450, !noalias !1447
  store i8 0, ptr %i.cj, align 8, !tbaa !65, !alias.scope !1450, !noalias !1447
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 56 ; 3 uses
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !62, !alias.scope !1447, !noalias !1450
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !63, !alias.scope !1450, !noalias !1447 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 56 ; 5 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i24

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !64, !alias.scope !1450, !noalias !1447 ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = add nuw nsw i64 %i.da, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, ptr noundef nonnull align 8 dereferenceable(1) %i.cx, i64 %i.dc, i1 false), !alias.scope !1452
  br label %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !63, !alias.scope !1447, !noalias !1450
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !65, !alias.scope !1450, !noalias !1447
  store i64 %i.dd, ptr %i.cv, align 8, !tbaa !65, !alias.scope !1447, !noalias !1450
  %.phi.trans.insert5.i.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48
  %.pre6.i.i.i.i.i26 = load i64, ptr %.phi.trans.insert5.i.i.i.i.i25, align 8, !tbaa !64, !alias.scope !1450, !noalias !1447
  br label %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i27

_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i24, %bb.h
  %i.de = phi i64 [ %i.da, %bb.h ], [ %.pre6.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i24 ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !64, !alias.scope !1447, !noalias !1450
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !63, !alias.scope !1450, !noalias !1447
  store i64 0, ptr %i.df, align 8, !tbaa !64, !alias.scope !1450, !noalias !1447
  store i8 0, ptr %i.cx, align 8, !tbaa !65, !alias.scope !1450, !noalias !1447
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 72
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 32, i1 false), !tbaa.struct !497, !alias.scope !1452
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 104 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 104 ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.dj, %i.b
  br i1 %.not.i.i.i.i28, label %_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30, label %.lr.ph.i.i.i.i17, !llvm.loop !505

_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30: ; preds = %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i27, %_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i29 = phi ptr [ %i.cd, %_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.dk, %_ZSt19__relocate_object_aIN6duckdb13CatalogLookupES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i27 ]
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN6duckdb13CatalogLookupESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #35
  br label %_ZNSt12_Vector_baseIN6duckdb13CatalogLookupESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb13CatalogLookupESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb13CatalogLookupESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30, %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !489
  store ptr %.0.lcssa.i.i.i.i29, ptr %i.a, align 8, !tbaa !487
  %i.dm = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.l
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !496
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_7Catalog10GetSchemasERNS0_13ClientContextEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1453  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1455 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1456
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1455
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1455
  br label %"_ZSt10__invoke_rIvRZN6duckdb7Catalog10GetSchemasERNS0_13ClientContextEE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val, align 8, !tbaa !409 ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #36
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #38 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = ptrtoint ptr %1 to i64
  store i64 %i.u, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %2 = sub i64 %i.i, %i.j
  %3 = add i64 %2, -8                             ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.y = sub i64 %i.j, %i.v
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.ad = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !1460, !noalias !1457
  %wide.load5 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !1460, !noalias !1457
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1457, !noalias !1460
  store <2 x i64> %wide.load5, ptr %i.ae, align 8, !alias.scope !1457, !noalias !1460
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1462

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1460, !noalias !1457
  store i64 %i.ag, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1457, !noalias !1460
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1463

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.s, ptr %.val, align 8, !tbaa !409
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !1455
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !1456
  br label %"_ZSt10__invoke_rIvRZN6duckdb7Catalog10GetSchemasERNS0_13ClientContextEE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb7Catalog10GetSchemasERNS0_13ClientContextEE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit": ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_7Catalog10GetSchemasERNS0_13ClientContextEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb7Catalog10GetSchemasERNS1_13ClientContextEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb7Catalog10GetSchemasERNS_13ClientContextEE3$_0", ptr %0, align 8, !tbaa !1464
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb7Catalog10GetSchemasERNS1_13ClientContextEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !193
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb7Catalog10GetSchemasERNS1_13ClientContextEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !407
  store i64 %.val.i, ptr %0, align 8, !tbaa !407
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb7Catalog10GetSchemasERNS1_13ClientContextEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb7Catalog10GetSchemasERNS1_13ClientContextEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !517
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !511  ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !509
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !415  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !73 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !518
  %i.p = icmp eq ptr %i.l, %i.o
  br i1 %i.p, label %_ZNKSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %bb.c, !llvm.loop !1466

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !511
  %i.s = urem i64 %i.m, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !73   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !417
  %i.x = icmp eq i64 %i.w, %i.d
  %i.y = load ptr, ptr %i.u, align 8
  %i.z = icmp eq ptr %i.c, %i.y
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br i1 %i.aa, label %_ZNKSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ac = icmp eq i64 %i.ai, %i.d
  %i.ad = load ptr, ptr %i.ab, align 8
  %i.ae = icmp eq ptr %i.c, %i.ad
  %i.af = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %i.af, label %_ZNKSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !1467

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.t, %bb.f ]
  %i.ag = load ptr, ptr %.020.i.i, align 8, !tbaa !73 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !417 ; 2 uses
  %i.aj = urem i64 %i.ai, %i.f
  %.not19.i.i = icmp eq i64 %i.aj, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !1467

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !1467

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ak = phi i64 [ %i.m, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  %i.al = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.am = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 4 uses
  store ptr null, ptr %i.am, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ak, ptr %i.an, align 8
  %i.ao = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.al, i64 noundef %i.ak, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZNKSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit unwind label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.am) #35
  resume { ptr, i32 } %i.ap

_ZNKSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ao, %.critedge ], [ %i.t, %bb.f ], [ %i.ag, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !480
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !511
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !517
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #34 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !480
  invoke void @__cxa_rethrow() #36
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #37
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !511
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.t, align 8, !tbaa !417
  %i.u = load ptr, ptr %0, align 8, !tbaa !509    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !415  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73
  store ptr %i.x, ptr %3, align 8, !tbaa !73
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !415
  store ptr %3, ptr %i.y, align 8, !tbaa !73
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !515
  store ptr %i.aa, ptr %3, align 8, !tbaa !73
  store ptr %3, ptr %i.z, align 8, !tbaa !515
  %i.ab = load ptr, ptr %3, align 8, !tbaa !73    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !511
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !417
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !415
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !415
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !517
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !517
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !148

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1468
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt17reference_wrapperIN6duckdb7CatalogEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !148

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt17reference_wrapperIN6duckdb7CatalogEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #38 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt17reference_wrapperIN6duckdb7CatalogEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt17reference_wrapperIN6duckdb7CatalogEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !515  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !515
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !73  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !417
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !415  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !515
  store ptr %i.o, ptr %.031, align 8, !tbaa !73
  store ptr %.031, ptr %i.g, align 8, !tbaa !515
  store ptr %i.g, ptr %i.m, align 8, !tbaa !415
  %i.p = load ptr, ptr %.031, align 8, !tbaa !73
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !415
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !73
  store ptr %i.r, ptr %.031, align 8, !tbaa !73
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !415
  store ptr %.031, ptr %i.s, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1469

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !509    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #35
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !511
  store ptr %.0.i, ptr %0, align 8, !tbaa !509
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 7 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1456
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1455 ; 16 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.k, %i.m                       ; 6 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 4 uses
  %4 = sub i64 %i.b, %i.c
  %5 = add i64 %4, -8                             ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check143 = icmp ult i64 %5, 72
  %6 = sub i64 %i.c, %i.b
  %diff.check141 = icmp ugt i64 %6, -32
  %or.cond = or i1 %min.iters.check143, %diff.check141
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %bb.d
  %n.vec146 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec146, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 %i.t
  %i.v = getelementptr i8, ptr %i.q, i64 %i.t
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph144
  %index148 = phi i64 [ 0, %vector.ph144 ], [ %index.next153, %vector.body147 ] ; 2 uses
  %i.w = shl i64 %index148, 3                     ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.i, i64 %i.w ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.q, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load151 = load <2 x i64>, ptr %next.gep150, align 8
  %wide.load152 = load <2 x i64>, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %wide.load151, ptr %next.gep149, align 8
  store <2 x i64> %wide.load152, ptr %i.y, align 8
  %index.next153 = add nuw i64 %index148, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.z, label %middle.block154, label %vector.body147, !llvm.loop !1470

middle.block154:                                  ; preds = %vector.body147
  %cmp.n155 = icmp eq i64 %i.s, %n.vec146
  br i1 %cmp.n155, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block154
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.u, %middle.block154 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.v, %middle.block154 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.aa = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8
  store i64 %i.aa, ptr %.013.i.i.i.i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1471

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block154
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !1455
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.d
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !1455
  %i.af = ptrtoint ptr %i.q to i64
  %i.ag = sub i64 %i.af, %i.m                     ; 3 uses
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.e, label %bb.f, !prof !354

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.aj = sub nsw i64 0, %i.ah
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %1, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.al = icmp eq i64 %i.ag, 8
  br i1 %i.al, label %bb.g, label %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.an = load i64, ptr %1, align 8
  store i64 %i.an, ptr %i.am, align 8
  br label %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ao = icmp sgt i64 %i.d, 8
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !354

bb.h:                                             ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit
  %i.ap = icmp eq i64 %i.d, 8
  br i1 %i.ap, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %2, align 8
  store i64 %i.aq, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.ar, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.as = add i64 %i.b, %i.m
  %i.at = add i64 %i.k, %i.c
  %7 = sub i64 %i.as, %i.at
  %8 = add i64 %7, -8                             ; 2 uses
  %i.au = lshr i64 %8, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 72
  %i.aw = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond214 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond214, label %.lr.ph.i.i.i.i.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ar, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ba ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep119, align 8
  %wide.load120 = load <2 x i64>, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load120, ptr %i.bc, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader223

.lr.ph.i.i.i.i.preheader223:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader223, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %i.be = load i64, ptr %.sroa.04.08.i.i.i.i, align 8
  store i64 %i.be, ptr %.09.i.i.i.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bf, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1473

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !1455
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bh = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = sub nuw nsw i64 %i.e, %i.o
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj ; 6 uses
  store ptr %i.bk, ptr %i.h, align 8, !tbaa !1455
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57, label %.lr.ph.i.i.i.i.i52.preheader

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %9 = sub i64 %i.k, %i.m
  %10 = add i64 %9, -8                            ; 2 uses
  %i.bl = lshr i64 %10, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %10, 136
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i52.preheader222, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %i.bn = add i64 %i.d, %i.bi
  %i.bo = sub i64 %i.k, %i.bn
  %diff.check123 = icmp ugt i64 %i.bo, -32
  br i1 %diff.check123, label %.lr.ph.i.i.i.i.i52.preheader222, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck122
  %n.vec128 = and i64 %i.bm, 4611686018427387900  ; 3 uses
  %i.bp = shl i64 %n.vec128, 3                    ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bk, i64 %i.bp
  %i.br = getelementptr i8, ptr %1, i64 %i.bp
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next135, %vector.body129 ] ; 2 uses
  %i.bs = shl i64 %index130, 3                    ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.bk, i64 %i.bs ; 2 uses
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load133 = load <2 x i64>, ptr %next.gep132, align 8
  %wide.load134 = load <2 x i64>, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %next.gep131, i64 16
  store <2 x i64> %wide.load133, ptr %next.gep131, align 8
  store <2 x i64> %wide.load134, ptr %i.bu, align 8
  %index.next135 = add nuw i64 %index130, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.bv, label %middle.block136, label %vector.body129, !llvm.loop !1474

middle.block136:                                  ; preds = %vector.body129
  %cmp.n137 = icmp eq i64 %i.bm, %n.vec128
  br i1 %cmp.n137, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52.preheader222

.lr.ph.i.i.i.i.i52.preheader222:                  ; preds = %vector.memcheck122, %.lr.ph.i.i.i.i.i52.preheader, %middle.block136
  %.013.i.i.i.i.i53.ph = phi ptr [ %i.bk, %vector.memcheck122 ], [ %i.bk, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bq, %middle.block136 ]
  %.sroa.08.012.i.i.i.i.i54.ph = phi ptr [ %1, %vector.memcheck122 ], [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.br, %middle.block136 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader222, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i52 ], [ %.013.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i52.preheader222 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i52 ], [ %.sroa.08.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i52.preheader222 ] ; 2 uses
  %i.bw = load i64, ptr %.sroa.08.012.i.i.i.i.i54, align 8
  store i64 %i.bw, ptr %.013.i.i.i.i.i53, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 8
  %.not.i.i.i.i.i55 = icmp eq ptr %i.bx, %i.i
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52, !llvm.loop !1475

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit: ; preds = %.lr.ph.i.i.i.i.i52, %middle.block136
  %.pre99 = load ptr, ptr %i.h, align 8, !tbaa !1455
  br label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57: ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.bz = phi ptr [ %.pre99, %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit ], [ %i.bk, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.n
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !1455
  %i.cb = icmp sgt i64 %i.n, 8
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !354

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.n, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57
  %i.cc = icmp eq i64 %i.n, 8
  br i1 %i.cc, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  %i.cd = load i64, ptr %2, align 8
  store i64 %i.cd, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.n:                                             ; preds = %bb.b
  %i.ce = load ptr, ptr %0, align 8, !tbaa !409   ; 7 uses
  %i.cf = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.cg = sub i64 %i.k, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3                 ; 4 uses
  %i.ci = sub nsw i64 1152921504606846975, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.e
  br i1 %i.cj, label %bb.o, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.e)
  %i.ck = add nsw i64 %.sroa.speculated.i, %i.ch  ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.ch
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #38
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.cq = phi ptr [ %i.cp, %bb.p ], [ null, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.ce, %1
  br i1 %.not11.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i60.preheader:                     ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %i.cs = add i64 %i.a, -8
  %i.ct = sub i64 %i.cs, %i.cf                    ; 2 uses
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.ct, 72
  %i.cw = sub i64 %i.cf, %i.cr
  %diff.check159 = icmp ugt i64 %i.cw, -32
  %or.cond215 = or i1 %min.iters.check161, %diff.check159
  br i1 %or.cond215, label %.lr.ph.i.i.i.i.i60.preheader220, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.i.i.i60.preheader
  %n.vec164 = and i64 %i.cv, 4611686018427387900  ; 3 uses
  %i.cx = shl i64 %n.vec164, 3                    ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cq, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %i.ce, i64 %i.cx
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.da = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cq, i64 %i.da ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.ce, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8
  %wide.load170 = load <2 x i64>, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8
  store <2 x i64> %wide.load170, ptr %i.dc, align 8
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.dd, label %middle.block172, label %vector.body165, !llvm.loop !1476

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.cv, %n.vec164
  br i1 %cmp.n173, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader220

.lr.ph.i.i.i.i.i60.preheader220:                  ; preds = %.lr.ph.i.i.i.i.i60.preheader, %middle.block172
  %.013.i.i.i.i.i61.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.cy, %middle.block172 ]
  %.sroa.08.012.i.i.i.i.i62.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.cz, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60.preheader220, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i60 ], [ %.013.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i60 ], [ %.sroa.08.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %i.de = load i64, ptr %.sroa.08.012.i.i.i.i.i62, align 8
  store i64 %i.de, ptr %.013.i.i.i.i.i61, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 8 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.df, %1
  br i1 %.not.i.i.i.i.i63, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !1477

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i60, %middle.block172, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i64 = phi ptr [ %i.cq, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit ], [ %i.cy, %middle.block172 ], [ %i.dg, %.lr.ph.i.i.i.i.i60 ] ; 4 uses
  %11 = sub i64 %i.b, %i.c
  %12 = add i64 %11, -8                           ; 2 uses
  %i.dh = lshr i64 %12, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check180 = icmp ult i64 %12, 72
  %.0.lcssa.i.i.i.i.i64177 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i64 to i64
  %i.dj = sub i64 %i.c, %.0.lcssa.i.i.i.i.i64177
  %diff.check178 = icmp ugt i64 %i.dj, -32
  %or.cond216 = select i1 %min.iters.check180, i1 true, i1 %diff.check178
  br i1 %or.cond216, label %.lr.ph.i.i.i.i66.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %n.vec183 = and i64 %i.di, 4611686018427387900  ; 3 uses
  %i.dk = shl i64 %n.vec183, 3                    ; 2 uses
  %i.dl = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dk ; 2 uses
  %i.dm = getelementptr i8, ptr %2, i64 %i.dk
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.dn = shl i64 %index185, 3                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dn ; 2 uses
  %next.gep187 = getelementptr i8, ptr %2, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 8
  %wide.load189 = load <2 x i64>, ptr %i.do, align 8
  %i.dp = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x i64> %wide.load188, ptr %next.gep186, align 8
  store <2 x i64> %wide.load189, ptr %i.dp, align 8
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.dq, label %middle.block191, label %vector.body184, !llvm.loop !1478

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.di, %n.vec183
  br i1 %cmp.n192, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %middle.block191
  %.09.i.i.i.i67.ph = phi ptr [ %.0.lcssa.i.i.i.i.i64, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.dl, %middle.block191 ]
  %.sroa.04.08.i.i.i.i68.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.dm, %middle.block191 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i66 ], [ %.sroa.04.08.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %i.dr = load i64, ptr %.sroa.04.08.i.i.i.i68, align 8
  store i64 %i.dr, ptr %.09.i.i.i.i67, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.ds, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !1479

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66, %middle.block191
  %.lcssa117 = phi ptr [ %i.dl, %middle.block191 ], [ %i.dt, %.lr.ph.i.i.i.i66 ] ; 5 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71
  %.lcssa117196 = ptrtoaddr ptr %.lcssa117 to i64
  %i.du = add i64 %i.k, -8
  %i.dv = sub i64 %i.du, %i.a                     ; 2 uses
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.dv, 72
  %i.dy = sub i64 %i.a, %.lcssa117196
  %diff.check197 = icmp ugt i64 %i.dy, -32
  %or.cond217 = select i1 %min.iters.check199, i1 true, i1 %diff.check197
  br i1 %or.cond217, label %.lr.ph.i.i.i.i.i73.preheader218, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %n.vec202 = and i64 %i.dx, 4611686018427387900  ; 3 uses
  %i.dz = shl i64 %n.vec202, 3                    ; 2 uses
  %i.ea = getelementptr i8, ptr %.lcssa117, i64 %i.dz ; 2 uses
  %i.eb = getelementptr i8, ptr %1, i64 %i.dz
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next209, %vector.body203 ] ; 2 uses
  %i.ec = shl i64 %index204, 3                    ; 2 uses
  %next.gep205 = getelementptr i8, ptr %.lcssa117, i64 %i.ec ; 2 uses
  %next.gep206 = getelementptr i8, ptr %1, i64 %i.ec ; 2 uses
  %i.ed = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207 = load <2 x i64>, ptr %next.gep206, align 8
  %wide.load208 = load <2 x i64>, ptr %i.ed, align 8
  %i.ee = getelementptr i8, ptr %next.gep205, i64 16
  store <2 x i64> %wide.load207, ptr %next.gep205, align 8
  store <2 x i64> %wide.load208, ptr %i.ee, align 8
  %index.next209 = add nuw i64 %index204, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.ef, label %middle.block210, label %vector.body203, !llvm.loop !1480

middle.block210:                                  ; preds = %vector.body203
  %cmp.n211 = icmp eq i64 %i.dx, %n.vec202
  br i1 %cmp.n211, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader218

.lr.ph.i.i.i.i.i73.preheader218:                  ; preds = %.lr.ph.i.i.i.i.i73.preheader, %middle.block210
  %.013.i.i.i.i.i74.ph = phi ptr [ %.lcssa117, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ea, %middle.block210 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.eb, %middle.block210 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader218, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %i.eg = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8
  store i64 %i.eg, ptr %.013.i.i.i.i.i74, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.eh, %i.i
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1481

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block210, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %.lcssa117, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71 ], [ %i.ea, %middle.block210 ], [ %i.ei, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.ce, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78
  tail call void @_ZdlPv(ptr noundef nonnull %i.ce) #35
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, %bb.q
  store ptr %i.cq, ptr %0, align 8, !tbaa !409
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.h, align 8, !tbaa !1455
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cn
  store ptr %i.ej, ptr %i.f, align 8, !tbaa !1456
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #27 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEET_SI_SI_T0_.exit"
  %i.h = icmp eq i64 %i.t, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph41, !llvm.loop !1482

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.da, %bb.b ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.035.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.k, align 8
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_SJ_T1_T2_"(ptr %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa, ptr %.sroa.03.0.copyload.i.i.i)
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.l = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !1483

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.m, %.lr.ph.i9.i ], [ %storemerge22.lcssa, %bb.c ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.m, align 8
  %i.n = load i64, ptr %0, align 8
  store i64 %i.n, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %i.a                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_SJ_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.q, ptr %.sroa.03.0.copyload.i.i10.i)
  %i.r = icmp sgt i64 %i.p, 8
  br i1 %i.r, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !1484

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2240 = phi ptr [ %.sroa.035.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02339 = phi i64 [ %i.t, %bb.b ], [ %2, %.lr.ph ]
  %i.s = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.t = add nsw i64 %.02339, -1                  ; 3 uses
  %i.u = lshr i64 %i.s, 1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 7 uses
  %i.w = getelementptr inbounds i8, ptr %storemerge2240, i64 -8 ; 8 uses
  %i.x = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %i.f, ptr %i.v)
  br i1 %i.x, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph41
  %i.y = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr %i.v, ptr nonnull %i.w)
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8
  %i.z = load i64, ptr %i.v, align 8
  store i64 %i.z, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.v, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %i.f, ptr nonnull %i.w)
  %.sroa.0.0.copyload.i.i26.i.i = load ptr, ptr %0, align 8 ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

end_hunk_4
begin_hunk_5_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_SJ_T1_T2_":bb.a
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_SJ_T1_RT2_.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !64 ; 2 uses
  %i.bd = load i64, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %.sroa.speculated.i.i7.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bc) ; 2 uses
  %i.be = icmp eq i64 %.sroa.speculated.i.i7.i.i.i, 0
  br i1 %i.be, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i, i64 32
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !63
  %i.bi = tail call i32 @memcmp(ptr noundef %i.bh, ptr noundef %i.bg, i64 noundef %.sroa.speculated.i.i7.i.i.i) #34 ; 2 uses
  %.not.i.i9.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i9.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.bj = sub i64 %i.bc, %i.bd
  %spec.select7.i.i.i12.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bj, i64 -2147483648)
  %.08.i.i.i13.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i12.i.i.i, i64 2147483647)
  %.0.i6.i.i14.i.i.i = trunc nsw i64 %.08.i.i.i13.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8.i.i.i
  %.0.i.i10.i.i.i = phi i32 [ %i.bi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8.i.i.i ], [ %.0.i6.i.i14.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11.i.i.i ]
  %i.bk = icmp slt i32 %.0.i.i10.i.i.i, 0
  br i1 %i.bk, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i", label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_SJ_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i", %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i
  %i.bl = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.i
  store i64 %i.aq, ptr %i.bl, align 8
  %i.bm = icmp sgt i64 %.0914.i, %1
  br i1 %i.bm, label %bb.e, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_SJ_T1_RT2_.exit", !llvm.loop !1489

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_SJ_T1_RT2_.exit": ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i", %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.013.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i" ], [ %.0914.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i" ], [ %.013.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i ], [ %.013.i, %bb.f ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  %i.bo = ptrtoint ptr %3 to i64
  store i64 %i.bo, ptr %i.bn, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #29

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nofree captures(none) %0) unnamed_addr #28 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread8", %bb.a
  %.sroa.04.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread8" ] ; 3 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.04.0, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.0.0, align 8 ; 4 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !341, !nonnull !82, !align !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79, !nonnull !82, !align !83 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !341, !nonnull !82, !align !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79, !nonnull !82, !align !83 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !64   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !64   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.p) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  %i.t = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.w = tail call i32 @memcmp(ptr noundef %i.v, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i) #34 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.x = sub i64 %i.p, %i.r
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.y, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread8", label %bb.c

bb.c:                                             ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.z = icmp eq i64 %i.p, %i.r
  br i1 %i.z, label %bb.d, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread"

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.p, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.d
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !63
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ac, ptr %i.ab, i64 %i.p)
  %i.ad = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.d
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !64  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !64 ; 2 uses
  %.sroa.speculated.i.i7.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ae) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i7.i.i, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.al = tail call i32 @memcmp(ptr noundef %i.ak, ptr noundef %i.aj, i64 noundef %.sroa.speculated.i.i7.i.i) #34 ; 2 uses
  %.not.i.i9.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i9.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i
  %i.am = sub i64 %i.ae, %i.ag
  %spec.select7.i.i.i12.i.i = tail call i64 @llvm.smax.i64(i64 %i.am, i64 -2147483648)
  %.08.i.i.i13.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i12.i.i, i64 2147483647)
  %.0.i6.i.i14.i.i = trunc nsw i64 %.08.i.i.i13.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11.i.i
  %.0.i.i10.i.i = phi i32 [ %i.al, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8.i.i ], [ %.0.i6.i.i14.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11.i.i ]
  %i.an = icmp slt i32 %.0.i.i10.i.i, 0
  br i1 %i.an, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread8", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread8": ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit"
  store i64 %i.t, ptr %.sroa.04.0, align 8
  br label %bb.b, !llvm.loop !1490

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread": ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclISt17reference_wrapperINS2_18SchemaCatalogEntryEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit"
  store i64 %i.a, ptr %.sroa.04.0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_7Catalog13GetAllEntriesERNS0_13ClientContextENS0_11CatalogTypeEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1491  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1055 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1060
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1055
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1055
  br label %"_ZSt10__invoke_rIvRZN6duckdb7Catalog13GetAllEntriesERNS0_13ClientContextENS0_11CatalogTypeEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESA_E4typeEOT0_DpOT1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val, align 8, !tbaa !545 ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #36
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #38 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = ptrtoint ptr %1 to i64
  store i64 %i.u, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %2 = sub i64 %i.i, %i.j
  %3 = add i64 %2, -8                             ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.y = sub i64 %i.j, %i.v
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.ad = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !1496, !noalias !1493
  %wide.load5 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !1496, !noalias !1493
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1493, !noalias !1496
  store <2 x i64> %wide.load5, ptr %i.ae, align 8, !alias.scope !1493, !noalias !1496
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1498

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1496, !noalias !1493
  store i64 %i.ag, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1493, !noalias !1496
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1499

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.s, ptr %.val, align 8, !tbaa !545
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !1055
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !1060
  br label %"_ZSt10__invoke_rIvRZN6duckdb7Catalog13GetAllEntriesERNS0_13ClientContextENS0_11CatalogTypeEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESA_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb7Catalog13GetAllEntriesERNS0_13ClientContextENS0_11CatalogTypeEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESA_E4typeEOT0_DpOT1_.exit": ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_7Catalog13GetAllEntriesERNS0_13ClientContextENS0_11CatalogTypeEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb7Catalog13GetAllEntriesERNS1_13ClientContextENS1_11CatalogTypeEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb7Catalog13GetAllEntriesERNS_13ClientContextENS_11CatalogTypeEE3$_0", ptr %0, align 8, !tbaa !1464
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb7Catalog13GetAllEntriesERNS1_13ClientContextENS1_11CatalogTypeEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !193
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb7Catalog13GetAllEntriesERNS1_13ClientContextENS1_11CatalogTypeEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !543
  store i64 %.val.i, ptr %0, align 8, !tbaa !543
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb7Catalog13GetAllEntriesERNS1_13ClientContextENS1_11CatalogTypeEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb7Catalog13GetAllEntriesERNS1_13ClientContextENS1_11CatalogTypeEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb15ParserExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !188    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #36
  unreachable

_ZNKSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN6duckdb18CatalogSearchEntryC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNSt16allocator_traitsISaIN6duckdb18CatalogSearchEntryEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.i

_ZNSt16allocator_traitsISaIN6duckdb18CatalogSearchEntryEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaIN6duckdb18CatalogSearchEntryEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb18CatalogSearchEntryEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6duckdb18CatalogSearchEntryEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i.i, align 8, !tbaa !62, !alias.scope !1500, !noalias !1503
  %i.s = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !63, !alias.scope !1503, !noalias !1500 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !64, !alias.scope !1503, !noalias !1500 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !1505
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.s, ptr %.012.i.i.i.i, align 8, !tbaa !63, !alias.scope !1500, !noalias !1503
  %i.z = load i64, ptr %i.t, align 8, !tbaa !65, !alias.scope !1503, !noalias !1500
  store i64 %i.z, ptr %i.r, align 8, !tbaa !65, !alias.scope !1500, !noalias !1503
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !64, !alias.scope !1503, !noalias !1500
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !64, !alias.scope !1500, !noalias !1503
  store ptr %i.t, ptr %.0911.i.i.i.i, align 8, !tbaa !63, !alias.scope !1503, !noalias !1500
  store i64 0, ptr %i.ab, align 8, !tbaa !64, !alias.scope !1503, !noalias !1500
  store i8 0, ptr %i.t, align 8, !tbaa !65, !alias.scope !1503, !noalias !1500
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !62, !alias.scope !1500, !noalias !1503
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !63, !alias.scope !1503, !noalias !1500 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !64, !alias.scope !1503, !noalias !1500 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !1505
  br label %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !63, !alias.scope !1500, !noalias !1503
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !65, !alias.scope !1503, !noalias !1500
  store i64 %i.an, ptr %i.af, align 8, !tbaa !65, !alias.scope !1500, !noalias !1503
end_hunk_5
begin_hunk_6_@_ZNK6duckdb12optional_ptrINS_11TransactionELb1EE10CheckValidEv:bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_17DependencyManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !684
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_16DatabaseInstanceELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !715
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_10CatalogSet6VerifyERNS0_7CatalogEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1568  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1055 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1060
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1055
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1055
  br label %"_ZSt10__invoke_rIvRZN6duckdb10CatalogSet6VerifyERNS0_7CatalogEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val, align 8, !tbaa !545 ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #36
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #38 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = ptrtoint ptr %1 to i64
  store i64 %i.u, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %2 = sub i64 %i.i, %i.j
  %3 = add i64 %2, -8                             ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.y = sub i64 %i.j, %i.v
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %i.ad = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !1573, !noalias !1570
  %wide.load5 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !1573, !noalias !1570
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1570, !noalias !1573
  store <2 x i64> %wide.load5, ptr %i.ae, align 8, !alias.scope !1570, !noalias !1573
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1575

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1573, !noalias !1570
  store i64 %i.ag, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1570, !noalias !1573
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1576

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.s, ptr %.val, align 8, !tbaa !545
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !1055
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !1060
  br label %"_ZSt10__invoke_rIvRZN6duckdb10CatalogSet6VerifyERNS0_7CatalogEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb10CatalogSet6VerifyERNS0_7CatalogEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit": ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_10CatalogSet6VerifyERNS0_7CatalogEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb10CatalogSet6VerifyERNS1_7CatalogEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb10CatalogSet6VerifyERNS_7CatalogEE3$_0", ptr %0, align 8, !tbaa !1464
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb10CatalogSet6VerifyERNS1_7CatalogEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !193
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb10CatalogSet6VerifyERNS1_7CatalogEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !543
  store i64 %.val.i, ptr %0, align 8, !tbaa !543
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb10CatalogSet6VerifyERNS1_7CatalogEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb10CatalogSet6VerifyERNS1_7CatalogEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN6duckdb22DefaultSchemaGeneratorC1ERNS_7CatalogE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare void @_ZN6duckdb15DuckSchemaEntryC1ERNS_7CatalogERNS_16CreateSchemaInfoE(ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(320)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_11DuckCatalog11ScanSchemasERNS0_13ClientContextESt8functionIFvRNS0_18SchemaCatalogEntryEEEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1577  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %"_ZSt10__invoke_rIvRZN6duckdb11DuckCatalog11ScanSchemasERNS0_13ClientContextESt8functionIFvRNS0_18SchemaCatalogEntryEEEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESE_E4typeEOT0_DpOT1_.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #36
  unreachable

"_ZSt10__invoke_rIvRZN6duckdb11DuckCatalog11ScanSchemasERNS0_13ClientContextESt8functionIFvRNS0_18SchemaCatalogEntryEEEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESE_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !458
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(248) %1), !inline_history !1579
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_11DuckCatalog11ScanSchemasERNS0_13ClientContextESt8functionIFvRNS0_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb11DuckCatalog11ScanSchemasERNS1_13ClientContextESt8functionIFvRNS1_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb11DuckCatalog11ScanSchemasERNS_13ClientContextESt8functionIFvRNS_18SchemaCatalogEntryEEEE3$_0", ptr %0, align 8, !tbaa !1464
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb11DuckCatalog11ScanSchemasERNS1_13ClientContextESt8functionIFvRNS1_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !193
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb11DuckCatalog11ScanSchemasERNS1_13ClientContextESt8functionIFvRNS1_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !884
  store i64 %.val.i, ptr %0, align 8, !tbaa !884
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb11DuckCatalog11ScanSchemasERNS1_13ClientContextESt8functionIFvRNS1_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb11DuckCatalog11ScanSchemasERNS1_13ClientContextESt8functionIFvRNS1_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_11DuckCatalog11ScanSchemasESt8functionIFvRNS0_18SchemaCatalogEntryEEEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1580  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %"_ZSt10__invoke_rIvRZN6duckdb11DuckCatalog11ScanSchemasESt8functionIFvRNS0_18SchemaCatalogEntryEEEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESC_E4typeEOT0_DpOT1_.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #36
  unreachable

"_ZSt10__invoke_rIvRZN6duckdb11DuckCatalog11ScanSchemasESt8functionIFvRNS0_18SchemaCatalogEntryEEEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESC_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !458
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(248) %1), !inline_history !1582
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_11DuckCatalog11ScanSchemasESt8functionIFvRNS0_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb11DuckCatalog11ScanSchemasESt8functionIFvRNS1_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb11DuckCatalog11ScanSchemasESt8functionIFvRNS_18SchemaCatalogEntryEEEE3$_0", ptr %0, align 8, !tbaa !1464
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb11DuckCatalog11ScanSchemasESt8functionIFvRNS1_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !193
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb11DuckCatalog11ScanSchemasESt8functionIFvRNS1_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !884
  store i64 %.val.i, ptr %0, align 8, !tbaa !884
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb11DuckCatalog11ScanSchemasESt8functionIFvRNS1_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb11DuckCatalog11ScanSchemasESt8functionIFvRNS1_18SchemaCatalogEntryEEEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb12CatalogEntryEES3_SaIS3_ENSt8__detail9_IdentityENS1_20CatalogEntryEqualityENS1_24CatalogEntryHashFunctionENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_6
begin_hunk_7_@"_ZNSt17_Function_handlerIFvRN6duckdb15DependencyEntryEEZNS0_17DependencyManager21CheckDropDependenciesENS0_18CatalogTransactionERNS0_12CatalogEntryEbE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation":bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager21CheckDropDependenciesENS1_18CatalogTransactionERNS1_12CatalogEntryEbE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager21CheckDropDependenciesENS1_18CatalogTransactionERNS1_12CatalogEntryEbE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb15DependencyEntryEEZNS0_17DependencyManager21CheckDropDependenciesENS0_18CatalogTransactionERNS0_12CatalogEntryEbE3$_1E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(489) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode.1725", align 8 ; 4 uses
  %3 = alloca %"class.duckdb::optional_ptr.14", align 8 ; 5 uses
  %4 = alloca %"class.std::reference_wrapper.1162", align 8 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !193   ; 3 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1626
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb15DependencyEntry7SubjectEv(ptr noundef nonnull align 8 dereferenceable(489) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i8, ptr %i.c, align 8, !tbaa !695
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %"_ZSt10__invoke_rIvRZN6duckdb17DependencyManager21CheckDropDependenciesENS0_18CatalogTransactionERNS0_12CatalogEntryEbE3$_1JRNS0_15DependencyEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESA_E4typeEOT0_DpOT1_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1628, !nonnull !82, !align !83
  %i.h = tail call ptr @_ZN6duckdb17DependencyManager11LookupEntryENS_18CatalogTransactionERNS_12CatalogEntryE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %i.g, ptr noundef nonnull align 8 dereferenceable(489) %1)
  store ptr %i.h, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1629, !nonnull !82, !align !83 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZNK6duckdb12optional_ptrINS_12CatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.k = load ptr, ptr %3, align 8, !tbaa !149
  store ptr %i.k, ptr %4, align 8, !tbaa !818
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.j, ptr %2, align 8, !tbaa !1058
  %i.l = call { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb12CatalogEntryEES3_SaIS3_ENSt8__detail9_IdentityENS1_20CatalogEntryEqualityENS1_24CatalogEntryHashFunctionENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %"_ZSt10__invoke_rIvRZN6duckdb17DependencyManager21CheckDropDependenciesENS0_18CatalogTransactionERNS0_12CatalogEntryEbE3$_1JRNS0_15DependencyEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESA_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb17DependencyManager21CheckDropDependenciesENS0_18CatalogTransactionERNS0_12CatalogEntryEbE3$_1JRNS0_15DependencyEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESA_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb15DependencyEntryEEZNS0_17DependencyManager21CheckDropDependenciesENS0_18CatalogTransactionERNS0_12CatalogEntryEbE3$_1E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager21CheckDropDependenciesENS1_18CatalogTransactionERNS1_12CatalogEntryEbE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb17DependencyManager21CheckDropDependenciesENS_18CatalogTransactionERNS_12CatalogEntryEbE3$_1", ptr %0, align 8, !tbaa !1464
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager21CheckDropDependenciesENS1_18CatalogTransactionERNS1_12CatalogEntryEbE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !193
  store ptr %.val, ptr %0, align 8, !tbaa !193
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager21CheckDropDependenciesENS1_18CatalogTransactionERNS1_12CatalogEntryEbE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1608
  store ptr %i.a, ptr %0, align 8, !tbaa !193
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager21CheckDropDependenciesENS1_18CatalogTransactionERNS1_12CatalogEntryEbE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !193 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager21CheckDropDependenciesENS1_18CatalogTransactionERNS1_12CatalogEntryEbE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %.val7.i) #35
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager21CheckDropDependenciesENS1_18CatalogTransactionERNS1_12CatalogEntryEbE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager21CheckDropDependenciesENS1_18CatalogTransactionERNS1_12CatalogEntryEbE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_10CatalogSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !61
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb15DependencyEntryEEZNS0_17DependencyManager12ReorderEntryENS0_18CatalogTransactionERNS0_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS6_ENS0_24CatalogEntryHashFunctionENS0_20CatalogEntryEqualityESaISA_EERNS0_6vectorISA_Lb1ESD_EEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(489) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1630  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1055 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1060
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1055
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1055
  br label %"_ZSt10__invoke_rIvRZN6duckdb17DependencyManager12ReorderEntryENS0_18CatalogTransactionERNS0_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS3_ENS0_24CatalogEntryHashFunctionENS0_20CatalogEntryEqualityESaIS7_EERNS0_6vectorIS7_Lb1ESA_EEE3$_0JRNS0_15DependencyEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESL_E4typeEOT0_DpOT1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val, align 8, !tbaa !545 ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #36
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #38 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = ptrtoint ptr %1 to i64
  store i64 %i.u, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %2 = sub i64 %i.i, %i.j
  %3 = add i64 %2, -8                             ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.y = sub i64 %i.j, %i.v
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.ad = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !1635, !noalias !1632
  %wide.load5 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !1635, !noalias !1632
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1632, !noalias !1635
  store <2 x i64> %wide.load5, ptr %i.ae, align 8, !alias.scope !1632, !noalias !1635
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1637

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1635, !noalias !1632
  store i64 %i.ag, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1632, !noalias !1635
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1638

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.s, ptr %.val, align 8, !tbaa !545
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !1055
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !1060
  br label %"_ZSt10__invoke_rIvRZN6duckdb17DependencyManager12ReorderEntryENS0_18CatalogTransactionERNS0_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS3_ENS0_24CatalogEntryHashFunctionENS0_20CatalogEntryEqualityESaIS7_EERNS0_6vectorIS7_Lb1ESA_EEE3$_0JRNS0_15DependencyEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESL_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb17DependencyManager12ReorderEntryENS0_18CatalogTransactionERNS0_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS3_ENS0_24CatalogEntryHashFunctionENS0_20CatalogEntryEqualityESaIS7_EERNS0_6vectorIS7_Lb1ESA_EEE3$_0JRNS0_15DependencyEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESL_E4typeEOT0_DpOT1_.exit": ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb15DependencyEntryEEZNS0_17DependencyManager12ReorderEntryENS0_18CatalogTransactionERNS0_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS6_ENS0_24CatalogEntryHashFunctionENS0_20CatalogEntryEqualityESaISA_EERNS0_6vectorISA_Lb1ESD_EEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager12ReorderEntryENS1_18CatalogTransactionERNS1_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS4_ENS1_24CatalogEntryHashFunctionENS1_20CatalogEntryEqualityESaIS8_EERNS1_6vectorIS8_Lb1ESB_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb17DependencyManager12ReorderEntryENS_18CatalogTransactionERNS_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS2_ENS_24CatalogEntryHashFunctionENS_20CatalogEntryEqualityESaIS6_EERNS_6vectorIS6_Lb1ES9_EEE3$_0", ptr %0, align 8, !tbaa !1464
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager12ReorderEntryENS1_18CatalogTransactionERNS1_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS4_ENS1_24CatalogEntryHashFunctionENS1_20CatalogEntryEqualityESaIS8_EERNS1_6vectorIS8_Lb1ESB_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !193
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager12ReorderEntryENS1_18CatalogTransactionERNS1_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS4_ENS1_24CatalogEntryHashFunctionENS1_20CatalogEntryEqualityESaIS8_EERNS1_6vectorIS8_Lb1ESB_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !543
  store i64 %.val.i, ptr %0, align 8, !tbaa !543
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager12ReorderEntryENS1_18CatalogTransactionERNS1_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS4_ENS1_24CatalogEntryHashFunctionENS1_20CatalogEntryEqualityESaIS8_EERNS1_6vectorIS8_Lb1ESB_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb17DependencyManager12ReorderEntryENS1_18CatalogTransactionERNS1_12CatalogEntryERSt13unordered_setISt17reference_wrapperIS4_ENS1_24CatalogEntryHashFunctionENS1_20CatalogEntryEqualityESaIS8_EERNS1_6vectorIS8_Lb1ESB_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb15DependencyEntryEEZNS0_17DependencyManager11AlterObjectENS0_18CatalogTransactionERNS0_12CatalogEntryES7_RNS0_9AlterInfoEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(489) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"struct.duckdb::DependencyInfo", align 8 ; 27 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !193   ; 4 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !1639, !nonnull !82, !align !83 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.g = load i8, ptr %i.f, align 1, !tbaa !711
  switch i8 %i.g, label %.critedge.i.i.i [
    i8 1, label %bb.b
    i8 8, label %.critedge15.i.i.i
    i8 7, label %.critedge15.i.i.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 113
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1641
  %i.j = add i8 %i.i, -3
  %switch.and.i.i.i = and i8 %i.j, -5
  %switch.selectcmp.not.i.i.i = icmp eq i8 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.not.i.i.i, label %.critedge15.i.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.121, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1644, !nonnull !82, !align !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  invoke void @_ZN6duckdb19DependencyExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN6duckdb19DependencyExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.w unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.critedge.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !63     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.q) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0.i.i.i, label %bb.f, label %common.resume.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0.i.i.i, label %bb.f, label %common.resume.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn24.i.i.i = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.k) #34
  br label %common.resume.i.i.i

.critedge15.i.i.i:                                ; preds = %bb.b, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  %i.t = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb15DependencyEntry9DependentEv(ptr noundef nonnull align 8 dereferenceable(489) %1), !noalias !1645 ; 2 uses
  call void @_ZN6duckdb16CatalogEntryInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.x = load i8, ptr %i.w, align 8, !tbaa !695
  store i8 %i.x, ptr %i.v, align 8, !tbaa !695, !alias.scope !1645
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb24DependencyDependentFlagsE, i64 16), ptr %i.u, align 8, !tbaa !7, !alias.scope !1645
  %i.y = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb15DependencyEntry7SubjectEv(ptr noundef nonnull align 8 dereferenceable(489) %1)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %.critedge15.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  invoke void @_ZN6duckdb16CatalogEntryInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %i.y)
          to label %_ZN6duckdb14DependencyInfo13FromDependentERNS_15DependencyEntryE.exit.i.i.i unwind label %bb.h

common.resume.i.i.i:                              ; preds = %.body.i.i.i, %bb.h, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn24.i.i.i, %bb.f ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i
end_hunk_7
