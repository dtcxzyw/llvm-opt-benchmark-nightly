inline.NumInlined: 1848
inline.NumDeleted: 843
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6hermes14StackPromotion11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.akk, label %bb.de, label %bb.df, !prof !21

bb.de:                                            ; preds = %.lr.ph.i.i.i195.i.i.i
  %.not.i.i.i207.i.i.i = icmp eq ptr %.03245.i.i.i198.i.i.i, null
  %i.akl = select i1 %.not.i.i.i207.i.i.i, ptr %i.akj, ptr %.03245.i.i.i198.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i208.i.i.i

bb.df:                                            ; preds = %.lr.ph.i.i.i195.i.i.i
  %i.akm = icmp eq ptr %i.aki, inttoptr (i64 -16 to ptr)
  %i.akn = icmp eq ptr %.03245.i.i.i198.i.i.i, null
  %or.cond.not.i.i.i199.i.i.i = select i1 %i.akm, i1 %i.akn, i1 false
  %spec.select.i.i.i200.i.i.i = select i1 %or.cond.not.i.i.i199.i.i.i, ptr %i.akj, ptr %.03245.i.i.i198.i.i.i
  %i.ako = add i32 %.02746.i.i.i197.i.i.i, 1
  %i.akp = add i32 %.02746.i.i.i197.i.i.i, %.02947.i.i.i196.i.i.i
  %.029.i.i.i201.i.i.i = and i32 %i.akp, %i.akd   ; 2 uses
  %i.akq = zext i32 %.029.i.i.i201.i.i.i to i64
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.ajv, i64 %i.akq ; 2 uses
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !77, !noalias !155 ; 2 uses
  %i.akt = icmp eq ptr %i.aju, %i.aks
  br i1 %i.akt, label %_ZN12_GLOBAL__N_19unionSetsERN4llvh8DenseSetIPN6hermes8VariableENS0_12DenseMapInfoIS4_EEEES8_.exit.thread.i.i.i, label %.lr.ph.i.i.i195.i.i.i, !prof !22, !llvm.loop !144

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i208.i.i.i: ; preds = %bb.de, %bb.dc
  %.sink.i.i.i209.i.i.i = phi ptr [ %i.akl, %bb.de ], [ null, %bb.dc ]
  %i.aku = load i32, ptr %i.w, align 8, !tbaa !86, !noalias !155 ; 3 uses
  %i.akv = shl i32 %i.aku, 2
  %i.akw = add i32 %i.akv, 4
  %i.akx = mul i32 %i.ajw, 3
  %.not.i.i4.i210.i.i.i = icmp ult i32 %i.akw, %i.akx
  br i1 %.not.i.i4.i210.i.i.i, label %bb.dh, label %bb.dg, !prof !21

bb.dg:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i208.i.i.i
  %i.aky = shl i32 %i.ajw, 1
  br label %.sink.split.i.i.i211.i.i.i

bb.dh:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i208.i.i.i
  %i.akz = load i32, ptr %i.x, align 4, !tbaa !145, !noalias !155
  %.neg.i.i.i215.i.i.i = xor i32 %i.aku, -1
  %.neg12.i.i.i216.i.i.i = add i32 %i.ajw, %.neg.i.i.i215.i.i.i
  %i.ala = sub i32 %.neg12.i.i.i216.i.i.i, %i.akz
  %i.alb = lshr i32 %i.ajw, 3
  %.not10.i.i.i217.i.i.i = icmp ugt i32 %i.ala, %i.alb
  br i1 %.not10.i.i.i217.i.i.i, label %bb.dl, label %.sink.split.i.i.i211.i.i.i, !prof !21

.sink.split.i.i.i211.i.i.i:                       ; preds = %bb.dh, %bb.dg
  %.sink.i.i5.i212.i.i.i = phi i32 [ %i.aky, %bb.dg ], [ %i.ajw, %bb.dh ]
  call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %.sink.i.i5.i212.i.i.i), !noalias !155
  %i.alc = load ptr, ptr %6, align 8, !tbaa !137, !noalias !155 ; 2 uses
  %i.ald = load i32, ptr %i.v, align 8, !tbaa !143, !noalias !155 ; 2 uses
  %i.ale = icmp eq i32 %i.ald, 0
  br i1 %i.ale, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit337.i.i.i, label %bb.di

bb.di:                                            ; preds = %.sink.split.i.i.i211.i.i.i
  %i.alf = ptrtoint ptr %i.aju to i64
  %i.alg = trunc i64 %i.alf to i32                ; 2 uses
  %i.alh = lshr i32 %i.alg, 4
  %i.ali = lshr i32 %i.alg, 9
  %i.alj = xor i32 %i.alh, %i.ali
  %i.alk = add i32 %i.ald, -1                     ; 2 uses
  %.02944.i.i326.i.i.i = and i32 %i.alk, %i.alj   ; 2 uses
  %i.all = zext nneg i32 %.02944.i.i326.i.i.i to i64
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %i.all ; 3 uses
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !77, !noalias !155 ; 2 uses
  %i.alo = icmp eq ptr %i.aju, %i.aln
  br i1 %i.alo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit337.i.i.i, label %.lr.ph.i.i327.i.i.i, !prof !20

.lr.ph.i.i327.i.i.i:                              ; preds = %bb.di, %bb.dk
  %i.alp = phi ptr [ %i.alz, %bb.dk ], [ %i.aln, %bb.di ] ; 2 uses
  %i.alq = phi ptr [ %i.aly, %bb.dk ], [ %i.alm, %bb.di ] ; 2 uses
  %.02947.i.i328.i.i.i = phi i32 [ %.029.i.i333.i.i.i, %bb.dk ], [ %.02944.i.i326.i.i.i, %bb.di ]
  %.02746.i.i329.i.i.i = phi i32 [ %i.alv, %bb.dk ], [ 1, %bb.di ] ; 2 uses
  %.03245.i.i330.i.i.i = phi ptr [ %spec.select.i.i332.i.i.i, %bb.dk ], [ null, %bb.di ] ; 4 uses
  %i.alr = icmp eq ptr %i.alp, inttoptr (i64 -8 to ptr)
  br i1 %i.alr, label %bb.dj, label %bb.dk, !prof !21

bb.dj:                                            ; preds = %.lr.ph.i.i327.i.i.i
  %.not.i.i336.i.i.i = icmp eq ptr %.03245.i.i330.i.i.i, null
  %i.als = select i1 %.not.i.i336.i.i.i, ptr %i.alq, ptr %.03245.i.i330.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit337.i.i.i

bb.dk:                                            ; preds = %.lr.ph.i.i327.i.i.i
  %i.alt = icmp eq ptr %i.alp, inttoptr (i64 -16 to ptr)
  %i.alu = icmp eq ptr %.03245.i.i330.i.i.i, null
  %or.cond.not.i.i331.i.i.i = select i1 %i.alt, i1 %i.alu, i1 false
  %spec.select.i.i332.i.i.i = select i1 %or.cond.not.i.i331.i.i.i, ptr %i.alq, ptr %.03245.i.i330.i.i.i
  %i.alv = add i32 %.02746.i.i329.i.i.i, 1
  %i.alw = add i32 %.02746.i.i329.i.i.i, %.02947.i.i328.i.i.i
  %.029.i.i333.i.i.i = and i32 %i.alw, %i.alk     ; 2 uses
  %i.alx = zext i32 %.029.i.i333.i.i.i to i64
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %i.alx ; 3 uses
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !77, !noalias !155 ; 2 uses
  %i.ama = icmp eq ptr %i.aju, %i.alz
  br i1 %i.ama, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit337.i.i.i, label %.lr.ph.i.i327.i.i.i, !prof !22, !llvm.loop !144

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit337.i.i.i: ; preds = %bb.dk, %bb.dj, %bb.di, %.sink.split.i.i.i211.i.i.i
  %.sink.i.i334.i.i.i = phi ptr [ %i.als, %bb.dj ], [ null, %.sink.split.i.i.i211.i.i.i ], [ %i.alm, %bb.di ], [ %i.aly, %bb.dk ]
  %.pre.i.i213.i.i.i = load i32, ptr %i.w, align 8, !tbaa !86, !noalias !155
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit337.i.i.i, %bb.dh
  %i.amb = phi ptr [ %.sink.i.i334.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit337.i.i.i ], [ %.sink.i.i.i209.i.i.i, %bb.dh ] ; 2 uses
  %i.amc = phi i32 [ %.pre.i.i213.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit337.i.i.i ], [ %i.aku, %bb.dh ]
  %i.amd = add i32 %i.amc, 1
  store i32 %i.amd, ptr %i.w, align 8, !tbaa !86, !noalias !155
  %i.ame = load ptr, ptr %i.amb, align 8, !tbaa !77, !noalias !155
  %i.amf = icmp eq ptr %i.ame, inttoptr (i64 -8 to ptr)
  br i1 %i.amf, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.amg = load i32, ptr %i.x, align 4, !tbaa !145, !noalias !155
  %i.amh = add i32 %i.amg, -1
  store i32 %i.amh, ptr %i.x, align 4, !tbaa !145, !noalias !155
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit.i.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit.i.i.i.i: ; preds = %bb.dm, %bb.dl
  store ptr %i.aju, ptr %i.amb, align 8, !tbaa !77, !noalias !155
  br label %_ZN12_GLOBAL__N_19unionSetsERN4llvh8DenseSetIPN6hermes8VariableENS0_12DenseMapInfoIS4_EEEES8_.exit.thread.i.i.i

_ZN12_GLOBAL__N_19unionSetsERN4llvh8DenseSetIPN6hermes8VariableENS0_12DenseMapInfoIS4_EEEES8_.exit.thread.i.i.i: ; preds = %bb.df, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIS4_JRS6_EEEPSA_SF_OT_DpOT0_.exit.i.i.i.i, %bb.dd, %_ZN12_GLOBAL__N_19unionSetsERN4llvh8DenseSetIPN6hermes8VariableENS0_12DenseMapInfoIS4_EEEES8_.exit.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i
  %i.ami = add nuw nsw i32 %.sroa.5347.0513.i.i.i, 1 ; 2 uses
  %.not418.i.i.i = icmp eq i32 %i.ami, %i.yj
  br i1 %.not418.i.i.i, label %.loopexit.i.i.i, label %bb.bv, !llvm.loop !160

._crit_edge517.i.i.i:                             ; preds = %.loopexit.i.i.i, %.preheader.i.i.i
  %.pr.i.i.i = load i32, ptr %i.n, align 8, !tbaa !72 ; 2 uses
  %i.amj = load ptr, ptr %7, align 8, !tbaa !71   ; 3 uses
  %i.amk = zext i32 %.pr.i.i.i to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.amk, 3
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amj, i64 %.idx.i.i.i.i
  %.not8.i.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not8.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i58.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i58.i.i.i
  %.pre.i60.i.i.i = load ptr, ptr %7, align 8, !tbaa !71
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %._crit_edge517.i.i.i
  %i.amm = phi ptr [ %.pre.i60.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.amj, %._crit_edge517.i.i.i ] ; 2 uses
  %i.amn = icmp eq ptr %i.amm, %i.m
  br i1 %i.amn, label %_ZN12_GLOBAL__N_130determineCapturedVariableUsageEPN6hermes8FunctionERN4llvh8DenseMapIPNS0_10BasicBlockENS3_8DenseSetIPNS0_8VariableENS3_12DenseMapInfoIS9_EEEENSA_IS6_EENS3_6detail12DenseMapPairIS6_SC_EEEERNS3_9SetVectorIS2_St6vectorIS2_SaIS2_EENS7_IS2_NSA_IS2_EEEEEE.exit.i.i, label %bb.dn

bb.dn:                                            ; preds = %._crit_edge.i.i.i.i
  call void @free(ptr noundef %i.amm) #11
  br label %_ZN12_GLOBAL__N_130determineCapturedVariableUsageEPN6hermes8FunctionERN4llvh8DenseMapIPNS0_10BasicBlockENS3_8DenseSetIPNS0_8VariableENS3_12DenseMapInfoIS9_EEEENSA_IS6_EENS3_6detail12DenseMapPairIS6_SC_EEEERNS3_9SetVectorIS2_St6vectorIS2_SaIS2_EENS7_IS2_NSA_IS2_EEEEEE.exit.i.i

.lr.ph.i58.i.i.i:                                 ; preds = %._crit_edge517.i.i.i, %.lr.ph.i58.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.amp, %.lr.ph.i58.i.i.i ], [ %i.amj, %._crit_edge517.i.i.i ] ; 2 uses
  %i.amo = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !105
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.amo) #11
  %i.amp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i59.i.i.i = icmp eq ptr %i.amp, %i.aml
  br i1 %.not.i59.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i58.i.i.i

_ZN12_GLOBAL__N_130determineCapturedVariableUsageEPN6hermes8FunctionERN4llvh8DenseMapIPNS0_10BasicBlockENS3_8DenseSetIPNS0_8VariableENS3_12DenseMapInfoIS9_EEEENSA_IS6_EENS3_6detail12DenseMapPairIS6_SC_EEEERNS3_9SetVectorIS2_St6vectorIS2_SaIS2_EENS7_IS2_NSA_IS2_EEEEEE.exit.i.i: ; preds = %bb.dn, %._crit_edge.i.i.i.i, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.amq = load ptr, ptr %6, align 8, !tbaa !137
  call void @_ZdlPv(ptr noundef %i.amq) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store ptr %10, ptr %11, align 8, !tbaa !161
  %i.amr = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 72
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !25
  call fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_0EEvS3_PNS_9ScopeDescET_"(ptr noundef nonnull readonly align 8 dereferenceable(304) %i.amr, ptr noundef %i.amt, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 20, i1 false)
  %i.amu = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %12, ptr %5, align 8
  store ptr %i.a, ptr %.sroa.2298.0..sroa_idx.i.i, align 8
  store ptr %9, ptr %.sroa.3299.0..sroa_idx.i.i, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 72
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !25
  call fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_1EEvS3_PNS_9ScopeDescET_"(ptr noundef nonnull readonly align 8 dereferenceable(304) %i.amu, ptr noundef %i.amw, ptr noundef nonnull byval(%class.anon.136) align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.amx = load ptr, ptr %i.a, align 8, !tbaa !18 ; 3 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 56
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !163
  store ptr %i.amz, ptr %13, align 8, !tbaa !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %12, ptr %4, align 8
  store ptr %13, ptr %.sroa.2292.0..sroa_idx.i.i, align 8
  store ptr %i.a, ptr %.sroa.3293.0..sroa_idx.i.i, align 8
  store ptr %14, ptr %.sroa.4294.0..sroa_idx.i.i, align 8
  store ptr %i.b, ptr %.sroa.5295.0..sroa_idx.i.i, align 8
  store ptr %9, ptr %.sroa.6296.0..sroa_idx.i.i, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 72
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !25
  call fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_2EEvS3_PNS_9ScopeDescET_"(ptr noundef nonnull readonly align 8 dereferenceable(304) %i.amx, ptr noundef %i.anb, ptr noundef nonnull byval(%class.anon.140) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 20, i1 false)
  %i.anc = load ptr, ptr %i.a, align 8, !tbaa !18 ; 3 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 88
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anc, i64 80 ; 2 uses
  %.sroa.0288.0441.i.i = load ptr, ptr %i.and, align 8, !tbaa !7 ; 3 uses
  %.not310442.i.i = icmp eq ptr %.sroa.0288.0441.i.i, %i.ane
  br i1 %.not310442.i.i, label %._crit_edge446.i.i, label %.lr.ph445.i.i

._crit_edge446.loopexit.i.i:                      ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.thread.i.i
  %.pre577.i.i = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre577.i.i, i64 88
  %.sroa.0252.0451.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !7
  br label %._crit_edge446.i.i

._crit_edge446.i.i:                               ; preds = %._crit_edge446.loopexit.i.i, %_ZN12_GLOBAL__N_130determineCapturedVariableUsageEPN6hermes8FunctionERN4llvh8DenseMapIPNS0_10BasicBlockENS3_8DenseSetIPNS0_8VariableENS3_12DenseMapInfoIS9_EEEENSA_IS6_EENS3_6detail12DenseMapPairIS6_SC_EEEERNS3_9SetVectorIS2_St6vectorIS2_SaIS2_EENS7_IS2_NSA_IS2_EEEEEE.exit.i.i
  %.sroa.0252.0451.i.i = phi ptr [ %.sroa.0252.0451.pre.i.i, %._crit_edge446.loopexit.i.i ], [ %.sroa.0288.0441.i.i, %_ZN12_GLOBAL__N_130determineCapturedVariableUsageEPN6hermes8FunctionERN4llvh8DenseMapIPNS0_10BasicBlockENS3_8DenseSetIPNS0_8VariableENS3_12DenseMapInfoIS9_EEEENSA_IS6_EENS3_6detail12DenseMapPairIS6_SC_EEEERNS3_9SetVectorIS2_St6vectorIS2_SaIS2_EENS7_IS2_NSA_IS2_EEEEEE.exit.i.i ] ; 2 uses
  %i.anf = phi ptr [ %.pre577.i.i, %._crit_edge446.loopexit.i.i ], [ %i.anc, %_ZN12_GLOBAL__N_130determineCapturedVariableUsageEPN6hermes8FunctionERN4llvh8DenseMapIPNS0_10BasicBlockENS3_8DenseSetIPNS0_8VariableENS3_12DenseMapInfoIS9_EEEENSA_IS6_EENS3_6detail12DenseMapPairIS6_SC_EEEERNS3_9SetVectorIS2_St6vectorIS2_SaIS2_EENS7_IS2_NSA_IS2_EEEEEE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  store ptr %i.af, ptr %18, align 8, !tbaa !71
  store i32 0, ptr %i.ag, align 8, !tbaa !72
  store i32 4, ptr %i.ah, align 4, !tbaa !73
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 80 ; 2 uses
  %.not311452.i.i = icmp eq ptr %.sroa.0252.0451.i.i, %i.ang
  br i1 %.not311452.i.i, label %_ZN4llvh11SmallVectorIN12_GLOBAL__N_110StorePointELj4EED2Ev.exit.i.i, label %.lr.ph455.i.i

.lr.ph445.i.i:                                    ; preds = %_ZN12_GLOBAL__N_130determineCapturedVariableUsageEPN6hermes8FunctionERN4llvh8DenseMapIPNS0_10BasicBlockENS3_8DenseSetIPNS0_8VariableENS3_12DenseMapInfoIS9_EEEENSA_IS6_EENS3_6detail12DenseMapPairIS6_SC_EEEERNS3_9SetVectorIS2_St6vectorIS2_SaIS2_EENS7_IS2_NSA_IS2_EEEEEE.exit.i.i, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.thread.i.i
  %.sroa.0288.0443.i.i = phi ptr [ %.sroa.0288.0.i.i, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.thread.i.i ], [ %.sroa.0288.0441.i.i, %_ZN12_GLOBAL__N_130determineCapturedVariableUsageEPN6hermes8FunctionERN4llvh8DenseMapIPNS0_10BasicBlockENS3_8DenseSetIPNS0_8VariableENS3_12DenseMapInfoIS9_EEEENSA_IS6_EENS3_6detail12DenseMapPairIS6_SC_EEEERNS3_9SetVectorIS2_St6vectorIS2_SaIS2_EENS7_IS2_NSA_IS2_EEEEEE.exit.i.i ] ; 12 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.0288.0443.i.i, i64 24 ; 2 uses
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !71 ; 4 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.0288.0443.i.i, i64 32 ; 2 uses
  %i.ank = load i32, ptr %i.anj, align 8, !tbaa !72 ; 2 uses
  %i.anl = zext i32 %i.ank to i64                 ; 2 uses
  %.idx.i.i.i59.i.i = shl nuw nsw i64 %i.anl, 3
  %i.anm = getelementptr i8, ptr %i.ani, i64 %.idx.i.i.i59.i.i ; 4 uses
  %.not3.i.i.i.i.i.i = icmp eq i32 %i.ank, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.i, label %.lr.ph.i.i.i.i60.i.i

.lr.ph.i.i.i.i60.i.i:                             ; preds = %.lr.ph445.i.i, %bb.do
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ans, %bb.do ], [ %i.ani, %.lr.ph445.i.i ] ; 3 uses
  %i.ann = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 16
  %i.anp = load i8, ptr %i.ano, align 8, !tbaa !89
  %i.anq = add i8 %i.anp, -90
  %i.anr = icmp ult i8 %i.anq, -15
  %.not12.i.i.i.i.i.i = icmp eq ptr %i.ann, null
  %.not1.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %i.anr
  br i1 %.not1.i.i.i.i.i.i, label %bb.do, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.i

bb.do:                                            ; preds = %.lr.ph.i.i.i.i60.i.i
  %i.ans = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i65.i.i = icmp eq ptr %i.ans, %i.anm
  br i1 %.not.i.i.i.i65.i.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.i, label %.lr.ph.i.i.i.i60.i.i, !llvm.loop !168

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.i: ; preds = %bb.do, %.lr.ph.i.i.i.i60.i.i, %.lr.ph445.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.ani, %.lr.ph445.i.i ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i60.i.i ], [ %i.anm, %bb.do ] ; 2 uses
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.ani, i64 %i.anl ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.ant
  br i1 %.not4.i.i.i.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.thread.i.i, label %.lr.ph.i.i61.i.i

.lr.ph.i.i61.i.i:                                 ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.i
  %.06.i.i.i.i = phi i32 [ %i.aob, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.i ], [ 0, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.i ]
  %.sroa.02.05.i.i.i.i = phi ptr [ %.sroa.02.2.i.i63.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.i ]
  %i.anu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i6.i.i.i = icmp eq ptr %i.anu, %i.anm
  br i1 %.not3.i.i.i6.i.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.i, label %.lr.ph.i.i.i7.i.i.i

.lr.ph.i.i.i7.i.i.i:                              ; preds = %.lr.ph.i.i61.i.i, %bb.dp
  %.sroa.02.1.i.i62.i.i = phi ptr [ %i.aoa, %bb.dp ], [ %i.anu, %.lr.ph.i.i61.i.i ] ; 3 uses
  %i.anv = load ptr, ptr %.sroa.02.1.i.i62.i.i, align 8, !tbaa !105 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  %i.anx = load i8, ptr %i.anw, align 8, !tbaa !89
  %i.any = add i8 %i.anx, -90
  %i.anz = icmp ult i8 %i.any, -15
  %.not12.i.i.i8.i.i.i = icmp eq ptr %i.anv, null
  %.not1.i.i.i9.i.i.i = or i1 %.not12.i.i.i8.i.i.i, %i.anz
  br i1 %.not1.i.i.i9.i.i.i, label %bb.dp, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.i

bb.dp:                                            ; preds = %.lr.ph.i.i.i7.i.i.i
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i62.i.i, i64 8 ; 3 uses
  %.not.i.i.i10.i.i.i = icmp eq ptr %i.aoa, %i.anm
  br i1 %.not.i.i.i10.i.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.i, label %.lr.ph.i.i.i7.i.i.i, !llvm.loop !168

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.i: ; preds = %bb.dp, %.lr.ph.i.i.i7.i.i.i, %.lr.ph.i.i61.i.i
  %.sroa.02.2.i.i63.i.i = phi ptr [ %i.anu, %.lr.ph.i.i61.i.i ], [ %.sroa.02.1.i.i62.i.i, %.lr.ph.i.i.i7.i.i.i ], [ %i.aoa, %bb.dp ] ; 2 uses
  %i.aob = add i32 %.06.i.i.i.i, 1                ; 2 uses
  %.not.i.i64.i.i = icmp eq ptr %.sroa.02.2.i.i63.i.i, %i.ant
  br i1 %.not.i.i64.i.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i61.i.i, !llvm.loop !169

_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i.i: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.i
  %.not53.i.i = icmp eq i32 %i.aob, 0
  br i1 %.not53.i.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.thread.i.i, label %bb.dq

bb.dq:                                            ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %i.aoc = load ptr, ptr %9, align 8, !tbaa !82   ; 6 uses
  %i.aod = load i32, ptr %i.j, align 8, !tbaa !74 ; 8 uses
  %i.aoe = icmp eq i32 %i.aod, 0
  br i1 %i.aoe, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i51, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aof = ptrtoint ptr %.sroa.0288.0443.i.i to i64
  %i.aog = trunc i64 %i.aof to i32                ; 2 uses
  %i.aoh = lshr i32 %i.aog, 4
  %i.aoi = lshr i32 %i.aog, 9
  %i.aoj = xor i32 %i.aoh, %i.aoi
  %i.aok = add i32 %i.aod, -1                     ; 2 uses
  %.02944.i.i.i41 = and i32 %i.aok, %i.aoj        ; 2 uses
  %i.aol = zext nneg i32 %.02944.i.i.i41 to i64
  %i.aom = getelementptr inbounds nuw [32 x i8], ptr %i.aoc, i64 %i.aol ; 3 uses
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !77 ; 2 uses
  %i.aoo = icmp eq ptr %.sroa.0288.0443.i.i, %i.aon
  br i1 %i.aoo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit62, label %.lr.ph.i.i.i42, !prof !20

.lr.ph.i.i.i42:                                   ; preds = %bb.dr, %bb.dt
  %i.aop = phi ptr [ %i.aoz, %bb.dt ], [ %i.aon, %bb.dr ] ; 2 uses
  %i.aoq = phi ptr [ %i.aoy, %bb.dt ], [ %i.aom, %bb.dr ] ; 2 uses
  %.02947.i.i.i43 = phi i32 [ %.029.i.i.i48, %bb.dt ], [ %.02944.i.i.i41, %bb.dr ]
  %.02746.i.i.i44 = phi i32 [ %i.aov, %bb.dt ], [ 1, %bb.dr ] ; 2 uses
  %.03245.i.i.i45 = phi ptr [ %spec.select.i.i.i47, %bb.dt ], [ null, %bb.dr ] ; 4 uses
  %i.aor = icmp eq ptr %i.aop, inttoptr (i64 -8 to ptr)
  br i1 %i.aor, label %bb.ds, label %bb.dt, !prof !21

bb.ds:                                            ; preds = %.lr.ph.i.i.i42
  %.not.i.i.i50 = icmp eq ptr %.03245.i.i.i45, null
  %i.aos = select i1 %.not.i.i.i50, ptr %i.aoq, ptr %.03245.i.i.i45
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i51

bb.dt:                                            ; preds = %.lr.ph.i.i.i42
  %i.aot = icmp eq ptr %i.aop, inttoptr (i64 -16 to ptr)
  %i.aou = icmp eq ptr %.03245.i.i.i45, null
  %or.cond.not.i.i.i46 = select i1 %i.aot, i1 %i.aou, i1 false
  %spec.select.i.i.i47 = select i1 %or.cond.not.i.i.i46, ptr %i.aoq, ptr %.03245.i.i.i45
  %i.aov = add i32 %.02746.i.i.i44, 1
  %i.aow = add i32 %.02746.i.i.i44, %.02947.i.i.i43
  %.029.i.i.i48 = and i32 %i.aow, %i.aok          ; 2 uses
  %i.aox = zext i32 %.029.i.i.i48 to i64
  %i.aoy = getelementptr inbounds nuw [32 x i8], ptr %i.aoc, i64 %i.aox ; 3 uses
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !77 ; 2 uses
  %i.apa = icmp eq ptr %.sroa.0288.0443.i.i, %i.aoz
  br i1 %i.apa, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit62, label %.lr.ph.i.i.i42, !prof !22, !llvm.loop !79

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i51: ; preds = %bb.ds, %bb.dq
  %.sink.i.i.i52 = phi ptr [ %i.aos, %bb.ds ], [ null, %bb.dq ]
  %i.apb = load i32, ptr %i.k, align 8, !tbaa !80 ; 3 uses
  %i.apc = shl i32 %i.apb, 2
  %i.apd = add i32 %i.apc, 4
  %i.ape = mul i32 %i.aod, 3
  %.not.i.i4.i53 = icmp ult i32 %i.apd, %i.ape
  br i1 %.not.i.i4.i53, label %bb.dv, label %bb.du, !prof !21

bb.du:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i51
  %i.apf = shl i32 %i.aod, 1
  br label %.sink.split.i.i.i54

bb.dv:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i51
  %i.apg = load i32, ptr %i.l, align 4, !tbaa !81
  %.neg.i.i.i59 = xor i32 %i.apb, -1
  %.neg12.i.i.i60 = add i32 %i.aod, %.neg.i.i.i59
  %i.aph = sub i32 %.neg12.i.i.i60, %i.apg
  %i.api = lshr i32 %i.aod, 3
  %.not10.i.i.i61 = icmp ugt i32 %i.aph, %i.api
  br i1 %.not10.i.i.i61, label %bb.dz, label %.sink.split.i.i.i54, !prof !21

.sink.split.i.i.i54:                              ; preds = %bb.dv, %bb.du
  %.sink.i.i5.i55 = phi i32 [ %i.apf, %bb.du ], [ %i.aod, %bb.dv ]
  %i.apj = add i32 %.sink.i.i5.i55, -1
  %i.apk = zext i32 %i.apj to i64                 ; 2 uses
  %i.apl = lshr i64 %i.apk, 1
  %i.apm = or i64 %i.apl, %i.apk                  ; 2 uses
  %i.apn = lshr i64 %i.apm, 2
  %i.apo = or i64 %i.apn, %i.apm                  ; 2 uses
  %i.app = lshr i64 %i.apo, 4
  %i.apq = or i64 %i.app, %i.apo                  ; 2 uses
  %i.apr = lshr i64 %i.apq, 8
  %i.aps = or i64 %i.apr, %i.apq                  ; 2 uses
  %i.apt = lshr i64 %i.aps, 16
  %i.apu = or i64 %i.apt, %i.aps
  %i.apv = trunc nuw i64 %i.apu to i32
  %i.apw = add i32 %i.apv, 1
  %.sroa.speculated.i.i122 = call i32 @llvm.umax.i32(i32 %i.apw, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i.i122, ptr %i.j, align 8, !tbaa !74
  %i.apx = zext i32 %.sroa.speculated.i.i122 to i64
  %i.apy = shl nuw nsw i64 %i.apx, 5
  %i.apz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apy) #12 ; 6 uses
  store ptr %i.apz, ptr %9, align 8, !tbaa !82
  %.not.i.i123 = icmp eq ptr %i.aoc, null
  br i1 %.not.i.i123, label %bb.dw, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129

bb.dw:                                            ; preds = %.sink.split.i.i.i54
  store i32 0, ptr %i.k, align 8, !tbaa !80
  store i32 0, ptr %i.l, align 4, !tbaa !81
  %i.aqa = load i32, ptr %i.j, align 8, !tbaa !74 ; 4 uses
  %i.aqb = zext i32 %i.aqa to i64
  %.idx.i.i.i124 = shl nuw nsw i64 %i.aqb, 5      ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apz, i64 %.idx.i.i.i124
  %.not6.i.i.i125 = icmp eq i32 %i.aqa, 0
  br i1 %.not6.i.i.i125, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit121, label %.lr.ph.i.i.i126.preheader

.lr.ph.i.i.i126.preheader:                        ; preds = %bb.dw
  %i.aqd = add nsw i64 %.idx.i.i.i124, -32        ; 2 uses
  %i.aqe = lshr exact i64 %i.aqd, 5
  %i.aqf = add nuw nsw i64 %i.aqe, 1
  %xtraiter1219 = and i64 %i.aqf, 7               ; 2 uses
  %lcmp.mod1220.not = icmp eq i64 %xtraiter1219, 0
  br i1 %lcmp.mod1220.not, label %.lr.ph.i.i.i126.prol.loopexit, label %.lr.ph.i.i.i126.prol

.lr.ph.i.i.i126.prol:                             ; preds = %.lr.ph.i.i.i126.preheader, %.lr.ph.i.i.i126.prol
  %.07.i.i.i127.prol = phi ptr [ %i.aqg, %.lr.ph.i.i.i126.prol ], [ %i.apz, %.lr.ph.i.i.i126.preheader ] ; 2 uses
  %prol.iter1221 = phi i64 [ %prol.iter1221.next, %.lr.ph.i.i.i126.prol ], [ 0, %.lr.ph.i.i.i126.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i127.prol, align 8, !tbaa !77
  %i.aqg = getelementptr inbounds nuw i8, ptr %.07.i.i.i127.prol, i64 32 ; 2 uses
  %prol.iter1221.next = add i64 %prol.iter1221, 1 ; 2 uses
  %prol.iter1221.cmp.not = icmp eq i64 %prol.iter1221.next, %xtraiter1219
  br i1 %prol.iter1221.cmp.not, label %.lr.ph.i.i.i126.prol.loopexit, label %.lr.ph.i.i.i126.prol, !llvm.loop !170

.lr.ph.i.i.i126.prol.loopexit:                    ; preds = %.lr.ph.i.i.i126.prol, %.lr.ph.i.i.i126.preheader
  %.07.i.i.i127.unr = phi ptr [ %i.apz, %.lr.ph.i.i.i126.preheader ], [ %i.aqg, %.lr.ph.i.i.i126.prol ]
  %i.aqh = icmp ult i64 %i.aqd, 224
  br i1 %i.aqh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129.thread, label %.lr.ph.i.i.i126

.lr.ph.i.i.i126:                                  ; preds = %.lr.ph.i.i.i126.prol.loopexit, %.lr.ph.i.i.i126
  %.07.i.i.i127 = phi ptr [ %i.aqp, %.lr.ph.i.i.i126 ], [ %.07.i.i.i127.unr, %.lr.ph.i.i.i126.prol.loopexit ] ; 9 uses
end_hunk_0
