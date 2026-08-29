Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenMP?download=true
inline.NumInlined: 65082
inline.NumDeleted: 21278
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN5clang10SemaOpenMP15ActOnOpenMPCallENS_12ActionResultIPNS_4ExprELb1EEEPNS_5ScopeENS_14SourceLocationEN4llvm15MutableArrayRefIS3_EES7_S3_:bb.a
_ZN4llvm23SmallVectorTemplateBaseINS_3omp16VariantMatchInfoELb0EE4growEm.exit: ; preds = %.critedge.i.i.i, %bb.ad
  store ptr %i.gi, ptr %14, align 8, !tbaa !49
  %i.gm = trunc i64 %i.gj to i32
  store i32 %i.gm, ptr %i.de, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3omp16VariantMatchInfoELb0EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_3omp16VariantMatchInfoELb0EE9push_backERKS2_.exit: ; preds = %bb.aa, %bb.ac, %_ZN4llvm23SmallVectorTemplateBaseINS_3omp16VariantMatchInfoELb0EE4growEm.exit
  %i.gn = phi ptr [ %.pre3.i, %bb.aa ], [ %i.gg, %bb.ac ], [ %i.gi, %_ZN4llvm23SmallVectorTemplateBaseINS_3omp16VariantMatchInfoELb0EE4growEm.exit ]
  %.016.i.i.i = phi ptr [ %15, %bb.aa ], [ %i.gh, %bb.ac ], [ %15, %_ZN4llvm23SmallVectorTemplateBaseINS_3omp16VariantMatchInfoELb0EE4growEm.exit ] ; 9 uses
  %i.go = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [376 x i8], ptr %i.gn, i64 %i.gp ; 18 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 3 uses
  store ptr %i.gr, ptr %i.gq, align 8, !tbaa !49
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  store i32 0, ptr %i.gs, align 8, !tbaa !50
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 6, ptr %i.gt, align 4, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !50 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.gv, 0
  %i.gw = icmp eq ptr %i.gq, %.016.i.i.i          ; 3 uses
  %or.cond.i.i.i = or i1 %i.gw, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm9BitVectorC2ERKS0_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3omp16VariantMatchInfoELb0EE9push_backERKS2_.exit
  %i.gx = icmp ugt i32 %i.gv, 6
  br i1 %i.gx, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.ae
  %i.gy = zext i32 %i.gv to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(376) %i.gq, ptr noundef nonnull %i.gr, i64 noundef %i.gy, i64 noundef 8) #36
  %.pre.i.i.i = load i32, ptr %i.gu, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i.i162 = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i162, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.gq, align 8, !tbaa !49
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i, %bb.ae
  %i.gz = phi ptr [ %.pre.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.gr, %bb.ae ]
  %i.ha = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.gv, %bb.ae ]
  %i.hb = zext i32 %i.ha to i64
  %i.hc = load ptr, ptr %.016.i.i.i, align 8, !tbaa !49
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.hb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gz, ptr align 8 %i.hc, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  store i32 %i.gv, ptr %i.gs, align 8, !tbaa !50
  br label %_ZN4llvm9BitVectorC2ERKS0_.exit.i

_ZN4llvm9BitVectorC2ERKS0_.exit.i:                ; preds = %.sink.split.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_3omp16VariantMatchInfoELb0EE9push_backERKS2_.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gq, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 64
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !2826
  store i32 %i.hf, ptr %i.hd, align 8, !tbaa !2826
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gq, i64 72 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 72
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gq, i64 88 ; 3 uses
  store ptr %i.hi, ptr %i.hg, align 8, !tbaa !49
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gq, i64 80 ; 2 uses
  store i32 0, ptr %i.hj, align 8, !tbaa !50
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gq, i64 84
  store i32 8, ptr %i.hk, align 4, !tbaa !51
  %i.hl = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 80 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !50 ; 5 uses
  %.not.i.i.i160 = icmp eq i32 %i.hm, 0
  %or.cond.i.i = or i1 %i.gw, %.not.i.i.i160
  br i1 %or.cond.i.i, label %_ZN4llvm11SmallVectorINS_9StringRefELj8EEC2ERKS2_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm9BitVectorC2ERKS0_.exit.i
  %i.hn = icmp ugt i32 %i.hm, 8
  br i1 %i.hn, label %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i.i, label %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i.i: ; preds = %bb.af
  %i.ho = zext i32 %i.hm to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %i.hg, ptr noundef nonnull %i.hi, i64 noundef %i.ho, i64 noundef 16) #36
  %.pre.i5.i = load i32, ptr %i.hl, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i6.i = icmp eq i32 %.pre.i5.i, 0
  br i1 %.not.i.i.i6.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %.pre.i161 = load ptr, ptr %i.hg, align 8, !tbaa !49
  br label %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i, %bb.af
  %i.hp = phi ptr [ %.pre.i161, %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.hi, %bb.af ]
  %i.hq = phi i32 [ %.pre.i5.i, %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.hm, %bb.af ]
  %i.hr = zext i32 %i.hq to i64
  %i.hs = load ptr, ptr %i.hh, align 8, !tbaa !49
  %gepdiff.i.i.i = shl nuw nsw i64 %i.hr, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr align 8 %i.hs, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i, %_ZSt4copyIPKN4llvm9StringRefEPS1_ET0_T_S6_S5_.exit30.i.i.i
  store i32 %i.hm, ptr %i.hj, align 8, !tbaa !50
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj8EEC2ERKS2_.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj8EEC2ERKS2_.exit.i: ; preds = %.sink.split.i.i.i, %_ZN4llvm9BitVectorC2ERKS0_.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gq, i64 216 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 216
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gq, i64 232 ; 3 uses
  store ptr %i.hv, ptr %i.ht, align 8, !tbaa !49
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gq, i64 224 ; 2 uses
  store i32 0, ptr %i.hw, align 8, !tbaa !50
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gq, i64 228
  store i32 8, ptr %i.hx, align 4, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 224 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !50 ; 5 uses
  %.not.i.i7.i = icmp eq i32 %i.hz, 0
  %or.cond.i8.i = or i1 %i.gw, %.not.i.i7.i
  br i1 %or.cond.i8.i, label %_ZN4llvm3omp16VariantMatchInfoC2ERKS1_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj8EEC2ERKS2_.exit.i
  %i.ia = icmp ugt i32 %i.hz, 8
  br i1 %i.ia, label %_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.i.i, label %_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.i.i: ; preds = %bb.ag
  %i.ib = zext i32 %i.hz to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.ht, ptr noundef nonnull %i.hv, i64 noundef %i.ib, i64 noundef 4) #36
  %.pre.i11.i = load i32, ptr %i.hy, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i12.i = icmp eq i32 %.pre.i11.i, 0
  br i1 %.not.i.i.i12.i, label %.sink.split.i.i10.i, label %_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.i.i
  %.pre13.i = load ptr, ptr %i.ht, align 8, !tbaa !49
  br label %_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i, %bb.ag
  %i.ic = phi ptr [ %.pre13.i, %_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.hv, %bb.ag ]
  %i.id = phi i32 [ %.pre.i11.i, %_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.hz, %bb.ag ]
  %i.ie = zext i32 %i.id to i64
  %i.if = load ptr, ptr %i.hu, align 8, !tbaa !49
  %gepdiff.i.i9.i = shl nuw nsw i64 %i.ie, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ic, ptr align 4 %i.if, i64 %gepdiff.i.i9.i, i1 false)
  br label %.sink.split.i.i10.i

.sink.split.i.i10.i:                              ; preds = %_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i, %_ZSt4copyIPKN4llvm3omp13TraitPropertyEPS2_ET0_T_S7_S6_.exit30.i.i.i
  store i32 %i.hz, ptr %i.hw, align 8, !tbaa !50
  br label %_ZN4llvm3omp16VariantMatchInfoC2ERKS1_.exit

_ZN4llvm3omp16VariantMatchInfoC2ERKS1_.exit:      ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj8EEC2ERKS2_.exit.i, %.sink.split.i.i10.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gq, i64 264 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 264
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gq, i64 368
  store i32 1, ptr %i.ig, align 8
  store i32 0, ptr %i.ii, align 8
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(112) %i.ig, ptr noundef nonnull align 8 dereferenceable(112) %i.ih)
  %i.ij = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.dd, align 8, !tbaa !50
  %i.il = load i32, ptr %i.da, align 8, !tbaa !50 ; 2 uses
  %i.im = load i32, ptr %i.db, align 4, !tbaa !51
  %.not.i141 = icmp ult i32 %i.il, %i.im
  br i1 %.not.i141, label %bb.ai, label %bb.ah, !prof !191

bb.ah:                                            ; preds = %_ZN4llvm3omp16VariantMatchInfoC2ERKS1_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.ft)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.ai:                                            ; preds = %_ZN4llvm3omp16VariantMatchInfoC2ERKS1_.exit
  %i.in = zext i32 %i.il to i64
  %i.io = load ptr, ptr %13, align 8, !tbaa !49
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.in
  store ptr %i.ft, ptr %i.ip, align 1
  %i.iq = load i32, ptr %i.da, align 8, !tbaa !50
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.da, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.ai, %bb.ah, %_ZNK5clang22specific_attr_iteratorINS_21OMPDeclareVariantAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit
  %i.is = load i32, ptr %i.dq, align 8            ; 2 uses
  %i.it = and i32 %i.is, 1
  %.not.i.i.i.i163 = icmp eq i32 %i.it, 0         ; 3 uses
  %i.iu = load i32, ptr %i.dt, align 8
  %i.iv = select i1 %.not.i.i.i.i163, i32 %i.iu, i32 4 ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph9.preheader.i.i

.lr.ph9.preheader.i.i:                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %i.ix = load ptr, ptr %i.du, align 8
  %i.iy = select i1 %.not.i.i.i.i163, ptr %i.ix, ptr %i.du
  %i.iz = load ptr, ptr %i.dv, align 8
  %i.ja = select i1 %.not.i.i.i.i163, ptr %i.iz, ptr %i.dr
  %i.jb = zext i32 %i.iv to i64
  %i.jc = add nuw nsw i64 %i.jb, 31
  %i.jd = lshr i64 %i.jc, 5
  br label %.lr.ph9.i.i

.lr.ph9.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph9.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph9.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i.i
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !187 ; 2 uses
  %.not11.i4.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not11.i4.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %.lr.ph9.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.jg = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.aj

bb.aj:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i164
  %.0.i5.i.i = phi i32 [ %i.jf, %.lr.ph.i.i164 ], [ %i.js, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.jh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i.i, i1 true)
  %i.ji = or disjoint i32 %i.jh, %i.jg
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.iy, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !1807
  %i.jn = icmp ugt i32 %i.jm, 64
  br i1 %i.jn, label %bb.ak, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !104 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.jp) #38
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.jr = add i32 %.0.i5.i.i, -1
  %i.js = and i32 %i.jr, %.0.i5.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.js, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.aj, !llvm.loop !3393

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph9.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i165 = icmp eq i64 %indvars.iv.next.i.i, %i.jd
  br i1 %.not.i.i.i165, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit.i, label %.lr.ph9.i.i, !llvm.loop !3394

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit.i: ; preds = %._crit_edge.i.i
  %.pre.i166 = load i32, ptr %i.dq, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %i.jt = phi i32 [ %.pre.i166, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit.i ], [ %i.is, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ]
  %i.ju = and i32 %i.jt, 1
  %.not.i.i167 = icmp eq i32 %i.ju, 0
  br i1 %.not.i.i167, label %bb.am, label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

bb.am:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.jv = load i32, ptr %i.dt, align 8, !tbaa !104 ; 2 uses
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jx = load ptr, ptr %i.du, align 8, !tbaa !104
  %i.jy = zext i32 %i.jv to i64                   ; 2 uses
  %i.jz = mul nuw nsw i64 %i.jy, 24
  %i.ka = add nuw nsw i64 %i.jy, 31
  %i.kb = lshr i64 %i.ka, 3
  %i.kc = and i64 %i.kb, 1073741820
  %i.kd = add nuw nsw i64 %i.kc, %i.jz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jx, i64 noundef %i.kd, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.am, %bb.an
  %i.ke = load ptr, ptr %i.dm, align 8, !tbaa !49 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.dn
  br i1 %i.kf, label %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  call void @free(ptr noundef %i.ke) #36
  br label %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit.i: ; preds = %bb.ao, %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.kg = load ptr, ptr %i.di, align 8, !tbaa !49 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.dj
  br i1 %i.kh, label %_ZN4llvm11SmallVectorINS_9StringRefELj8EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.kg) #36
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj8EED2Ev.exit.i: ; preds = %bb.ap, %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit.i
  %i.ki = load ptr, ptr %15, align 8, !tbaa !49   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %.ptr1.i
  br i1 %i.kj, label %_ZN4llvm3omp16VariantMatchInfoD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.ki) #36
  br label %_ZN4llvm3omp16VariantMatchInfoD2Ev.exit

_ZN4llvm3omp16VariantMatchInfoD2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj8EED2Ev.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0175.1, i64 8
  br label %bb.v

bb.ar:                                            ; preds = %.preheader, %.thread219
  %i.kl = call noundef i32 @_ZN4llvm3omp29getBestVariantMatchForContextERKNS_15SmallVectorImplINS0_16VariantMatchInfoEEERKNS0_10OMPContextE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(128) %12) #36 ; 2 uses
  %i.km = icmp slt i32 %i.kl, 0
  br i1 %i.km, label %.thread215, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kn = zext nneg i32 %i.kl to i64              ; 4 uses
  %i.ko = load ptr, ptr %13, align 8, !tbaa !49
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.kn
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !1077 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !403 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.kt = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !12, !align !13 ; 6 uses
  store ptr %i.kt, ptr %16, align 8, !tbaa !53
  store ptr %i.kt, ptr %i.dw, align 8, !tbaa !53
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 13760 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !1587
  store ptr %i.dw, ptr %i.ku, align 8, !tbaa !1587
  store ptr %i.kv, ptr %i.dx, align 8, !tbaa !1588
  store i8 0, ptr %i.dy, align 8, !tbaa !1590
  store i8 1, ptr %i.dz, align 1, !tbaa !1593
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 248
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !1594, !nonnull !12, !align !13
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 204
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !1595
  %i.la = icmp eq i32 %i.kz, 0
  %i.lb = zext i1 %i.la to i8
  store i8 %i.lb, ptr %i.ea, align 2, !tbaa !1630
  store ptr null, ptr %i.eb, align 8, !tbaa !1631
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kt, i64 11216 ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !1632, !range !168, !noundef !12
  store i8 %i.ld, ptr %i.ec, align 8, !tbaa !1633
  store i8 1, ptr %i.lc, align 8, !tbaa !1632
  %i.le = getelementptr inbounds nuw i8, ptr %i.ks, i64 28 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4
  %i.lg = and i32 %i.lf, 124
  %i.lh = icmp ne i32 %i.lg, 36
  %.not117239 = icmp eq ptr %i.ks, null
  %.not117 = or i1 %.not117239, %i.lh
  br i1 %.not117, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.li = call noundef ptr @_ZNK5clang17CXXMemberCallExpr25getImplicitObjectArgumentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #36
  %.sroa.0.0.copyload.i144 = load i64, ptr %i.ed, align 8, !tbaa !104
  %i.lj = load i24, ptr %i.d, align 8             ; 2 uses
  %i.lk = lshr i24 %i.lj, 9
  %i.ll = and i24 %i.lk, 3
  %i.lm = zext nneg i24 %i.ll to i32
  %i.ln = lshr i24 %i.lj, 11
  %i.lo = and i24 %i.ln, 7
  %i.lp = zext nneg i24 %i.lo to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.lq = load i32, ptr %i.le, align 4
  %i.lr = lshr i32 %i.lq, 13
  %i.ls = and i32 %i.lr, 3
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = ptrtoint ptr %i.ks to i64
  %i.lv = or i64 %i.lt, %i.lu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.lw = call noundef ptr @_ZN5clang10MemberExpr6CreateERKNS_10ASTContextEPNS_4ExprEbNS_14SourceLocationENS_22NestedNameSpecifierLocES6_PNS_9ValueDeclENS_14DeclAccessPairENS_19DeclarationNameInfoEPKNS_24TemplateArgumentListInfoENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_15NonOdrUseReasonE(ptr noundef nonnull align 8 dereferenceable(23904) %i.cm, ptr noundef %i.li, i1 noundef zeroext false, i32 0, i64 0, ptr null, i32 0, ptr noundef nonnull %i.ks, i64 %i.lv, ptr noundef nonnull byval(%"struct.clang::DeclarationNameInfo") align 8 %8, ptr noundef null, i64 %.sroa.0.0.copyload.i144, i32 noundef %i.lm, i32 noundef %i.lp, i32 noundef 0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.lx = phi ptr [ %.pre, %bb.at ], [ %i.kt, %bb.as ]
  %.094 = phi ptr [ %i.lw, %bb.at ], [ %i.kq, %bb.as ]
  %i.ly = call i64 @_ZN5clang4Sema13BuildCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_bb(ptr noundef nonnull align 8 dereferenceable(18640) %i.lx, ptr noundef %2, ptr noundef %.094, i32 %3, ptr %4, i64 %5, i32 %6, ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 5 uses
  %spec.select.i = icmp ugt i64 %i.ly, 1
  br i1 %spec.select.i, label %bb.av, label %.thread211

bb.av:                                            ; preds = %bb.au
  %i.lz = and i64 %i.ly, -2
  %i.ma = inttoptr i64 %i.lz to ptr               ; 2 uses
  %i.mb = load i16, ptr %i.ma, align 8
  %i.mc = and i16 %i.mb, 511
  %i.md = add nsw i16 %i.mc, -96
  %spec.select.i.i.i.i.i.i.i.i145 = icmp ult i16 %i.md, -5
  br i1 %spec.select.i.i.i.i.i.i.i.i145, label %.thread211, label %_ZN5clang8CallExpr15getDirectCalleeEv.exit150

_ZN5clang8CallExpr15getDirectCalleeEv.exit150:    ; preds = %bb.av
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !2047
  %i.mg = call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mf) #36
  %i.mh = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %.sroa.0.0.copyload.i151 = load i64, ptr %i.mi, align 8, !tbaa !104
  %i.mj = call i64 @_ZN5clang10ASTContext18mergeFunctionTypesENS_8QualTypeES1_bbbb(ptr noundef nonnull align 8 dereferenceable(23904) %i.mh, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i151, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #36
  %i.mk = icmp ult i64 %i.mj, 16                  ; 2 uses
  %spec.select233 = select i1 %i.mk, i64 0, i64 %i.ly
  br label %.thread211

.thread211:                                       ; preds = %_ZN5clang8CallExpr15getDirectCalleeEv.exit150, %bb.av, %bb.au
  %.sroa.0171.5 = phi i64 [ %spec.select233, %_ZN5clang8CallExpr15getDirectCalleeEv.exit150 ], [ %i.ly, %bb.au ], [ %i.ly, %bb.av ] ; 2 uses
  %.5 = phi i1 [ %i.mk, %_ZN5clang8CallExpr15getDirectCalleeEv.exit150 ], [ true, %bb.au ], [ true, %bb.av ]
  %i.ml = load i8, ptr %i.ec, align 8, !tbaa !1633, !range !168, !noundef !12
  %i.mm = load ptr, ptr %16, align 8, !tbaa !1635, !nonnull !12, !align !13
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 11216
  store i8 %i.ml, ptr %i.mn, align 8, !tbaa !1632
  %i.mo = load ptr, ptr %i.dw, align 8, !tbaa !1636, !nonnull !12, !align !13 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 248
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !1594, !nonnull !12, !align !13 ; 2 uses
  %i.mr = load i8, ptr %i.ea, align 2, !tbaa !1630, !range !168, !noundef !12
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 204 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !1595
  %i.mu = icmp eq i32 %i.mt, 5
  br i1 %i.mu, label %bb.aw, label %_ZN5clang4Sema22TentativeAnalysisScopeD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN5clang10SemaOpenMP19handleOMPAssumeAttrEPNS_4DeclERKNS_10ParsedAttrE:bb.a
  call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull %.0.i.i.i.i) #36
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZnwmRKN5clang10ASTContextEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  ret void
}

declare noundef zeroext i1 @_ZN5clang4Sema30checkStringLiteralArgumentAttrERKNS_10ParsedAttrEjRN4llvm9StringRefEPNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

declare void @_ZN5clang13OMPAssumeAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36), ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang10SemaOpenMPC2ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang8SemaBaseC2ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 4, ptr %i.e, align 4, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.g, ptr %i.f, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.h, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 4, ptr %i.i, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.k, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 0, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 444
  store i32 4, ptr %i.m, align 4, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.o, ptr %i.n, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 0, ptr %i.p, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 4, ptr %i.q, align 4, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 -1, ptr %i.r, align 8, !tbaa !3391
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN5clang8SemaBaseC2ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #4

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110DSAStackTy12SharingMapTyD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(1736) dereferenceable(1736) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIPN5clang7VarDeclELj16EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #36
  br label %_ZN4llvm11SmallVectorIPN5clang7VarDeclELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang7VarDeclELj16EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTy23ImplicitDefaultFDInfoTyELj8EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang7VarDeclELj16EED2Ev.exit
  tail call void @free(ptr noundef %i.f) #36
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTy23ImplicitDefaultFDInfoTyELj8EED2Ev.exit

_ZN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTy23ImplicitDefaultFDInfoTyELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN5clang7VarDeclELj16EED2Ev.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.j = load i32, ptr %i.i, align 4, !tbaa !222  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTy23ImplicitDefaultFDInfoTyELj8EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211
  %i.n = zext i32 %i.j to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = add nuw nsw i64 %i.n, 31
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741820
  %i.s = add nuw nsw i64 %i.r, %i.o
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.m, i64 noundef %i.s, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTy23ImplicitDefaultFDInfoTyELj8EED2Ev.exit, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2001 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4llvm6detail12DenseSetImplIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1994
  %i.y = zext i32 %i.u to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.y, 31
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1073741820
  %i.ad = add nuw nsw i64 %i.ac, %i.z
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.x, i64 noundef %i.ad, i64 noundef 8) #36
  br label %_ZN4llvm6detail12DenseSetImplIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm11SmallVectorIPN5clang11DeclRefExprELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev.exit
  tail call void @free(ptr noundef %i.af) #36
  br label %_ZN4llvm11SmallVectorIPN5clang11DeclRefExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang11DeclRefExprELj4EED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev.exit, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1276
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !2001 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm6detail12DenseSetImplIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev.exit1, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang11DeclRefExprELj4EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1994
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.an, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  %i.as = add nuw nsw i64 %i.ar, %i.ao
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 8) #36
  br label %_ZN4llvm6detail12DenseSetImplIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev.exit1

_ZN4llvm6detail12DenseSetImplIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev.exit1: ; preds = %_ZN4llvm11SmallVectorIPN5clang11DeclRefExprELj4EED2Ev.exit, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev.exit1
  tail call void @free(ptr noundef %i.au) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev.exit1, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4675 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZN4llvm6detail12DenseSetImplIN5clang8QualTypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !4676
  %i.bc = zext i32 %i.ay to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #36
  br label %_ZN4llvm6detail12DenseSetImplIN5clang8QualTypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIN5clang8QualTypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4677 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm6detail12DenseSetImplIN5clang8QualTypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !4678
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !4679
  %i.bp = zext i32 %i.bk to i64
  %i.bq = add nuw nsw i64 %i.bp, 31
  %i.br = lshr i64 %i.bq, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !187 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.bu = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.j

bb.j:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.bt, %.lr.ph.i.i ], [ %i.ce, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bv = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.bw = or disjoint i32 %i.bv, %i.bu
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [88 x i8], ptr %i.bm, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !49 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef %i.ca) #36
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.k, %bb.j
  %i.cd = add i32 %.0.i3.i.i, -1
  %i.ce = and i32 %i.cd, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.j, !llvm.loop !4680

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.br
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !4681

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.bj, align 4, !tbaa !4677 ; 2 uses
  %i.cf = icmp eq i32 %.pr.i, 0
  br i1 %i.cf, label %_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i
  %i.cg = load ptr, ptr %i.bi, align 8, !tbaa !4678
  %i.ch = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ci = mul nuw nsw i64 %i.ch, 88
  %i.cj = add nuw nsw i64 %i.ch, 31
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = and i64 %i.ck, 1073741820
  %i.cm = add nuw nsw i64 %i.cl, %i.ci
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cg, i64 noundef %i.cm, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit

_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIN5clang8QualTypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i, %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = and i32 %i.co, 1
  %.not.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i, label %bb.m, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit

bb.m:                                             ; preds = %_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !104 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !104
  %i.cv = zext i32 %i.cr to i64                   ; 2 uses
  %i.cw = mul nuw nsw i64 %i.cv, 24
  %i.cx = add nuw nsw i64 %i.cv, 31
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = and i64 %i.cy, 1073741820
  %i.da = add nuw nsw i64 %i.cz, %i.cw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cu, i64 noundef %i.da, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit, %bb.m, %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 736
  tail call fastcc void @_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.db) #36
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = and i32 %i.dd, 1
  %.not.i.i2 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i2, label %bb.o, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

bb.o:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !104 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !104
  %i.dk = zext i32 %i.dg to i64                   ; 2 uses
  %i.dl = shl nuw nsw i64 %i.dk, 4
  %i.dm = add nuw nsw i64 %i.dk, 31
  %i.dn = lshr i64 %i.dm, 3
  %i.do = and i64 %i.dn, 1073741820
  %i.dp = add nuw nsw i64 %i.do, %i.dl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dj, i64 noundef %i.dp, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit, %bb.o, %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = and i32 %i.dr, 1
  %.not.i.i3 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i3, label %bb.q, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit4

bb.q:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !104 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit4, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !104
  %i.dy = zext i32 %i.du to i64                   ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dy, 4
  %i.ea = add nuw nsw i64 %i.dy, 31
  %i.eb = lshr i64 %i.ea, 3
  %i.ec = and i64 %i.eb, 1073741820
  %i.ed = add nuw nsw i64 %i.ec, %i.dz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dx, i64 noundef %i.ed, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit4

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit4: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, %bb.q, %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = and i32 %i.ef, 1
  %.not.i.i5 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i5, label %bb.s, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

bb.s:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit4
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !104 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !104
  %i.em = zext i32 %i.ei to i64                   ; 2 uses
  %i.en = mul nuw nsw i64 %i.em, 24
  %i.eo = add nuw nsw i64 %i.em, 31
  %i.ep = lshr i64 %i.eo, 3
  %i.eq = and i64 %i.ep, 1073741820
  %i.er = add nuw nsw i64 %i.eq, %i.en
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.el, i64 noundef %i.er, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit4, %bb.s, %bb.t
  %i.es = load i32, ptr %0, align 8
  %i.et = and i32 %i.es, 1
  %.not.i.i6 = icmp eq i32 %i.et, 0
  br i1 %.not.i.i6, label %bb.u, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

bb.u:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !104 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !104
  %i.ez = zext i32 %i.ev to i64                   ; 2 uses
  %i.fa = mul nuw nsw i64 %i.ez, 40
  %i.fb = add nuw nsw i64 %i.ez, 31
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = and i64 %i.fc, 1073741820
  %i.fe = add nuw nsw i64 %i.fd, %i.fa
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ey, i64 noundef %i.fe, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.val2.i = load i32, ptr %i.a, align 4, !tbaa !272 ; 2 uses
  %i.b = icmp eq i32 %.val2.i, 0
  br i1 %i.b, label %_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit, label %.lr.ph11.preheader.i

.lr.ph11.preheader.i:                             ; preds = %bb.a
  %.val3.i = load ptr, ptr %0, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4.i = load ptr, ptr %i.c, align 8, !tbaa !271
  %i.d = zext i32 %.val2.i to i64
  %i.e = add nuw nsw i64 %i.d, 31
  %i.f = lshr i64 %i.e, 5
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %._crit_edge.i, %.lr.ph11.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph11.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val4.i, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !187  ; 2 uses
  %.not11.i6.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i6.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph11.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.i = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i7.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.ab, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.j = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i, i1 true)
  %i.k = or disjoint i32 %i.j, %i.i
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [1184 x i8], ptr %.val3.i, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !50   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.r = zext i32 %i.q to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.r, 144
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.t, %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i.i ], [ %i.s, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -144 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -128
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @free(ptr noundef %i.u) #36
  br label %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2528

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i: ; preds = %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !49
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i, %bb.b
  %i.x = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i
  tail call void @free(ptr noundef %i.x) #36
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i
  %i.aa = add i32 %.0.i7.i, -1
  %i.ab = and i32 %i.aa, %.0.i7.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !4682

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph11.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.f
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit, label %.lr.ph11.i, !llvm.loop !4683

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !272  ; 2 uses
  %i.ac = icmp eq i32 %.pr, 0
  br i1 %i.ac, label %_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !261
  %i.ae = zext i32 %.pr to i64                    ; 2 uses
  %i.af = mul nuw nsw i64 %i.ae, 1184
  %i.ag = add nuw nsw i64 %i.ae, 31
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = and i64 %i.ah, 1073741820
  %i.aj = add nuw nsw i64 %i.ai, %i.af
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ad, i64 noundef %i.aj, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

declare noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #4

declare noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) unnamed_addr #19 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4684)
  %i.a = load i32, ptr %1, align 8, !noalias !4687
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4687
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4687
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !4687
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.d, ptr %i.c ; 4 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.f, ptr %i.i ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 8 ; 4 uses
  %i.j = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.j, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i.i.i, -1               ; 2 uses
  %i.l = ptrtoint ptr %2 to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.k, %i.p                       ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !187, !noalias !4684
  %i.v = and i32 %i.q, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i, label %.loopexit.i, !prof !189

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.y = phi i64 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %.03.i.i = phi i32 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !190, !noalias !4684
  %i.ab = icmp eq ptr %2, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = add nuw i32 %.03.i.i, 1
  %i.ad = and i32 %i.ac, %i.k                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !187, !noalias !4684
  %i.ai = and i32 %i.ad, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i, label %.loopexit.i, !prof !192

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.al = zext i32 %.sink.i.i.i.i to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i, i64 %i.al
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E7find_asIS5_EENS_16DenseMapIteratorIS5_S8_SA_SD_Lb1EEERKT_.exit

.loopexit.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.an = zext i32 %.sink.i.i.i.i to i64
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i, i64 %i.an ; 2 uses
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E7find_asIS5_EENS_16DenseMapIteratorIS5_S8_SA_SD_Lb1EEERKT_.exit

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E7find_asIS5_EENS_16DenseMapIteratorIS5_S8_SA_SD_Lb1EEERKT_.exit: ; preds = %bb.d, %.loopexit.i
  %.lcssa.sink.i = phi ptr [ %i.z, %bb.d ], [ %i.ao, %.loopexit.i ]
  %.sink.i = phi ptr [ %i.am, %bb.d ], [ %i.ao, %.loopexit.i ]
  store ptr %.lcssa.sink.i, ptr %0, align 8, !tbaa !1501, !alias.scope !4684
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.ap, align 8, !tbaa !4692, !alias.scope !4684
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink2.i.i.i.i, ptr %i.aq, align 8, !tbaa !4693, !alias.scope !4684
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink1.i.i.i.i, ptr %i.ar, align 8, !tbaa !4694, !alias.scope !4684
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_110DSAStackTy6getDSAERSt16reverse_iteratorIPKNS0_12SharingMapTyEEPN5clang9ValueDeclE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28840) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.2456", align 8 ; 2 uses
  %5 = alloca %"class.std::reverse_iterator.2456", align 8 ; 5 uses
  %6 = alloca %"struct.(anonymous namespace)::DSAStackTy::DSAVarData", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.au, %bb.a
  %.tr309 = phi ptr [ %3, %bb.a ], [ %i.c, %bb.au ]
  %i.c = tail call fastcc noundef ptr @_ZL16getCanonicalDeclPKN5clang9ValueDeclE(ptr noundef %.tr309) ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 127                        ; 2 uses
  %i.g = add nsw i32 %i.f, -41
  %i.h = icmp ult i32 %i.g, 7
  %spec.select.i.i = select i1 %i.h, ptr %i.c, ptr null ; 3 uses
  %.val47 = load i32, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %.not.i.i = icmp eq i32 %.val47, 0
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy3endEv.exit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %.val46 = load ptr, ptr %i.a, align 8
  %i.i = zext i32 %.val47 to i64
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4745
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4744
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2000
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1994
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4745
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i64, ptr %1, align 8, !tbaa !1956
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !1956
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1994, !noalias !4746 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2000, !noalias !4746 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2001, !noalias !4746 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1749   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1749
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !4743

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4744
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2405", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2001
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1994
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2000
  store i32 0, ptr %i.p, align 16, !tbaa !4745
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !4744
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1994   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2000
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2001 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2000 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1994
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2001
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !4751

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store i64 %i.w, ptr %i.at, align 8, !tbaa !1956
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !187
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4752

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !4753

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2001
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !4745
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !4745
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !2001
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE18growAndEmplaceBackIJS6_RSB_EEERSC_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(6960) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 6968, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #36 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !50
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [6968 x i8], ptr %i.c, i64 %i.f ; 2 uses
  call fastcc void @_ZN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(6968) %i.g, ptr noundef nonnull align 8 dereferenceable(6960) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 6960
  %i.i = load ptr, ptr %2, align 8, !tbaa !80
  store ptr %i.i, ptr %i.h, align 8, !tbaa !81
  %.val2.i = load ptr, ptr %0, align 8, !tbaa !49 ; 3 uses
  %.val6.i = load i32, ptr %i.d, align 8, !tbaa !50 ; 2 uses
  %i.j = zext i32 %.val6.i to i64
  %.idx.i = mul nuw nsw i64 %i.j, 6968
  %i.k = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %.val6.i, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE19moveElementsForGrowEPSC_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.06.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i, %bb.a ] ; 3 uses
  call fastcc void @_ZN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(6968) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(6968) %.sroa.06.08.i.i.i.i.i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 6960
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 6960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  store ptr %i.n, ptr %i.l, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 6968 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 6968
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE18uninitialized_moveIPSC_SF_EEvT_SG_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4754

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE18uninitialized_moveIPSC_SF_EEvT_SG_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.val.pre.i = load ptr, ptr %0, align 8, !tbaa !49 ; 3 uses
  %.val4.pre.i = load i32, ptr %i.d, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i = icmp eq i32 %.val4.pre.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE19moveElementsForGrowEPSC_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE18uninitialized_moveIPSC_SF_EEvT_SG_T0_.exit.i
  %i.q = zext i32 %.val4.pre.i to i64
  %.idx7.i = mul nuw nsw i64 %i.q, 6968
  %i.r = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 %.idx7.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.s, %_ZNSt4pairIN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEED2Ev.exit.i.i ], [ %i.r, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.05.i.i, i64 -6968 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !49 ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i, i64 -6960
  %.val2.i.i.i.i = load i32, ptr %i.t, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %.val2.i.i.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %.lr.ph.i.i
  %i.u = zext i32 %.val2.i.i.i.i to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.u, 1736
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i.i.i ]
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -1736 ; 3 uses
  call fastcc void @_ZN12_GLOBAL__N_110DSAStackTy12SharingMapTyD2Ev(ptr noundef nonnull align 8 dead_on_return(1736) dereferenceable(1736) %i.w) #36
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !88

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !49
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i, %.lr.ph.i.i
  %i.x = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i ], [ %.val.i.i.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.05.i.i, i64 -6952
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt4pairIN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i
  call void @free(ptr noundef %i.x) #36
  br label %_ZNSt4pairIN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEED2Ev.exit.i.i

_ZNSt4pairIN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEED2Ev.exit.i.i: ; preds = %bb.b, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i
  %.not.i.i = icmp eq ptr %.val.pre.i, %i.s
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE19moveElementsForGrowEPSC_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1809

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE19moveElementsForGrowEPSC_.exit.loopexit: ; preds = %_ZNSt4pairIN4llvm11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !49
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE19moveElementsForGrowEPSC_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE19moveElementsForGrowEPSC_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE19moveElementsForGrowEPSC_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE18uninitialized_moveIPSC_SF_EEvT_SG_T0_.exit.i
  %i.aa = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE19moveElementsForGrowEPSC_.exit.loopexit ], [ %.val2.i, %bb.a ], [ %.val.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE18uninitialized_moveIPSC_SF_EEvT_SG_T0_.exit.i ] ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !1063
  %i.ac = icmp eq ptr %i.aa, %i.b
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE21takeAllocationForGrowEPSC_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE19moveElementsForGrowEPSC_.exit
  call void @free(ptr noundef %i.aa) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE21takeAllocationForGrowEPSC_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE21takeAllocationForGrowEPSC_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIN12_GLOBAL__N_110DSAStackTy12SharingMapTyELj4EEEPKN5clang4sema17FunctionScopeInfoEELb0EE19moveElementsForGrowEPSC_.exit, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !49
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !51
  %i.af = load i32, ptr %i.d, align 8, !tbaa !50
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_:bb.a
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !187
  %i.aj = and i32 %i.ad, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !2045

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ %i.af, %bb.c ], [ %i.z, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !2046
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 328
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 40                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !104
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(336) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4759
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !104
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 40               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !104
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(336) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !104 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !104
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = mul nuw nsw i64 %i.bm, 40
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(336) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val7 = load i32, ptr %i.j, align 8
  %i.k = select i1 %.not.i.i, i32 %.val7, i32 8
  %i.l = load i32, ptr %0, align 8
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i, ptr %i.s, ptr %i.r
  %i.u = getelementptr i8, ptr %0, i64 24
  %.val9 = load i32, ptr %i.u, align 8
  %i.v = add i32 %.val9, -1
  %i.w = select i1 %.not.i.i.i, i32 %i.v, i32 7   ; 2 uses
  %i.x = zext i32 %i.k to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %.not.i26 = icmp eq i64 %i.z, 0
  br i1 %.not.i26, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !187 ; 2 uses
  %.not11.i24 = icmp eq i32 %i.ab, 0
  br i1 %.not11.i24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph29
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ac = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i25 = phi i32 [ %i.ab, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i25, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !190 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.w, %i.am                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !187
  %i.as = and i32 %i.an, 31                       ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.an, %bb.b ]
  %i.av = add i32 %.014.i, 1
  %i.aw = and i32 %i.av, %i.w                     ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5                       ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !187
  %i.bb = and i32 %i.aw, 31                       ; 2 uses
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !4791

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.as, %bb.b ], [ %i.bb, %.lr.ph.i ]
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %.lcssa12.i ; 2 uses
  store ptr %i.ah, ptr %i.be, align 8, !tbaa !190
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false), !tbaa.struct !4758
  %i.bh = shl nuw i32 1, %.lcssa.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.lcssa11.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !187
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !187
  %i.bl = add i32 %.0.i25, -1
  %i.bm = and i32 %i.bl, %.0.i25                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4792

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph29, !llvm.loop !4793

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.val10.pre = load i32, ptr %1, align 8
  %.pre = load i32, ptr %0, align 8
  %.pre34 = and i32 %.pre, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre34, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.m, %bb.a ]
  %.val10 = phi i32 [ %.val10.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bn = and i32 %.val10, -2
  %i.bo = or disjoint i32 %.pre-phi, %i.bn
  store i32 %i.bo, ptr %0, align 8
  %i.bp = load i32, ptr %1, align 8               ; 3 uses
  %i.bq = and i32 %i.bp, 1
  %.not.i.i15 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i15, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.br = load i32, ptr %i.j, align 8, !tbaa !104 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.bu = zext i32 %i.br to i64                   ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 40
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #36
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ca = phi i32 [ %i.bp, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit ], [ %i.bp, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cb = and i32 %i.ca, -2
  store i32 %i.cb, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr14IgnoreImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

declare void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef byval(%"class.llvm::StringRef") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #9

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare { i64, ptr } @_ZN5clang4Sema17getPrintingPolicyERKNS_10ASTContextERKNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(3344)) local_unnamed_addr #4

declare noundef ptr @_ZN5clang19OMPAllocateDeclAttr14CreateImplicitERNS_10ASTContextENS0_15AllocatorTypeTyEPNS_4ExprES5_NS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef, ptr noundef, ptr noundef, i64) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPRequiresDeclELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #25

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #25

declare ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZNK5clang17ClassTemplateDecl18getSpecializationsEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang11DeclContext7classofEPKNS_4DeclE(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN5clang4Decl17castToDeclContextEPKS0_(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang33isOpenMPLoopBoundSharingDirectiveEN4llvm3omp9DirectiveE(i32 noundef) local_unnamed_addr #4

declare void @_ZN5clang4Sema24ActOnCapturedRegionStartENS_14SourceLocationEPNS_5ScopeENS_18CapturedRegionKindEN4llvm8ArrayRefISt4pairINS5_9StringRefENS_8QualTypeEEEEj(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i32 noundef, ptr, i64, i32 noundef) local_unnamed_addr #4

declare i64 @_ZNK5clang10ASTContext11getSizeTypeEv(ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEN5clang8QualTypeEELb1EE15growAndPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.2598", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare noundef ptr @_ZN5clang16AlwaysInlineAttr14CreateImplicitERNS_10ASTContextENS_11SourceRangeENS0_8SpellingE(ptr noundef nonnull align 8 dereferenceable(23904), i64, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_3omp13TraitPropertyELb1EE18growAndEmplaceBackIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !2179   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51
  %.not.i = icmp ult i32 %i.c, %i.e
end_hunk_3
begin_hunk_4_@_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116AllocatorCheckerEbJEE5VisitEPKNS_4StmtE:bb.a
bb.ki:                                            ; preds = %bb.az
  %i.kq = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kj:                                            ; preds = %bb.az
  %i.kr = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kk:                                            ; preds = %bb.az
  %i.ks = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kl:                                            ; preds = %bb.az
  %i.kt = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.km:                                            ; preds = %bb.az
  %i.ku = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kn:                                            ; preds = %bb.az
  %i.kv = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.ko:                                            ; preds = %bb.az
  %i.kw = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kp:                                            ; preds = %bb.az
  %i.kx = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kq:                                            ; preds = %bb.az
  %i.ky = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kr:                                            ; preds = %bb.az
  %i.kz = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.ks:                                            ; preds = %bb.az
  %i.la = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kt:                                            ; preds = %bb.az
  %i.lb = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.ku:                                            ; preds = %bb.az
  %i.lc = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kv:                                            ; preds = %bb.az
  %i.ld = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kw:                                            ; preds = %bb.az
  %i.le = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kx:                                            ; preds = %bb.az
  %i.lf = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.ky:                                            ; preds = %bb.az
  %i.lg = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.kz:                                            ; preds = %bb.az
  %i.lh = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.la:                                            ; preds = %bb.az
  %i.li = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.lb:                                            ; preds = %bb.az
  %i.lj = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.lc:                                            ; preds = %bb.az
  %i.lk = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.ld:                                            ; preds = %bb.az
  %i.ll = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.le:                                            ; preds = %bb.az
  %i.lm = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.lf:                                            ; preds = %bb.az
  %i.ln = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

bb.lg:                                            ; preds = %bb.az
  %i.lo = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker9VisitStmtEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  br label %.thread334

.thread334:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ay, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.lg, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.3 = phi i1 [ %i.bi, %bb.bb ], [ %i.bj, %bb.bc ], [ %i.bk, %bb.bd ], [ %i.bl, %bb.be ], [ %i.bm, %bb.bf ], [ %i.bn, %bb.bg ], [ %i.bo, %bb.bh ], [ %i.bp, %bb.bi ], [ %i.bq, %bb.bj ], [ %i.br, %bb.bk ], [ %i.bs, %bb.bl ], [ %i.bt, %bb.bm ], [ %i.bu, %bb.bn ], [ %i.bv, %bb.bo ], [ %i.bw, %bb.bp ], [ %i.bx, %bb.bq ], [ %i.by, %bb.br ], [ %i.bz, %bb.bs ], [ %i.ca, %bb.bt ], [ %i.cb, %bb.bu ], [ %i.cc, %bb.bv ], [ %i.cd, %bb.bw ], [ %i.ce, %bb.bx ], [ %i.cf, %bb.by ], [ %i.cg, %bb.bz ], [ %i.ch, %bb.ca ], [ %i.ci, %bb.cb ], [ %i.cj, %bb.cc ], [ %i.ck, %bb.cd ], [ %i.cl, %bb.ce ], [ %i.cm, %bb.cf ], [ %i.cn, %bb.cg ], [ %i.co, %bb.ch ], [ %i.cp, %bb.ci ], [ %i.cq, %bb.cj ], [ %i.cr, %bb.ck ], [ %i.cs, %bb.cl ], [ %i.ct, %bb.cm ], [ %i.cu, %bb.cn ], [ %i.cv, %bb.co ], [ %i.cw, %bb.cp ], [ %i.cx, %bb.cq ], [ %i.cy, %bb.cr ], [ %i.cz, %bb.cs ], [ %i.da, %bb.ct ], [ %i.db, %bb.cu ], [ %i.dc, %bb.cv ], [ %i.dd, %bb.cw ], [ %i.de, %bb.cx ], [ %i.df, %bb.cy ], [ %i.dg, %bb.cz ], [ %i.dh, %bb.da ], [ %i.di, %bb.db ], [ %i.dj, %bb.dc ], [ %i.dk, %bb.dd ], [ %i.dl, %bb.de ], [ %i.dm, %bb.df ], [ %i.dn, %bb.dg ], [ %i.do, %bb.dh ], [ %i.dp, %bb.di ], [ %i.dq, %bb.dj ], [ %i.dr, %bb.dk ], [ %i.ds, %bb.dl ], [ %i.dt, %bb.dm ], [ %i.du, %bb.dn ], [ %i.dv, %bb.do ], [ %i.dw, %bb.dp ], [ %i.dx, %bb.dq ], [ %i.dy, %bb.dr ], [ %i.dz, %bb.ds ], [ %i.ea, %bb.dt ], [ %i.eb, %bb.du ], [ %i.ed, %bb.dv ], [ %i.ee, %bb.dw ], [ %i.ef, %bb.dx ], [ %i.eg, %bb.dy ], [ %i.eh, %bb.dz ], [ %i.ei, %bb.ea ], [ %i.ej, %bb.eb ], [ %i.ek, %bb.ec ], [ %i.el, %bb.ed ], [ %i.em, %bb.ee ], [ %i.en, %bb.ef ], [ %i.eo, %bb.eg ], [ %i.ep, %bb.eh ], [ %i.eq, %bb.ei ], [ %i.er, %bb.ej ], [ %i.es, %bb.ek ], [ %i.et, %bb.el ], [ %i.eu, %bb.em ], [ %i.ev, %bb.en ], [ %i.ew, %bb.eo ], [ %i.ex, %bb.ep ], [ %i.ey, %bb.eq ], [ %i.ez, %bb.er ], [ %i.fa, %bb.es ], [ %i.fb, %bb.et ], [ %i.fc, %bb.eu ], [ %i.fd, %bb.ev ], [ %i.fe, %bb.ew ], [ %i.ff, %bb.ex ], [ %i.fg, %bb.ey ], [ %i.fh, %bb.ez ], [ %i.fi, %bb.fa ], [ %i.fj, %bb.fb ], [ %i.fk, %bb.fc ], [ %i.fl, %bb.fd ], [ %i.fm, %bb.fe ], [ %i.fn, %bb.ff ], [ %i.fo, %bb.fg ], [ %i.fp, %bb.fh ], [ %i.fq, %bb.fi ], [ %i.fr, %bb.fj ], [ %i.fs, %bb.fk ], [ %i.ft, %bb.fl ], [ %i.fu, %bb.fm ], [ %i.fv, %bb.fn ], [ %i.fw, %bb.fo ], [ %i.fx, %bb.fp ], [ %i.fy, %bb.fq ], [ %i.fz, %bb.fr ], [ %i.ga, %bb.fs ], [ %i.gb, %bb.ft ], [ %i.gc, %bb.fu ], [ %i.gd, %bb.fv ], [ %i.ge, %bb.fw ], [ %i.gf, %bb.fx ], [ %i.gg, %bb.fy ], [ %i.gh, %bb.fz ], [ %i.gi, %bb.ga ], [ %i.gj, %bb.gb ], [ %i.gk, %bb.gc ], [ %i.gl, %bb.gd ], [ %i.gm, %bb.ge ], [ %i.gn, %bb.gf ], [ %i.go, %bb.gg ], [ %i.gp, %bb.gh ], [ %i.gq, %bb.gi ], [ %i.gr, %bb.gj ], [ %i.gs, %bb.gk ], [ %i.gt, %bb.gl ], [ %i.gu, %bb.gm ], [ %i.gv, %bb.gn ], [ %i.gw, %bb.go ], [ %i.gx, %bb.gp ], [ %i.gy, %bb.gq ], [ %i.gz, %bb.gr ], [ %i.ha, %bb.gs ], [ %i.hb, %bb.gt ], [ %i.hc, %bb.gu ], [ %i.hd, %bb.gv ], [ %i.he, %bb.gw ], [ %i.hf, %bb.gx ], [ %i.hg, %bb.gy ], [ %i.hh, %bb.gz ], [ %i.hi, %bb.ha ], [ %i.hj, %bb.hb ], [ %i.hk, %bb.hc ], [ %i.hl, %bb.hd ], [ %i.hm, %bb.he ], [ %i.hn, %bb.hf ], [ %i.ho, %bb.hg ], [ %i.hp, %bb.hh ], [ %i.hq, %bb.hi ], [ %i.hr, %bb.hj ], [ %i.hs, %bb.hk ], [ %i.ht, %bb.hl ], [ %i.hu, %bb.hm ], [ %i.hv, %bb.hn ], [ %i.hw, %bb.ho ], [ %i.hx, %bb.hp ], [ %i.hy, %bb.hq ], [ %i.hz, %bb.hr ], [ %i.ia, %bb.hs ], [ %i.ib, %bb.ht ], [ %i.ic, %bb.hu ], [ %i.id, %bb.hv ], [ %i.ie, %bb.hw ], [ %i.if, %bb.hx ], [ %i.ig, %bb.hy ], [ %i.ih, %bb.hz ], [ %i.ii, %bb.ia ], [ %i.ij, %bb.ib ], [ %i.ik, %bb.ic ], [ %i.il, %bb.id ], [ %i.im, %bb.ie ], [ %i.in, %bb.if ], [ %i.io, %bb.ig ], [ %i.ip, %bb.ih ], [ %i.iq, %bb.ii ], [ %i.ir, %bb.ij ], [ %i.is, %bb.ik ], [ %i.it, %bb.il ], [ %i.iu, %bb.im ], [ %i.iv, %bb.in ], [ %i.iw, %bb.io ], [ %i.ix, %bb.ip ], [ %i.iy, %bb.iq ], [ %i.iz, %bb.ir ], [ %i.ja, %bb.is ], [ %i.jb, %bb.it ], [ %i.jc, %bb.iu ], [ %i.jd, %bb.iv ], [ %i.je, %bb.iw ], [ %i.jf, %bb.ix ], [ %i.jg, %bb.iy ], [ %i.jh, %bb.iz ], [ %i.ji, %bb.ja ], [ %i.jj, %bb.jb ], [ %i.jk, %bb.jc ], [ %i.jl, %bb.jd ], [ %i.jm, %bb.je ], [ %i.jn, %bb.jf ], [ %i.jo, %bb.jg ], [ %i.jp, %bb.jh ], [ %i.jq, %bb.ji ], [ %i.jr, %bb.jj ], [ %i.js, %bb.jk ], [ %i.jt, %bb.jl ], [ %i.ju, %bb.jm ], [ %i.jv, %bb.jn ], [ %i.jw, %bb.jo ], [ %i.jx, %bb.jp ], [ %i.jy, %bb.jq ], [ %i.jz, %bb.jr ], [ %i.ka, %bb.js ], [ %i.kb, %bb.jt ], [ %i.kc, %bb.ju ], [ %i.kd, %bb.jv ], [ %i.ke, %bb.jw ], [ %i.kf, %bb.jx ], [ %i.kg, %bb.jy ], [ %i.kh, %bb.jz ], [ %i.ki, %bb.ka ], [ %i.kj, %bb.kb ], [ %i.kk, %bb.kc ], [ %i.kl, %bb.kd ], [ %i.km, %bb.ke ], [ %i.kn, %bb.kf ], [ %i.ko, %bb.kg ], [ %i.kp, %bb.kh ], [ %i.kq, %bb.ki ], [ %i.kr, %bb.kj ], [ %i.ks, %bb.kk ], [ %i.kt, %bb.kl ], [ %i.ku, %bb.km ], [ %i.kv, %bb.kn ], [ %i.kw, %bb.ko ], [ %i.kx, %bb.kp ], [ %i.ky, %bb.kq ], [ %i.kz, %bb.kr ], [ %i.la, %bb.ks ], [ %i.lb, %bb.kt ], [ %i.lc, %bb.ku ], [ %i.ld, %bb.kv ], [ %i.le, %bb.kw ], [ %i.lf, %bb.kx ], [ %i.lg, %bb.ky ], [ %i.lh, %bb.kz ], [ %i.li, %bb.la ], [ %i.lj, %bb.lb ], [ %i.lk, %bb.lc ], [ %i.ll, %bb.ld ], [ %i.lm, %bb.le ], [ %i.ln, %bb.lf ], [ %i.lo, %bb.lg ], [ %i.g, %bb.c ], [ %i.am, %bb.ai ], [ %i.al, %bb.ah ], [ %i.ak, %bb.ag ], [ %i.aj, %bb.af ], [ %i.ai, %bb.ae ], [ %i.ah, %bb.ad ], [ %i.ag, %bb.ac ], [ %i.af, %bb.ab ], [ %i.ae, %bb.aa ], [ %i.ad, %bb.z ], [ %i.ac, %bb.y ], [ %i.ab, %bb.x ], [ %i.aa, %bb.w ], [ %i.z, %bb.v ], [ %i.y, %bb.u ], [ %i.x, %bb.t ], [ %i.w, %bb.s ], [ %i.v, %bb.r ], [ %i.u, %bb.q ], [ %i.t, %bb.p ], [ %i.s, %bb.o ], [ %i.r, %bb.n ], [ %i.q, %bb.m ], [ %i.p, %bb.l ], [ %i.o, %bb.k ], [ %i.n, %bb.j ], [ %i.m, %bb.i ], [ %i.l, %bb.h ], [ %i.k, %bb.g ], [ %i.j, %bb.f ], [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.be, %bb.ax ], [ %i.bd, %bb.aw ], [ %i.bc, %bb.av ], [ %i.bb, %bb.au ], [ %i.ba, %bb.at ], [ %i.az, %bb.as ], [ %i.ay, %bb.ar ], [ %i.ax, %bb.aq ], [ %i.aw, %bb.ap ], [ %i.av, %bb.ao ], [ %i.au, %bb.an ], [ %i.at, %bb.am ], [ %i.as, %bb.al ], [ %i.bf, %bb.ay ]
  ret i1 %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS3_INS2_7VarDeclEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2632", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1947
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1934
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1946
  store i32 0, ptr %i.p, align 16, !tbaa !1950
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS3_INS2_7VarDeclEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !4794
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS2_INS1_7VarDeclEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS2_INS1_7VarDeclEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS2_INS1_7VarDeclEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS3_INS2_7VarDeclEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1934   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1946
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1947 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1946 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1934
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1947
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS6_INS5_7VarDeclEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS3_INS2_7VarDeclEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS3_INS2_7VarDeclEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS3_INS2_7VarDeclEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS3_INS2_7VarDeclEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !4795

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS3_INS2_7VarDeclEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store i64 %i.w, ptr %i.at, align 8, !tbaa !1956
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1567
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !1567
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !187
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4796

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS2_4DeclEEENS3_INS2_7VarDeclEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS6_INS5_7VarDeclEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !4797

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS6_INS5_7VarDeclEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1947
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS6_INS5_7VarDeclEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS6_INS5_7VarDeclEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS6_INS5_7VarDeclEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS6_INS5_7VarDeclEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1950
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1950
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS2_INS1_7VarDeclEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS6_INS5_7VarDeclEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !1947
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS2_INS1_7VarDeclEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrINS1_4DeclEEENS2_INS1_7VarDeclEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrINS5_4DeclEEENS6_INS5_7VarDeclEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AllocatorChecker16VisitDeclRefExprEPKN5clang11DeclRefExprE(ptr nofree readonly captures(none) %.0.val, ptr %.16.val) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 688
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 680
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i.i, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -6960
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 28616
  %i.i = load i32, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i32 %i.g, %i.i
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %narrow.i.i.i.i.i = sub nuw i32 %i.g, %i.i
  %i.j = zext i32 %narrow.i.i.i.i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -6968
  %.val5.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr [1736 x i8], ptr %.val5.i.i.i.i, i64 %i.j ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -384
  %.not.i.i = icmp eq ptr %.16.val, null
  br i1 %.not.i.i, label %_ZN5clang16CanonicalDeclPtrIKNS_4DeclEEC2EPS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %.16.val, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(33) %.16.val) #36, !inline_history !4798
  br label %_ZN5clang16CanonicalDeclPtrIKNS_4DeclEEC2EPS2_.exit.i

_ZN5clang16CanonicalDeclPtrIKNS_4DeclEEC2EPS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.r = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !211, !noalias !4799 ; 3 uses
  %i.t = getelementptr i8, ptr %i.l, i64 -376
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !221, !noalias !4799 ; 2 uses
  %i.v = getelementptr i8, ptr %i.l, i64 -364
  %i.w = load i32, ptr %i.v, align 4, !tbaa !222, !noalias !4799 ; 4 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_4DeclEEC2EPS2_.exit.i
  %i.y = add i32 %i.w, -1                         ; 2 uses
  %i.z = ptrtoint ptr %i.r to i64
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 31
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.y, %i.ad                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !187, !noalias !4808
  %i.aj = and i32 %i.ae, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !189

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.am = phi i64 [ %i.as, %bb.d ], [ %i.af, %bb.c ]
  %.03.i.i.i.i = phi i32 [ %i.ar, %bb.d ], [ %i.ae, %bb.c ]
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !224, !noalias !4808
  %i.ap = icmp eq ptr %i.r, %i.ao
  br i1 %i.ap, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.loopexit.i, label %bb.d, !prof !191

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aq = add nuw i32 %.03.i.i.i.i, 1
  %i.ar = and i32 %i.aq, %i.y                     ; 3 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 5
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !187, !noalias !4808
  %i.aw = and i32 %i.ar, 31
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !192

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %_ZN5clang16CanonicalDeclPtrIKNS_4DeclEEC2EPS2_.exit.i
  %i.az = zext i32 %i.w to i64                    ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.az
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.w to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.loopexit.i ], [ %i.az, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.an, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.loopexit.i ], [ %i.ba, %.loopexit.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.pre-phi.i
  %i.bc = icmp eq ptr %.lcssa.sink.i.i.i, %i.bb
  br i1 %i.bc, label %_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %.val7.i = load i32, ptr %i.bd, align 4, !tbaa !104
  %i.be = zext i32 %.val7.i to i64
  %i.bf = or disjoint i64 %i.be, 4294967296
  br label %_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit

_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i, %bb.e
  %.sroa.2.0.i = phi i64 [ %i.bf, %bb.e ], [ 0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i ] ; 2 uses
  %i.bg = and i64 %.sroa.2.0.i, 4294967296
  %.not = icmp eq i64 %i.bg, 0
  %i.bh = and i64 %.sroa.2.0.i, 4294967295
  %i.bi = icmp eq i64 %i.bh, 2
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E15LookupBucketForIS6_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !5638
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2086
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2080
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !5639
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !5639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i64, ptr %1, align 8, !tbaa !1546
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !1546
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E15LookupBucketForIS6_EEbRKT_RPSI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E15LookupBucketForIS6_EEbRKT_RPSI_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E15LookupBucketForIS6_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2080, !noalias !5640 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2086, !noalias !5640 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2087, !noalias !5640 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1845   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1845
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !2088

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !5638
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.65", align 16 ; 11 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2087
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2080
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2086
  store i32 0, ptr %i.p, align 16, !tbaa !5639
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !187
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !187
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !187
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !2087 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !2080
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2080
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2086
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2087 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2086 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2080
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2087
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.i
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %._crit_edge.i ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !5645

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store i64 %i.w, ptr %i.as, align 8, !tbaa !1546
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !5646
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !5646
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !5647
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !5647
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !187
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !187
  %i.bd = add i32 %.0.i18, -1
  %i.be = and i32 %i.bd, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !5648

._crit_edge:                                      ; preds = %._crit_edge.i, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !5649

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2087
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !5639
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !5639
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !2080
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !2087
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2087 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2080
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2086
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !187  ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1847 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !5650 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1851 ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1855 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp uge ptr %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 14848 ; 2 uses
  %i.aa = icmp ule ptr %i.v, %i.z
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 14976 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2019 ; 2 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !2019
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ae
  store ptr %i.v, ptr %i.af, align 8, !tbaa !2020
  br label %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.v) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 928) #38
  br label %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.c, %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5651

_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.q, align 8, !tbaa !1847
  br label %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exitthread-pre-split.i.i, %bb.b
  %i.ah = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.r, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5647
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #38
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exit.i.i, %bb.g
  %i.an = add i32 %.0.i3, -1
  %i.ao = and i32 %i.an, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !5652

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !5653

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

declare i64 @_ZN5clang4Sema15BuildBitIntTypeEbPNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640), i1 noundef zeroext, ptr noundef, i32) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema21BuildBlockPointerTypeENS_8QualTypeENS_14SourceLocationENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(18640), i64, i32, i64) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema38BuildCountAttributedArrayOrPointerTypeENS_8QualTypeEPNS_4ExprEbb(ptr noundef nonnull align 8 dereferenceable(18640), i64, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema23ActOnDecltypeExpressionEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema17BuildDecltypeTypeEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, i64 %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %6 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %7 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %8 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %9 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %10 = alloca %"class.llvm::SmallVector.3214", align 8 ; 10 uses
  %11 = alloca %"class.clang::CXXScopeSpec", align 8 ; 19 uses
  %12 = alloca %"class.clang::NestedNameSpecifierLoc", align 8 ; 11 uses
  %13 = alloca %"class.clang::TypeLoc", align 8   ; 10 uses
  %14 = alloca %"struct.clang::Sema::NestedNameSpecInfo", align 8 ; 7 uses
  %15 = alloca %"class.clang::QualType", align 8  ; 6 uses
  %16 = alloca %"class.clang::TypeLocBuilder", align 8 ; 15 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %19 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  store i32 0, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !51
  %.not4.i = icmp eq i64 %1, 0
  br i1 %.not4.i, label %_ZNK5clang22NestedNameSpecifierLoc13getDataLengthEv.exit.thread, label %.lr.ph.i

_ZNK5clang22NestedNameSpecifierLoc13getDataLengthEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  br label %bb.bj

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK5clang22NestedNameSpecifierLoc23getAsNamespaceAndPrefixEv.exit.i
  %.sroa.01.06.i = phi i64 [ %.sroa.4.0.i, %_ZNK5clang22NestedNameSpecifierLoc23getAsNamespaceAndPrefixEv.exit.i ], [ %1, %bb.a ] ; 5 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !51
  %.not.i.i = icmp ult i32 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !191

bb.b:                                             ; preds = %.lr.ph.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang22NestedNameSpecifierLocELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 %.sroa.01.06.i, ptr %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang22NestedNameSpecifierLocELb1EE9push_backES2_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = zext i32 %i.d to i64
  %i.g = load ptr, ptr %10, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f ; 2 uses
  store i64 %.sroa.01.06.i, ptr %i.h, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %2, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !50
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang22NestedNameSpecifierLocELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang22NestedNameSpecifierLocELb1EE9push_backES2_.exit.i: ; preds = %bb.c, %bb.b
  %i.k = icmp ugt i64 %.sroa.01.06.i, 7
  br i1 %i.k, label %bb.d, label %_ZZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclEENKUlS4_E_clES4_.exit

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang22NestedNameSpecifierLocELb1EE9push_backES2_.exit.i
  %i.l = trunc i64 %.sroa.01.06.i to i32
  %i.m = lshr i32 %i.l, 1
  %i.n = and i32 %i.m, 3
  switch i32 %i.n, label %.unreachabledefault [
    i32 1, label %_ZZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclEENKUlS4_E_clES4_.exit
    i32 0, label %_ZZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclEENKUlS4_E_clES4_.exit
    i32 3, label %bb.e
    i32 2, label %_ZNK5clang22NestedNameSpecifierLoc23getAsNamespaceAndPrefixEv.exit.i
  ]

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable535:                           ; preds = %bb.ax, %bb.z, %bb.r, %bb.o, %bb.g, %bb.i, %bb.az, %bb.ab, %bb.p, %bb.t, %bb.ai, %bb.bh, %bb.ag
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = and i64 %.sroa.01.06.i, -8
  %i.p = inttoptr i64 %i.o to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i, align 8, !tbaa !1063, !noalias !5654
  br label %_ZNK5clang22NestedNameSpecifierLoc23getAsNamespaceAndPrefixEv.exit.i

_ZNK5clang22NestedNameSpecifierLoc23getAsNamespaceAndPrefixEv.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.4.0.i = phi i64 [ %.sroa.3.0.copyload.i.i.i.i, %bb.e ], [ 2, %bb.d ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %.not.i, label %_ZZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclEENKUlS4_E_clES4_.exit, label %.lr.ph.i, !llvm.loop !5659

_ZZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclEENKUlS4_E_clES4_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang22NestedNameSpecifierLocELb1EE9push_backES2_.exit.i, %bb.d, %bb.d, %_ZNK5clang22NestedNameSpecifierLoc23getAsNamespaceAndPrefixEv.exit.i
  %.pre = load i32, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %.not.i56335 = icmp eq i32 %.pre, 0
  br i1 %.not.i56335, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclEENKUlS4_E_clES4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 17 uses
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !5792
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4851
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !4841
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !5793
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !5793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1956
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1956
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1956
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4841, !noalias !5794 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4851, !noalias !5794 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2264, !noalias !5794 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1956   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1956
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !5791

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !5792
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.848", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2264
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !4841
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4851
  store i32 0, ptr %i.p, align 16, !tbaa !5793
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !5792
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !4841   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4851
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2264 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4851 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !4841
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2264
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1956 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !5799

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1956
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1956
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1956
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !187
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !5800

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !5801

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2264
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !5793
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !5793
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !2264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2063
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 1) #36
  %i.e = load ptr, ptr %0, align 8, !tbaa !2061
  %i.f = load i64, ptr %i.a, align 8, !tbaa !2063
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 %1, ptr %i.g, align 1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !2063
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !2063
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #27

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK5clang13CXXMethodDecl19getMethodQualifiersEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !104
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !159 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16
  %.not.i = icmp eq i8 %i.f, 24
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.d) #36
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16             ; 9 uses
  %i.j = and i64 %i.i, 16777216
  %.not.i1 = icmp eq i64 %i.j, 0
  br i1 %.not.i1, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.1.i, i64 48
  %i.l = lshr i64 %i.i, 48                        ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = lshr i64 %i.i, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.n, 1
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.lobit.i.i.i.i.i.i.i.i.i.i.i
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %i.p, 7
  %i.r = and i64 %i.q, -8
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = and i64 %i.i, 1073741824
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i24, ptr %i.s, align 8              ; 2 uses
  %i.v = lshr i24 %i.u, 10
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i24 %i.v, 1
  %i.w = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIS5_JS7_EEESt4pairIPSC_bEOT_DpOT0_:bb.a
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !6571
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2545
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !2533
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !6572
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !6572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2548
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2548
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load ptr, ptr %2, align 8, !tbaa !1077
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !1077
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2533, !noalias !6573 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2545, !noalias !6573 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2546, !noalias !6573 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2548   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2548
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !6570

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !6571
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.3964", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2546
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2533
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2545
  store i32 0, ptr %i.p, align 16, !tbaa !6572
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !6571
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang4TypeEPNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPKN5clang4TypeEPNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4TypeEPNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2533   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2545
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2546 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2545 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2533
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2546
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2548 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !6578

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !2548
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1077
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1077
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !187
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !6579

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !6580

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2546
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !6572
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !6572
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang4TypeEPNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !2546
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang4TypeEPNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang4TypeEPNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEPNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_15OpaqueValueExprE(ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9FieldDeclEjELb1EE18growAndEmplaceBackIJRS4_iEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2205   ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !187    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !51
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9FieldDeclEjELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.a, i32 %i.b)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9FieldDeclEjELb1EE9push_backES5_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g ; 2 uses
  store ptr %i.a, ptr %i.i, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.b, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9FieldDeclEjELb1EE9push_backES5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9FieldDeclEjELb1EE9push_backES5_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.k, %bb.c ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !49
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  ret ptr %i.p
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9FieldDeclEjELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8QualTypeEPNS2_9FieldDeclEELb1EE18growAndEmplaceBackIJRS3_RS5_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !104    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !2205   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !51
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8QualTypeEPNS2_9FieldDeclEELb1EE15growAndPushBackES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.a, ptr %i.b)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8QualTypeEPNS2_9FieldDeclEELb1EE9push_backES6_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g ; 2 uses
  store i64 %i.a, ptr %i.i, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8QualTypeEPNS2_9FieldDeclEELb1EE9push_backES6_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8QualTypeEPNS2_9FieldDeclEELb1EE9push_backES6_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.k, %bb.c ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !49
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  ret ptr %i.p
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8QualTypeEPNS2_9FieldDeclEELb1EE15growAndPushBackES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
end_hunk_7
begin_hunk_8_@_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = and i64 %2, -8
  %i.i = add i64 %i.h, 24                         ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !1825 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.i, %i.k                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1826
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.d, !prof !191

bb.c:                                             ; preds = %bb.b
  %i.p = inttoptr i64 %i.l to ptr
  store ptr %i.p, ptr %i.g, align 8, !tbaa !1825
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %2, 17
  %i.r = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef %i.q, i64 noundef %i.i, i8 3)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.r, %bb.d ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i

_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i: ; preds = %bb.e, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %2
  store i8 0, ptr %i.t, align 1, !tbaa !104
  store i64 %2, ptr %.0.i.i.i.i.i, align 8, !tbaa !1805
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !2550
  store ptr %.0.i.i.i.i.i, ptr %i.e, align 8, !tbaa !1803
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1800
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !1800
  %i.y = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %i.b) #36
  %i.z = load ptr, ptr %0, align 8, !tbaa !1801
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  br label %_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE21try_emplace_with_hashIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEjDpOT_.exit

_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE21try_emplace_with_hashIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEjDpOT_.exit: ; preds = %bb.a, %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i
  %.sroa.014.0.i = phi ptr [ %i.ab, %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i ], [ %i.e, %bb.a ]
  %.sroa.3.0.i = phi i8 [ 1, %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i ], [ 0, %bb.a ]
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %.sroa.014.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %.sroa.3.0.i, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang18ArraySubscriptExpr9lhsIsBaseEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2047
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !104
  %i.d = and i64 %.sroa.0.0.copyload.i, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.g, align 8, !tbaa !104 ; 2 uses
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !159 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 16              ; 2 uses
  %i.m = icmp ne i8 %i.l, 13
  %.not.not3039.i = icmp eq ptr %i.j, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.m
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %tailrecurse._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.not.i6 = icmp eq i8 %i.l, 47
  br i1 %.not.i6, label %.lr.ph.i._crit_edge, label %.lr.ph

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.a
  %.lcssa.i = phi ptr [ %i.j, %bb.a ], [ %i.as, %tailrecurse.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.o = load i32, ptr %i.n, align 16
  %i.p = lshr i32 %i.o, 19
  %i.q = and i32 %i.p, 1023
  %i.r = add nsw i32 %i.q, -453
  %spec.select.i.i = icmp ult i32 %i.r, 20
  br label %_ZNK5clang4Type13isIntegerTypeEv.exit

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i = icmp eq i8 %i.au, 47
  br i1 %.not.i, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.as, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !169  ; 2 uses
  %i.u = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.t) #36, !inline_history !2259 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.u, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.t, ptr %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.w = load i8, ptr %i.v, align 2
  %i.x = trunc i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.aa = select i1 %i.x, i1 true, i1 %i.z
  br i1 %i.aa, label %bb.b, label %_ZNK5clang4Type13isIntegerTypeEv.exit

bb.b:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !169
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load i40, ptr %i.ac, align 8
  %i.ae = icmp sgt i40 %i.ad, -1
  br label %_ZNK5clang4Type13isIntegerTypeEv.exit

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i7 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i.i7, -16
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !159 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 16            ; 2 uses
  %i.ak = icmp ne i8 %i.aj, 35
  %.not18.not32.i = icmp eq ptr %i.ah, null
  %.not18.not.i = or i1 %.not18.not32.i, %i.ak
  br i1 %.not18.not.i, label %bb.c, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.al, align 16, !tbaa !104
  %i.am = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !159
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !104 ; 2 uses
  %i.aq = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !159 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i8, ptr %i.at, align 16            ; 2 uses
  %i.av = icmp ne i8 %i.au, 13
  %.not.not30.i = icmp eq ptr %i.as, null
  %.not.not.i = or i1 %.not.not30.i, %i.av
  br i1 %.not.not.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

bb.c:                                             ; preds = %.lr.ph
  %i.aw = icmp eq i8 %i.aj, 10
  br label %_ZNK5clang4Type13isIntegerTypeEv.exit

_ZNK5clang4Type13isIntegerTypeEv.exit:            ; preds = %tailrecurse._crit_edge.i, %.lr.ph.i._crit_edge, %bb.b, %bb.c
  %.3.i = phi i1 [ %i.aw, %bb.c ], [ %i.ae, %bb.b ], [ %spec.select.i.i, %tailrecurse._crit_edge.i ], [ false, %.lr.ph.i._crit_edge ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 4   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !187  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1807
  %i.z = icmp ugt i32 %i.y, 64
  br i1 %i.z, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !104 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #38
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ad = add i32 %.0.i5.i, -1
  %i.ae = and i32 %i.ad, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3393

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !3394

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ag = and i32 %i.af, 1
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.e, label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !104 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit, %bb.e, %bb.f
  ret void
}

declare noundef ptr @_ZN5clang10MemberExpr6CreateERKNS_10ASTContextEPNS_4ExprEbNS_14SourceLocationENS_22NestedNameSpecifierLocES6_PNS_9ValueDeclENS_14DeclAccessPairENS_19DeclarationNameInfoEPKNS_24TemplateArgumentListInfoENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_15NonOdrUseReasonE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i1 noundef zeroext, i32, i64, ptr, i32, ptr noundef, i64, ptr noundef byval(%"struct.clang::DeclarationNameInfo") align 8, ptr noundef, i64, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3omp10OMPContextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm3omp10OMPContextE, i64 16), ptr %0, align 8, !tbaa !101
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #36
  br label %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit
  tail call void @free(ptr noundef %i.f) #36
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3omp10OMPContextD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm3omp10OMPContextE, i64 16), ptr %0, align 8, !tbaa !101
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #36, !inline_history !3399
  br label %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm3omp10OMPContextD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #36, !inline_history !3399
  br label %_ZN4llvm3omp10OMPContextD2Ev.exit

_ZN4llvm3omp10OMPContextD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm3omp10OMPContext15matchesISATraitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK5clang4Decl15hasDefiningAttrEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZSt9__find_ifIPN5clang11OMPTraitSetEN9__gnu_cxx5__ops10_Iter_predIZNS0_12OMPTraitInfo19anyScoreOrConditionEN4llvm12function_refIFbRPNS0_4ExprEbEEEEUlRS1_E_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 136
  %i.e = ashr i64 %i.d, 2                         ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.053 = phi i64 [ %i.aj, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.02952 = phi ptr [ %i.ai, %bb.e ], [ %0, %bb.a ] ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02952, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02952, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = tail call noundef ptr @_ZSt9__find_ifIPN5clang16OMPTraitSelectorEN9__gnu_cxx5__ops10_Iter_predIZZNS0_12OMPTraitInfo19anyScoreOrConditionEN4llvm12function_refIFbRPNS0_4ExprEbEEEENKUlRNS0_11OMPTraitSetEE_clESF_EUlRS1_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr noundef %i.h, ptr noundef %i.l, ptr nonnull %2)
  %.not38 = icmp eq ptr %i.l, %i.m
  br i1 %.not38, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.02952, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02952, i64 152
  %i.q = load i32, ptr %i.p, align 8, !tbaa !50
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = tail call noundef ptr @_ZSt9__find_ifIPN5clang16OMPTraitSelectorEN9__gnu_cxx5__ops10_Iter_predIZZNS0_12OMPTraitInfo19anyScoreOrConditionEN4llvm12function_refIFbRPNS0_4ExprEbEEEENKUlRNS0_11OMPTraitSetEE_clESF_EUlRS1_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr noundef %i.o, ptr noundef %i.s, ptr nonnull %2)
  %.not39 = icmp eq ptr %i.s, %i.t
  br i1 %.not39, label %bb.c, label %.loopexit.split.loop.exit43

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.02952, i64 280
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02952, i64 288
  %i.x = load i32, ptr %i.w, align 8, !tbaa !50
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.y ; 2 uses
  %i.aa = tail call noundef ptr @_ZSt9__find_ifIPN5clang16OMPTraitSelectorEN9__gnu_cxx5__ops10_Iter_predIZZNS0_12OMPTraitInfo19anyScoreOrConditionEN4llvm12function_refIFbRPNS0_4ExprEbEEEENKUlRNS0_11OMPTraitSetEE_clESF_EUlRS1_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr noundef %i.v, ptr noundef %i.z, ptr nonnull %2)
  %.not40 = icmp eq ptr %i.z, %i.aa
  br i1 %.not40, label %bb.d, label %.loopexit.split.loop.exit45

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.02952, i64 416
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02952, i64 424
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !50
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.af ; 2 uses
  %i.ah = tail call noundef ptr @_ZSt9__find_ifIPN5clang16OMPTraitSelectorEN9__gnu_cxx5__ops10_Iter_predIZZNS0_12OMPTraitInfo19anyScoreOrConditionEN4llvm12function_refIFbRPNS0_4ExprEbEEEENKUlRNS0_11OMPTraitSetEE_clESF_EUlRS1_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr noundef %i.ac, ptr noundef %i.ag, ptr nonnull %2)
  %.not41 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not41, label %bb.e, label %.loopexit.split.loop.exit47

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02952, i64 544 ; 3 uses
  %i.aj = add nsw i64 %.053, -1
  %i.ak = icmp sgt i64 %.053, 1
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !6581

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %i.ai to i64
  %.pre58 = sub i64 %i.a, %.pre
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E15LookupBucketForIS5_EEbRKT_RPSE_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !6624

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4767
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.2390", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 200
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEC2EjNS_12DenseMapBaseISE_S4_S8_SA_SD_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !104
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEC2EjNS_12DenseMapBaseISE_S4_S8_SA_SD_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEC2EjNS_12DenseMapBaseISE_S4_S8_SA_SD_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEC2EjNS_12DenseMapBaseISE_S4_S8_SA_SD_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4766
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !104
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEC2EjNS_12DenseMapBaseISE_S4_S8_SA_SD_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !104
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE13maybeMoveFastEOSE_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !104 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !104
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = mul nuw nsw i64 %i.bm, 24
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 8
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 7   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i22 = icmp eq i64 %i.ab, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !187 ; 2 uses
  %.not11.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !190 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !187
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.014.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !187
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, !llvm.loop !6630

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.lcssa12.i ; 2 uses
  store ptr %i.aj, ptr %i.bg, align 8, !tbaa !190
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false)
  %i.bj = shl nuw i32 1, %.lcssa.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa11.i ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !187
  %i.bm = or i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !187
  %i.bn = add i32 %.0.i21, -1
  %i.bo = and i32 %i.bn, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !6631

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !6632

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !104 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = mul nuw nsw i64 %i.bx, 24
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #36
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS1_7VarDeclEELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS5_7VarDeclEELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEES8_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang21OMPLoopBasedDirective11HelperExprs5clearEj(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = zext i32 %1 to i64                       ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %1, %i.d
  br i1 %i.f, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %bb.d, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.j, i64 noundef %i.b, i64 noundef 8) #36
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.in = phi i32 [ %i.d, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %.not11.i.i = icmp eq i32 %1, %.pre-phi.i.i.in
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i
  %.pre-phi.i.i = zext i32 %.pre-phi.i.i.in to i64 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %.pre-phi.i.i
  %i.m = sub nsw i64 %i.b, %.pre-phi.i.i
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.n, i1 false), !tbaa !1077
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i, %bb.b
  store i32 %1, ptr %i.c, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6resizeEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6resizeEm.exit: ; preds = %bb.a, %.sink.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !50   ; 3 uses
  %i.r = icmp eq i32 %1, %i.q
  br i1 %i.r, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6resizeEm.exit26, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6resizeEm.exit
  %i.s = icmp ult i32 %1, %i.q
  br i1 %i.s, label %.sink.split.i.i23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51
  %i.v = icmp ugt i32 %1, %i.u
  br i1 %i.v, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i19

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull %i.w, i64 noundef %i.b, i64 noundef 8) #36
  %.pre.i.i24 = load i32, ptr %i.p, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i19

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i19: ; preds = %bb.g, %bb.f
  %.pre-phi.i.i20.in = phi i32 [ %i.q, %bb.f ], [ %.pre.i.i24, %bb.g ] ; 2 uses
  %.not11.i.i21 = icmp eq i32 %1, %.pre-phi.i.i20.in
  br i1 %.not11.i.i21, label %.sink.split.i.i23, label %.lr.ph.preheader.i.i22

.lr.ph.preheader.i.i22:                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i19
  %.pre-phi.i.i20 = zext i32 %.pre-phi.i.i20.in to i64 ; 2 uses
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %.pre-phi.i.i20
  %i.z = sub nsw i64 %i.b, %.pre-phi.i.i20
  %i.aa = shl nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.aa, i1 false), !tbaa !1077
  br label %.sink.split.i.i23

.sink.split.i.i23:                                ; preds = %.lr.ph.preheader.i.i22, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i19, %bb.e
  store i32 %1, ptr %i.p, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6resizeEm.exit26

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6resizeEm.exit26: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6resizeEm.exit, %.sink.split.i.i23
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !50 ; 3 uses
  %i.ae = icmp eq i32 %1, %i.ad
  br i1 %i.ae, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6resizeEm.exit34, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6resizeEm.exit26
  %i.af = icmp ult i32 %1, %i.ad
  br i1 %i.af, label %.sink.split.i.i31, label %bb.i

end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !6739
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3715
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !3550
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !6740
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !6740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1077
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1077
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !187
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3550, !noalias !6741 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3715, !noalias !6741 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3547, !noalias !6741 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1077   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1077
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !6738

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !6739
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1962", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3547
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3550
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3715
  store i32 0, ptr %i.p, align 16, !tbaa !6740
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !6739
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3550   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3715
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3547 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3715 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3550
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3547
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1077 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !6746

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1077
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !187
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !187
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !187
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !187
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !6747

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !6748

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3547
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !6740
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !6740
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !3547
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESE_IJOS7_EEEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !2323
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %3, align 8, !tbaa !6669
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1077 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !1078 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE15growAndPushBackES8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.e, ptr %i.f)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE9push_backES8_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k ; 2 uses
  store ptr %i.e, ptr %i.m, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.n = load i32, ptr %i.g, align 8, !tbaa !50
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE9push_backES8_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE9push_backES8_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.o, %bb.c ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !49
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  ret ptr %i.t
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE15growAndPushBackES8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !2323
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1077 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE15growAndPushBackES8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.c, ptr null)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE9push_backES8_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.h ; 2 uses
  store ptr %i.c, ptr %i.j, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.k = load i32, ptr %i.d, align 8, !tbaa !50
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE9push_backES8_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELb1EE9push_backES8_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.l, %bb.c ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !49
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16
  ret ptr %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN5clang30OMPLoopTransformationDirectiveEEE11callback_fnIZL15checkOpenMPLoopNS_3omp9DirectiveEPNS1_4ExprESA_PNS1_4StmtERNS1_4SemaERN12_GLOBAL__N_110DSAStackTyERNS_13SmallDenseMapIPKNS1_9ValueDeclEPKS9_Lj4ENS_12DenseMapInfoISL_vEENS_6detail12DenseMapPairISL_SN_EEEERNS1_21OMPLoopBasedDirective11HelperExprsEE3$_1EEvlS3_"(i64 noundef %0, ptr noundef nonnull %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1660", align 8 ; 10 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = tail call noundef ptr @_ZNK5clang30OMPLoopTransformationDirective11getPreInitsEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #36 ; 5 uses
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_:bb.a
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !187
  %i.aj = and i32 %i.ad, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !7648

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ %i.af, %bb.c ], [ %i.z, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !4761
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.2382", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !104
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4760
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !104
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !104
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !104 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !104
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = mul nuw nsw i64 %i.bm, 24
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val7 = load i32, ptr %i.j, align 8
  %i.k = select i1 %.not.i.i, i32 %.val7, i32 4
  %i.l = load i32, ptr %0, align 8
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i, ptr %i.s, ptr %i.r
  %i.u = getelementptr i8, ptr %0, i64 24
  %.val9 = load i32, ptr %i.u, align 8
  %i.v = add i32 %.val9, -1
  %i.w = select i1 %.not.i.i.i, i32 %i.v, i32 3   ; 2 uses
  %i.x = zext i32 %i.k to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %.not.i26 = icmp eq i64 %i.z, 0
  br i1 %.not.i26, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !187 ; 2 uses
  %.not11.i24 = icmp eq i32 %i.ab, 0
  br i1 %.not11.i24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph29
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ac = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i25 = phi i32 [ %i.ab, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i25, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !190 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.w, %i.am                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !187
  %i.as = and i32 %i.an, 31                       ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.an, %bb.b ]
  %i.av = add i32 %.014.i, 1
  %i.aw = and i32 %i.av, %i.w                     ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5                       ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !187
  %i.bb = and i32 %i.aw, 31                       ; 2 uses
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !7654

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.as, %bb.b ], [ %i.bb, %.lr.ph.i ]
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.lcssa12.i ; 2 uses
  store ptr %i.ah, ptr %i.be, align 8, !tbaa !190
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  %i.bh = shl nuw i32 1, %.lcssa.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.lcssa11.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !187
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !187
  %i.bl = add i32 %.0.i25, -1
  %i.bm = and i32 %i.bl, %.0.i25                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7655

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph29, !llvm.loop !7656

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.val10.pre = load i32, ptr %1, align 8
  %.pre = load i32, ptr %0, align 8
  %.pre34 = and i32 %.pre, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre34, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.m, %bb.a ]
  %.val10 = phi i32 [ %.val10.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bn = and i32 %.val10, -2
  %i.bo = or disjoint i32 %.pre-phi, %i.bn
  store i32 %i.bo, ptr %0, align 8
  %i.bp = load i32, ptr %1, align 8               ; 3 uses
  %i.bq = and i32 %i.bp, 1
  %.not.i.i15 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i15, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.br = load i32, ptr %i.j, align 8, !tbaa !104 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.bu = zext i32 %i.br to i64                   ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 24
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #36
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ca = phi i32 [ %i.bp, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy13ReductionDataELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit ], [ %i.bp, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cb = and i32 %i.ca, -2
  store i32 %i.cb, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN4llvm23SmallVectorTemplateBaseIbLb1EE18growAndEmplaceBackIJRbEEES3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !105, !range !168, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2063 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2064
  %.not.i = icmp ult i64 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.a to i1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIbLb1EE15growAndPushBackEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %i.f)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !2063
  br label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE9push_backEb.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !2061
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store i8 %i.a, ptr %i.h, align 1
  %i.i = load i64, ptr %i.b, align 8, !tbaa !2063
  %i.j = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !2063
  br label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE9push_backEb.exit

_ZN4llvm23SmallVectorTemplateBaseIbLb1EE9push_backEb.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !2061
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -1
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JRS8_EEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !7657 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !7657 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !7657 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !7657
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 8 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !190    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !187
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !189

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !190
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !187
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !192, !llvm.loop !7662

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !4764
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !7662

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4764
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.2385", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !104
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4763
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !104
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !104
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !104 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !104
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 8
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 7   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !187 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !190 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !187 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !187 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !7668

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa13.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !190
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1077
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !1077
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = or i32 %i.bl, %.lcssa11.i
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !187
  %i.bn = add i32 %.0.i20, -1
  %i.bo = and i32 %i.bn, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7669

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !7670

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !104 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #36
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj8ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIA13_cEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 1 dereferenceable(13) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr.3101", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1835, !range !168, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1851 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIA13_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1855
  %i.h = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.g) ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !1851
  br label %_ZN5clanglsIA13_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit

_ZN5clanglsIA13_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.i = phi ptr [ %i.h, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.l = load i8, ptr %i.i, align 8, !tbaa !1856
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  store i8 1, ptr %i.n, align 1, !tbaa !104
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !1851 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.o, align 8, !tbaa !1856  ; 2 uses
  %i.r = add i8 %i.q, 1
  store i8 %i.r, ptr %i.o, align 8, !tbaa !1856
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.s
  store i64 %i.j, ptr %i.t, align 8, !tbaa !1063
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.w = load i8, ptr %i.v, align 4, !tbaa !1837, !range !168, !noundef !12
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1838 ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(168) %i.aa) #36, !inline_history !1850
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %i.ae, %bb.e ], [ null, %bb.d ]
  store ptr %i.af, ptr %2, align 8, !tbaa !1845
  %i.ag = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ai = load i32, ptr %i.u, align 8, !tbaa !187
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !1847
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1851 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIA13_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1855
  %i.aq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ap) ; 2 uses
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !1851
  br label %_ZNK5clang17PartialDiagnosticlsIA13_cEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIA13_cEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.ar = phi ptr [ %i.aq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.an, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.as = ptrtoint ptr %1 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.ar, align 8, !tbaa !1856
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  store i8 1, ptr %i.aw, align 1, !tbaa !104
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !1851 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !1856 ; 2 uses
  %i.ba = add i8 %i.az, 1
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E24lookupOrInsertIntoBucketIRKS4_JRKSB_EEES6_IPSG_bEOT_DpOT0_:bb.a
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !4678
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 8 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 88                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !6687
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !6687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1888
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1888
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 3 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 4, ptr %i.bl, align 4, !tbaa !51
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !50 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bn, 0
  %i.bo = icmp eq ptr %i.bi, %2
  %or.cond.i = or i1 %i.bo, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E15LookupBucketForIS4_EEbRKT_RPSG_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit
  %i.bp = zext i32 %i.bn to i64                   ; 2 uses
  %i.bq = icmp ugt i32 %i.bn, 4
  br i1 %i.bq, label %_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.i, label %_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.thread.i

_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.i: ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull %i.bj, i64 noundef %i.bp, i64 noundef 16) #36
  %.pre.i.i = load i32, ptr %i.bm, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.i._ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.thread.i_crit_edge

_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.i._ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.i
  %.pre37.i.i = zext i32 %.pre.i.i to i64
  %.pre17 = load ptr, ptr %i.bi, align 8, !tbaa !49
  br label %_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.thread.i

_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.thread.i: ; preds = %_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.i._ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.thread.i_crit_edge, %bb.e
  %i.br = phi ptr [ %.pre17, %_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.i._ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.thread.i_crit_edge ], [ %i.bj, %bb.e ]
  %.pre-phi.i8.i = phi i64 [ %.pre37.i.i, %_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.i._ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.thread.i_crit_edge ], [ %i.bp, %bb.e ]
  %i.bs = load ptr, ptr %2, align 8, !tbaa !49
  %gepdiff.i.i = shl nuw nsw i64 %.pre-phi.i8.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 8 %i.bs, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.thread.i, %_ZSt4copyIPKSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEEPS5_ET0_T_SA_S9_.exit35.i.i
  store i32 %i.bn, ptr %i.bk, align 8, !tbaa !50
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E15LookupBucketForIS4_EEbRKT_RPSG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E15LookupBucketForIS4_EEbRKT_RPSG_.exit: ; preds = %.lr.ph.i, %.sink.split.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %.sink.split.i.i ], [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %.sink.split.i.i ], [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E15LookupBucketForIS4_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4678, !noalias !7686 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4679, !noalias !7686 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4677, !noalias !7686 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1888   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1888
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !7685

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4755
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2393", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !4677
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 88                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !4678
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4679
  store i32 0, ptr %i.p, align 16, !tbaa !6687
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !4755   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !4556 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store ptr %i.z, ptr %2, align 16, !tbaa !4755
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !2258
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !4556
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !187
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !187
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !187 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #36
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !4680

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !4681

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !4677 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !4678
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 88
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit

_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !4678
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4679
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4677 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4679 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !4678
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4677
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS5_4ExprENS5_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1888 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7691

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !1888
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 4, ptr %i.aw, align 4, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !50 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELj4EEC2EOS7_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELj4EEC2EOS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !49 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEEE12assignRemoteEOS7_.exit.i

_ZN4llvm15SmallVectorImplISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEEE12assignRemoteEOS7_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !49
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !51
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !51
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !49
  store i32 0, ptr %i.be, align 4, !tbaa !51
  br label %_ZN4llvm11SmallVectorISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELj4EEC2EOS7_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bg = zext i32 %i.ay to i64                   ; 2 uses
  %i.bh = icmp ugt i32 %i.ay, 4
  br i1 %i.bh, label %_ZSt4moveIPSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEES6_ET0_T_S8_S7_.exit39.i, label %_ZSt4moveIPSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEES6_ET0_T_S8_S7_.exit39.i.thread

_ZSt4moveIPSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEES6_ET0_T_S8_S7_.exit39.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef 16) #36
  %.pre41.i = load i32, ptr %i.ax, align 8, !tbaa !50 ; 2 uses
  %.pre42.i = zext i32 %.pre41.i to i64
  %.not.i.i.i9 = icmp eq i32 %.pre41.i, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i, label %_ZSt4moveIPSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEES6_ET0_T_S8_S7_.exit39.i.thread

_ZSt4moveIPSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEES6_ET0_T_S8_S7_.exit39.i.thread: ; preds = %bb.e, %_ZSt4moveIPSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEES6_ET0_T_S8_S7_.exit39.i
  %.pre-phi.i34 = phi i64 [ %.pre42.i, %_ZSt4moveIPSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEES6_ET0_T_S8_S7_.exit39.i ], [ %i.bg, %bb.e ]
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !49
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !49
  %gepdiff.i = shl nuw nsw i64 %.pre-phi.i34, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 8 %i.bi, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i: ; preds = %_ZSt4moveIPSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEES6_ET0_T_S8_S7_.exit39.i.thread, %_ZSt4moveIPSt4pairIPN5clang4ExprENS1_22OverloadedOperatorKindEES6_ET0_T_S8_S7_.exit39.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !50
  br label %_ZN4llvm11SmallVectorISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELj4EEC2EOS7_.exit.i.sink.split

_ZN4llvm11SmallVectorISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELj4EEC2EOS7_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEEE12assignRemoteEOS7_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !50
  br label %_ZN4llvm11SmallVectorISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELj4EEC2EOS7_.exit.i

_ZN4llvm11SmallVectorISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELj4EEC2EOS7_.exit.i: ; preds = %_ZN4llvm11SmallVectorISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELj4EEC2EOS7_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bk = shl nuw i32 1, %.lcssa.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !187
  %i.bn = or i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !187
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !49 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELj4EEC2EOS7_.exit.i
  tail call void @free(ptr noundef %i.bp) #36
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPN5clang4ExprENS2_22OverloadedOperatorKindEELj4EEC2EOS7_.exit.i, %bb.f
  %i.bs = add i32 %.0.i16, -1
  %i.bt = and i32 %i.bs, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7692

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS2_4ExprENS2_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS5_4ExprENS5_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !7693

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS5_4ExprENS5_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4677
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS5_4ExprENS5_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS5_4ExprENS5_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS5_4ExprENS5_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bu = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS5_4ExprENS5_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !6687
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !6687
  %i.by = icmp eq i32 %i.bu, 0
  br i1 %i.by, label %_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS5_4ExprENS5_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit
  %i.bz = load ptr, ptr %1, align 8, !tbaa !4678
  %i.ca = zext i32 %i.bu to i64                   ; 2 uses
  %i.cb = mul nuw nsw i64 %i.ca, 88
  %i.cc = add nuw nsw i64 %i.ca, 31
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1073741820
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bz, i64 noundef %i.cf, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !4677
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE4killEv.exit

_ZN4llvm8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS1_4ExprENS1_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang9OMPClauseENS_11SmallVectorISt4pairIPNS5_4ExprENS5_22OverloadedOperatorKindEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 144, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #36 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE19moveElementsForGrowEPS5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr %i.i, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12
  store i32 8, ptr %i.k, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !50
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(144) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.04.08.i.i.i.i.i.i) ; 0 uses
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 144 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 144
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7694
end_hunk_13
begin_hunk_14_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !4756
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !7731
  %i.ai = shl i32 %i.ah, 2
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.al = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.al)
  %i.am = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4756
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !7729
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !4676
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.an = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ao = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ap = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i64 %i.at, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !187
  %i.ba = or i32 %i.aw, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !187
  %i.bb = load i32, ptr %i.ag, align 8, !tbaa !7731
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ag, align 8, !tbaa !7731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = load i64, ptr %1, align 8, !tbaa !104
  store i64 %i.bd, ptr %i.ap, align 8, !tbaa !104
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.u, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4676, !noalias !7732 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7729, !noalias !7732 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4675, !noalias !7732 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %1, align 8, !tbaa !104 ; 3 uses
  %i.h = lshr i64 %.sroa.04.0.copyload, 9
  %i.i = xor i64 %i.h, %.sroa.04.0.copyload
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.g, %i.j                       ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.n = lshr i64 %i.l, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187
  %i.q = and i32 %i.k, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ %i.y, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.w, %bb.c ], [ %i.k, %bb.b ]
  %.sroa.0.0.copyload = load i64, ptr %i.t, align 8, !tbaa !104
  %i.u = icmp eq i64 %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.u, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.v = add nuw i32 %.01926, 1
  %i.w = and i32 %i.v, %i.g                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !187
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !7730

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ], [ %i.t, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.u, %bb.c ], [ %i.u, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !4756
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.613", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !4675
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !4676
  store ptr %i.y, ptr %i.q, align 8, !tbaa !7729
  store i32 0, ptr %i.p, align 16, !tbaa !7731
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !4756
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !4676
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7729
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4675 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7729 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !4676
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4675
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.av, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !tbaa !104 ; 3 uses
  %i.v = lshr i64 %.sroa.0.0.copyload.i, 9
  %i.w = xor i64 %i.v, %.sroa.0.0.copyload.i
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.k, %i.x                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 5                        ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !187
  %i.ad = and i32 %i.y, 31                        ; 2 uses
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %i.y, %bb.b ]
  %i.ag = add i32 %.014.i, 1
  %i.ah = and i32 %i.ag, %i.k                     ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 5                       ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !187
  %i.am = and i32 %i.ah, 31                       ; 2 uses
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !7737

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa12.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.ap, align 8, !tbaa !104
  %i.aq = shl nuw i32 1, %.lcssa.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !187
  %i.at = or i32 %i.as, %i.aq
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !187
  %i.au = add i32 %.0.i16, -1
  %i.av = and i32 %i.au, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.av, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7738

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !7739

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4675
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.aw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !7731
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !7731
  %i.ba = icmp eq i32 %i.aw, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bb = load ptr, ptr %1, align 8, !tbaa !4676
  %i.bc = zext i32 %i.aw to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !4675
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbNS_8ArrayRefIN5clang27OMPClauseMappableExprCommon17MappableComponentEEENS_3omp6ClauseEEE11callback_fnIZL17checkMapConflictsRNS2_4SemaEPN12_GLOBAL__N_110DSAStackTyEPKNS2_9ValueDeclEPKNS2_4ExprEbS5_S7_E3$_0EEblS5_S7_"(i64 noundef %0, ptr nofree readonly captures(address) %1, i64 %2, i32 noundef %3) #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %7 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %11 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %12 = alloca %"class.clang::SourceLocation", align 4 ; 5 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %15 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %18 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %19 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %20 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %21 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %22 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !4451
  %i.d = icmp eq i32 %i.c, %3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7740, !nonnull !12, !align !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1083, !nonnull !12, !align !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load i64, ptr %i.i, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp ugt i32 %i.k, 49
  br i1 %i.l, label %"_ZZL17checkMapConflictsRN5clang4SemaEPN12_GLOBAL__N_110DSAStackTyEPKNS_9ValueDeclEPKNS_4ExprEbN4llvm8ArrayRefINS_27OMPClauseMappableExprCommon17MappableComponentEEENSB_3omp6ClauseEENK3$_0clESF_SH_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i.i, -4
  %i.n = inttoptr i64 %i.m to ptr                 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7741, !noalias !7742 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !7745, !noalias !7742 ; 2 uses
  %.idx = shl nuw nsw i64 %i.r, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 2 uses
  %.idx48 = shl nuw nsw i64 %2, 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.idx48 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.v = icmp ne i64 %i.r, 0                      ; 2 uses
  %i.w = icmp ne i64 %2, 0
  %or.cond.i36 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i36, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.x = load i8, ptr %i.u, align 8, !tbaa !4450, !range !168, !noundef !12
  %i.y = trunc nuw i8 %i.x to i1
  br label %.lr.ph

bb.d:                                             ; preds = %bb.g
  %i.z = icmp ne ptr %i.ab, %i.p                  ; 2 uses
  %i.aa = icmp ne ptr %i.bc, %1
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %.lr.ph, label %.critedge.i, !llvm.loop !7746

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.0161.0.i38 = phi ptr [ %i.ab, %bb.d ], [ %i.s, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0130.0.i37 = phi ptr [ %i.bc, %bb.d ], [ %i.t, %.lr.ph.preheader ] ; 6 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0161.0.i38, i64 -16 ; 5 uses
  %.0.copyload.i.i.i.i62.i = load i64, ptr %i.ab, align 8
  %i.ac = and i64 %.0.copyload.i.i.i.i62.i, -4
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %.pre = load i16, ptr %i.ad, align 8            ; 2 uses
  br i1 %i.y, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.lr.ph
  %i.ae = and i16 %.pre, 511
  switch i16 %i.ae, label %.critedge2.i [
    i16 127, label %bb.f
    i16 128, label %bb.f
    i16 44, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.af = getelementptr inbounds i8, ptr %.sroa.0130.0.i37, i64 -16
  %.0.copyload.i.i.i.i65.i = load i64, ptr %i.af, align 8
  %i.ag = and i64 %.0.copyload.i.i.i.i65.i, -4
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = and i16 %i.ai, 511
  switch i16 %i.aj, label %.critedge2.i [
    i16 127, label %.critedge4.i
    i16 128, label %.critedge4.i
    i16 44, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %bb.f, %bb.f, %bb.f
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0130.0.i37, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !7740, !nonnull !12, !align !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #37
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 %i.ao, i32 noundef 4659) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %.0.copyload.i.i.i.i69.i = load i64, ptr %i.ab, align 8
  %i.ap = and i64 %.0.copyload.i.i.i.i69.i, -4
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #37
  store i64 %i.ar, ptr %5, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
end_hunk_14
begin_hunk_15_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E24lookupOrInsertIntoBucketIS5_JRbEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !7758
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !7711
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !7699
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !7759
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !7759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2548
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2548
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i8, ptr %2, align 1, !tbaa !105, !range !168, !noundef !12
  store i8 %i.bj, ptr %i.bi, align 8, !tbaa !105
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7699, !noalias !7760 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7711, !noalias !7760 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7712, !noalias !7760 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2548   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2548
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !7757

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !7758
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.4356", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !7712
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !7699
  store ptr %i.y, ptr %i.q, align 8, !tbaa !7711
  store i32 0, ptr %i.p, align 16, !tbaa !7759
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7758
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7699   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7711
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7712 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7711 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !7699
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7712
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2548 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !7765

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !2548
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !105, !range !168, !noundef !12
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !105
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !187
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7766

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !7767

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !7712
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !7759
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !7759
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !7712
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4TypeEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN5clang4Sema18getScopeForContextEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122VarOrFuncDeclFilterCCCD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_122VarOrFuncDeclFilterCCC17ValidateCandidateERKN5clang14TypoCorrectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %.not.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread, label %_ZNK5clang14TypoCorrection12getFoundDeclEv.exit.i

_ZNK5clang14TypoCorrection12getFoundDeclEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2021 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang14TypoCorrection12getFoundDeclEv.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 127                        ; 2 uses
  switch i32 %i.h, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread8 [
    i32 54, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit
    i32 55, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit
    i32 77, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit
    i32 79, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit
  ]

_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.i = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e) #37 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit._ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread8_crit_edge

_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit._ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread8_crit_edge: ; preds = %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre10 = and i32 %.pre, 127
  br label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread8

_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread8: ; preds = %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit._ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread8_crit_edge, %bb.b
  %.pre-phi = phi i32 [ %.pre10, %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit._ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread8_crit_edge ], [ %i.h, %bb.b ] ; 3 uses
  %i.j = phi ptr [ %i.i, %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit._ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread8_crit_edge ], [ %i.e, %bb.b ]
  %i.k = add nsw i32 %.pre-phi, -41
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread8
  %i.m = icmp eq i32 %.pre-phi, 41
  br i1 %i.m, label %bb.e, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread

bb.d:                                             ; preds = %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread8
  %i.n = add nsw i32 %.pre-phi, -35
  %i.o = icmp ult i32 %i.n, 6
  br i1 %i.o, label %bb.e, label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !7768, !nonnull !12, !align !13 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3008
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2031 ; 2 uses
  %.not.i3 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 616
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %.not.i3, ptr %i.u, ptr %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 680
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2262
  %i.y = tail call noundef zeroext i1 @_ZNK5clang4Sema13isDeclInScopeEPNS_9NamedDeclEPNS_11DeclContextEPNS_5ScopeEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.q, ptr noundef nonnull %i.j, ptr noundef %i.v, ptr noundef %i.x, i1 noundef zeroext false) #36
  br label %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread

_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK5clang14TypoCorrection12getFoundDeclEv.exit.i, %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit, %bb.d, %bb.e
  %.0 = phi i1 [ %i.y, %bb.e ], [ false, %bb.d ], [ false, %_ZNK5clang14TypoCorrection17getCorrectionDeclEv.exit ], [ false, %bb.a ], [ false, %_ZNK5clang14TypoCorrection12getFoundDeclEv.exit.i ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122VarOrFuncDeclFilterCCC5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.2539") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN12_GLOBAL__N_122VarOrFuncDeclFilterCCCESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35, !noalias !7770, !inline_history !7773 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !7770
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_122VarOrFuncDeclFilterCCCE, i64 16), ptr %i.a, align 8, !tbaa !101, !noalias !7770
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7768, !noalias !7770, !nonnull !12, !align !13
  store ptr %i.f, ptr %i.d, align 8, !tbaa !53, !noalias !7770
  store ptr %i.a, ptr %0, align 8, !tbaa !4778
  ret void
}

declare void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang15StmtVisitorBaseISt11add_pointer20GlobalDeclRefCheckervJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 8                ; 3 uses
  %i.b = and i16 %i.a, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.b, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8                ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !7779

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !7780
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.4398", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !104
  br label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit.thread, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !7786
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !104
  br label %bb.b

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !104
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE13maybeMoveFastEOSA_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !104 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !104
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !187 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bl, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1956 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !187 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !187 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !7787

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa13.i
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !1956
  %i.bi = shl nuw i32 1, %.lcssa.i
  %i.bj = or i32 %i.bi, %.lcssa11.i
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !187
  %i.bk = add i32 %.0.i20, -1
  %i.bl = and i32 %i.bk, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bl, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7788

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !7789

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bm = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bn = and i32 %i.bm, -2
  %i.bo = or disjoint i32 %.pre-phi, %i.bn
  store i32 %i.bo, ptr %0, align 8
  %i.bp = load i32, ptr %1, align 8               ; 3 uses
  %i.bq = and i32 %i.bp, 1
  %.not.i.i11 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.br = load i32, ptr %i.j, align 8, !tbaa !104 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.bu = zext i32 %i.br to i64                   ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #36
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ca = phi i32 [ %i.bp, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit ], [ %i.bp, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cb = and i32 %i.ca, -2
  store i32 %i.cb, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20GlobalDeclRefChecker16VisitDeclRefExprEPN5clang11DeclRefExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 127
  %i.f = add nsw i32 %i.e, -48
  %i.g = icmp ult i32 %i.f, -7
  %.not5 = icmp eq ptr %i.b, null
  %.not = or i1 %.not5, %i.g
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4576
  tail call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %i.b, ptr noundef %i.i) #36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %.not.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !191

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %0, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  store ptr %i.b, ptr %i.p, align 1
  %i.q = load i32, ptr %i.j, align 8, !tbaa !50
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20GlobalDeclRefChecker9VisitExprEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.1348", align 8 ; 6 uses
  %3 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.1348") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !104    ; 2 uses
  %i.d = icmp ne ptr %i.c, %.sroa.0.0.copyload
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp ne i64 %i.e, %.sroa.4.0.copyload
  %.not3.i5 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not3.i5, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.g = phi i64 [ %i.u, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.s, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.c, %bb.a ]
  %i.i = and i64 %i.g, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #36
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2047
  call void @_ZN5clang15StmtVisitorBaseISt11add_pointer20GlobalDeclRefCheckervJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.m)
  %i.n = load i64, ptr %i.b, align 8, !tbaa !2208 ; 2 uses
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.q = load ptr, ptr %3, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %3, align 8, !tbaa !104
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.d:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %.not.i = icmp ult i64 %i.n, 4
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_16
begin_hunk_17_@_ZN4llvm23SmallVectorTemplateBaseIN5clang27OMPClauseMappableExprCommon17MappableComponentELb1EE18growAndEmplaceBackIJRPNS1_18ArraySubscriptExprEDnRbEEERS3_DpOT_:bb.a
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang27OMPClauseMappableExprCommon17MappableComponentELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %0, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store i64 %i.g, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !50
  %i.p = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.p, ptr %i.h, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang27OMPClauseMappableExprCommon17MappableComponentELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang27OMPClauseMappableExprCommon17MappableComponentELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.p, %bb.c ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !49
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  ret ptr %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang27OMPClauseMappableExprCommon17MappableComponentELb1EE18growAndEmplaceBackIJRPNS1_16ArraySectionExprEDnbEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7808
  %i.b = load i8, ptr %3, align 1, !tbaa !105, !range !168, !noundef !12
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, -3
  %i.e = shl nuw nsw i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = or disjoint i64 %i.d, %i.f               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang27OMPClauseMappableExprCommon17MappableComponentELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.g, ptr null)
  %.pre = load i32, ptr %i.h, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang27OMPClauseMappableExprCommon17MappableComponentELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %0, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store i64 %i.g, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !50
  %i.p = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.p, ptr %i.h, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang27OMPClauseMappableExprCommon17MappableComponentELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang27OMPClauseMappableExprCommon17MappableComponentELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.p, %bb.c ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !49
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  ret ptr %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #24 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !261, !noalias !7810 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271, !noalias !7810 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !272, !noalias !7810 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [1184 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !187
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !190
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [1184 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !4597

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !4598
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #22 align 2 {
_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.2388", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !272
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 1184               ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !261
  store ptr %i.y, ptr %i.q, align 8, !tbaa !271
  store i32 0, ptr %i.p, align 16, !tbaa !4599
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !187
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !187
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !187
  call fastcc void @_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #22 align 2 {
bb.a:
  %.val8 = load ptr, ptr %1, align 8, !tbaa !261
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !272 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val11 = load ptr, ptr %i.c, align 8, !tbaa !271 ; 3 uses
  %.val9 = load ptr, ptr %0, align 8, !tbaa !261
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !272
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.h, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !187  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.j, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.j, %.lr.ph ], [ %i.bp, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [1184 x i8], ptr %.val8, i64 %i.n ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !190  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !187
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.015.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !187
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7815

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa13.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [1184 x i8], ptr %.val9, i64 %.lcssa13.i ; 6 uses
  store ptr %i.p, ptr %i.am, align 8, !tbaa !190
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i32 0, ptr %i.ap, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  store i32 8, ptr %i.aq, align 4, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !50
  %.not.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyC2EOS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.au = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(1172) %i.an, ptr noundef nonnull align 8 dereferenceable(1172) %i.at) ; 0 uses
  br label %_ZN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyC2EOS1_.exit.i

_ZN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyC2EOS1_.exit.i: ; preds = %bb.c, %._crit_edge.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 1176
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 1176
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !4600
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !4600
  %i.ay = shl nuw i32 1, %.lcssa.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %.lcssa12.i ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !187
  %i.bb = or i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !187
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49 ; 3 uses
  %i.be = load i32, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyC2EOS1_.exit.i
  %i.bf = zext i32 %i.be to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.bf, 144
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bh, %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i ], [ %i.bg, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -144 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !49 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -128
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @free(ptr noundef %i.bi) #36
  br label %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.not.i.i.i11.i = icmp eq ptr %i.bd, %i.bh
  br i1 %.not.i.i.i11.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2528

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !49
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, %_ZN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyC2EOS1_.exit.i
  %i.bl = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i ], [ %i.bd, %_ZN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyC2EOS1_.exit.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i
  tail call void @free(ptr noundef %i.bl) #36
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, %bb.e
  %i.bo = add i32 %.0.i19, -1
  %i.bp = and i32 %i.bo, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bp, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7816

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !7817

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !272
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bq = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load i32, ptr %i.br, align 8, !tbaa !4599
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val12, ptr %i.bs, align 8, !tbaa !4599
  %i.bt = icmp eq i32 %i.bq, 0
  br i1 %i.bt, label %_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bu = load ptr, ptr %1, align 8, !tbaa !261
  %i.bv = zext i32 %i.bq to i64                   ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bv, 1184
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 3
  %i.bz = and i64 %i.by, 1073741820
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bu, i64 noundef %i.ca, i64 noundef 8) #36
  store i32 0, ptr %i.b, align 4, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !49     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.h = zext i32 %i.g to i64
  %.idx.i = mul nuw nsw i64 %i.h, 144
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.j, %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i ], [ %i.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i, i64 -144 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05.i.i, i64 -128
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef %i.k) #36
  br label %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.e, %i.j
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2528

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !49
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, %bb.c
  %i.n = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i ], [ %i.e, %bb.c ] ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN5clanglsIA17_cEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_:bb.a
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(168) %i.aa) #36, !inline_history !1850
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %i.ae, %bb.e ], [ null, %bb.d ]
  store ptr %i.af, ptr %2, align 8, !tbaa !1845
  %i.ag = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ai = load i32, ptr %i.u, align 8, !tbaa !187
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !1847
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1851 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIA17_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1855
  %i.aq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ap) ; 2 uses
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !1851
  br label %_ZNK5clang17PartialDiagnosticlsIA17_cEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIA17_cEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.ar = phi ptr [ %i.aq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.an, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.as = ptrtoint ptr %1 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.ar, align 8, !tbaa !1856
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  store i8 1, ptr %i.aw, align 1, !tbaa !104
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !1851 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !1856 ; 2 uses
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 8, !tbaa !1856
  %i.bb = zext i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store i64 %i.as, ptr %i.bc, align 8, !tbaa !1063
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIA17_cEERKS0_RKT_.exit, %_ZN5clanglsIA17_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E15LookupBucketForIS6_EEbRKT_RPSE_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #24 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !211, !noalias !7819 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !221, !noalias !7819 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !222, !noalias !7819 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !187
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !224
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !4621

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !4622
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #22 align 2 {
_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEC2EjNS_12DenseMapBaseISE_S5_S8_SA_SD_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.2412", align 16 ; 8 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !222
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !211
  store ptr %i.y, ptr %i.q, align 8, !tbaa !221
  store i32 0, ptr %i.p, align 16, !tbaa !4623
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !4622
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !2258
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !187 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !187
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEC2EjNS_12DenseMapBaseISE_S5_S8_SA_SD_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEC2EjNS_12DenseMapBaseISE_S5_S8_SA_SD_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #22 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val8 = load i32, ptr %i.b, align 4, !tbaa !222 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.c, align 8, !tbaa !221 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !211
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val9 = load i32, ptr %i.d, align 4, !tbaa !222
  %i.e = add i32 %.val9, -1                       ; 2 uses
  %i.f = zext i32 %.val8 to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i23 = icmp eq i64 %i.h, 0
  br i1 %.not.i23, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val7, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !187  ; 2 uses
  %.not11.i21 = icmp eq i32 %i.j, 0
  br i1 %.not11.i21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph26
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit
  %.0.i22 = phi i32 [ %i.j, %.lr.ph ], [ %i.av, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i22, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !187
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.014.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !187
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, !llvm.loop !7824

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %.lcssa12.i ; 2 uses
  store i64 %i.q, ptr %i.am, align 8, !tbaa !1956
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !104
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !104
  %i.aq = shl nuw i32 1, %.lcssa.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %.lcssa11.i ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !187
  %i.at = or i32 %i.as, %i.aq
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !187
  %i.au = add i32 %.0.i22, -1
  %i.av = and i32 %i.au, %.0.i22                  ; 2 uses
  %.not11.i = icmp eq i32 %i.av, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7825

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, %.lr.ph26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph26, !llvm.loop !7826

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !222
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.aw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val8, %bb.a ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i32, ptr %i.ax, align 8, !tbaa !4623
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val11, ptr %i.ay, align 8, !tbaa !4623
  %i.az = icmp eq i32 %i.aw, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit
  %i.ba = load ptr, ptr %1, align 8, !tbaa !211
  %i.bb = zext i32 %i.aw to i64                   ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 4
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #36
  store i32 0, ptr %i.b, align 4, !tbaa !222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_16ArraySectionExprE(ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(20) ptr @_ZN4llvm25getKnownAssumptionStringsEv() local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

declare void @_ZNK5clang4Sema26PoppedFunctionScopeDeleterclEPNS_4sema17FunctionScopeInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1851   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit, label %bb.b

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1855
  %i.e = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.d) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !1851
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit, %bb.a
  %i.f = phi ptr [ %i.e, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.f, align 8, !tbaa !1856
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  store i8 0, ptr %i.j, align 1, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !1814
  %i.l = icmp eq ptr %1, null
  %i.m = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.81) #39
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %2, ptr %i.a, align 8, !tbaa !1063
  %i.n = icmp ugt i64 %2, 15
  br i1 %i.n, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #36 ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !1815
  %i.p = load i64, ptr %i.a, align 8, !tbaa !1063
  store i64 %i.p, ptr %i.k, align 8, !tbaa !104
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.o, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %2, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %1, align 1, !tbaa !104
  store i8 %i.r, ptr %i.q, align 1, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.s = load i64, ptr %i.a, align 8, !tbaa !1063 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !1816
  %i.u = load ptr, ptr %3, align 8, !tbaa !1815
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.w = load ptr, ptr %0, align 8, !tbaa !1851   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load i8, ptr %i.w, align 8, !tbaa !1856  ; 2 uses
  %i.z = add i8 %i.y, 1
  store i8 %i.z, ptr %i.w, align 8, !tbaa !1856
  %i.aa = zext i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa ; 9 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1815 ; 6 uses
end_hunk_18
begin_hunk_19_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !7881

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !7882
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1404", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !104
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !7888
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !104
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !104
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !104 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !104
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !187 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bl, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !190 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !187 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !187 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !7889

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa13.i
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !190
  %i.bi = shl nuw i32 1, %.lcssa.i
  %i.bj = or i32 %i.bi, %.lcssa11.i
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !187
  %i.bk = add i32 %.0.i20, -1
  %i.bl = and i32 %i.bk, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bl, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7890

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !7891

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bm = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bn = and i32 %i.bm, -2
  %i.bo = or disjoint i32 %.pre-phi, %i.bn
  store i32 %i.bo, ptr %0, align 8
  %i.bp = load i32, ptr %1, align 8               ; 3 uses
  %i.bq = and i32 %i.bp, 1
  %.not.i.i11 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.br = load i32, ptr %i.j, align 8, !tbaa !104 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.bu = zext i32 %i.br to i64                   ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #36
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ca = phi i32 [ %i.bp, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit ], [ %i.bp, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cb = and i32 %i.ca, -2
  store i32 %i.cb, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal noundef zeroext i1 @_ZN4llvm12function_refIFbNS_8ArrayRefIN5clang27OMPClauseMappableExprCommon17MappableComponentEEENS_3omp6ClauseEEE11callback_fnIZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPNS2_10MemberExprEEUlS5_S7_E_EEblS5_S7_(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, i32 %3) #32 align 2 {
bb.a:
  %i.a = getelementptr [16 x i8], ptr %1, i64 %2
  %i.b = getelementptr i8, ptr %i.a, i64 -16
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i, -4
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3477
  %i.g = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #37
  %i.h = load i16, ptr %i.g, align 8
  %i.i = and i16 %i.h, 511
  %i.j = icmp eq i16 %i.i, 100
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4llvm12function_refIFbNS_3omp6ClauseEbEE11callback_fnIZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPN5clang10MemberExprEEUlS2_bE_EEblS2_b(i64 %0, i32 noundef %1, i1 noundef zeroext %2) #20 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 102
  %i.b = xor i1 %2, true
  %i.c = and i1 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4llvm12function_refIFbNS_3omp9DirectiveEEE11callback_fnIZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPN5clang10MemberExprEEUlS2_E_EEblS2_(i64 %0, i32 noundef %1) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5clang25isOpenMPParallelDirectiveEN4llvm3omp9DirectiveE(i32 noundef %1) #36
  br i1 %i.a, label %_ZZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPN5clang10MemberExprEENKUlN4llvm3omp9DirectiveEE_clES6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5clang28isOpenMPWorksharingDirectiveEN4llvm3omp9DirectiveE(i32 noundef %1) #36
  br i1 %i.b, label %_ZZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPN5clang10MemberExprEENKUlN4llvm3omp9DirectiveEE_clES6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN5clang22isOpenMPTeamsDirectiveEN4llvm3omp9DirectiveE(i32 noundef %1) #36
  br label %_ZZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPN5clang10MemberExprEENKUlN4llvm3omp9DirectiveEE_clES6_.exit

_ZZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPN5clang10MemberExprEENKUlN4llvm3omp9DirectiveEE_clES6_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4llvm12function_refIFbNS_8ArrayRefIN5clang27OMPClauseMappableExprCommon17MappableComponentEEENS_3omp6ClauseEEE11callback_fnIZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPNS2_10MemberExprEEUlS5_S7_E0_EEblS5_S7_(i64 noundef %0, ptr nofree readonly captures(address) %1, i64 %2, i32 %3) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7892 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !49, !noalias !7894 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val4 = load i32, ptr %i.b, align 8, !tbaa !50, !noalias !7894
  %i.c = zext i32 %.val.val4 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val.val, i64 %i.c
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %bb.a
  %.sroa.08.0.i = phi ptr [ %i.d, %bb.a ], [ %i.g, %bb.j ] ; 2 uses
  %.sroa.03.0.i = phi ptr [ %i.e, %bb.a ], [ %i.f, %bb.j ] ; 3 uses
  %.not17.i = icmp eq ptr %.sroa.03.0.i, %1
  br i1 %.not17.i, label %_ZZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPN5clang10MemberExprEENKUlN4llvm8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS4_3omp6ClauseEE0_clES8_SA_.exit, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.f = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -16 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -16 ; 3 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i, -4
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 511                        ; 2 uses
  %.0.copyload.i.i.i.i26.i = load i64, ptr %i.f, align 8
  %i.l = and i64 %.0.copyload.i.i.i.i26.i, -4
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, 511                        ; 2 uses
  %.not.i = icmp eq i16 %i.k, %i.o
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i16 %i.o, label %_ZZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPN5clang10MemberExprEENKUlN4llvm8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS4_3omp6ClauseEE0_clES8_SA_.exit [
    i16 128, label %bb.d
    i16 44, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %.not18.i = icmp eq i16 %i.k, 127
  br i1 %.not18.i, label %bb.e, label %_ZZN12_GLOBAL__N_114DSAAttrChecker15VisitMemberExprEPN5clang10MemberExprEENKUlN4llvm8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS4_3omp6ClauseEE0_clES8_SA_.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.p = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1919 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1919 ; 3 uses
  %.not23.i = icmp eq ptr %i.q, null
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !101
end_hunk_19
begin_hunk_20_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !7917

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4764
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1391", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !104
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4763
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !104
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !104
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE13maybeMoveFastEOSD_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !104 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !104
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #36
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !187 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !190 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !187 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !187 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !7923

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa13.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !190
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1077
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !1077
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = or i32 %i.bl, %.lcssa11.i
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !187
  %i.bn = add i32 %.0.i20, -1
  %i.bo = and i32 %i.bn, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7924

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !7925

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !104 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #36
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS5_4ExprELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN4llvm12function_refIFbNS_8ArrayRefIN5clang27OMPClauseMappableExprCommon17MappableComponentEEENS_3omp6ClauseEEE11callback_fnIZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPNS2_11DeclRefExprEEUlS5_S7_E_EEblS5_S7_(i64 noundef %0, ptr nofree readonly captures(none) %1, i64 %2, i32 %3) #6 align 2 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEENKUlN4llvm8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS4_3omp6ClauseEE_clES8_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8
  %.idx.i = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1919
  %i.e = icmp eq ptr %i.d, %.val
  br label %_ZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEENKUlN4llvm8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS4_3omp6ClauseEE_clES8_SA_.exit

_ZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEENKUlN4llvm8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS4_3omp6ClauseEE_clES8_SA_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang21OpenMPMapModifierKindELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN4llvm12function_refIFbNS_8ArrayRefIN5clang27OMPClauseMappableExprCommon17MappableComponentEEENS_3omp6ClauseEEE11callback_fnIZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPNS2_11DeclRefExprEEUlS5_S7_E0_EEblS5_S7_(i64 noundef %0, ptr nofree readonly captures(address) %1, i64 %2, i32 %3) #6 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7868
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2391
  %i.c = getelementptr i8, ptr %.val.val, i64 216
  %.val.val.val = load ptr, ptr %i.c, align 8, !tbaa !1083
  %i.d = getelementptr i8, ptr %.val.val.val, i64 64
  %.val.val.val.val = load i64, ptr %i.d, align 8
  %i.e = trunc i64 %.val.val.val.val to i32
  %i.f = icmp ugt i32 %i.e, 49
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i64 %2, 0
  br label %_ZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEENKUlN4llvm8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS4_3omp6ClauseEE0_clES8_SA_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %_ZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEENKUlN4llvm8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS4_3omp6ClauseEE0_clES8_SA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 3 uses
  %.idx.i = shl nuw nsw i64 %2, 4
  %i.k = add nsw i64 %.idx.i, -16                 ; 3 uses
  %i.l = ashr i64 %i.k, 6                         ; 3 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.d
  %i.n = mul nsw i64 %i.l, -64                    ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.j, i64 %i.n
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEENKUlN4llvm8ArrayRefINS4_27OMPClauseMappableExprCommon17MappableComponentEEENS7_3omp6ClauseEE0_clESB_SD_EUlRKSA_E_EclISt16reverse_iteratorIPSF_EEEbT_.exit17.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.039.i.i.i.i.i.i = phi i64 [ %i.ar, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEENKUlN4llvm8ArrayRefINS4_27OMPClauseMappableExprCommon17MappableComponentEEENS7_3omp6ClauseEE0_clESB_SD_EUlRKSA_E_EclISt16reverse_iteratorIPSF_EEEbT_.exit17.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.o = phi ptr [ %i.ak, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEENKUlN4llvm8ArrayRefINS4_27OMPClauseMappableExprCommon17MappableComponentEEENS7_3omp6ClauseEE0_clESB_SD_EUlRKSA_E_EclISt16reverse_iteratorIPSF_EEEbT_.exit17.i.i.i.i.i.i ], [ %i.j, %.lr.ph.i.preheader.i.i.i.i.i ] ; 10 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -16      ; 3 uses
  %i.q = getelementptr i8, ptr %i.o, i64 -8
  %.val7.val8.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !1919, !noalias !7926
  %i.r = icmp eq ptr %.val7.val8.i.i.i.i.i.i, null
  br i1 %i.r, label %bb.e, label %_ZN4llvm6all_ofINS_14iterator_rangeISt16reverse_iteratorIPKN5clang27OMPClauseMappableExprCommon17MappableComponentEEEEZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPNS3_11DeclRefExprEENKUlNS_8ArrayRefIS5_EENS_3omp6ClauseEE0_clESF_SH_EUlRS6_E_EEbOT_T0_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.val7.val.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !7926
  %i.s = and i64 %.val7.val.i.i.i.i.i.i, -4
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i16, ptr %i.t, align 8, !noalias !7926
  %i.v = and i16 %i.u, 511
  switch i16 %i.v, label %_ZN4llvm6all_ofINS_14iterator_rangeISt16reverse_iteratorIPKN5clang27OMPClauseMappableExprCommon17MappableComponentEEEEZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPNS3_11DeclRefExprEENKUlNS_8ArrayRefIS5_EENS_3omp6ClauseEE0_clESF_SH_EUlRS6_E_EEbOT_T0_.exit.i [
    i16 128, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEENKUlN4llvm8ArrayRefINS4_27OMPClauseMappableExprCommon17MappableComponentEEENS7_3omp6ClauseEE0_clESB_SD_EUlRKSA_E_EclISt16reverse_iteratorIPSF_EEEbT_.exit.i.i.i.i.i.i
    i16 44, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEENKUlN4llvm8ArrayRefINS4_27OMPClauseMappableExprCommon17MappableComponentEEENS7_3omp6ClauseEE0_clESB_SD_EUlRKSA_E_EclISt16reverse_iteratorIPSF_EEEbT_.exit.i.i.i.i.i.i
end_hunk_20
begin_hunk_21_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !6521
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !7944
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !6522
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2579
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !6521
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !6521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1077
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1077
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2579, !noalias !7945 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6522, !noalias !7945 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2578, !noalias !7945 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1077   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1077
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !7943

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !7944
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.500", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2578
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2579
  store ptr %i.y, ptr %i.q, align 8, !tbaa !6522
  store i32 0, ptr %i.p, align 16, !tbaa !6521
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7944
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2579   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6522
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2578 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !6522 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2579
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2578
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1077 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !7950

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1077
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !187
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7951

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !7952

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2578
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !6521
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !6521
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !2578
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang20OMPClauseWithPreInitELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8copyFromERKSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 4
  %i.j = add nuw nsw i64 %i.h, 31
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 1073741820
  %i.m = add nuw nsw i64 %i.l, %i.i
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.g, i64 noundef %i.m, i64 noundef 8) #36
  store i32 0, ptr %i.c, align 8, !tbaa !104
  %.pre = load i32, ptr %0, align 8
  %.pre20 = and i32 %.pre, 1
  br label %_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIPKN5clang9ValueDeclEPKNS1_4ExprELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.pre-phi = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ %.pre20, %bb.c ]
  store i32 %.pre-phi, ptr %0, align 8
  %i.n = load i32, ptr %1, align 8
end_hunk_21
begin_hunk_22_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIS5_JRS8_EEESt4pairIPSD_bEOT_DpOT0_:bb.a
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !7964
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3260
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !3248
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !7965
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !7965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1956
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1956
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load ptr, ptr %2, align 8, !tbaa !1077
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !1077
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3248, !noalias !7966 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3260, !noalias !7966 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3261, !noalias !7966 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1956   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1956
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !7963

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !7964
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1437", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3261
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3248
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3260
  store i32 0, ptr %i.p, align 16, !tbaa !7965
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7964
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang4DeclEPKNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclEPKNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4DeclEPKNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3248   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3260
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3261 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3260 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3248
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3261
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1956 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !7971

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1956
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1077
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1077
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !187
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7972

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !7973

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3261
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !7965
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !7965
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang4DeclEPKNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !3261
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclEPKNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang4DeclEPKNS1_4ExprENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS5_4ExprENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !3248, !noalias !7974 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3260, !noalias !7974 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3261, !noalias !7974 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1956   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !187
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !189

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1956
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !187
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !192, !llvm.loop !7963

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !7964
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !7965
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !7964
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3260
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !3248
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPKNS2_4ExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !7965
end_hunk_22
begin_hunk_23_@_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE8swapImplERS9_:bb.a

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.en = load i32, ptr %i.em, align 8, !tbaa !2179
  store i32 %i.en, ptr %i.el, align 8, !tbaa !2179
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !1807
  store i32 %i.es, ptr %i.eq, align 8, !tbaa !1807
  %i.et = load i64, ptr %i.ep, align 8
  store i64 %i.et, ptr %i.eo, align 8
  store i32 0, ptr %i.er, align 8, !tbaa !1807
  br label %.preheader79

bb.z:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !2179
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !2179
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !1807
  store i32 %i.fb, ptr %i.ez, align 8, !tbaa !1807
  %i.fc = load i64, ptr %i.ey, align 8
  store i64 %i.fc, ptr %i.ex, align 8
  store i32 0, ptr %i.fa, align 8, !tbaa !1807
  br label %.preheader79

.preheader79:                                     ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  %i.fd = load i32, ptr %i.l, align 8, !tbaa !187
  %i.fe = load i32, ptr %i.m, align 8, !tbaa !187
  store i32 %i.fe, ptr %i.l, align 8, !tbaa !187
  store i32 %i.fd, ptr %i.m, align 8, !tbaa !187
  br label %bb.ak

bb.aa:                                            ; preds = %bb.a
  br i1 %.not72, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !tbaa.struct !7988
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false), !tbaa.struct !7988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !7988
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ak

bb.ac:                                            ; preds = %bb.b, %bb.aa
  %i.fh = phi i32 [ %i.j, %bb.b ], [ %i.i, %bb.aa ]
  %i.fi = phi ptr [ %1, %bb.b ], [ %0, %bb.aa ]   ; 14 uses
  %i.fj = phi ptr [ %0, %bb.b ], [ %1, %bb.aa ]   ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i64 24, i1 false), !tbaa.struct !7988
  %i.fl = or i32 %i.fh, 1
  store i32 %i.fl, ptr %i.fi, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 104 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fo = load i32, ptr %i.fm, align 8, !tbaa !187 ; 2 uses
  %i.fp = trunc i32 %i.fo to i1
  br i1 %i.fp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fq = load i32, ptr %i.fn, align 8, !tbaa !2179
  store i32 %i.fq, ptr %i.fk, align 8, !tbaa !2179
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !1807
  store i32 %i.fv, ptr %i.ft, align 8, !tbaa !1807
  %i.fw = load i64, ptr %i.fs, align 8
  store i64 %i.fw, ptr %i.fr, align 8
  store i32 0, ptr %i.fu, align 8, !tbaa !1807
  %.pre = load i32, ptr %i.fm, align 8, !tbaa !187
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.fx = phi i32 [ %i.fo, %bb.ac ], [ %.pre, %bb.ad ] ; 2 uses
  %i.fy = and i32 %i.fx, 2
  %.not87 = icmp eq i32 %i.fy, 0
  br i1 %.not87, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !2179
  store i32 %i.gb, ptr %i.fz, align 8, !tbaa !2179
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fj, i64 48 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !1807
  store i32 %i.gg, ptr %i.ge, align 8, !tbaa !1807
  %i.gh = load i64, ptr %i.gd, align 8
  store i64 %i.gh, ptr %i.gc, align 8
  store i32 0, ptr %i.gf, align 8, !tbaa !1807
  %.pre84 = load i32, ptr %i.fm, align 8, !tbaa !187
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gi = phi i32 [ %.pre84, %bb.af ], [ %i.fx, %bb.ae ] ; 2 uses
  %i.gj = and i32 %i.gi, 4
  %.not88 = icmp eq i32 %i.gj, 0
  br i1 %.not88, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !2179
  store i32 %i.gm, ptr %i.gk, align 8, !tbaa !2179
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.go = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fi, i64 72
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fj, i64 72 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !1807
  store i32 %i.gr, ptr %i.gp, align 8, !tbaa !1807
  %i.gs = load i64, ptr %i.go, align 8
  store i64 %i.gs, ptr %i.gn, align 8
  store i32 0, ptr %i.gq, align 8, !tbaa !1807
  %.pre85 = load i32, ptr %i.fm, align 8, !tbaa !187
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gt = phi i32 [ %.pre85, %bb.ah ], [ %i.gi, %bb.ag ] ; 2 uses
  %i.gu = and i32 %i.gt, 8
  %.not89 = icmp eq i32 %i.gu, 0
  br i1 %.not89, label %.preheader, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fi, i64 80
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !2179
  store i32 %i.gx, ptr %i.gv, align 8, !tbaa !2179
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fi, i64 88
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fj, i64 88
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fi, i64 96
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fj, i64 96 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !1807
  store i32 %i.hc, ptr %i.ha, align 8, !tbaa !1807
  %i.hd = load i64, ptr %i.gz, align 8
  store i64 %i.hd, ptr %i.gy, align 8
  store i32 0, ptr %i.hb, align 8, !tbaa !1807
  %.pre86 = load i32, ptr %i.fm, align 8, !tbaa !187
  br label %.preheader

.preheader:                                       ; preds = %bb.aj, %bb.ai
  %i.he = phi i32 [ %.pre86, %bb.aj ], [ %i.gt, %bb.ai ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fi, i64 104
  store i32 %i.he, ptr %i.hf, align 8, !tbaa !187
  %i.hg = load i32, ptr %i.fj, align 8
  %i.hh = and i32 %i.hg, -2
  store i32 %i.hh, ptr %i.fj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !7988
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader79, %.preheader, %bb.ab
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 4   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !187  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1807
  %i.z = icmp ugt i32 %i.y, 64
  br i1 %i.z, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !104 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #38
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ad = add i32 %.0.i5.i, -1
  %i.ae = and i32 %i.ad, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3393

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !3394

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ag = and i32 %i.af, 1
  %.not.i9 = icmp eq i32 %i.ag, 0
  br i1 %.not.i9, label %bb.e, label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !104 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #36
  store i32 0, ptr %i.c, align 8, !tbaa !104
  %.pre23 = load i32, ptr %0, align 8
  %.pre29 = and i32 %.pre23, 1
  br label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit, %bb.e, %bb.f
  %.pre-phi = phi i32 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit ], [ 0, %bb.e ], [ %.pre29, %bb.f ]
  store i32 %.pre-phi, ptr %0, align 8
  %i.ar = load i32, ptr %1, align 8
  %i.as = and i32 %i.ar, 1
  %.not.i10 = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = select i1 %.not.i10, i32 %i.au, i32 4   ; 3 uses
  %i.aw = icmp ult i32 %i.av, 5
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit
  store i32 1, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre26 = load i32, ptr %i.c, align 8
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre28 = load ptr, ptr %.phi.trans.insert27, align 8
  br label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit

bb.h:                                             ; preds = %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit
  store i32 0, ptr %0, align 8
  %i.ax = zext i32 %i.av to i64                   ; 2 uses
  %i.ay = mul nuw nsw i64 %i.ax, 24               ; 2 uses
  %i.az = add nuw nsw i64 %i.ax, 31
  %i.ba = lshr i64 %i.az, 3
  %i.bb = and i64 %i.ba, 1073741820
  %i.bc = add nuw nsw i64 %i.bb, %i.ay
  %i.bd = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.bc, i64 noundef 8) #36 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ay ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !104
  store i32 %i.av, ptr %i.c, align 8, !tbaa !104
  %.pre24 = load i32, ptr %0, align 8
  %i.bh = and i32 %.pre24, 1
  br label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit

_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit: ; preds = %bb.h, %bb.g
  %i.bi = phi ptr [ %i.bf, %bb.h ], [ %.pre28, %bb.g ]
  %i.bj = phi i32 [ %i.au, %bb.h ], [ %.pre26, %bb.g ]
  %i.bk = phi ptr [ %i.bd, %bb.h ], [ %.pre25, %bb.g ]
  %i.bl = phi i32 [ %i.bh, %bb.h ], [ 1, %bb.g ]  ; 2 uses
  %i.bm = load i32, ptr %1, align 8
  %i.bn = and i32 %i.bm, -2
  %i.bo = or disjoint i32 %i.bl, %i.bn
  store i32 %i.bo, ptr %0, align 8
  %.not.i.i.i11 = icmp eq i32 %i.bl, 0            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = select i1 %.not.i.i.i11, ptr %i.bk, ptr %i.bp
  %i.br = load i32, ptr %1, align 8
  %i.bs = and i32 %i.br, 1
  %.not.i12 = icmp eq i32 %i.bs, 0                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = select i1 %.not.i12, ptr %i.bu, ptr %i.bt
  %i.bw = select i1 %.not.i.i.i11, i32 %i.bj, i32 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = select i1 %.not.i.i.i11, ptr %i.bi, ptr %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = select i1 %.not.i12, ptr %i.cb, ptr %i.bz
  %i.cd = zext i32 %i.bw to i64
  %i.ce = add nuw nsw i64 %i.cd, 31
  %i.cf = lshr i64 %i.ce, 5                       ; 3 uses
  %i.cg = shl nuw nsw i64 %i.cf, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.by, ptr align 4 %i.cc, i64 %i.cg, i1 false)
  %.not.i19 = icmp eq i64 %i.cf, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !187 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.ci, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.cj = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.ci, %.lr.ph ], [ %i.cy, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.ck = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.cl = or disjoint i32 %i.ck, %i.cj
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.cm ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !2179
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !2179
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !1807 ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !1807
  %i.cv = icmp ult i32 %i.cu, 65
  br i1 %i.cv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cw = load i64, ptr %i.cr, align 8, !tbaa !104
  store i64 %i.cw, ptr %i.cq, align 8, !tbaa !104
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.cq, ptr noundef nonnull align 8 dereferenceable(12) %i.cr) #36
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit: ; preds = %bb.j, %bb.k
  %i.cx = add i32 %.0.i18, -1
  %i.cy = and i32 %i.cx, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cy, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.i, !llvm.loop !7991

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.cf
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21, !llvm.loop !7992

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(112) ptr @_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEaSEOS9_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 4   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !187  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1807
  %i.z = icmp ugt i32 %i.y, 64
  br i1 %i.z, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !104 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #38
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ad = add i32 %.0.i5.i, -1
  %i.ae = and i32 %i.ad, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3393

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !3394

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ag = and i32 %i.af, 1
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.e, label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !104 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #36
  store i32 0, ptr %i.c, align 8, !tbaa !104
  br label %_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit, %bb.e, %bb.f
  store i32 1, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.ar, align 8
  tail call void @_ZN4llvm13SmallDenseMapINS_3omp13TraitPropertyENS_5APIntELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE8swapImplERS9_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbRPN5clang4ExprEbEE11callback_fnIZNS1_10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS1_9OpaquePtrINS1_12DeclGroupRefEEES3_RNS1_12OMPTraitInfoEjNS1_11SourceRangeEE3$_1EEblS4_b"(i64 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i1 zeroext %2) #6 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !1077  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %"_ZZN5clang10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS_9OpaquePtrINS_12DeclGroupRefEEEPNS_4ExprERNS_12OMPTraitInfoEjNS_11SourceRangeEENK3$_1clERS5_b.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i24, ptr %.val, align 8             ; 2 uses
  %i.b = and i24 %i.a, 212992
  %or.cond3.not.i = icmp eq i24 %i.b, 0
  br i1 %or.cond3.not.i, label %bb.c, label %"_ZZN5clang10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS_9OpaquePtrINS_12DeclGroupRefEEEPNS_4ExprERNS_12OMPTraitInfoEjNS_11SourceRangeEENK3$_1clERS5_b.exit"

bb.c:                                             ; preds = %bb.b
  %i.c = and i24 %i.a, 32768
  %i.d = icmp ne i24 %i.c, 0
  br label %"_ZZN5clang10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS_9OpaquePtrINS_12DeclGroupRefEEEPNS_4ExprERNS_12OMPTraitInfoEjNS_11SourceRangeEENK3$_1clERS5_b.exit"

"_ZZN5clang10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS_9OpaquePtrINS_12DeclGroupRefEEEPNS_4ExprERNS_12OMPTraitInfoEjNS_11SourceRangeEENK3$_1clERS5_b.exit": ; preds = %bb.a, %bb.b, %bb.c
  %i.e = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbRPN5clang4ExprEbEE11callback_fnIZNS1_10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS1_9OpaquePtrINS1_12DeclGroupRefEEES3_RNS1_12OMPTraitInfoEjNS1_11SourceRangeEE3$_2EEblS4_b"(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !3404 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1077   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %"_ZZN5clang10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS_9OpaquePtrINS_12DeclGroupRefEEEPNS_4ExprERNS_12OMPTraitInfoEjNS_11SourceRangeEENK3$_2clERS5_b.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %.val) #36
  %i.d = tail call noundef zeroext i1 @_ZNK5clang4Expr21isIntegerConstantExprERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(23904) %i.c) #36
  br i1 %i.d, label %"_ZZN5clang10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS_9OpaquePtrINS_12DeclGroupRefEEEPNS_4ExprERNS_12OMPTraitInfoEjNS_11SourceRangeEENK3$_2clERS5_b.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.e = load ptr, ptr %1, align 8, !tbaa !1077
  %i.f = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #37
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %.val, i32 %i.f, i32 noundef 7470) #36
  %i.g = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_4ExprEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr null, ptr %1, align 8, !tbaa !1077
  br label %"_ZZN5clang10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS_9OpaquePtrINS_12DeclGroupRefEEEPNS_4ExprERNS_12OMPTraitInfoEjNS_11SourceRangeEENK3$_2clERS5_b.exit"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.h = load ptr, ptr %1, align 8, !tbaa !1077
  %i.i = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #37
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %.val, i32 %i.i, i32 noundef 4557) #36
  %i.j = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_4ExprEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %"_ZZN5clang10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS_9OpaquePtrINS_12DeclGroupRefEEEPNS_4ExprERNS_12OMPTraitInfoEjNS_11SourceRangeEENK3$_2clERS5_b.exit"

"_ZZN5clang10SemaOpenMP33checkOpenMPDeclareVariantFunctionENS_9OpaquePtrINS_12DeclGroupRefEEEPNS_4ExprERNS_12OMPTraitInfoEjNS_11SourceRangeEENK3$_2clERS5_b.exit": ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0.i
}

declare i64 @_ZNK5clang18MacroQualifiedType7desugarEv(ptr noundef nonnull align 16 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6insertIPKS3_vEEPS3_S8_T_S9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 10 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 8) #36
  %.pre8.pre.i = load i32, ptr %i.e, align 8, !tbaa !50
  %.pre62.pre = load ptr, ptr %0, align 8, !tbaa !49
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %.pre62 = phi ptr [ %i.a, %bb.b ], [ %.pre62.pre, %bb.c ] ; 2 uses
  %.pre8.i = phi i32 [ %i.f, %bb.b ], [ %.pre8.pre.i, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6appendIPKS3_vEEvT_S8_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i
  %i.t = zext i32 %.pre8.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre62, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 8 %2, i64 %i.l, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !50
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !49
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6appendIPKS3_vEEvT_S8_.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6appendIPKS3_vEEvT_S8_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i, %bb.d
  %i.v = phi ptr [ %.pre62, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i ], [ %.pre61, %bb.d ]
  %i.w = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i ], [ %.pre.i, %bb.d ]
  %i.x = trunc i64 %i.m to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.e, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  br label %_ZSt4copyIPKPN5clang4ExprEPS2_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.a
  %.idx52 = sub i64 0, %i.l
  %i.aa = ashr exact i64 %i.l, 3                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, %i.g                 ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E24lookupOrInsertIntoBucketIRKS4_JbEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8018
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4473
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !4469
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4474
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !4458
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !4458
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i8, ptr %2, align 1, !tbaa !105, !range !168, !noundef !12
  store i8 %i.bj, ptr %i.bi, align 8, !tbaa !105
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4469, !noalias !8019 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4473, !noalias !8019 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4466, !noalias !8019 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !4458   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4458
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !8017

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !8018
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2133", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !4466
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !4469
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4473
  store i32 0, ptr %i.p, align 16, !tbaa !4474
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !8018
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit

_ZN4llvm8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !4469   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4473
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4466 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4473 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !4469
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4466
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4458 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !8024

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !4458
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !105, !range !168, !noundef !12
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !105
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !187
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !8025

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !8026

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4466
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !4474
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !4474
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !4466
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEE4killEv.exit

_ZN4llvm8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !4469, !noalias !8027 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4473, !noalias !8027 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4466, !noalias !8027 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !4458   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !187
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !189

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4458
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !187
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !192, !llvm.loop !8017

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !8018
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4474
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8018
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4473
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !4469
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4474
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !4458
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !4458
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 0, ptr %i.bi, align 8, !tbaa !105
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_24
begin_hunk_25_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !8039
  %i.ai = shl i32 %i.ah, 2
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.al = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.al)
  %i.am = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8038
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4495
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !4485
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.an = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ao = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ap = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 4                 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i64 %i.at, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !187
  %i.ba = or i32 %i.aw, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !187
  %i.bb = load i32, ptr %i.ag, align 8, !tbaa !8039
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ag, align 8, !tbaa !8039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = load i64, ptr %1, align 8, !tbaa !104
  store i64 %i.bd, ptr %i.ap, align 8, !tbaa !104
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 0, ptr %i.be, align 8, !tbaa !58
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.u, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4485, !noalias !8040 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4495, !noalias !8040 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4482, !noalias !8040 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %1, align 8, !tbaa !104 ; 3 uses
  %i.h = lshr i64 %.sroa.04.0.copyload, 9
  %i.i = xor i64 %i.h, %.sroa.04.0.copyload
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.g, %i.j                       ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.n = lshr i64 %i.l, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187
  %i.q = and i32 %i.k, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ %i.y, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.w, %bb.c ], [ %i.k, %bb.b ]
  %.sroa.0.0.copyload = load i64, ptr %i.t, align 8, !tbaa !104
  %i.u = icmp eq i64 %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.u, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.v = add nuw i32 %.01926, 1
  %i.w = and i32 %i.v, %i.g                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !187
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !8037

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ], [ %i.t, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.u, %bb.c ], [ %i.u, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !8038
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2131", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !4482
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !4485
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4495
  store i32 0, ptr %i.p, align 16, !tbaa !8039
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !8038
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang8QualTypeENS1_14SourceLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIN5clang8QualTypeENS1_14SourceLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang8QualTypeENS1_14SourceLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !4485
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4495
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4482 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4495 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !4485
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4482
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS5_14SourceLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !tbaa !104 ; 3 uses
  %i.v = lshr i64 %.sroa.0.0.copyload.i, 9
  %i.w = xor i64 %i.v, %.sroa.0.0.copyload.i
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.k, %i.x                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 5                        ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !187
  %i.ad = and i32 %i.y, 31                        ; 2 uses
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %i.y, %bb.b ]
  %i.ag = add i32 %.014.i, 1
  %i.ah = and i32 %i.ag, %i.k                     ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 5                       ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !187
  %i.am = and i32 %i.ah, 31                       ; 2 uses
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !8045

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.ap, align 8, !tbaa !104
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !187
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !187
  %i.at = shl nuw i32 1, %.lcssa.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !187
  %i.aw = or i32 %i.av, %i.at
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !187
  %i.ax = add i32 %.0.i17, -1
  %i.ay = and i32 %i.ax, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !8046

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS2_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS5_14SourceLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !8047

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS5_14SourceLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4482
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS5_14SourceLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS5_14SourceLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS5_14SourceLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.az = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS5_14SourceLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !8039
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !8039
  %i.bd = icmp eq i32 %i.az, 0
  br i1 %i.bd, label %_ZN4llvm8DenseMapIN5clang8QualTypeENS1_14SourceLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS5_14SourceLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.be = load ptr, ptr %1, align 8, !tbaa !4485
  %i.bf = zext i32 %i.az to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.be, i64 noundef %i.bk, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !4482
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang8QualTypeENS1_14SourceLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang8QualTypeENS1_14SourceLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang8QualTypeENS5_14SourceLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E24lookupOrInsertIntoBucketIRKS4_JbEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !4516, !noalias !8048 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4520, !noalias !8048 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4513, !noalias !8048 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !4505   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !187
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !189

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4505
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !187
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !192, !llvm.loop !8053

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !8054
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4521
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8054
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4520
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !4516
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4521
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !4505
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !4505
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i8, ptr %2, align 1, !tbaa !105, !range !168, !noundef !12
  store i8 %i.bj, ptr %i.bi, align 8, !tbaa !105
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4516, !noalias !8055 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4520, !noalias !8055 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4513, !noalias !8055 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !4505   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !187
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !189

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4505
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !192, !llvm.loop !8053

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !8054
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2156", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !4513
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !4516
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4520
  store i32 0, ptr %i.p, align 16, !tbaa !4521
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !2258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !8054
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !2258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !2258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !2258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !187 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !187
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !187
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !187
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !187
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit

_ZN4llvm8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !4516   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4520
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4513 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4520 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !4516
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4513
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4505 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !187 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !8060

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !4505
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !105, !range !168, !noundef !12
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !105
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !187
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !8061

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !8062

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4513
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !4521
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !4521
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #36
  store i32 0, ptr %i.d, align 4, !tbaa !4513
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEE4killEv.exit

_ZN4llvm8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !4516, !noalias !8063 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4520, !noalias !8063 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4513, !noalias !8063 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !4505   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !187
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !189

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4505
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !191

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !187
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !192, !llvm.loop !8053

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !8054
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4521
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8054
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4520
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !4516
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !187
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4521
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !4505
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !4505
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 0, ptr %i.bi, align 8, !tbaa !105
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang20OMPDeclareMapperDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP24DeclareTargetContextInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_25
