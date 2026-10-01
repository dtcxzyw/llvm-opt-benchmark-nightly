Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 282
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN5boost9container6vectorI5emptyvvE6assignIPS2_EEvT_S6_PNS_11move_detail13disable_if_orIvNS7_7is_sameINS7_17integral_constantIjLj1EEENSA_IjLj0EEEEENS7_14is_convertibleIS6_mEENS0_3dtl17is_input_iteratorIS6_Xsr21has_iterator_categoryIS6_EE5valueEEENS7_5bool_ILb0EEEE4typeE:bb.a

bb.p:                                             ; preds = %bb.o
  %i.ac = icmp ne ptr %i.r, null
  %i.ad = icmp ne ptr %1, null
  %or.cond.i.i18.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.i.i18.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorI5emptyEEPS3_S5_EEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorI5emptyEEPS3_S5_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorI5emptyEEPS3_S5_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destIP5emptyS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.c, ptr %i.s, align 8, !tbaa !218
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorI5emptyEEPS3_S5_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !236  ; 5 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %2)
  %.not = icmp ult i64 %i.b, %.sroa.speculated
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp samesign eq i64 %1, 0
  %.not37.i.i = icmp samesign eq i64 %2, 0
  %or.cond.i.i = or i1 %.not.i.i, %.not37.i.i
  br i1 %or.cond.i.i, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not38.i.i = icmp ugt i64 %1, %2
  br i1 %.not38.i.i, label %.lr.ph.i.i.i, label %.sink.split.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %2, %bb.c ] ; 2 uses
  %.01316.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.c ]
  %i.e = lshr i64 %.017.i.i.i, 1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %.neg.i.i.i = xor i64 %i.e, -1
  %i.h = add i64 %.017.i.i.i, %.neg.i.i.i         ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !20

_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.i, %i.d
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.i.i, %bb.c
  %.sink.i.i = phi i64 [ %i.j, %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.i.i ], [ %1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sink.i.i, ptr %i.k, align 8, !tbaa !235
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.d:                                             ; preds = %bb.a
  %i.l = add i64 %2, %1                           ; 9 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.023.i.i = phi i32 [ 32, %bb.d ], [ %i.z, %bb.e ]
  %.01222.i.i = phi i64 [ 0, %bb.d ], [ %.1.i.i.1, %bb.e ] ; 2 uses
  %.01321.i.i = phi i64 [ 0, %bb.d ], [ %.114.i.i.1, %bb.e ]
  %.01520.i.i = phi i64 [ %i.l, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %i.m = shl i64 %.01222.i.i, 1                   ; 2 uses
  %i.n = tail call i64 @llvm.fshl.i64(i64 %.01321.i.i, i64 %.01520.i.i, i64 2) ; 2 uses
  %i.o = shl i64 %.01520.i.i, 2
  %i.p = icmp ult i64 %i.m, %i.n                  ; 2 uses
  %.neg.i.i = xor i64 %i.m, -1
  %i.q = select i1 %i.p, i64 %.neg.i.i, i64 0
  %.114.i.i = add i64 %i.q, %i.n
  %i.r = shl i64 %.01222.i.i, 2                   ; 2 uses
  %i.s = add i64 %i.r, 4
  %i.t = select i1 %i.p, i64 %i.s, i64 %i.r       ; 4 uses
  %i.u = tail call i64 @llvm.fshl.i64(i64 %.114.i.i, i64 %i.o, i64 2) ; 2 uses
  %i.v = shl i64 %.01520.i.i, 4
  %i.w = icmp ult i64 %i.t, %i.u                  ; 2 uses
  %.neg.i.i.1 = xor i64 %i.t, -1
  %i.x = or disjoint i64 %i.t, 2
  %i.y = select i1 %i.w, i64 %.neg.i.i.1, i64 0
  %.114.i.i.1 = add i64 %i.y, %i.u
  %.1.i.i.1 = select i1 %i.w, i64 %i.x, i64 %i.t  ; 2 uses
  %i.z = add nsw i32 %.023.i.i, -2                ; 2 uses
  %.not.i.i47.1 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i47.1, label %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit, label %bb.e, !llvm.loop !21

_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit: ; preds = %bb.e
  %i.aa = lshr exact i64 %.1.i.i.1, 1             ; 2 uses
  %i.ab = urem i64 %i.l, %i.aa
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = zext i1 %i.ac to i64
  %i.ae = add nuw i64 %i.aa, %i.ad                ; 4 uses
  %i.af = shl i64 %i.ae, 1                        ; 2 uses
  %.not44 = icmp ugt i64 %1, %i.af
  %.not45 = icmp ugt i64 %2, %i.af
  %or.cond46 = and i1 %.not44, %.not45
  br i1 %or.cond46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %0, ptr noundef %i.ag, ptr noundef %i.ah, i64 noundef %1, i64 noundef %2)
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit
  %.not.i = icmp ult i64 %i.b, %i.ae
  %i.ai = select i1 %.not.i, i64 %i.ae, i64 0     ; 7 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.ae) ; 10 uses
  %i.aj = udiv i64 %1, %spec.select.i
  %i.ak = udiv i64 %2, %spec.select.i             ; 3 uses
  %i.al = add i64 %i.ak, %i.aj
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi i64 [ %i.al, %bb.g ], [ %i.aq, %bb.h ] ; 4 uses
  %i.am = add i64 %i.ai, %.0.i.i
  %i.an = sub i64 %1, %i.am
  %i.ao = udiv i64 %i.an, %spec.select.i
  %i.ap = add i64 %i.ao, %i.ak
  %.not.i.i48 = icmp ult i64 %.0.i.i, %i.ap
  %i.aq = add i64 %.0.i.i, -1
  br i1 %.not.i.i48, label %_ZN5boost7movelib15detail_adaptiveL43adaptive_merge_n_keys_without_external_keysImEET_S3_S3_S3_S3_.exit.i, label %bb.h, !llvm.loop !22

_ZN5boost7movelib15detail_adaptiveL43adaptive_merge_n_keys_without_external_keysImEET_S3_S3_S3_S3_.exit.i: ; preds = %bb.h
  %i.ar = add nuw i64 %.0.i.i, 1                  ; 2 uses
  %.not.i23.i = icmp eq i64 %i.b, 0
  br i1 %.not.i23.i, label %_ZN5boost7movelib15detail_adaptive28adaptive_merge_n_keys_intbufImNS0_13adaptive_xbufI5emptyPS4_mEEEET_RS7_S7_S7_RT0_S8_.exit, label %_ZNK5boost7movelib13adaptive_xbufI5emptyPS2_mE25supports_aligned_trailingImEEbmm.exit.i

_ZNK5boost7movelib13adaptive_xbufI5emptyPS2_mE25supports_aligned_trailingImEEbmm.exit.i: ; preds = %_ZN5boost7movelib15detail_adaptiveL43adaptive_merge_n_keys_without_external_keysImEET_S3_S3_S3_S3_.exit.i
  %i.as = sub i64 %1, %i.ai
  %i.at = udiv i64 %i.as, %spec.select.i
  %i.au = add i64 %i.at, %i.ak
  %i.av = load ptr, ptr %3, align 8, !tbaa !234   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %spec.select.i
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.b
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = add i64 %i.ax, 7
  %i.bb = and i64 %i.ba, -8                       ; 2 uses
  %.not10.i.i = icmp ule i64 %i.bb, %i.az
  %i.bc = sub nuw i64 %i.az, %i.bb
  %i.bd = lshr i64 %i.bc, 3
  %i.be = icmp uge i64 %i.bd, %i.au
  %i.bf = select i1 %.not10.i.i, i1 %i.be, i1 false
  %cond.fr.i = freeze i1 %i.bf
  %spec.select27.i = select i1 %cond.fr.i, i64 0, i64 %i.ar
  br label %_ZN5boost7movelib15detail_adaptive28adaptive_merge_n_keys_intbufImNS0_13adaptive_xbufI5emptyPS4_mEEEET_RS7_S7_S7_RT0_S8_.exit

_ZN5boost7movelib15detail_adaptive28adaptive_merge_n_keys_intbufImNS0_13adaptive_xbufI5emptyPS4_mEEEET_RS7_S7_S7_RT0_S8_.exit: ; preds = %_ZN5boost7movelib15detail_adaptiveL43adaptive_merge_n_keys_without_external_keysImEET_S3_S3_S3_S3_.exit.i, %_ZNK5boost7movelib13adaptive_xbufI5emptyPS2_mE25supports_aligned_trailingImEEbmm.exit.i
  %i.bg = phi i64 [ %i.ar, %_ZN5boost7movelib15detail_adaptiveL43adaptive_merge_n_keys_without_external_keysImEET_S3_S3_S3_S3_.exit.i ], [ %spec.select27.i, %_ZNK5boost7movelib13adaptive_xbufI5emptyPS2_mE25supports_aligned_trailingImEEbmm.exit.i ] ; 2 uses
  %i.bh = add i64 %i.bg, %i.ai                    ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.bj = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive14collect_uniqueIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEENS0_9iter_sizeIT_E4typeESH_SH_SJ_T0_RT1_(ptr noundef %0, ptr noundef nonnull %i.bi, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 16 uses
  %i.bk = icmp ne i64 %i.bj, %i.bh                ; 2 uses
  %i.bl = icmp ult i64 %i.bj, 4
  %or.cond = and i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive28adaptive_merge_n_keys_intbufImNS0_13adaptive_xbufI5emptyPS4_mEEEET_RS7_S7_S7_RT0_S8_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  %gepdiff = sub nsw i64 %1, %i.bj
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef nonnull %0, ptr noundef %i.bm, ptr noundef nonnull %i.bi, i64 noundef %i.bj, i64 noundef %gepdiff)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef nonnull %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bn, i64 noundef %1, i64 noundef %2)
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.j:                                             ; preds = %_ZN5boost7movelib15detail_adaptive28adaptive_merge_n_keys_intbufImNS0_13adaptive_xbufI5emptyPS4_mEEEET_RS7_S7_S7_RT0_S8_.exit
  br i1 %i.bk, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bo = lshr i64 %i.bj, 1                       ; 4 uses
  %i.bp = sub nuw i64 %i.bj, %i.bo                ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 3
  br i1 %i.bq, label %bb.l, label %.thread110

bb.l:                                             ; preds = %bb.k
  %i.br = udiv i64 %i.l, %i.bo
  %.not133 = icmp ult i64 %i.bp, %i.br
  br i1 %.not133, label %.thread110, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !236
  %i.bt = icmp uge i64 %i.bs, %spec.select.i      ; 2 uses
  %i.bu = sub i64 %i.l, %i.bh
  %i.bv = sub i64 %1, %i.bh
  %.not.i49 = icmp eq i64 %i.bg, 0
  br i1 %.not.i49, label %bb.s, label %bb.o

.thread110:                                       ; preds = %bb.l, %bb.k
  %i.bw = udiv i64 %i.l, %i.bj
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.thread110
  %.1.i158 = phi i64 [ %i.bw, %.thread110 ], [ %i.bo, %bb.l ] ; 12 uses
  %.2156 = phi i1 [ false, %.thread110 ], [ true, %bb.l ]
  %i.bx = phi i64 [ 0, %.thread110 ], [ %i.bo, %bb.l ]
  %i.by = sub i64 %i.l, %i.bj                     ; 3 uses
  %i.bz = sub i64 %1, %i.bj                       ; 2 uses
  %.not.i49115 = icmp eq i64 %i.bj, 0
  br i1 %.not.i49115, label %bb.s, label %bb.q

bb.o:                                             ; preds = %bb.m
  br i1 %i.bt, label %bb.p, label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !235 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %spec.select.i
  br i1 %i.cc, label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i, label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit

_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i: ; preds = %bb.p
  store i64 %spec.select.i, ptr %i.ca, align 8, !tbaa !235
  br label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit

bb.q:                                             ; preds = %bb.n
  %i.cd = urem i64 %i.bz, %.1.i158                ; 3 uses
  %i.ce = sub i64 %i.by, %i.cd
  %i.cf = urem i64 %i.ce, %.1.i158                ; 4 uses
  %i.cg = add i64 %i.cd, %i.cf
  %i.ch = sub i64 %i.by, %i.cg                    ; 2 uses
  %i.ci = udiv i64 %i.ch, %.1.i158                ; 4 uses
  br i1 %.2156, label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.cd  ; 3 uses
  %.not113.i.i = icmp ule i64 %.1.i158, %i.ch
  %.not137.i.i = icmp eq i64 %i.cf, 0
  %or.cond.i.i50 = and i1 %.not137.i.i, %.not113.i.i
  br i1 %or.cond.i.i50, label %.lr.ph129.i.i, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i

.lr.ph129.i.i:                                    ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.ci
  %i.cm = add i64 %i.ci, -1
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol: ; preds = %.lr.ph129.i.i, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol
  %.0127.us.i.i.prol = phi ptr [ %i.co, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ], [ %0, %.lr.ph129.i.i ]
  %.069126.us.i.i.prol = phi ptr [ %i.cn, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ], [ %i.ck, %.lr.ph129.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ], [ 0, %.lr.ph129.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.069126.us.i.i.prol, i64 %.1.i158 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0127.us.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol, !llvm.loop !1410

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol, %.lr.ph129.i.i
  %.069126.us.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph129.i.i ], [ %.069126.us.i.i.prol, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ]
  %.0127.us.i.i.unr = phi ptr [ %0, %.lr.ph129.i.i ], [ %i.co, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ]
  %.069126.us.i.i.unr = phi ptr [ %i.ck, %.lr.ph129.i.i ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ]
  %i.cp = icmp ult i64 %i.cm, 7
  br i1 %i.cp, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i, label %.lr.ph129.i.i.new

.lr.ph129.i.i.new:                                ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit
  %4 = shl i64 %.1.i158, 2
  %5 = shl i64 %.1.i158, 1
  br label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i, %.lr.ph129.i.i.new
  %.0127.us.i.i = phi ptr [ %.0127.us.i.i.unr, %.lr.ph129.i.i.new ], [ %i.cu, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ]
  %.069126.us.i.i = phi ptr [ %.069126.us.i.i.unr, %.lr.ph129.i.i.new ], [ %i.ct, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.069126.us.i.i, i64 %4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.1.i158 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.1.i158
  %i.cu = getelementptr inbounds nuw i8, ptr %.0127.us.i.i, i64 8 ; 2 uses
  %.not77.us.i.i.7 = icmp eq ptr %i.cu, %i.cl
  br i1 %.not77.us.i.i.7, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i, !llvm.loop !23

_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i, %bb.r
  %.070.lcssa.i.i = phi ptr [ %i.cj, %bb.r ], [ %.069126.us.i.i.lcssa.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit ], [ %i.cs, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ] ; 2 uses
  %i.cv = mul i64 %i.ci, %.1.i158
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cv  ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cf
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %.070.lcssa.i.i to i64
  %i.da = sub i64 %i.cy, %i.cz
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %.070.lcssa.i.i, ptr noundef %i.cw, ptr noundef %i.cx, i64 noundef %i.da, i64 noundef %i.cf)
  br label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread

bb.s:                                             ; preds = %bb.n, %bb.m
  %i.db = phi i64 [ %i.bz, %bb.n ], [ %i.bv, %bb.m ] ; 2 uses
  %i.dc = phi i64 [ %i.by, %bb.n ], [ %i.bu, %bb.m ] ; 2 uses
  %i.dd = phi i1 [ false, %bb.n ], [ %i.bt, %bb.m ] ; 2 uses
  %.097103120 = phi i64 [ %.1.i158, %bb.n ], [ %spec.select.i, %bb.m ] ; 8 uses
  %.096104118 = phi i64 [ %i.bx, %bb.n ], [ %i.ai, %bb.m ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !235
  %or.cond.not.i = icmp eq i64 %i.df, %.097103120
  br i1 %or.cond.not.i, label %bb.t, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s
  store i64 %.097103120, ptr %i.de, align 8, !tbaa !235
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i, %bb.s
  %i.dg = load ptr, ptr %3, align 8, !tbaa !234   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.097103120
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = add i64 %i.di, 7
  %i.dk = and i64 %i.dj, -8
  %i.dl = inttoptr i64 %i.dk to ptr               ; 4 uses
  %i.dm = urem i64 %i.db, %.097103120             ; 3 uses
  %i.dn = sub i64 %i.dc, %i.dm
  %i.do = urem i64 %i.dn, %.097103120             ; 2 uses
  %i.dp = add i64 %i.dm, %i.do
  %i.dq = sub i64 %i.dc, %i.dp
  %i.dr = udiv i64 %i.dq, %.097103120             ; 4 uses
  %i.ds = udiv i64 %i.db, %.097103120             ; 2 uses
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = shl i64 %i.dr, 3
  %i.dv = ashr exact i64 %i.du, 3                 ; 3 uses
  %.mask.i.i = and i64 %i.dr, 2305843009213693951
  %.not8.i.i.i = icmp eq i64 %.mask.i.i, 0
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, label %.lr.ph.i.i.i51.preheader

.lr.ph.i.i.i51.preheader:                         ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.dv, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i51.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i51.preheader
  %i.dw = and i64 %i.dr, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.dv, %i.dw           ; 3 uses
  %i.dx = shl i64 %n.vec, 3
  %i.dy = getelementptr i8, ptr %i.dl, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.dz = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dl, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !223
  store <2 x i64> %step.add, ptr %i.ea, align 8, !tbaa !223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !1411

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, label %.lr.ph.i.i.i51.preheader163

.lr.ph.i.i.i51.preheader163:                      ; preds = %.lr.ph.i.i.i51.preheader, %middle.block
  %.010.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i51.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %i.dl, %.lr.ph.i.i.i51.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i.i.i51

.lr.ph.i.i.i51:                                   ; preds = %.lr.ph.i.i.i51.preheader163, %.lr.ph.i.i.i51
  %.010.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i51 ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i51.preheader163 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i51 ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i51.preheader163 ] ; 2 uses
  store i64 %.010.i.i.i, ptr %.079.i.i.i, align 8, !tbaa !223
  %i.ec = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8
  %i.ed = add i64 %.010.i.i.i, 1                  ; 2 uses
  %.not.i.i.i52 = icmp eq i64 %i.ed, %i.dv
  br i1 %.not.i.i.i52, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, label %.lr.ph.i.i.i51, !llvm.loop !1412

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i: ; preds = %.lr.ph.i.i.i51, %middle.block, %bb.t
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %i.dl, ptr noundef nonnull %0, i64 noundef %.097103120, i64 noundef %i.dm, i64 noundef %i.ds, i64 noundef %i.dt, i64 noundef %i.do, ptr noundef %i.dg)
  %i.ee = load i64, ptr %i.de, align 8, !tbaa !235
  %.not.i76.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i76.i, label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i
  store i64 0, ptr %i.de, align 8, !tbaa !235
  br label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit

_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread: ; preds = %bb.q, %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i, %bb.o
  %.096104116.ph = phi i64 [ %.1.i158, %bb.q ], [ 0, %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i ], [ %i.ai, %bb.o ] ; 2 uses
  %i.ef = icmp ne i64 %i.bj, %.096104116.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !235
  br label %bb.u

_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit: ; preds = %bb.p, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, %.preheader.preheader.i.i.i
  %i.eg = phi i64 [ %i.cb, %bb.p ], [ %spec.select.i, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i ], [ 0, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i ], [ 0, %.preheader.preheader.i.i.i ]
  %i.eh = phi i1 [ true, %bb.p ], [ true, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i ], [ %i.dd, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i ], [ %i.dd, %.preheader.preheader.i.i.i ] ; 2 uses
  %.096104116 = phi i64 [ %i.ai, %bb.p ], [ %i.ai, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i ], [ %.096104118, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i ], [ %.096104118, %.preheader.preheader.i.i.i ] ; 2 uses
  %.not.i53 = xor i1 %i.eh, true
  %i.ei = icmp ne i64 %i.bj, %.096104116          ; 2 uses
  %or.cond.i = or i1 %i.ei, %.not.i53
  br i1 %or.cond.i, label %bb.u, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit
  %i.ej = phi i64 [ %.pre, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %i.eg, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %i.ek = phi i1 [ %i.ef, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %i.ei, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %.096104116132 = phi i64 [ %.096104116.ph, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %.096104116, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %i.el = phi i1 [ false, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %i.eh, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.not.i.i54 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i54, label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i, label %.preheader.preheader.i.i.i55

.preheader.preheader.i.i.i55:                     ; preds = %bb.u
  store i64 0, ptr %i.em, align 8, !tbaa !235
  br label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i

_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i: ; preds = %.preheader.preheader.i.i.i55, %bb.u
  %or.cond3.i = and i1 %i.ek, %i.el
  %i.en = select i1 %or.cond3.i, i64 %.096104116132, i64 0 ; 2 uses
  %i.eo = sub i64 %i.bj, %i.en                    ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %i.eo ; 5 uses
  %i.eq = getelementptr i8, ptr %0, i64 %i.l      ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %gepdiff.i = sub i64 %i.l, %i.eo                ; 5 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 %gepdiff.i)
  %i.es = load i64, ptr %i.a, align 8, !tbaa !236 ; 3 uses
  %.not.i23.i56 = icmp ult i64 %i.es, %.sroa.speculated.i.i
  %i.et = icmp eq i64 %i.eo, %i.l                 ; 2 uses
  br i1 %.not.i23.i56, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i
  %.not.i.i.i.i = icmp eq i64 %i.bj, %i.en
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.et
  br i1 %or.cond.i.i.i.i, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not38.i.i.i.i = icmp ugt i64 %i.eo, %gepdiff.i
  br i1 %.not38.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.preheader.preheader.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.ex, %.lr.ph.i.i.i.i.i ], [ %gepdiff.i, %bb.w ] ; 2 uses
  %.01316.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i ], [ %i.ep, %bb.w ]
  %i.eu = lshr i64 %.017.i.i.i.i.i, 1             ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.i.i, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 3 uses
  %.neg.i.i.i.i.i = xor i64 %i.eu, -1
  %i.ex = add i64 %.017.i.i.i.i.i, %.neg.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ey, %i.er
  store i64 %i.ez, ptr %i.em, align 8, !tbaa !235
  %i.fa = icmp eq ptr %i.ew, %i.ep
  br i1 %i.fa, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i, %bb.w
  store i64 0, ptr %i.em, align 8, !tbaa !235
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.x:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i
  %i.fb = load ptr, ptr %3, align 8, !tbaa !234
  br i1 %i.et, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i15.i.i = icmp eq i64 %i.es, 0
  br i1 %.not.i15.i.i, label %bb.z, label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i.i

_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i.i: ; preds = %bb.y
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef nonnull %0, ptr noundef %i.ep, ptr noundef %i.eq, i64 noundef %i.eo, i64 noundef %gepdiff.i, ptr noundef %i.fb, i64 noundef %i.es)
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef nonnull %0, ptr noundef %i.ep, ptr noundef %i.eq, i64 noundef %i.eo, i64 noundef %gepdiff.i)
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit: ; preds = %bb.f, %bb.z, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i.i, %bb.x, %.preheader.preheader.i.i.i.i, %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i, %bb.v, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit, %bb.i, %.sink.split.i.i, %bb.b
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEmNS0_13adaptive_xbufIS3_S4_mEEEEbT_T1_T0_RSH_SJ_SJ_SJ_RT2_:bb.a
bb.m:                                             ; preds = %bb.k
  %i.bg = add i64 %i.bc, %.071.in
  %.not82 = icmp ult i64 %i.ba, %i.bg
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.bc, ptr %5, align 8, !tbaa !223
  %i.bh = load i64, ptr %3, align 8, !tbaa !223
  %i.bi = sub i64 %i.ba, %i.bh
  store i64 %i.bi, ptr %2, align 8, !tbaa !223
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bj = icmp ult i64 %i.ba, 4
  br i1 %i.bj, label %.critedge, label %.preheader87

.preheader87:                                     ; preds = %bb.o, %.preheader87
  %storemerge83 = phi i64 [ %i.bl, %.preheader87 ], [ %i.bc, %bb.o ] ; 6 uses
  %i.bk = add i64 %storemerge83, -1
  %i.bl = and i64 %i.bk, %storemerge83            ; 2 uses
  %.not84 = icmp eq i64 %i.bl, 0
  br i1 %.not84, label %.preheader, label %.preheader87, !llvm.loop !1433

.preheader:                                       ; preds = %.preheader87
  store i64 %storemerge83, ptr %2, align 8, !tbaa !223
  %i.bm = icmp ugt i64 %storemerge83, %i.ba
  br i1 %i.bm, label %.lr.ph, label %bb.p

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.bn = phi i64 [ %i.bo, %.lr.ph ], [ %storemerge83, %.preheader ]
  %i.bo = lshr i64 %i.bn, 1                       ; 4 uses
  %i.bp = icmp ugt i64 %i.bo, %i.ba
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !1434

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.bo, ptr %2, align 8, !tbaa !223
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i64 [ %i.bo, %._crit_edge ], [ %storemerge83, %.preheader ]
  %i.bq = icmp ult i64 %.lcssa, 16
  %i.br = select i1 %i.bq, ptr %2, ptr @_ZN5boost7movelib15detail_adaptiveL34AdaptiveSortInsertionSortThresholdE
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !223
  store i64 %i.bs, ptr %4, align 8, !tbaa !223
  store i64 0, ptr %3, align 8, !tbaa !223
  %i.bt = load i64, ptr %2, align 8, !tbaa !223
  store i64 %i.bt, ptr %5, align 8, !tbaa !223
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.i, %bb.j, %bb.n, %bb.p, %bb.l
  %.1 = phi i1 [ true, %bb.i ], [ true, %bb.l ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.j ], [ false, %bb.o ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive11stable_sortIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 8 uses
  %i.d = lshr i64 %i.c, 1                         ; 2 uses
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !236
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !235  ; 2 uses
  %i.j = sub i64 %i.g, %i.i
  %.not = icmp ult i64 %i.j, %i.e
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.c, 17
  br i1 %i.k, label %_ZN5boost7movelib10merge_sortIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_T1_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !234
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_T0_T1_(ptr noundef %i.n, ptr noundef %1, ptr noundef %i.m)
  tail call void @_ZN5boost7movelib15merge_sort_copyIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o)
  br label %_ZN5boost7movelib10merge_sortIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_T1_T0_.exit

bb.d:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.c, 16
  br i1 %i.p, label %.lr.ph49.i, label %_ZN5boost7movelib10merge_sortIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_T1_T0_.exit

.lr.ph49.i:                                       ; preds = %bb.d, %bb.g
  %.04347.i = phi i64 [ %i.ag, %bb.g ], [ 16, %bb.d ] ; 10 uses
  %i.q = sub i64 %i.c, %.04347.i
  %i.r = icmp ugt i64 %i.q, %.04347.i             ; 2 uses
  br i1 %i.r, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %.lr.ph49.i
  %i.s = shl i64 %.04347.i, 1                     ; 4 uses
  %i.t = icmp ugt i64 %i.c, %i.s
  br i1 %i.t, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.046.i = phi i64 [ %i.x, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.046.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.04347.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, i64 noundef %.04347.i, i64 noundef %.04347.i)
  %i.x = add i64 %.046.i, %i.s                    ; 3 uses
  %i.y = sub i64 %i.c, %i.x
  %i.z = icmp ugt i64 %i.y, %i.s
  br i1 %i.z, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1435

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.e, %.lr.ph49.i
  %.1.i = phi i64 [ 0, %.lr.ph49.i ], [ 0, %bb.e ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %i.aa = sub i64 %i.c, %.1.i
  %i.ab = icmp ugt i64 %i.aa, %.04347.i
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.04347.i ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.a, %i.ae
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef %1, i64 noundef %.04347.i, i64 noundef %i.af)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit.i
  %i.ag = shl i64 %.04347.i, 1
  br i1 %i.r, label %.lr.ph49.i, label %_ZN5boost7movelib10merge_sortIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_T1_T0_.exit, !llvm.loop !1436

_ZN5boost7movelib10merge_sortIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_T1_T0_.exit: ; preds = %bb.g, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEbT_RNS0_9iter_sizeISG_E4typeESG_SJ_SJ_SK_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %i.b = load i64, ptr %5, align 8, !tbaa !223    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %i.b ; 3 uses
  %i.d = sub i64 %3, %i.b                         ; 6 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !223
  %i.f = icmp ugt i64 %i.d, %4                    ; 2 uses
  %.not139 = icmp ne i64 %i.b, 0
  %or.cond143.not158 = and i1 %.not139, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ule i64 %i.b, %i.h
  %or.cond156 = select i1 %or.cond143.not158, i1 %i.i, i1 false ; 3 uses
  br i1 %or.cond156, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.b, ptr %i.j, align 8, !tbaa !235
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_NS0_13adaptive_xbufIS3_S4_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b.exit
  %spec.select = select i1 %.1, i1 %i.y, i1 false
  %spec.select179 = select i1 %.1, i64 %.1.i, i64 0
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread, %._crit_edge
  %i.l = phi i1 [ %spec.select, %._crit_edge ], [ true, %.thread ]
  %i.m = phi i64 [ %spec.select179, %._crit_edge ], [ 0, %.thread ] ; 2 uses
  %i.n = add i64 %i.e, %i.b
  store i64 %i.m, ptr %5, align 8, !tbaa !223
  %i.o = sub i64 %i.n, %i.m
  store i64 %i.o, ptr %1, align 8, !tbaa !223
  ret i1 %i.l

bb.c:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_NS0_13adaptive_xbufIS3_S4_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b.exit
  %.0165 = phi i64 [ %4, %.lr.ph ], [ %i.r, %_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_NS0_13adaptive_xbufIS3_S4_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b.exit ] ; 5 uses
  %.0130164 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_NS0_13adaptive_xbufIS3_S4_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b.exit ] ; 2 uses
  %i.p = load i64, ptr %5, align 8, !tbaa !223    ; 2 uses
  %i.q = load i64, ptr %1, align 8, !tbaa !223    ; 4 uses
  %i.r = shl i64 %.0165, 1                        ; 9 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i64 %i.q, 1                         ; 3 uses
  %i.t = sub nuw i64 %i.q, %i.s                   ; 2 uses
  %i.u = icmp ugt i64 %i.t, 3
  br i1 %i.u, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.v = udiv i64 %i.r, %i.s
  %.not159 = icmp ult i64 %i.t, %i.v
  br i1 %.not159, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.d, %bb.e
  %i.w = udiv i64 %i.r, %i.q
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.c, %bb.e, %.critedge.i
  %.1 = phi i1 [ true, %bb.e ], [ false, %.critedge.i ], [ true, %bb.c ] ; 8 uses
  %.1.i = phi i64 [ %i.s, %bb.e ], [ %i.w, %.critedge.i ], [ %i.p, %bb.c ] ; 16 uses
  %i.x = and i64 %.0130164, 1
  %i.y = icmp eq i64 %i.x, 0                      ; 6 uses
  %i.z = urem i64 %i.d, %i.r                      ; 2 uses
  %i.aa = udiv i64 %i.d, %i.r                     ; 2 uses
  %.not.i144 = icmp ugt i64 %i.z, %.0165          ; 2 uses
  %.not140 = icmp eq i64 %i.q, 0
  br i1 %.not140, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %i.ab = udiv i64 %i.r, %.1.i
  %i.ac = icmp ugt i64 %i.ab, 256
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %spec.select.i.i = select i1 %.not.i144, i64 %i.z, i64 0
  %i.ad = zext i1 %.not.i144 to i64
  %i.ae = add nuw i64 %i.aa, %i.ad                ; 2 uses
  %.not.i145 = xor i1 %i.y, true
  %or.cond.i = and i1 %.1, %.not.i145
  %.not76103.i = icmp eq i64 %i.ae, 0
  %or.cond109.i = select i1 %or.cond.i, i1 true, i1 %.not76103.i
  br i1 %or.cond109.i, label %_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_NS0_13adaptive_xbufIS3_S4_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.af = urem i64 %.0165, %.1.i                  ; 2 uses
  br i1 %.1, label %_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_NS0_13adaptive_xbufIS3_S4_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %7 = shl i64 %.1.i, 2
  %8 = shl i64 %.1.i, 1
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %._crit_edge130.i.i
  %.073105.i = phi i64 [ %i.bd, %._crit_edge130.i.i ], [ 0, %.lr.ph.split.i.preheader ] ; 2 uses
  %.074104.i = phi ptr [ %spec.select.i, %._crit_edge130.i.i ], [ %i.c, %.lr.ph.split.i.preheader ] ; 5 uses
  %i.ag = icmp eq i64 %.073105.i, %i.aa
  %i.ah = select i1 %i.ag, i64 %spec.select.i.i, i64 %i.r ; 2 uses
  %i.ai = sub i64 %i.ah, %i.af
  %i.aj = urem i64 %i.ai, %.1.i                   ; 4 uses
  %i.ak = add i64 %i.aj, %i.af
  %i.al = sub i64 %i.ah, %i.ak                    ; 2 uses
  %i.am = udiv i64 %i.al, %.1.i                   ; 4 uses
  %.not113.i.i = icmp ule i64 %.1.i, %i.al
  %.not137.i.i = icmp eq i64 %i.aj, 0
  %or.cond.i.i = and i1 %.not137.i.i, %.not113.i.i
  br i1 %or.cond.i.i, label %.lr.ph129.i.i, label %._crit_edge130.i.i

.lr.ph129.i.i:                                    ; preds = %.lr.ph.split.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = add i64 %i.am, -1
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol: ; preds = %.lr.ph129.i.i, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol
  %.0127.us.i.i.prol = phi ptr [ %i.aq, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ], [ %0, %.lr.ph129.i.i ]
  %.069126.us.i.i.prol = phi ptr [ %i.ap, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ], [ %.074104.i, %.lr.ph129.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ], [ 0, %.lr.ph129.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.069126.us.i.i.prol, i64 %.1.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0127.us.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol, !llvm.loop !1437

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol, %.lr.ph129.i.i
  %.069126.us.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph129.i.i ], [ %.069126.us.i.i.prol, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ]
  %.0127.us.i.i.unr = phi ptr [ %0, %.lr.ph129.i.i ], [ %i.aq, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ]
  %.069126.us.i.i.unr = phi ptr [ %.074104.i, %.lr.ph129.i.i ], [ %i.ap, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol ]
  %i.ar = icmp ult i64 %i.ao, 7
  br i1 %i.ar, label %._crit_edge130.i.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i
  %.0127.us.i.i = phi ptr [ %i.aw, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ], [ %.0127.us.i.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit ]
  %.069126.us.i.i = phi ptr [ %i.av, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ], [ %.069126.us.i.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.069126.us.i.i, i64 %7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.1.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.1.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0127.us.i.i, i64 8 ; 2 uses
  %.not77.us.i.i.7 = icmp eq ptr %i.aw, %i.an
  br i1 %.not77.us.i.i.7, label %._crit_edge130.i.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i, !llvm.loop !23

._crit_edge130.i.i:                               ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i, %.lr.ph.split.i
  %.070.lcssa.i.i = phi ptr [ %.074104.i, %.lr.ph.split.i ], [ %.069126.us.i.i.lcssa.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit ], [ %i.au, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ] ; 2 uses
  %i.ax = mul i64 %i.am, %.1.i
  %i.ay = getelementptr i8, ptr %.074104.i, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aj
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %.070.lcssa.i.i to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %.070.lcssa.i.i, ptr noundef %i.ay, ptr noundef %i.az, i64 noundef %i.bc, i64 noundef %i.aj)
  %i.bd = add nuw i64 %.073105.i, 1               ; 2 uses
  %.not77.i = icmp eq i64 %i.bd, %i.ae            ; 2 uses
  %spec.select.idx.i = select i1 %.not77.i, i64 0, i64 %i.r
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.074104.i, i64 %spec.select.idx.i
  br i1 %.not77.i, label %_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_NS0_13adaptive_xbufIS3_S4_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b.exit, label %.lr.ph.split.i, !llvm.loop !1438

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.y
  %i.be = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.be
  %i.bf = getelementptr inbounds i8, ptr %i.c, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef %i.bf, i64 noundef %i.d, i64 noundef %.0165, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_NS0_13adaptive_xbufIS3_S4_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b.exit

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !235
  %i.bh = load ptr, ptr %6, align 8, !tbaa !234
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %i.bj, 7
  %i.bl = and i64 %i.bk, -8
  %i.bm = inttoptr i64 %i.bl to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.y
  %i.bn = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.bn
  %i.bo = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b(ptr noundef %i.bm, ptr noundef %i.bo, i64 noundef %i.d, i64 noundef %.0165, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.y)
  br label %_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_NS0_13adaptive_xbufIS3_S4_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b.exit

_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_NS0_13adaptive_xbufIS3_S4_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b.exit: ; preds = %._crit_edge130.i.i, %.lr.ph.i, %bb.g, %bb.h, %bb.i
  %i.bp = add i64 %.0130164, 1
  %i.bq = icmp ugt i64 %i.d, %i.r
  br i1 %i.bq, label %bb.c, label %._crit_edge, !llvm.loop !1439
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvbT_NS0_9iter_sizeISG_E4typeESJ_SJ_RT1_T0_(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 0, %2
  %6 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 17 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !235
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !235
  br label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit: ; preds = %bb.a, %.preheader.preheader.i.i
  br i1 %0, label %bb.b, label %bb.l

bb.b:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %4 ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.a ; 3 uses
  tail call void @_ZN5boost7movelib15detail_adaptive11stable_sortIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_T0_RT1_(ptr noundef %i.e, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 6 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %3, %2
  %gepdiff155 = sub i64 %4, %i.h                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %gepdiff155, i64 %2)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !236  ; 5 uses
  %.not.i51 = icmp ult i64 %i.j, %.sroa.speculated.i
  br i1 %.not.i51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !235
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_RT1_.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !235
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_RT1_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %5, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.m = sub i64 %4, %2
  %i.n = icmp eq i64 %3, %i.m
  br i1 %i.n, label %_ZN5boost7movelib21merge_adaptive_ONlogNIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEES3_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i15.i = icmp eq i64 %i.j, 0
  br i1 %.not.i15.i, label %bb.f, label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i

_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i: ; preds = %bb.e
  store ptr %8, ptr %7, align 8, !tbaa !313
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIP5emptyS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef %i.d, i64 noundef %gepdiff155, i64 noundef %2, ptr noundef %i.l, i64 noundef %i.j, ptr noundef nonnull align 8 dead_on_return %7)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEES3_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %8, ptr %6, align 8, !tbaa !313
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %i.f, ptr noundef nonnull %i.e, ptr noundef %i.d, i64 noundef %gepdiff155, i64 noundef %2, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEES3_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit.i

_ZN5boost7movelib21merge_adaptive_ONlogNIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEES3_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit.i: ; preds = %bb.f, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.pr.pre = load i64, ptr %i.i, align 8, !tbaa !236
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_RT1_.exit: ; preds = %.preheader.preheader.i.i.i, %_ZN5boost7movelib21merge_adaptive_ONlogNIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEES3_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit.i, %bb.c
  %i.o = phi i64 [ %i.j, %bb.c ], [ %.pr.pre, %_ZN5boost7movelib21merge_adaptive_ONlogNIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEES3_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit.i ], [ %i.j, %.preheader.preheader.i.i.i ] ; 3 uses
  %gepdiff157 = sub nsw i64 %4, %3                ; 5 uses
  %.sroa.speculated.i52 = call i64 @llvm.umin.i64(i64 %3, i64 %gepdiff157)
  %.not.i53 = icmp ult i64 %i.o, %.sroa.speculated.i52
  %i.p = icmp samesign eq i64 %3, %4              ; 2 uses
  br i1 %.not.i53, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_RT1_.exit
  %.not.i.i.i = icmp samesign eq i64 %3, 0
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.p
  br i1 %or.cond.i.i.i, label %._ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit_crit_edge.i, label %bb.h

._ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit_crit_edge.i: ; preds = %bb.g
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !235
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i

bb.h:                                             ; preds = %bb.g
  %.not38.i.i.i = icmp ugt i64 %3, %gepdiff157
  br i1 %.not38.i.i.i, label %.lr.ph.i.i.i.i, label %.sink.split.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ %gepdiff157, %bb.h ] ; 2 uses
  %.01316.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.f, %bb.h ]
  %i.q = lshr i64 %.017.i.i.i.i, 1                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.neg.i.i.i.i = xor i64 %i.q, -1
  %i.t = add i64 %.017.i.i.i.i, %.neg.i.i.i.i     ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20

_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.u, %i.g
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.i.i.i, %bb.h
  %.sink.i.i.i = phi i64 [ %i.v, %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.i.i.i ], [ %3, %bb.h ] ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.b, align 8, !tbaa !235
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i

_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i: ; preds = %.sink.split.i.i.i, %._ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit_crit_edge.i
  %i.w = phi i64 [ %.pre.i, %._ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit_crit_edge.i ], [ %.sink.i.i.i, %.sink.split.i.i.i ]
  %.not.i.i54 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i54, label %_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_RT1_.exit, label %.preheader.preheader.i.i.i55

.preheader.preheader.i.i.i55:                     ; preds = %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i
  store i64 0, ptr %i.b, align 8, !tbaa !235
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_RT1_.exit

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_RT1_.exit
  %i.x = load ptr, ptr %5, align 8, !tbaa !234
  br i1 %i.p, label %_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_RT1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i15.i57 = icmp eq i64 %i.o, 0
  br i1 %.not.i15.i57, label %bb.k, label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i58

_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i58: ; preds = %bb.j
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef nonnull %1, ptr noundef %i.f, ptr noundef %i.d, i64 noundef %3, i64 noundef %gepdiff157, ptr noundef %i.x, i64 noundef %i.o)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_RT1_.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %1, ptr noundef %i.f, ptr noundef %i.d, i64 noundef %3, i64 noundef %gepdiff157)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_RT1_.exit

bb.l:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit
  %i.y = add i64 %3, %2                           ; 17 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 11 uses
  tail call void @_ZN5boost7movelib15detail_adaptive11stable_sortIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_T0_RT1_(ptr noundef %1, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !236 ; 8 uses
  %.not = icmp ult i64 %i.ab, %i.y
  br i1 %.not, label %bb.o, label %bb.m

end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b:bb.a

.lr.ph.i.i.preheader188:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader188, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !223
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.bk = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, %i.bc
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i, !llvm.loop !1881

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %.lr.ph.split
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %.074118, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ba, i64 noundef %i.aw)
  %i.bl = add nuw i64 %.073119, 1                 ; 2 uses
  %.not77 = icmp eq i64 %i.bl, %i.e               ; 2 uses
  %spec.select.idx = select i1 %.not77, i64 0, i64 %i.a
  %spec.select = getelementptr inbounds nuw [4 x i8], ptr %.074118, i64 %spec.select.idx
  br i1 %.not77, label %.loopexit, label %.lr.ph.split, !llvm.loop !1877

bb.b:                                             ; preds = %bb.a
  br i1 %.not78120, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.b
  %i.bm = add i64 %i.e, -1
  %i.bn = mul i64 %i.bm, %i.a
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn
  %i.bp = urem i64 %3, %4                         ; 2 uses
  %i.bq = udiv i64 %3, %4                         ; 3 uses
  %i.br = sub i64 0, %i.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.f
  %.0122 = phi i64 [ %i.e, %.lr.ph123 ], [ %i.bs, %bb.f ]
  %.2121 = phi ptr [ %i.bo, %.lr.ph123 ], [ %.3, %bb.f ] ; 2 uses
  %i.bs = add i64 %.0122, -1                      ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %i.c
  %i.bu = select i1 %i.bt, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.bv = sub i64 %i.bu, %i.bp
  %i.bw = urem i64 %i.bv, %4                      ; 4 uses
  %i.bx = add i64 %i.bp, %i.bw
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = udiv i64 %i.by, %4                      ; 6 uses
  %i.ca = sub i64 %i.bz, %i.bq                    ; 2 uses
  %i.cb = shl i64 %i.bz, 3
  %i.cc = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.mask.i84 = and i64 %i.bz, 2305843009213693951
  %.not8.i.i85 = icmp eq i64 %.mask.i84, 0
  br i1 %.not8.i.i85, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90, label %.lr.ph.i.i86.preheader

.lr.ph.i.i86.preheader:                           ; preds = %bb.c
  %min.iters.check169 = icmp ult i64 %i.cc, 4
  br i1 %min.iters.check169, label %.lr.ph.i.i86.preheader183, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i.i86.preheader
  %i.cd = and i64 %i.bz, 3                        ; 2 uses
  %n.vec171 = sub nuw nsw i64 %i.cc, %i.cd        ; 3 uses
  %i.ce = shl i64 %n.vec171, 3
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next177, %vector.body172 ] ; 2 uses
  %vec.ind174 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph170 ], [ %vec.ind.next178, %vector.body172 ] ; 3 uses
  %step.add175 = add nuw <2 x i64> %vec.ind174, splat (i64 2)
  %i.cg = shl i64 %index173, 3
  %next.gep176 = getelementptr i8, ptr %0, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x i64> %vec.ind174, ptr %next.gep176, align 8, !tbaa !223
  store <2 x i64> %step.add175, ptr %i.ch, align 8, !tbaa !223
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %vec.ind.next178 = add <2 x i64> %vec.ind174, splat (i64 4)
  %i.ci = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ci, label %middle.block179, label %vector.body172, !llvm.loop !1882

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.cd, 0
  br i1 %cmp.n180, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90, label %.lr.ph.i.i86.preheader183

.lr.ph.i.i86.preheader183:                        ; preds = %.lr.ph.i.i86.preheader, %middle.block179
  %.010.i.i87.ph = phi i64 [ 0, %.lr.ph.i.i86.preheader ], [ %n.vec171, %middle.block179 ]
  %.079.i.i88.ph = phi ptr [ %0, %.lr.ph.i.i86.preheader ], [ %i.cf, %middle.block179 ]
  br label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.lr.ph.i.i86.preheader183, %.lr.ph.i.i86
  %.010.i.i87 = phi i64 [ %i.ck, %.lr.ph.i.i86 ], [ %.010.i.i87.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  %.079.i.i88 = phi ptr [ %i.cj, %.lr.ph.i.i86 ], [ %.079.i.i88.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  store i64 %.010.i.i87, ptr %.079.i.i88, align 8, !tbaa !223
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i88, i64 8
  %i.ck = add i64 %.010.i.i87, 1                  ; 2 uses
  %.not.i.i89 = icmp eq i64 %i.ck, %i.cc
  br i1 %.not.i.i89, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90, label %.lr.ph.i.i86, !llvm.loop !1883

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90: ; preds = %.lr.ph.i.i86, %middle.block179, %bb.c
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [4 x i8], ptr %.2121, i64 %i.cm
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90
  store ptr %i.cl, ptr %9, align 8, !tbaa !321
  store ptr %i.co, ptr %10, align 8, !tbaa !330
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90
  store ptr %i.cl, ptr %11, align 8, !tbaa !321
  store ptr %i.co, ptr %12, align 8, !tbaa !330
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [4 x i8], ptr %.2121, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !1884

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !331
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %.idx129 = shl i64 %i.az, 2                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !331
  %.not77119 = icmp eq i64 %i.az, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.q = add i64 %.idx129, -4                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter165 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.u, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.t, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !1885

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.u, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.t, %.lr.ph124.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.q, 28
  br i1 %i.v, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 4
  %.idx169 = shl i64 %2, 3
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.y, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.x, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx169
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us, i64 32 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !1886

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072115, %.val107109
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.02226.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !247 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !247 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !247
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !247
  %i.am = icmp slt i32 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !50

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 5 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099111)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !247
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !247
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075112, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071116, align 4, !tbaa !247
  store i32 0, ptr %.071116, align 4, !tbaa !247
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.be = load i32, ptr %i.at, align 4, !tbaa !247
  store i32 %i.be, ptr %.071116, align 4, !tbaa !247
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !247
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bh = getelementptr inbounds nuw i8, ptr %.071116, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !247
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !247
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !247
  store i32 0, ptr %i.bp, align 4, !tbaa !247
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !247
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !247
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !247
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !41

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i32, ptr %i.ap, align 4, !tbaa !247
  store i32 0, ptr %i.ap, align 4, !tbaa !247
  %i.bx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bz = load i32, ptr %.073114, align 4, !tbaa !247
  store i32 %i.bz, ptr %i.ap, align 4, !tbaa !247
  store i32 %i.bw, ptr %.073114, align 4, !tbaa !247
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cb = add i32 %i.ca, -1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.cc = icmp eq ptr %i.ap, %.0100110
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.cd, ptr %i.ap, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.073114, i64 4
  %i.cf = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cf to i64
  %i.cg = add i64 %.072115, %.neg
  %i.ch = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.ch to i64
  %i.ci = add i64 %.sroa.speculated89, %.neg78
  %i.cj = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cj, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1887

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.ck = trunc nuw i8 %i.db to i1
  %i.cl = select i1 %i.ck, ptr %i.dd, ptr %i.de
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cm = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cl, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.co = ptrtoint ptr %i.e to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.cm, ptr noundef %i.e, ptr noundef %i.cn, i64 noundef %i.cr, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cs = phi i8 [ %i.db, %bb.l ], [ 1, %.lr.ph124 ]
  %i.ct = phi i8 [ %i.dc, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.df, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.de, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.dd, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cu = load i32, ptr %.0122, align 4, !tbaa !247
  %i.cv = load i32, ptr %.1101, align 4, !tbaa !247
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %5, align 8, !tbaa !330, !noalias !2349
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.c
  %.sroa.027.0 = phi ptr [ %i.c, %bb.c ], [ %i.m, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %i.e, %bb.c ], [ %i.l, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %i.d, %bb.c ], [ %.sroa.017.0.i, %.split.i ]
  %i.g = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.outer.i
  %.sroa.027.1 = phi ptr [ %.sroa.027.0, %.outer.i ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.h, %bb.e ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 6 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !247, !noalias !2349
  %i.j = load i32, ptr %i.g, align 4, !tbaa !247, !noalias !2349
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %.split.i, label %bb.e

.split.i:                                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.027.1, i64 -4 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !247, !noalias !2349
  store i32 0, ptr %i.m, align 4, !tbaa !247, !noalias !2349
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2349
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2349
  %i.q = load i32, ptr %i.g, align 4, !tbaa !247, !noalias !2349
  store i32 %i.q, ptr %i.m, align 4, !tbaa !247, !noalias !2349
  store i32 0, ptr %i.g, align 4, !tbaa !247, !noalias !2349
  %i.r = load i32, ptr %i.l, align 4, !tbaa !247, !noalias !2349
  store i32 %i.r, ptr %i.g, align 4, !tbaa !247, !noalias !2349
  store i32 %i.n, ptr %i.l, align 4, !tbaa !247, !noalias !2349
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2349
  %i.t = add i32 %i.s, -1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2349
  %.not27.i = icmp eq ptr %i.l, %i.b
  br i1 %.not27.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit.sink.split, label %.outer.i, !llvm.loop !74

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %.sroa.027.1, i64 -4 ; 5 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !247, !noalias !2349
  store i32 0, ptr %i.u, align 4, !tbaa !247, !noalias !2349
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2349
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2349
  %i.y = load i32, ptr %i.h, align 4, !tbaa !247, !noalias !2349
  store i32 %i.y, ptr %i.u, align 4, !tbaa !247, !noalias !2349
  store i32 %i.v, ptr %i.h, align 4, !tbaa !247, !noalias !2349
  %i.z = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2349
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2349
  %.not26.i = icmp eq ptr %i.h, %i.a
  br i1 %.not26.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit.sink.split, label %bb.d, !llvm.loop !74

bb.f:                                             ; preds = %bb.a
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %5, align 8, !tbaa !330, !noalias !2350
  br label %.outer.i8

.outer.i8:                                        ; preds = %.split.i14, %bb.g
  %.sroa.020.0 = phi ptr [ %i.c, %bb.g ], [ %i.ah, %.split.i14 ]
  %.sroa.010.0.ph.i9 = phi ptr [ %i.ab, %bb.g ], [ %i.ac, %.split.i14 ] ; 2 uses
  %.sroa.013.0.ph.i10 = phi ptr [ %i.e, %bb.g ], [ %i.ag, %.split.i14 ] ; 2 uses
  %.sroa.017.0.ph.i11 = phi ptr [ %i.d, %bb.g ], [ %.sroa.017.0.i12, %.split.i14 ]
  %i.ac = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9, i64 -4 ; 6 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.outer.i8
  %.sroa.020.1 = phi ptr [ %.sroa.020.0, %.outer.i8 ], [ %i.ap, %bb.i ] ; 2 uses
  %.sroa.017.0.i12 = phi ptr [ %.sroa.017.0.ph.i11, %.outer.i8 ], [ %i.ad, %bb.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.017.0.i12, i64 -4 ; 6 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !247, !noalias !2350
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !247, !noalias !2350
  %.not26.i13 = icmp slt i32 %i.ae, %i.af
  br i1 %.not26.i13, label %bb.i, label %.split.i14

.split.i14:                                       ; preds = %bb.h
  %i.ag = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10, i64 -4 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.020.1, i64 -4 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !247, !noalias !2350
  store i32 0, ptr %i.ah, align 4, !tbaa !247, !noalias !2350
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2350
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2350
  %i.al = load i32, ptr %i.ac, align 4, !tbaa !247, !noalias !2350
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !247, !noalias !2350
  store i32 0, ptr %i.ac, align 4, !tbaa !247, !noalias !2350
  %i.am = load i32, ptr %i.ag, align 4, !tbaa !247, !noalias !2350
  store i32 %i.am, ptr %i.ac, align 4, !tbaa !247, !noalias !2350
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !247, !noalias !2350
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2350
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2350
  %.not28.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not28.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit.sink.split, label %.outer.i8, !llvm.loop !75

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds i8, ptr %.sroa.020.1, i64 -4 ; 5 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !247, !noalias !2350
  store i32 0, ptr %i.ap, align 4, !tbaa !247, !noalias !2350
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2350
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2350
  %i.at = load i32, ptr %i.ad, align 4, !tbaa !247, !noalias !2350
  store i32 %i.at, ptr %i.ap, align 4, !tbaa !247, !noalias !2350
  store i32 %i.aq, ptr %i.ad, align 4, !tbaa !247, !noalias !2350
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2350
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2350
  %.not27.i19 = icmp eq ptr %i.ad, %i.a
  br i1 %.not27.i19, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit.sink.split, label %bb.h, !llvm.loop !75

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit.sink.split: ; preds = %.split.i14, %bb.i, %.split.i, %bb.e
  %.sroa.010.122.i18.sink = phi ptr [ %.sroa.010.0.ph.i, %bb.e ], [ %.sroa.010.0.ph.i9, %bb.i ], [ %i.g, %.split.i ], [ %i.ac, %.split.i14 ]
  %.sroa.017.124.i16.sink = phi ptr [ %i.h, %bb.e ], [ %i.ad, %bb.i ], [ %.sroa.017.0.i, %.split.i ], [ %.sroa.017.0.i12, %.split.i14 ]
  %.sroa.013.123.i17.sink = phi ptr [ %.sroa.013.0.ph.i, %bb.e ], [ %.sroa.013.0.ph.i10, %bb.i ], [ %i.l, %.split.i ], [ %i.ag, %.split.i14 ]
  %storemerge.ph = phi ptr [ %i.u, %bb.e ], [ %i.ap, %bb.i ], [ %i.m, %.split.i ], [ %i.ah, %.split.i14 ]
  store ptr %.sroa.010.122.i18.sink, ptr %5, align 8, !tbaa !330, !noalias !322
  store ptr %.sroa.017.124.i16.sink, ptr %1, align 8, !tbaa !330, !noalias !322
  store ptr %.sroa.013.123.i17.sink, ptr %3, align 8, !tbaa !330, !noalias !322
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit.sink.split, %bb.f, %bb.b
  %storemerge = phi ptr [ %i.c, %bb.f ], [ %i.c, %bb.b ], [ %storemerge.ph, %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit.sink.split ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !331
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !331
  %.not77118 = icmp samesign eq i64 %i.az, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.q = add i64 %.075111, -1
  %i.r = zext nneg i8 %.1 to i64
  %i.s = add i64 %i.q, %i.r
  %xtraiter162 = and i64 %i.az, 7                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.u, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.t, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter162
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !2351

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.u, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.t, %.lr.ph123.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.s, 7
  br i1 %i.v, label %._crit_edge124, label %.lr.ph123.split.us.preheader.preheader.new

.lr.ph123.split.us.preheader.preheader.new:       ; preds = %.lr.ph123.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 4
  %.idx166 = shl i64 %2, 3
  br label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader, %.lr.ph123.split.us.preheader.preheader.new
  %.0121.us = phi ptr [ %.0121.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.y, %.lr.ph123.split.us.preheader ]
  %.069120.us = phi ptr [ %.069120.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.x, %.lr.ph123.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069120.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx166
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !2352

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cf, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072114, %.val106108
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.af = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !247 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !247 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !314
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !314
  %i.am = icmp ult i8 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !76

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099110)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071115, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !247
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !247
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075111, %i.ay                 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071115, align 4, !tbaa !247
  store i32 0, ptr %.071115, align 4, !tbaa !247
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.be = load i32, ptr %i.at, align 4, !tbaa !247
  store i32 %i.be, ptr %.071115, align 4, !tbaa !247
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !247
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bh = getelementptr inbounds nuw i8, ptr %.071115, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !247
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !247
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !247
  store i32 0, ptr %i.bp, align 4, !tbaa !247
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !247
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !247
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !247
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !41

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i8, ptr %i.ap, align 1, !tbaa !314
  %i.bx = load i8, ptr %.073113, align 1, !tbaa !314
  store i8 %i.bx, ptr %i.ap, align 1, !tbaa !314
  store i8 %i.bw, ptr %.073113, align 1, !tbaa !314
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.by = icmp eq ptr %i.ap, %.0100109
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.bz, ptr %i.ap, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cb = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cb to i64
  %i.cc = add i64 %.072114, %.neg
  %i.cd = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cd to i64
  %i.ce = add i64 %.sroa.speculated89, %.neg78
  %i.cf = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2353

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.cg = trunc nuw i8 %i.cx to i1
  %i.ch = select i1 %i.cg, ptr %i.cz, ptr %i.da
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader, %._crit_edge.thread, %._crit_edge124.loopexit129, %._crit_edge
  %i.ci = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ch, %._crit_edge124.loopexit129 ], [ %.069120.us.lcssa.unr, %.lr.ph123.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph123.split.us.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ck = ptrtoint ptr %i.e to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.ci, ptr noundef %i.e, ptr noundef %i.cj, i64 noundef %i.cn, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph123.split:                                  ; preds = %.lr.ph123, %bb.l
  %i.co = phi i8 [ %i.cx, %bb.l ], [ 1, %.lr.ph123 ]
  %i.cp = phi i8 [ %i.cy, %bb.l ], [ 1, %.lr.ph123 ] ; 2 uses
  %.0121 = phi ptr [ %i.db, %bb.l ], [ %0, %.lr.ph123 ] ; 2 uses
  %.069120 = phi ptr [ %i.da, %bb.l ], [ %i.d, %.lr.ph123 ] ; 4 uses
  %.070119 = phi ptr [ %i.cz, %bb.l ], [ %1, %.lr.ph123 ]
  %i.cq = load i8, ptr %.0121, align 1, !tbaa !314
  %i.cr = load i8, ptr %.1101, align 1, !tbaa !314
  %i.cs = icmp ult i8 %i.cq, %i.cr
  %i.ct = zext i1 %i.cs to i8
  %i.cu = icmp eq i8 %i.cp, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph123.split
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.069120, i64 %2
  %i.cw = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_SF_PbT0_(ptr noundef %.070119, ptr noundef %.069120, ptr noundef %i.cv, ptr noundef nonnull %i.a)
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a

.thread85:                                        ; preds = %.thread
  %.not1.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread85, %.lr.ph.i25
  %.sroa.051.0 = phi ptr [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread85 ]
  %i.bx = phi ptr [ %i.by, %.lr.ph.i25 ], [ %i.bw, %.thread85 ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.051.0, i64 -4 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !247, !noalias !2608
  store i32 0, ptr %i.by, align 4, !tbaa !247, !noalias !2608
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2608
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2608
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !247, !noalias !2608
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !247, !noalias !2608
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !247, !noalias !2608
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2608
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2608
  %.not.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !64

.thread86:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bu, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread86, %.lr.ph.i26
  %.sroa.045.0 = phi ptr [ %i.ci, %.lr.ph.i26 ], [ %i.bw, %.thread86 ]
  %.sroa.044.0 = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bt, %.thread86 ]
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i26 ], [ %i.bu, %.thread86 ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 4 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -4 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !247, !noalias !2609
  store i32 0, ptr %i.cj, align 4, !tbaa !247, !noalias !2609
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2609
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2609
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !247, !noalias !2609
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !247, !noalias !2609
  store i32 0, ptr %i.ci, align 4, !tbaa !247, !noalias !2609
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !247, !noalias !2609
  store i32 %i.co, ptr %i.ci, align 4, !tbaa !247, !noalias !2609
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !247, !noalias !2609
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2609
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2609
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26, !llvm.loop !73

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bq, %bb.l ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !247, !noalias !2610
  store i32 0, ptr %i.cs, align 4, !tbaa !247, !noalias !2610
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2610
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2610
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !247, !noalias !2610
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !247, !noalias !2610
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !247, !noalias !2610
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2610
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2610
  %.not.i.i28 = icmp eq ptr %i.cs, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !64

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %i.bw, %.thread86 ], [ %i.ac, %bb.l ], [ %i.bw, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread85 ], [ %i.ct, %.lr.ph.i.i ], [ %i.bt, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !330
  %i.db = load ptr, ptr %1, align 8, !tbaa !316   ; 4 uses
  %i.dc = sub i64 0, %.018.lcssa.i
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -1 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 -1 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !314
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !314
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !314
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !314
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.di = load ptr, ptr %2, align 8, !tbaa !316   ; 2 uses
  %i.dj = icmp eq ptr %i.dd, %i.di
  br i1 %i.dj, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = icmp eq ptr %i.di, %i.db
  br i1 %i.dk, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dd, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !316
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !330
  %i.dl = load ptr, ptr %1, align 8, !tbaa !316
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -1 ; 2 uses
  store ptr %i.dm, ptr %1, align 8, !tbaa !316
  %i.dn = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dn to i64
  %i.do = add i64 %.0100, %.neg
  %i.dp = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dp to i64
  %i.dq = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dr = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dr, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2603

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ds = load ptr, ptr %6, align 8, !tbaa !330
  store ptr %i.ds, ptr %0, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !331
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.idx129 = shl i64 %i.az, 3                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !331
  %.not77119 = icmp eq i64 %i.az, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.q = add i64 %.idx129, -8                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter165 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.u, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.t, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !2611

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.u, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.t, %.lr.ph124.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.q, 56
  br i1 %i.v, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 4
  %.idx169 = shl i64 %2, 3
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.y, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.x, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx169
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !2612

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cf, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072115, %.val107109
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !247 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !247 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !223
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !223
  %i.am = icmp ult i64 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !78

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099111)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !247
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !247
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075112, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071116, align 4, !tbaa !247
  store i32 0, ptr %.071116, align 4, !tbaa !247
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.be = load i32, ptr %i.at, align 4, !tbaa !247
  store i32 %i.be, ptr %.071116, align 4, !tbaa !247
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !247
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bh = getelementptr inbounds nuw i8, ptr %.071116, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !247
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !247
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !247
  store i32 0, ptr %i.bp, align 4, !tbaa !247
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !247
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !247
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !247
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !41

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i64, ptr %i.ap, align 8, !tbaa !223
  %i.bx = load i64, ptr %.073114, align 8, !tbaa !223
  store i64 %i.bx, ptr %i.ap, align 8, !tbaa !223
  store i64 %i.bw, ptr %.073114, align 8, !tbaa !223
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.by = icmp eq ptr %i.ap, %.0100110
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.bz, ptr %i.ap, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cb = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cb to i64
  %i.cc = add i64 %.072115, %.neg
  %i.cd = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cd to i64
  %i.ce = add i64 %.sroa.speculated89, %.neg78
  %i.cf = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2613

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cg = trunc nuw i8 %i.cx to i1
  %i.ch = select i1 %i.cg, ptr %i.cz, ptr %i.da
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.ci = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ch, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ck = ptrtoint ptr %i.e to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.ci, ptr noundef %i.e, ptr noundef %i.cj, i64 noundef %i.cn, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.co = phi i8 [ %i.cx, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cp = phi i8 [ %i.cy, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.db, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.da, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.cz, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cq = load i64, ptr %.0122, align 8, !tbaa !223
  %i.cr = load i64, ptr %.1101, align 8, !tbaa !223
  %i.cs = icmp ult i64 %i.cq, %i.cr
  %i.ct = zext i1 %i.cs to i8
  %i.cu = icmp eq i8 %i.cp, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.069121, i64 %2
end_hunk_4
