Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrProfWriter?download=true
inline.NumInlined: 5423
inline.NumDeleted: 2525
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZNK4llvm15InstrProfRecord16accumulateCountsERNS_17CountSumOrPercentE
declare void @_ZNK4llvm15InstrProfRecord16accumulateCountsERNS_17CountSumOrPercentE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN4llvm12OverlapStats12addOneUniqueERKNS_17CountSumOrPercentE(ptr noundef nonnull align 8 dereferenceable(249), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN4llvm12OverlapStats14addOneMismatchERKNS_17CountSumOrPercentE(ptr noundef nonnull align 8 dereferenceable(249), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN4llvm15InstrProfRecord7overlapERS0_RNS_12OverlapStatsES3_m(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(249), ptr noundef nonnull align 8 dereferenceable(249), i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvm15InstrProfRecord22computeBlockUniformityEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(112) ptr @_ZN4llvm15InstrProfRecordaSEOS0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !171    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !207
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !207
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !172
  store ptr %i.f, ptr %i.b, align 8, !tbaa !172
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #25
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit

_ZNSt6vectorImSaImEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !208  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.o = load <2 x ptr>, ptr %i.k, align 8, !tbaa !181
  store <2 x ptr> %i.o, ptr %i.j, align 8, !tbaa !181
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !209
  store ptr %i.q, ptr %i.m, align 8, !tbaa !209
  %.not.i.i.i.i.i7 = icmp eq ptr %i.l, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i7, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #25
  br label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit

_ZNSt6vectorIhSaIhEEaSEOS1_.exit:                 ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !171  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !172
  %i.z = load <2 x ptr>, ptr %i.v, align 8, !tbaa !207
  store <2 x ptr> %i.z, ptr %i.u, align 8, !tbaa !207
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !172
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !172
  %.not.i.i.i.i.i8 = icmp eq ptr %i.w, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i8, label %_ZNSt6vectorImSaImEEaSEOS1_.exit9, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ae) #25
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit9

_ZNSt6vectorImSaImEEaSEOS1_.exit9:                ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !208 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !209
  %i.ak = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !181
  store <2 x ptr> %i.ak, ptr %i.af, align 8, !tbaa !181
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !209
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !209
  %.not.i.i.i.i.i10 = icmp eq ptr %i.ah, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i10, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit11, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit9
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ap) #25
  br label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit11

_ZNSt6vectorIhSaIhEEaSEOS1_.exit11:               ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit9, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !210
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i16 %i.ar, ptr %i.as, align 8, !tbaa !210
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !211
  store ptr null, ptr %i.au, align 8, !tbaa !211
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !211 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !211
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EESt14default_deleteIS6_EEaSEOS9_.exit, label %_ZNKSt14default_deleteISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EEEclEPS6_.exit.i.i.i.i

_ZNKSt14default_deleteISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EEEclEPS6_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit11
  tail call void @_ZNSt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS2_EELm3EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.aw) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 72) #25
  br label %_ZNSt10unique_ptrISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EESt14default_deleteIS6_EEaSEOS9_.exit

_ZNSt10unique_ptrISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EESt14default_deleteIS6_EEaSEOS9_.exit: ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit11, %_ZNKSt14default_deleteISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EEEclEPS6_.exit.i.i.i.i
  ret ptr %0
}

declare void @_ZN4llvm15InstrProfRecord5scaleEmmNS_12function_refIFvNS_15instrprof_errorEEEE(ptr noundef nonnull align 8 dereferenceable(112), i64 noundef, i64 noundef, ptr, i64) local_unnamed_addr #5

declare void @_ZN4llvm15InstrProfRecord5mergeERS0_mNS_12function_refIFvNS_15instrprof_errorEEEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112), i64 noundef, ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15InstrProfRecord13sortValueDataEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %._crit_edge, label %_ZN4llvm15InstrProfRecord20getValueSitesForKindEj.exit

_ZN4llvm15InstrProfRecord20getValueSitesForKindEj.exit: ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !215  ; 2 uses
  %.not237 = icmp eq ptr %i.f, %i.d
  br i1 %.not237, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm24InstrProfValueSiteRecord11sortByCountEv.exit, %bb.c, %_ZN4llvm15InstrProfRecord20getValueSitesForKindEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !419

.lr.ph:                                           ; preds = %_ZN4llvm15InstrProfRecord20getValueSitesForKindEj.exit, %_ZN4llvm24InstrProfValueSiteRecord11sortByCountEv.exit
  %.010238 = phi ptr [ %i.wt, %_ZN4llvm24InstrProfValueSiteRecord11sortByCountEv.exit ], [ %i.d, %_ZN4llvm15InstrProfRecord20getValueSitesForKindEj.exit ] ; 4 uses
  %i.g = load ptr, ptr %.010238, align 8, !tbaa !217 ; 21 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.010238, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !217  ; 14 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN4llvm11stable_sortIRSt6vectorI18InstrProfValueDataSaIS2_EEZNS_24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_S8_E_EEvOT_T0_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.k = ptrtoint ptr %i.i to i64                 ; 8 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 9 uses
  %i.o = add nsw i64 %i.n, 1
  %i.p = sdiv i64 %i.o, 2                         ; 9 uses
  %i.q = icmp sgt i64 %i.n, 0
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %select.unfold.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.v, %select.unfold.i.i.i.i.i ], [ %i.p, %bb.d ] ; 4 uses
  %i.r = shl nuw nsw i64 %.010.i.i.i.i.i, 4
  %i.s = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.r, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit.i.i.i

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i
  %i.t = icmp eq i64 %.010.i.i.i.i.i, 1
  %i.u = add nuw nsw i64 %.010.i.i.i.i.i, 1
  %i.v = lshr i64 %i.u, 1
  br i1 %i.t, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !420

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit.i.i.i: ; preds = %select.unfold.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %select.unfold.i.i.i.i.i ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i.i.i = phi ptr [ null, %bb.d ], [ null, %select.unfold.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i ] ; 32 uses
  %i.w = icmp eq i64 %i.p, %.sroa.4.0.i.i.i
  br i1 %i.w, label %bb.e, label %bb.gh, !prof !218

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit.i.i.i
  %.idx161 = shl nsw i64 %i.p, 4                  ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.g, i64 %.idx161 ; 21 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 9 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.10.0.i.i.i, i64 %.idx161 ; 5 uses
  %.not30.i120 = icmp slt i64 %i.n, 13
  br i1 %.not30.i120, label %._crit_edge.i135, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_.exit.loopexit.i133
  %i.aa = phi i64 [ %i.eg, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_.exit.loopexit.i133 ], [ %i.l, %bb.e ] ; 6 uses
  %.sroa.027.031.i123 = phi ptr [ %i.ef, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_.exit.loopexit.i133 ], [ %i.g, %bb.e ] ; 48 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 8 ; 6 uses
  %.sroa.0.019.i.i125.ptr = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !220
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !220 ; 2 uses
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph.i.i122
  %.sroa.0612.0.copyload = load <2 x i64>, ptr %.sroa.0.019.i.i125.ptr, align 8, !tbaa !135
  %i.ag = ptrtoint ptr %.sroa.0.019.i.i125.ptr to i64
  %i.ah = sub i64 %i.ag, %i.aa                    ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 4                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !218

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 32
  %i.al = sub nsw i64 0, %i.ai
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.031.i123, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157

bb.h:                                             ; preds = %bb.f
  %i.an = icmp eq i64 %i.ah, 16
  br i1 %i.an, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.i125.ptr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.031.i123, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157: ; preds = %bb.i, %bb.h, %bb.g
  store <2 x i64> %.sroa.0612.0.copyload, ptr %.sroa.027.031.i123, align 8, !tbaa !135
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !220
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i122, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157
  %i.ao = phi i64 [ %.pre, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157 ], [ %i.ae, %.lr.ph.i.i122 ]
  %.sroa.0.019.i.i125.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 32 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !220 ; 4 uses
  %i.ar = icmp ugt i64 %i.aq, %i.ao
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.03.0.copyload.i.i.i127.1 = load i64, ptr %.sroa.0.019.i.i125.ptr.1, align 8, !tbaa !135
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !220
  %i.au = icmp ugt i64 %i.aq, %i.at
  br i1 %i.au, label %.lr.ph.i.i.i154.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.1

.lr.ph.i.i.i154.1:                                ; preds = %bb.k, %.lr.ph.i.i.i154.1
  %.sroa.07.010.i.i.i155.1 = phi ptr [ %.sroa.0.0.i.i.i156.1, %.lr.ph.i.i.i154.1 ], [ %.sroa.0.019.i.i125.ptr.1, %bb.k ] ; 3 uses
  %.sroa.0.0.i.i.i156.1 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i155.1, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i.i155.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i156.1, i64 16, i1 false), !tbaa.struct !221
  %i.av = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i155.1, i64 -24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !220
  %i.ax = icmp ugt i64 %i.aq, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i.i154.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.1, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.1: ; preds = %.lr.ph.i.i.i154.1, %bb.k
  %.sroa.07.0.lcssa.i.i.i129.1 = phi ptr [ %.sroa.0.019.i.i125.ptr.1, %bb.k ], [ %.sroa.0.0.i.i.i156.1, %.lr.ph.i.i.i154.1 ] ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i127.1, ptr %.sroa.07.0.lcssa.i.i.i129.1, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx5.i.i.i130.1 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i129.1, i64 8
  store i64 %i.aq, ptr %.sroa.4.0..sroa_idx5.i.i.i130.1, align 8, !tbaa !135
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %.sroa.0612.0.copyload614 = load <2 x i64>, ptr %.sroa.0.019.i.i125.ptr.1, align 8, !tbaa !135
  %i.ay = ptrtoint ptr %.sroa.0.019.i.i125.ptr.1 to i64
  %i.az = sub i64 %i.ay, %i.aa                    ; 3 uses
  %i.ba = ashr exact i64 %i.az, 4                 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 1
  br i1 %i.bb, label %bb.o, label %bb.m, !prof !218

bb.m:                                             ; preds = %bb.l
  %i.bc = icmp eq i64 %i.az, 16
  br i1 %i.bc, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.1

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.031.i123, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.1

bb.o:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 48
  %i.bf = sub nsw i64 0, %i.ba
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bf
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.031.i123, i64 %i.az, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.1

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.1: ; preds = %bb.o, %bb.n, %bb.m
  store <2 x i64> %.sroa.0612.0.copyload614, ptr %.sroa.027.031.i123, align 8, !tbaa !135
  br label %bb.p

bb.p:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.1
  %.sroa.0.019.i.i125.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 48 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 56
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !220 ; 4 uses
  %i.bj = load i64, ptr %i.ab, align 8, !tbaa !220
  %i.bk = icmp ugt i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.03.0.copyload.i.i.i127.2 = load i64, ptr %.sroa.0.019.i.i125.ptr.2, align 8, !tbaa !135
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !220
  %i.bn = icmp ugt i64 %i.bi, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i.i154.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.2

.lr.ph.i.i.i154.2:                                ; preds = %bb.q, %.lr.ph.i.i.i154.2
  %.sroa.07.010.i.i.i155.2 = phi ptr [ %.sroa.0.0.i.i.i156.2, %.lr.ph.i.i.i154.2 ], [ %.sroa.0.019.i.i125.ptr.2, %bb.q ] ; 3 uses
  %.sroa.0.0.i.i.i156.2 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i155.2, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i.i155.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i156.2, i64 16, i1 false), !tbaa.struct !221
  %i.bo = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i155.2, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !220
  %i.bq = icmp ugt i64 %i.bi, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i.i154.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.2, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.2: ; preds = %.lr.ph.i.i.i154.2, %bb.q
  %.sroa.07.0.lcssa.i.i.i129.2 = phi ptr [ %.sroa.0.019.i.i125.ptr.2, %bb.q ], [ %.sroa.0.0.i.i.i156.2, %.lr.ph.i.i.i154.2 ] ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i127.2, ptr %.sroa.07.0.lcssa.i.i.i129.2, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx5.i.i.i130.2 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i129.2, i64 8
  store i64 %i.bi, ptr %.sroa.4.0..sroa_idx5.i.i.i130.2, align 8, !tbaa !135
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %.sroa.0612.0.copyload616 = load <2 x i64>, ptr %.sroa.0.019.i.i125.ptr.2, align 8, !tbaa !135
  %i.br = ptrtoint ptr %.sroa.0.019.i.i125.ptr.2 to i64
  %i.bs = sub i64 %i.br, %i.aa                    ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 4                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.u, label %bb.s, !prof !218

bb.s:                                             ; preds = %bb.r
  %i.bv = icmp eq i64 %i.bs, 16
  br i1 %i.bv, label %bb.t, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.2

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.031.i123, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.2

bb.u:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 64
  %i.by = sub nsw i64 0, %i.bt
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.031.i123, i64 %i.bs, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.2

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.2: ; preds = %bb.u, %bb.t, %bb.s
  store <2 x i64> %.sroa.0612.0.copyload616, ptr %.sroa.027.031.i123, align 8, !tbaa !135
  br label %bb.v

bb.v:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.2, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.2
  %.sroa.0.019.i.i125.ptr.3 = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 64 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !220 ; 4 uses
  %i.cc = load i64, ptr %i.ab, align 8, !tbaa !220
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.03.0.copyload.i.i.i127.3 = load i64, ptr %.sroa.0.019.i.i125.ptr.3, align 8, !tbaa !135
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !220
  %i.cg = icmp ugt i64 %i.cb, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i.i154.3, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.3

.lr.ph.i.i.i154.3:                                ; preds = %bb.w, %.lr.ph.i.i.i154.3
  %.sroa.07.010.i.i.i155.3 = phi ptr [ %.sroa.0.0.i.i.i156.3, %.lr.ph.i.i.i154.3 ], [ %.sroa.0.019.i.i125.ptr.3, %bb.w ] ; 3 uses
  %.sroa.0.0.i.i.i156.3 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i155.3, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i.i155.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i156.3, i64 16, i1 false), !tbaa.struct !221
  %i.ch = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i155.3, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !220
  %i.cj = icmp ugt i64 %i.cb, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i.i154.3, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.3, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.3: ; preds = %.lr.ph.i.i.i154.3, %bb.w
  %.sroa.07.0.lcssa.i.i.i129.3 = phi ptr [ %.sroa.0.019.i.i125.ptr.3, %bb.w ], [ %.sroa.0.0.i.i.i156.3, %.lr.ph.i.i.i154.3 ] ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i127.3, ptr %.sroa.07.0.lcssa.i.i.i129.3, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx5.i.i.i130.3 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i129.3, i64 8
  store i64 %i.cb, ptr %.sroa.4.0..sroa_idx5.i.i.i130.3, align 8, !tbaa !135
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %.sroa.0612.0.copyload618 = load <2 x i64>, ptr %.sroa.0.019.i.i125.ptr.3, align 8, !tbaa !135
  %i.ck = ptrtoint ptr %.sroa.0.019.i.i125.ptr.3 to i64
  %i.cl = sub i64 %i.ck, %i.aa                    ; 3 uses
  %i.cm = ashr exact i64 %i.cl, 4                 ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, 1
  br i1 %i.cn, label %bb.aa, label %bb.y, !prof !218

bb.y:                                             ; preds = %bb.x
  %i.co = icmp eq i64 %i.cl, 16
  br i1 %i.co, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.3

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.031.i123, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.3

bb.aa:                                            ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 80
  %i.cr = sub nsw i64 0, %i.cm
  %i.cs = getelementptr inbounds [16 x i8], ptr %i.cq, i64 %i.cr
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.031.i123, i64 %i.cl, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.3

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.3: ; preds = %bb.aa, %bb.z, %bb.y
  store <2 x i64> %.sroa.0612.0.copyload618, ptr %.sroa.027.031.i123, align 8, !tbaa !135
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i157.3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.3
  %.sroa.0.019.i.i125.ptr.4 = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 80 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 88
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !220 ; 4 uses
  %i.cv = load i64, ptr %i.ab, align 8, !tbaa !220
  %i.cw = icmp ugt i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.03.0.copyload.i.i.i127.4 = load i64, ptr %.sroa.0.019.i.i125.ptr.4, align 8, !tbaa !135
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i123, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !220
  %i.cz = icmp ugt i64 %i.cu, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i.i154.4, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.4

.lr.ph.i.i.i154.4:                                ; preds = %bb.ac, %.lr.ph.i.i.i154.4
  %.sroa.07.010.i.i.i155.4 = phi ptr [ %.sroa.0.0.i.i.i156.4, %.lr.ph.i.i.i154.4 ], [ %.sroa.0.019.i.i125.ptr.4, %bb.ac ] ; 3 uses
  %.sroa.0.0.i.i.i156.4 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i155.4, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i.i155.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i156.4, i64 16, i1 false), !tbaa.struct !221
  %i.da = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i155.4, i64 -24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !220
  %i.dc = icmp ugt i64 %i.cu, %i.db
  br i1 %i.dc, label %.lr.ph.i.i.i154.4, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.4, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i128.4: ; preds = %.lr.ph.i.i.i154.4, %bb.ac
end_hunk_0
begin_hunk_1_@_ZN4llvm15InstrProfRecord13sortValueDataEv:bb.a

bb.bm:                                            ; preds = %._crit_edge.i.us.i68
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.049.us.i69, ptr align 8 %.048.us.i70, i64 %.idx.i34, i1 false)
  br label %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i.us.i71

_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i.us.i71: ; preds = %._crit_edge.i.us.i68, %bb.bm
  %i.ib = getelementptr inbounds i8, ptr %.sroa.022.049.us.i69, i64 %.idx.i34 ; 2 uses
  br i1 %i.hz, label %bb.bn, label %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.us.i72, !prof !222

bb.bn:                                            ; preds = %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i.us.i71
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull align 8 %i.ia, i64 %.idx.i34, i1 false)
  br label %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.us.i72

_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.us.i72: ; preds = %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i.us.i71, %bb.bn
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 %.idx.i34 ; 2 uses
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = sub i64 %i.fe, %i.id
  %i.if = ashr exact i64 %i.ie, 4                 ; 2 uses
  %.not.us.i73 = icmp slt i64 %i.if, %i.hx
  br i1 %.not.us.i73, label %._crit_edge.i50, label %._crit_edge.i.us.i68, !llvm.loop !9

.lr.ph.i.preheader.i37:                           ; preds = %.lr.ph.i33, %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48
  %.sroa.022.049.i38 = phi ptr [ %i.je, %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48 ], [ %i.g, %.lr.ph.i33 ]
  %.048.i39 = phi ptr [ %i.ih, %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48 ], [ %.sroa.10.0.i.i.i, %.lr.ph.i33 ] ; 3 uses
  %i.ig = getelementptr inbounds i8, ptr %.048.i39, i64 %.idx.i34 ; 3 uses
  %i.ih = getelementptr inbounds i8, ptr %.048.i39, i64 %.idx41.i35 ; 4 uses
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %bb.bq, %.lr.ph.i.preheader.i37
  %.023.i.i41 = phi ptr [ %.1.i.i45, %bb.bq ], [ %.048.i39, %.lr.ph.i.preheader.i37 ] ; 4 uses
  %.01622.i.i42 = phi ptr [ %.117.i.i44, %bb.bq ], [ %i.ig, %.lr.ph.i.preheader.i37 ] ; 4 uses
  %.sroa.0.021.i.i43 = phi ptr [ %i.ip, %bb.bq ], [ %.sroa.022.049.i38, %.lr.ph.i.preheader.i37 ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.01622.i.i42, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !220
  %i.ik = getelementptr inbounds nuw i8, ptr %.023.i.i41, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !220
  %i.im = icmp ugt i64 %i.ij, %i.il
  br i1 %i.im, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i.i40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i.i43, ptr noundef nonnull align 8 dereferenceable(16) %.01622.i.i42, i64 16, i1 false), !tbaa.struct !221
  %i.in = getelementptr inbounds nuw i8, ptr %.01622.i.i42, i64 16
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i.i40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i.i43, ptr noundef nonnull align 8 dereferenceable(16) %.023.i.i41, i64 16, i1 false), !tbaa.struct !221
  %i.io = getelementptr inbounds nuw i8, ptr %.023.i.i41, i64 16
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.117.i.i44 = phi ptr [ %i.in, %bb.bo ], [ %.01622.i.i42, %bb.bp ] ; 5 uses
  %.1.i.i45 = phi ptr [ %.023.i.i41, %bb.bo ], [ %i.io, %bb.bp ] ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i43, i64 16 ; 4 uses
  %i.iq = icmp ne ptr %.1.i.i45, %i.ig
  %i.ir = icmp ne ptr %.117.i.i44, %i.ih
  %i.is = select i1 %i.iq, i1 %i.ir, i1 false
  br i1 %i.is, label %.lr.ph.i.i40, label %._crit_edge.i.loopexit.i46, !llvm.loop !10

._crit_edge.i.loopexit.i46:                       ; preds = %bb.bq
  %i.it = ptrtoint ptr %i.ig to i64
  %i.iu = ptrtoint ptr %.1.i.i45 to i64
  %i.iv = sub i64 %i.it, %i.iu                    ; 4 uses
  %i.iw = icmp sgt i64 %i.iv, 16
  br i1 %i.iw, label %bb.br, label %bb.bs, !prof !218

bb.br:                                            ; preds = %._crit_edge.i.loopexit.i46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ip, ptr nonnull align 8 %.1.i.i45, i64 %i.iv, i1 false)
  br label %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i.i47

bb.bs:                                            ; preds = %._crit_edge.i.loopexit.i46
  %i.ix = icmp eq i64 %i.iv, 16
  br i1 %i.ix, label %bb.bt, label %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i.i47

bb.bt:                                            ; preds = %bb.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i45, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i.i47

_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i.i47: ; preds = %bb.bt, %bb.bs, %bb.br
  %i.iy = getelementptr inbounds i8, ptr %i.ip, i64 %i.iv ; 3 uses
  %i.iz = ptrtoint ptr %i.ih to i64               ; 2 uses
  %i.ja = ptrtoint ptr %.117.i.i44 to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 4 uses
  %i.jc = icmp sgt i64 %i.jb, 16
  br i1 %i.jc, label %bb.bu, label %bb.bv, !prof !218

bb.bu:                                            ; preds = %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i.i47
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %.117.i.i44, i64 %i.jb, i1 false)
  br label %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48

bb.bv:                                            ; preds = %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i.i47
  %i.jd = icmp eq i64 %i.jb, 16
  br i1 %i.jd, label %bb.bw, label %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48

bb.bw:                                            ; preds = %bb.bv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, ptr noundef nonnull align 8 dereferenceable(16) %.117.i.i44, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48

_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48: ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.je = getelementptr inbounds i8, ptr %i.iy, i64 %i.jb ; 2 uses
  %i.jf = sub i64 %i.fe, %i.iz
  %i.jg = ashr exact i64 %i.jf, 4                 ; 2 uses
  %.not.i49 = icmp slt i64 %i.jg, %i.hx
  br i1 %.not.i49, label %._crit_edge.i50, label %.lr.ph.i.preheader.i37, !llvm.loop !9

._crit_edge.i50:                                  ; preds = %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48, %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.us.i72, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_T1_T2_.exit119
  %.0.lcssa.i51 = phi ptr [ %.sroa.10.0.i.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_T1_T2_.exit119 ], [ %i.ia, %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.us.i72 ], [ %i.ih, %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48 ] ; 3 uses
  %.sroa.022.0.lcssa.i52 = phi ptr [ %i.g, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_T1_T2_.exit119 ], [ %i.ic, %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.us.i72 ], [ %i.je, %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48 ] ; 2 uses
  %.lcssa45.i53 = phi i64 [ %i.p, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_T1_T2_.exit119 ], [ %i.if, %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.us.i72 ], [ %i.jg, %_ZSt12__move_mergeIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEET0_T_SH_SH_SH_SG_T1_.exit.i48 ]
  %.sroa.speculated.i54 = tail call i64 @llvm.smin.i64(i64 %i.ff, i64 %.lcssa45.i53) ; 2 uses
  %.idx43.i55 = shl nsw i64 %.sroa.speculated.i54, 4
  %i.jh = getelementptr inbounds i8, ptr %.0.lcssa.i51, i64 %.idx43.i55 ; 5 uses
  %i.ji = icmp ne i64 %.sroa.speculated.i54, 0
  %i.jj = icmp ne ptr %i.jh, %i.z
  %i.jk = and i1 %i.ji, %i.jj
  br i1 %i.jk, label %.lr.ph.i30.i61, label %._crit_edge.i25.i56

.lr.ph.i30.i61:                                   ; preds = %._crit_edge.i50, %bb.bz
  %.023.i31.i62 = phi ptr [ %.1.i35.i66, %bb.bz ], [ %.0.lcssa.i51, %._crit_edge.i50 ] ; 4 uses
  %.01622.i32.i63 = phi ptr [ %.117.i34.i65, %bb.bz ], [ %i.jh, %._crit_edge.i50 ] ; 4 uses
  %.sroa.0.021.i33.i64 = phi ptr [ %i.js, %bb.bz ], [ %.sroa.022.0.lcssa.i52, %._crit_edge.i50 ] ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.01622.i32.i63, i64 8
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !220
  %i.jn = getelementptr inbounds nuw i8, ptr %.023.i31.i62, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !220
  %i.jp = icmp ugt i64 %i.jm, %i.jo
  br i1 %i.jp, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph.i30.i61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i33.i64, ptr noundef nonnull align 8 dereferenceable(16) %.01622.i32.i63, i64 16, i1 false), !tbaa.struct !221
  %i.jq = getelementptr inbounds nuw i8, ptr %.01622.i32.i63, i64 16
  br label %bb.bz

bb.by:                                            ; preds = %.lr.ph.i30.i61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i33.i64, ptr noundef nonnull align 8 dereferenceable(16) %.023.i31.i62, i64 16, i1 false), !tbaa.struct !221
  %i.jr = getelementptr inbounds nuw i8, ptr %.023.i31.i62, i64 16
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.117.i34.i65 = phi ptr [ %i.jq, %bb.bx ], [ %.01622.i32.i63, %bb.by ] ; 3 uses
  %.1.i35.i66 = phi ptr [ %.023.i31.i62, %bb.bx ], [ %i.jr, %bb.by ] ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i33.i64, i64 16 ; 2 uses
  %i.jt = icmp ne ptr %.1.i35.i66, %i.jh
  %i.ju = icmp ne ptr %.117.i34.i65, %i.z
  %i.jv = select i1 %i.jt, i1 %i.ju, i1 false
  br i1 %i.jv, label %.lr.ph.i30.i61, label %._crit_edge.i25.i56, !llvm.loop !10

._crit_edge.i25.i56:                              ; preds = %bb.bz, %._crit_edge.i50
  %.sroa.0.0.lcssa.i26.i57 = phi ptr [ %.sroa.022.0.lcssa.i52, %._crit_edge.i50 ], [ %i.js, %bb.bz ] ; 3 uses
  %.016.lcssa.i27.i58 = phi ptr [ %i.jh, %._crit_edge.i50 ], [ %.117.i34.i65, %bb.bz ] ; 3 uses
  %.0.lcssa.i28.i59 = phi ptr [ %.0.lcssa.i51, %._crit_edge.i50 ], [ %.1.i35.i66, %bb.bz ] ; 3 uses
  %i.jw = ptrtoint ptr %i.jh to i64
  %i.jx = ptrtoint ptr %.0.lcssa.i28.i59 to i64
  %i.jy = sub i64 %i.jw, %i.jx                    ; 4 uses
  %i.jz = icmp sgt i64 %i.jy, 16
  br i1 %i.jz, label %bb.ca, label %bb.cb, !prof !218

bb.ca:                                            ; preds = %._crit_edge.i25.i56
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.0.lcssa.i26.i57, ptr align 8 %.0.lcssa.i28.i59, i64 %i.jy, i1 false)
  br label %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i29.i60

bb.cb:                                            ; preds = %._crit_edge.i25.i56
  %i.ka = icmp eq i64 %i.jy, 16
  br i1 %i.ka, label %bb.cc, label %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i29.i60

bb.cc:                                            ; preds = %bb.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa.i26.i57, ptr noundef nonnull align 8 dereferenceable(16) %.0.lcssa.i28.i59, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i29.i60

_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i29.i60: ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.kb = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i57, i64 %i.jy ; 2 uses
  %i.kc = ptrtoint ptr %.016.lcssa.i27.i58 to i64
  %i.kd = sub i64 %i.fe, %i.kc                    ; 3 uses
  %i.ke = icmp sgt i64 %i.kd, 16
  br i1 %i.ke, label %bb.cd, label %bb.ce, !prof !218

bb.cd:                                            ; preds = %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i29.i60
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kb, ptr align 8 %.016.lcssa.i27.i58, i64 %i.kd, i1 false)
  br label %_ZSt17__merge_sort_loopIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEEvT_SG_T0_T1_T2_.exit74

bb.ce:                                            ; preds = %_ZSt4moveIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit.i29.i60
  %i.kf = icmp eq i64 %i.kd, 16
  br i1 %i.kf, label %bb.cf, label %_ZSt17__merge_sort_loopIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEEvT_SG_T0_T1_T2_.exit74

bb.cf:                                            ; preds = %bb.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, ptr noundef nonnull align 8 dereferenceable(16) %.016.lcssa.i27.i58, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt17__merge_sort_loopIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEEvT_SG_T0_T1_T2_.exit74

_ZSt17__merge_sort_loopIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEEvT_SG_T0_T1_T2_.exit74: ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.kg = icmp slt i64 %i.hx, %i.p
  br i1 %i.kg, label %.lr.ph.i.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_T1_.exit.i, !llvm.loop !11

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_T1_.exit.i: ; preds = %_ZSt17__merge_sort_loopIP18InstrProfValueDataN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS0_SD_E_EEEvT_SG_T0_T1_T2_.exit74, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_T1_.exit158
  %i.kh = sub i64 %i.k, %i.y                      ; 7 uses
  %i.ki = ashr exact i64 %i.kh, 4                 ; 10 uses
  %i.kj = getelementptr inbounds i8, ptr %.sroa.10.0.i.i.i, i64 %i.kh ; 4 uses
  %.not30.i = icmp slt i64 %i.ki, 7
  br i1 %.not30.i, label %._crit_edge.i31, label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_T1_.exit.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_.exit.loopexit.i
  %i.kk = phi i64 [ %i.oq, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_.exit.loopexit.i ], [ %i.y, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_T1_.exit.i ] ; 6 uses
  %.sroa.027.031.i = phi ptr [ %i.op, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_.exit.loopexit.i ], [ %i.x, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_SG_T0_T1_.exit.i ] ; 48 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 8 ; 6 uses
  %.sroa.0.019.i.i.ptr = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 16 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 24
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !220
  %i.ko = load i64, ptr %i.kl, align 8, !tbaa !220 ; 2 uses
  %i.kp = icmp ugt i64 %i.kn, %i.ko
  br i1 %i.kp, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %.lr.ph.i.i27
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.0.019.i.i.ptr, align 8, !tbaa !135
  %i.kq = ptrtoint ptr %.sroa.0.019.i.i.ptr to i64
  %i.kr = sub i64 %i.kq, %i.kk                    ; 3 uses
  %i.ks = ashr exact i64 %i.kr, 4                 ; 2 uses
  %i.kt = icmp sgt i64 %i.ks, 1
  br i1 %i.kt, label %bb.ch, label %bb.ci, !prof !218

bb.ch:                                            ; preds = %bb.cg
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 32
  %i.kv = sub nsw i64 0, %i.ks
  %i.kw = getelementptr inbounds [16 x i8], ptr %i.ku, i64 %i.kv
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kw, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.031.i, i64 %i.kr, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.kx = icmp eq i64 %i.kr, 16
  br i1 %i.kx, label %bb.cj, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.i.ptr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.031.i, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i: ; preds = %bb.cj, %bb.ci, %bb.ch
  store <2 x i64> %.sroa.0.0.copyload, ptr %.sroa.027.031.i, align 8, !tbaa !135
  %.pre304 = load i64, ptr %i.kl, align 8, !tbaa !220
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i27, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i
  %i.ky = phi i64 [ %.pre304, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i ], [ %i.ko, %.lr.ph.i.i27 ]
  %.sroa.0.019.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 32 ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 40
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !220 ; 4 uses
  %i.lb = icmp ugt i64 %i.la, %i.ky
  br i1 %i.lb, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.03.0.copyload.i.i.i.1 = load i64, ptr %.sroa.0.019.i.i.ptr.1, align 8, !tbaa !135
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 24
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !220
  %i.le = icmp ugt i64 %i.la, %i.ld
  br i1 %i.le, label %.lr.ph.i.i.i.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.cl, %.lr.ph.i.i.i.1
  %.sroa.07.010.i.i.i.1 = phi ptr [ %.sroa.0.0.i.i.i.1, %.lr.ph.i.i.i.1 ], [ %.sroa.0.019.i.i.ptr.1, %bb.cl ] ; 3 uses
  %.sroa.0.0.i.i.i.1 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i.1, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.1, i64 16, i1 false), !tbaa.struct !221
  %i.lf = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i.1, i64 -24
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !220
  %i.lh = icmp ugt i64 %i.la, %i.lg
  br i1 %i.lh, label %.lr.ph.i.i.i.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.1, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.1, %bb.cl
  %.sroa.07.0.lcssa.i.i.i.1 = phi ptr [ %.sroa.0.019.i.i.ptr.1, %bb.cl ], [ %.sroa.0.0.i.i.i.1, %.lr.ph.i.i.i.1 ] ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i.1, ptr %.sroa.07.0.lcssa.i.i.i.1, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx5.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.1, i64 8
  store i64 %i.la, ptr %.sroa.4.0..sroa_idx5.i.i.i.1, align 8, !tbaa !135
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ck
  %.sroa.0.0.copyload600 = load <2 x i64>, ptr %.sroa.0.019.i.i.ptr.1, align 8, !tbaa !135
  %i.li = ptrtoint ptr %.sroa.0.019.i.i.ptr.1 to i64
  %i.lj = sub i64 %i.li, %i.kk                    ; 3 uses
  %i.lk = ashr exact i64 %i.lj, 4                 ; 2 uses
  %i.ll = icmp sgt i64 %i.lk, 1
  br i1 %i.ll, label %bb.cp, label %bb.cn, !prof !218

bb.cn:                                            ; preds = %bb.cm
  %i.lm = icmp eq i64 %i.lj, 16
  br i1 %i.lm, label %bb.co, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.1

bb.co:                                            ; preds = %bb.cn
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ln, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.031.i, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.1

bb.cp:                                            ; preds = %bb.cm
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 48
  %i.lp = sub nsw i64 0, %i.lk
  %i.lq = getelementptr inbounds [16 x i8], ptr %i.lo, i64 %i.lp
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lq, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.031.i, i64 %i.lj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.1

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.1: ; preds = %bb.cp, %bb.co, %bb.cn
  store <2 x i64> %.sroa.0.0.copyload600, ptr %.sroa.027.031.i, align 8, !tbaa !135
  br label %bb.cq

bb.cq:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.1
  %.sroa.0.019.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 48 ; 5 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 56
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !220 ; 4 uses
  %i.lt = load i64, ptr %i.kl, align 8, !tbaa !220
  %i.lu = icmp ugt i64 %i.ls, %i.lt
  br i1 %i.lu, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.sroa.03.0.copyload.i.i.i.2 = load i64, ptr %.sroa.0.019.i.i.ptr.2, align 8, !tbaa !135
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 40
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !220
  %i.lx = icmp ugt i64 %i.ls, %i.lw
  br i1 %i.lx, label %.lr.ph.i.i.i.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.cr, %.lr.ph.i.i.i.2
  %.sroa.07.010.i.i.i.2 = phi ptr [ %.sroa.0.0.i.i.i.2, %.lr.ph.i.i.i.2 ], [ %.sroa.0.019.i.i.ptr.2, %bb.cr ] ; 3 uses
  %.sroa.0.0.i.i.i.2 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i.2, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.2, i64 16, i1 false), !tbaa.struct !221
  %i.ly = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i.2, i64 -24
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !220
  %i.ma = icmp ugt i64 %i.ls, %i.lz
  br i1 %i.ma, label %.lr.ph.i.i.i.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.2, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.2, %bb.cr
  %.sroa.07.0.lcssa.i.i.i.2 = phi ptr [ %.sroa.0.019.i.i.ptr.2, %bb.cr ], [ %.sroa.0.0.i.i.i.2, %.lr.ph.i.i.i.2 ] ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i.2, ptr %.sroa.07.0.lcssa.i.i.i.2, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx5.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.2, i64 8
  store i64 %i.ls, ptr %.sroa.4.0..sroa_idx5.i.i.i.2, align 8, !tbaa !135
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  %.sroa.0.0.copyload602 = load <2 x i64>, ptr %.sroa.0.019.i.i.ptr.2, align 8, !tbaa !135
  %i.mb = ptrtoint ptr %.sroa.0.019.i.i.ptr.2 to i64
  %i.mc = sub i64 %i.mb, %i.kk                    ; 3 uses
  %i.md = ashr exact i64 %i.mc, 4                 ; 2 uses
  %i.me = icmp sgt i64 %i.md, 1
  br i1 %i.me, label %bb.cv, label %bb.ct, !prof !218

bb.ct:                                            ; preds = %bb.cs
  %i.mf = icmp eq i64 %i.mc, 16
  br i1 %i.mf, label %bb.cu, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.2

bb.cu:                                            ; preds = %bb.ct
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.031.i, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.2

bb.cv:                                            ; preds = %bb.cs
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 64
  %i.mi = sub nsw i64 0, %i.md
  %i.mj = getelementptr inbounds [16 x i8], ptr %i.mh, i64 %i.mi
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mj, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.031.i, i64 %i.mc, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.2

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.2: ; preds = %bb.cv, %bb.cu, %bb.ct
  store <2 x i64> %.sroa.0.0.copyload602, ptr %.sroa.027.031.i, align 8, !tbaa !135
  br label %bb.cw

bb.cw:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.2, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.2
  %.sroa.0.019.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 64 ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 72
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !220 ; 4 uses
  %i.mm = load i64, ptr %i.kl, align 8, !tbaa !220
  %i.mn = icmp ugt i64 %i.ml, %i.mm
  br i1 %i.mn, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.sroa.03.0.copyload.i.i.i.3 = load i64, ptr %.sroa.0.019.i.i.ptr.3, align 8, !tbaa !135
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 56
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !220
  %i.mq = icmp ugt i64 %i.ml, %i.mp
  br i1 %i.mq, label %.lr.ph.i.i.i.3, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.cx, %.lr.ph.i.i.i.3
  %.sroa.07.010.i.i.i.3 = phi ptr [ %.sroa.0.0.i.i.i.3, %.lr.ph.i.i.i.3 ], [ %.sroa.0.019.i.i.ptr.3, %bb.cx ] ; 3 uses
  %.sroa.0.0.i.i.i.3 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i.3, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i.i.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.3, i64 16, i1 false), !tbaa.struct !221
  %i.mr = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i.3, i64 -24
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !220
  %i.mt = icmp ugt i64 %i.ml, %i.ms
  br i1 %i.mt, label %.lr.ph.i.i.i.3, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.3, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.3: ; preds = %.lr.ph.i.i.i.3, %bb.cx
  %.sroa.07.0.lcssa.i.i.i.3 = phi ptr [ %.sroa.0.019.i.i.ptr.3, %bb.cx ], [ %.sroa.0.0.i.i.i.3, %.lr.ph.i.i.i.3 ] ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i.3, ptr %.sroa.07.0.lcssa.i.i.i.3, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx5.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.3, i64 8
  store i64 %i.ml, ptr %.sroa.4.0..sroa_idx5.i.i.i.3, align 8, !tbaa !135
  br label %bb.dc

bb.cy:                                            ; preds = %bb.cw
  %.sroa.0.0.copyload604 = load <2 x i64>, ptr %.sroa.0.019.i.i.ptr.3, align 8, !tbaa !135
  %i.mu = ptrtoint ptr %.sroa.0.019.i.i.ptr.3 to i64
  %i.mv = sub i64 %i.mu, %i.kk                    ; 3 uses
  %i.mw = ashr exact i64 %i.mv, 4                 ; 2 uses
  %i.mx = icmp sgt i64 %i.mw, 1
  br i1 %i.mx, label %bb.db, label %bb.cz, !prof !218

bb.cz:                                            ; preds = %bb.cy
  %i.my = icmp eq i64 %i.mv, 16
  br i1 %i.my, label %bb.da, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.3

bb.da:                                            ; preds = %bb.cz
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.031.i, i64 16, i1 false), !tbaa.struct !221
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.3

bb.db:                                            ; preds = %bb.cy
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 80
  %i.nb = sub nsw i64 0, %i.mw
  %i.nc = getelementptr inbounds [16 x i8], ptr %i.na, i64 %i.nb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nc, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.031.i, i64 %i.mv, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.3

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.3: ; preds = %bb.db, %bb.da, %bb.cz
  store <2 x i64> %.sroa.0.0.copyload604, ptr %.sroa.027.031.i, align 8, !tbaa !135
  br label %bb.dc

bb.dc:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.3
  %.sroa.0.019.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 80 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 88
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !220 ; 4 uses
  %i.nf = load i64, ptr %i.kl, align 8, !tbaa !220
  %i.ng = icmp ugt i64 %i.ne, %i.nf
  br i1 %i.ng, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.sroa.03.0.copyload.i.i.i.4 = load i64, ptr %.sroa.0.019.i.i.ptr.4, align 8, !tbaa !135
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 72
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !220
  %i.nj = icmp ugt i64 %i.ne, %i.ni
  br i1 %i.nj, label %.lr.ph.i.i.i.4, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.dd, %.lr.ph.i.i.i.4
  %.sroa.07.010.i.i.i.4 = phi ptr [ %.sroa.0.0.i.i.i.4, %.lr.ph.i.i.i.4 ], [ %.sroa.0.019.i.i.ptr.4, %bb.dd ] ; 3 uses
  %.sroa.0.0.i.i.i.4 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i.4, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.010.i.i.i.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.4, i64 16, i1 false), !tbaa.struct !221
  %i.nk = getelementptr inbounds i8, ptr %.sroa.07.010.i.i.i.4, i64 -24
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !220
  %i.nm = icmp ugt i64 %i.ne, %i.nl
  br i1 %i.nm, label %.lr.ph.i.i.i.4, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.4, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP18InstrProfValueDataSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN4llvm24InstrProfValueSiteRecord11sortByCountEvEUlRKS2_SD_E_EEEvT_T0_.exit.i.i.4: ; preds = %.lr.ph.i.i.i.4, %bb.dd
end_hunk_1
begin_hunk_2_@_ZN4llvm15InstrProfWriter17writeRecordInTextENS_9StringRefEmRKNS_15InstrProfRecordERNS_15InstrProfSymtabERNS_14raw_fd_ostreamE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ng, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i, i64 16, i1 false), !tbaa.struct !204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i)
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i189, i64 24 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.nh, %.pre603
  br i1 %.not.i16.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %.lr.ph.i13.i, !llvm.loop !27

.preheader.i23.i:                                 ; preds = %bb.bj
  %.sroa.08.017.i24.i = getelementptr inbounds nuw i8, ptr %.pre601, i64 24 ; 2 uses
  %.not18.i25.i = icmp eq ptr %.sroa.08.017.i24.i, %.pre603
  br i1 %.not18.i25.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.preheader.i23.i
  %i.ni = getelementptr inbounds nuw i8, ptr %.pre601, i64 8
  %.pre22.i27.i = load i64, ptr %.pre601, align 8, !tbaa !135
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bq, %.lr.ph.i26.i
  %i.nj = phi i64 [ %.pre22.i27.i, %.lr.ph.i26.i ], [ %i.og, %bb.bq ]
  %.sroa.08.020.i28.i = phi ptr [ %.sroa.08.017.i24.i, %.lr.ph.i26.i ], [ %.sroa.08.0.i34.i, %bb.bq ] ; 7 uses
  %.pn19.i29.i = phi ptr [ %.pre601, %.lr.ph.i26.i ], [ %.sroa.08.020.i28.i, %bb.bq ] ; 4 uses
  %i.nk = load i64, ptr %.sroa.08.020.i28.i, align 8, !tbaa !135 ; 6 uses
  %i.nl = icmp ult i64 %i.nk, %i.nj
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %.pn19.i29.i, i64 32 ; 2 uses
  br i1 %i.nl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i22.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i30.i, i64 16, i1 false)
  %i.nm = ptrtoint ptr %.sroa.08.020.i28.i to i64
  %i.nn = sub i64 %i.nm, %i.lj                    ; 2 uses
  %i.no = icmp sgt i64 %i.nn, 0
  br i1 %i.no, label %.lr.ph.preheader.i.i.i.i.i.i41.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i

.lr.ph.preheader.i.i.i.i.i.i41.i:                 ; preds = %bb.bo
  %i.np = getelementptr inbounds nuw i8, ptr %.pn19.i29.i, i64 48
  %i.nq = udiv exact i64 %i.nn, 24
  br label %.lr.ph.i.i.i.i.i.i42.i

.lr.ph.i.i.i.i.i.i42.i:                           ; preds = %.lr.ph.i.i.i.i.i.i42.i, %.lr.ph.preheader.i.i.i.i.i.i41.i
  %.010.i.i.i.i.i.i43.i = phi i64 [ %i.nw, %.lr.ph.i.i.i.i.i.i42.i ], [ %i.nq, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %.069.i.i.i.i.i.i44.i = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i.i42.i ], [ %i.np, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %.078.i.i.i.i.i.i45.i = phi ptr [ %i.nr, %.lr.ph.i.i.i.i.i.i42.i ], [ %.sroa.08.020.i28.i, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i, i64 -24 ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i, i64 -24 ; 2 uses
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !135
  store i64 %i.nt, ptr %i.ns, align 8, !tbaa !370
  %i.nu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i, i64 -16
  %i.nv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nv, ptr noundef nonnull align 8 dereferenceable(16) %i.nu, i64 16, i1 false), !tbaa.struct !204
  %i.nw = add nsw i64 %.010.i.i.i.i.i.i43.i, -1
  %i.nx = icmp samesign ugt i64 %.010.i.i.i.i.i.i43.i, 1
  br i1 %i.nx, label %.lr.ph.i.i.i.i.i.i42.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i, !llvm.loop !24

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i: ; preds = %.lr.ph.i.i.i.i.i.i42.i, %bb.bo
  store i64 %i.nk, ptr %.pre601, align 8, !tbaa !370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ni, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i, i64 16, i1 false), !tbaa.struct !204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i22.i)
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i21.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i30.i, i64 16, i1 false)
  %i.ny = load i64, ptr %.pn19.i29.i, align 8, !tbaa !135 ; 2 uses
  %i.nz = icmp ult i64 %i.nk, %i.ny
  br i1 %i.nz, label %.lr.ph.i.i36.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i

.lr.ph.i.i36.i:                                   ; preds = %bb.bp, %.lr.ph.i.i36.i
  %i.oa = phi i64 [ %i.od, %.lr.ph.i.i36.i ], [ %i.ny, %bb.bp ]
  %.sroa.0.010.i.i37.i = phi ptr [ %.sroa.0.0.i.i39.i, %.lr.ph.i.i36.i ], [ %.pn19.i29.i, %bb.bp ] ; 3 uses
  %.sroa.05.09.i.i38.i = phi ptr [ %.sroa.0.010.i.i37.i, %.lr.ph.i.i36.i ], [ %.sroa.08.020.i28.i, %bb.bp ] ; 3 uses
  store i64 %i.oa, ptr %.sroa.05.09.i.i38.i, align 8, !tbaa !370
  %i.ob = getelementptr inbounds i8, ptr %.sroa.05.09.i.i38.i, i64 -16
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i38.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oc, ptr noundef nonnull align 8 dereferenceable(16) %i.ob, i64 16, i1 false), !tbaa.struct !204
  %.sroa.0.0.i.i39.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i37.i, i64 -24 ; 2 uses
  %i.od = load i64, ptr %.sroa.0.0.i.i39.i, align 8, !tbaa !135 ; 2 uses
  %i.oe = icmp ult i64 %i.nk, %i.od
  br i1 %i.oe, label %.lr.ph.i.i36.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i, !llvm.loop !25

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i: ; preds = %.lr.ph.i.i36.i, %bb.bp
  %.sroa.05.0.lcssa.i.i32.i = phi ptr [ %.sroa.08.020.i28.i, %bb.bp ], [ %.sroa.0.010.i.i37.i, %.lr.ph.i.i36.i ] ; 2 uses
  store i64 %i.nk, ptr %.sroa.05.0.lcssa.i.i32.i, align 8, !tbaa !370
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i32.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.of, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i, i64 16, i1 false), !tbaa.struct !204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i21.i)
  %.pre.i33.i = load i64, ptr %.pre601, align 8, !tbaa !135
  br label %bb.bq

bb.bq:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i
  %i.og = phi i64 [ %i.nk, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i ], [ %.pre.i33.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i ]
  %.sroa.08.0.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i, i64 24 ; 2 uses
  %.not.i35.i = icmp eq ptr %.sroa.08.0.i34.i, %.pre603
  br i1 %.not.i35.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %bb.bn, !llvm.loop !26

_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i: ; preds = %bb.bq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i14.i, %.preheader.i23.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_.exit.i, %bb.bi
  %i.oh = load ptr, ptr %i.hg, align 8, !tbaa !371 ; 17 uses
  %i.oi = load ptr, ptr %i.hh, align 8, !tbaa !371 ; 13 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i
  %i.ok = ptrtoint ptr %i.oi to i64               ; 5 uses
  %i.ol = ptrtoint ptr %i.oh to i64               ; 3 uses
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = ashr exact i64 %i.om, 4                 ; 5 uses
  %i.oo = add nsw i64 %i.on, 1
  %i.op = sdiv i64 %i.oo, 2                       ; 10 uses
  %i.oq = icmp sgt i64 %i.on, 0                   ; 2 uses
  br i1 %i.oq, label %.lr.ph.i.i.i174, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i

.lr.ph.i.i.i174:                                  ; preds = %bb.br, %select.unfold.i.i.i
  %.010.i.i.i = phi i64 [ %i.ov, %select.unfold.i.i.i ], [ %i.op, %bb.br ] ; 5 uses
  %i.or = shl nuw nsw i64 %.010.i.i.i, 4          ; 3 uses
  %i.os = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.or, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i, label %select.unfold.i.i.i, label %bb.bs

select.unfold.i.i.i:                              ; preds = %.lr.ph.i.i.i174
  %i.ot = icmp eq i64 %.010.i.i.i, 1
  %i.ou = add nuw nsw i64 %.010.i.i.i, 1
  %i.ov = lshr i64 %i.ou, 1
  br i1 %i.ot, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i, label %.lr.ph.i.i.i174, !llvm.loop !28

bb.bs:                                            ; preds = %.lr.ph.i.i.i174
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.or
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.os, ptr noundef nonnull align 8 dereferenceable(16) %i.oh, i64 16, i1 false)
  %.not18.i.i.i.i175 = icmp eq i64 %.010.i.i.i, 1
  br i1 %.not18.i.i.i.i175, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.bs
  %.01317.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.os, i64 16 ; 2 uses
  %i.ox = add nsw i64 %i.or, -32                  ; 2 uses
  %i.oy = lshr exact i64 %i.ox, 4
  %i.oz = add nuw nsw i64 %i.oy, 1
  %xtraiter957 = and i64 %i.oz, 3                 ; 2 uses
  %lcmp.mod958.not = icmp eq i64 %xtraiter957, 0
  br i1 %lcmp.mod958.not, label %.lr.ph.i.i.i.i176.prol.loopexit, label %.lr.ph.i.i.i.i176.prol

.lr.ph.i.i.i.i176.prol:                           ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i176.prol
  %.01320.i.i.i.i.prol = phi ptr [ %.013.i.i.i.i.prol, %.lr.ph.i.i.i.i176.prol ], [ %.01317.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.019.i.i.i.i.prol = phi ptr [ %i.pa, %.lr.ph.i.i.i.i176.prol ], [ %i.os, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i176.prol ], [ 0, %.lr.ph.i.i.preheader.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.prol, i64 16, i1 false)
  %i.pa = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.prol, i64 16 ; 3 uses
  %.013.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter957
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i176.prol.loopexit, label %.lr.ph.i.i.i.i176.prol, !llvm.loop !628

.lr.ph.i.i.i.i176.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i176.prol, %.lr.ph.i.i.preheader.i.i
  %.lcssa907.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i ], [ %i.pa, %.lr.ph.i.i.i.i176.prol ]
  %.01320.i.i.i.i.unr = phi ptr [ %.01317.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.013.i.i.i.i.prol, %.lr.ph.i.i.i.i176.prol ]
  %.019.i.i.i.i.unr = phi ptr [ %i.os, %.lr.ph.i.i.preheader.i.i ], [ %i.pa, %.lr.ph.i.i.i.i176.prol ]
  %i.pb = icmp ult i64 %i.ox, 48
  br i1 %i.pb, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i.i176

.lr.ph.i.i.i.i176:                                ; preds = %.lr.ph.i.i.i.i176.prol.loopexit, %.lr.ph.i.i.i.i176
  %.01320.i.i.i.i = phi ptr [ %.013.i.i.i.i.3, %.lr.ph.i.i.i.i176 ], [ %.01320.i.i.i.i.unr, %.lr.ph.i.i.i.i176.prol.loopexit ] ; 5 uses
  %.019.i.i.i.i = phi ptr [ %i.pf, %.lr.ph.i.i.i.i176 ], [ %.019.i.i.i.i.unr, %.lr.ph.i.i.i.i176.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i, i64 16, i1 false)
  %i.pc = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 16
  %.013.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pc, i64 16, i1 false)
  %i.pd = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 32
  %.013.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.pd, i64 16, i1 false)
  %i.pe = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 48
  %.013.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.pe, i64 16, i1 false)
  %i.pf = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i177.3 = icmp eq ptr %.013.i.i.i.i.3, %i.ow
  br i1 %.not.i.i.i.i177.3, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i.i176, !llvm.loop !29

_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i176.prol.loopexit, %.lr.ph.i.i.i.i176, %bb.bs
  %.0.lcssa.i.i.i.i = phi ptr [ %i.os, %bb.bs ], [ %.lcssa907.unr, %.lr.ph.i.i.i.i176.prol.loopexit ], [ %i.pf, %.lr.ph.i.i.i.i176 ] ; 2 uses
  %i.pg = load i64, ptr %.0.lcssa.i.i.i.i, align 8, !tbaa !135
  store i64 %i.pg, ptr %i.oh, align 8, !tbaa !375
  %i.ph = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !376
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store ptr %i.pi, ptr %i.pj, align 8, !tbaa !377
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i: ; preds = %select.unfold.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, %bb.br
  %.sroa.4.0.i = phi i64 [ 0, %bb.br ], [ %.010.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i ], [ 0, %select.unfold.i.i.i ] ; 3 uses
  %.sroa.10.0.i = phi ptr [ null, %bb.br ], [ %i.os, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i ], [ null, %select.unfold.i.i.i ] ; 22 uses
  %i.pk = icmp eq i64 %i.op, %.sroa.4.0.i
  br i1 %i.pk, label %bb.bt, label %bb.ey, !prof !218

bb.bt:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i
  %.idx464 = shl nsw i64 %i.op, 4                 ; 2 uses
  %i.pl = getelementptr inbounds i8, ptr %i.oh, i64 %.idx464 ; 16 uses
  %i.pm = ptrtoint ptr %i.pl to i64               ; 6 uses
  %i.pn = getelementptr inbounds i8, ptr %.sroa.10.0.i, i64 %.idx464 ; 3 uses
  %.not38.i393 = icmp slt i64 %i.on, 13
  br i1 %.not38.i393, label %._crit_edge.i410, label %.lr.ph.i.i395

.lr.ph.i.i395:                                    ; preds = %bb.bt, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i408
  %i.po = phi i64 [ %i.abb, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i408 ], [ %i.ol, %bb.bt ] ; 6 uses
  %.sroa.035.039.i396 = phi ptr [ %i.aba, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i408 ], [ %i.oh, %bb.bt ] ; 31 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i396, i64 8 ; 6 uses
  %.pre22.i.i398 = load i64, ptr %.sroa.035.039.i396, align 8, !tbaa !135 ; 2 uses
  %.sroa.08.020.i.i399.ptr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i396, i64 16 ; 6 uses
  %i.pq = load i64, ptr %.sroa.08.020.i.i399.ptr, align 8, !tbaa !135 ; 3 uses
  %i.pr = icmp ult i64 %i.pq, %.pre22.i.i398
  %.sroa.4.0..sroa_idx.i.i401 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i396, i64 24
  %.sroa.4.0.copyload.i.i402 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i401, align 8
  br i1 %i.pr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i.i395
  %i.ps = ptrtoint ptr %.sroa.08.020.i.i399.ptr to i64
  %i.pt = sub i64 %i.ps, %i.po
  %i.pu = ashr exact i64 %i.pt, 4                 ; 5 uses
  %i.pv = icmp sgt i64 %i.pu, 0
  br i1 %i.pv, label %.lr.ph.i.i.i.i.i.preheader.i.i442, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441

.lr.ph.i.i.i.i.i.preheader.i.i442:                ; preds = %bb.bu
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i396, i64 32 ; 2 uses
  %xtraiter959 = and i64 %i.pu, 3                 ; 2 uses
  %lcmp.mod960.not = icmp eq i64 %xtraiter959, 0
  br i1 %lcmp.mod960.not, label %.lr.ph.i.i.i.i.i.i.i443.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i443.prol

.lr.ph.i.i.i.i.i.i.i443.prol:                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i442, %.lr.ph.i.i.i.i.i.i.i443.prol
  %.010.i.i.i.i.i.i.i444.prol = phi i64 [ %i.qd, %.lr.ph.i.i.i.i.i.i.i443.prol ], [ %i.pu, %.lr.ph.i.i.i.i.i.preheader.i.i442 ]
  %.069.i.i.i.i.i.i.i445.prol = phi ptr [ %i.py, %.lr.ph.i.i.i.i.i.i.i443.prol ], [ %i.pw, %.lr.ph.i.i.i.i.i.preheader.i.i442 ] ; 2 uses
  %.078.i.i.i.i.i.i.i446.prol = phi ptr [ %i.px, %.lr.ph.i.i.i.i.i.i.i443.prol ], [ %.sroa.08.020.i.i399.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i442 ] ; 2 uses
  %prol.iter961 = phi i64 [ %prol.iter961.next, %.lr.ph.i.i.i.i.i.i.i443.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i442 ]
  %i.px = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.prol, i64 -16 ; 3 uses
  %i.py = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.prol, i64 -16 ; 3 uses
  %i.pz = load i64, ptr %i.px, align 8, !tbaa !135
  store i64 %i.pz, ptr %i.py, align 8, !tbaa !375
  %i.qa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.prol, i64 -8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !376
  %i.qc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.prol, i64 -8
  store ptr %i.qb, ptr %i.qc, align 8, !tbaa !377
  %i.qd = add nsw i64 %.010.i.i.i.i.i.i.i444.prol, -1 ; 2 uses
  %prol.iter961.next = add i64 %prol.iter961, 1   ; 2 uses
  %prol.iter961.cmp.not = icmp eq i64 %prol.iter961.next, %xtraiter959
  br i1 %prol.iter961.cmp.not, label %.lr.ph.i.i.i.i.i.i.i443.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i443.prol, !llvm.loop !629

.lr.ph.i.i.i.i.i.i.i443.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i443.prol, %.lr.ph.i.i.i.i.i.preheader.i.i442
  %.010.i.i.i.i.i.i.i444.unr = phi i64 [ %i.pu, %.lr.ph.i.i.i.i.i.preheader.i.i442 ], [ %i.qd, %.lr.ph.i.i.i.i.i.i.i443.prol ]
  %.069.i.i.i.i.i.i.i445.unr = phi ptr [ %i.pw, %.lr.ph.i.i.i.i.i.preheader.i.i442 ], [ %i.py, %.lr.ph.i.i.i.i.i.i.i443.prol ]
  %.078.i.i.i.i.i.i.i446.unr = phi ptr [ %.sroa.08.020.i.i399.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i442 ], [ %i.px, %.lr.ph.i.i.i.i.i.i.i443.prol ]
  %i.qe = icmp ult i64 %i.pu, 4
  br i1 %i.qe, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441, label %.lr.ph.i.i.i.i.i.i.i443

.lr.ph.i.i.i.i.i.i.i443:                          ; preds = %.lr.ph.i.i.i.i.i.i.i443.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i443
  %.010.i.i.i.i.i.i.i444 = phi i64 [ %i.rd, %.lr.ph.i.i.i.i.i.i.i443 ], [ %.010.i.i.i.i.i.i.i444.unr, %.lr.ph.i.i.i.i.i.i.i443.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i445 = phi ptr [ %i.qy, %.lr.ph.i.i.i.i.i.i.i443 ], [ %.069.i.i.i.i.i.i.i445.unr, %.lr.ph.i.i.i.i.i.i.i443.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i446 = phi ptr [ %i.qx, %.lr.ph.i.i.i.i.i.i.i443 ], [ %.078.i.i.i.i.i.i.i446.unr, %.lr.ph.i.i.i.i.i.i.i443.prol.loopexit ] ; 8 uses
  %i.qf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446, i64 -16
  %i.qg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445, i64 -16
  %i.qh = load i64, ptr %i.qf, align 8, !tbaa !135
  store i64 %i.qh, ptr %i.qg, align 8, !tbaa !375
  %i.qi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446, i64 -8
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !376
  %i.qk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445, i64 -8
  store ptr %i.qj, ptr %i.qk, align 8, !tbaa !377
  %i.ql = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446, i64 -32
  %i.qm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445, i64 -32
  %i.qn = load i64, ptr %i.ql, align 8, !tbaa !135
  store i64 %i.qn, ptr %i.qm, align 8, !tbaa !375
  %i.qo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446, i64 -24
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !376
  %i.qq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445, i64 -24
  store ptr %i.qp, ptr %i.qq, align 8, !tbaa !377
  %i.qr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446, i64 -48
  %i.qs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445, i64 -48
  %i.qt = load i64, ptr %i.qr, align 8, !tbaa !135
  store i64 %i.qt, ptr %i.qs, align 8, !tbaa !375
  %i.qu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446, i64 -40
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !376
  %i.qw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445, i64 -40
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !377
  %i.qx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446, i64 -64 ; 2 uses
  %i.qy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445, i64 -64 ; 2 uses
  %i.qz = load i64, ptr %i.qx, align 8, !tbaa !135
  store i64 %i.qz, ptr %i.qy, align 8, !tbaa !375
  %i.ra = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446, i64 -56
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !376
  %i.rc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445, i64 -56
  store ptr %i.rb, ptr %i.rc, align 8, !tbaa !377
  %i.rd = add nsw i64 %.010.i.i.i.i.i.i.i444, -4
  %i.re = icmp sgt i64 %.010.i.i.i.i.i.i.i444, 4
  br i1 %i.re, label %.lr.ph.i.i.i.i.i.i.i443, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441: ; preds = %.lr.ph.i.i.i.i.i.i.i443.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i443, %bb.bu
  store i64 %i.pq, ptr %.sroa.035.039.i396, align 8, !tbaa !375
  store ptr %.sroa.4.0.copyload.i.i402, ptr %i.pp, align 8, !tbaa !377
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i395, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441
  %i.rf = phi i64 [ %i.pq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441 ], [ %.pre22.i.i398, %.lr.ph.i.i395 ]
  %.sroa.08.020.i.i399.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i396, i64 32 ; 8 uses
  %i.rg = load i64, ptr %.sroa.08.020.i.i399.ptr.1, align 8, !tbaa !135 ; 6 uses
  %i.rh = icmp ult i64 %i.rg, %i.rf
  %.sroa.4.0..sroa_idx.i.i401.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i396, i64 40
  %.sroa.4.0.copyload.i.i402.1 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i401.1, align 8 ; 2 uses
  br i1 %i.rh, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ri = load i64, ptr %.sroa.08.020.i.i399.ptr, align 8, !tbaa !135 ; 2 uses
  %i.rj = icmp ult i64 %i.rg, %i.ri
  br i1 %i.rj, label %.lr.ph.i.i.i437.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i403.1

.lr.ph.i.i.i437.1:                                ; preds = %bb.bw, %.lr.ph.i.i.i437.1
  %i.rk = phi i64 [ %i.ro, %.lr.ph.i.i.i437.1 ], [ %i.ri, %bb.bw ]
  %.sroa.0.010.i.i.i438.1 = phi ptr [ %.sroa.0.0.i.i.i440.1, %.lr.ph.i.i.i437.1 ], [ %.sroa.08.020.i.i399.ptr, %bb.bw ] ; 3 uses
  %.sroa.05.09.i.i.i439.1 = phi ptr [ %.sroa.0.010.i.i.i438.1, %.lr.ph.i.i.i437.1 ], [ %.sroa.08.020.i.i399.ptr.1, %bb.bw ] ; 3 uses
  store i64 %i.rk, ptr %.sroa.05.09.i.i.i439.1, align 8, !tbaa !375
  %i.rl = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i439.1, i64 -8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !376
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i439.1, i64 8
  store ptr %i.rm, ptr %i.rn, align 8, !tbaa !377
  %.sroa.0.0.i.i.i440.1 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i438.1, i64 -16 ; 2 uses
  %i.ro = load i64, ptr %.sroa.0.0.i.i.i440.1, align 8, !tbaa !135 ; 2 uses
  %i.rp = icmp ult i64 %i.rg, %i.ro
  br i1 %i.rp, label %.lr.ph.i.i.i437.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i403.1, !llvm.loop !31

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i403.1: ; preds = %.lr.ph.i.i.i437.1, %bb.bw
  %.sroa.05.0.lcssa.i.i.i404.1 = phi ptr [ %.sroa.08.020.i.i399.ptr.1, %bb.bw ], [ %.sroa.0.010.i.i.i438.1, %.lr.ph.i.i.i437.1 ] ; 2 uses
  store i64 %i.rg, ptr %.sroa.05.0.lcssa.i.i.i404.1, align 8, !tbaa !375
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i404.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i402.1, ptr %i.rq, align 8, !tbaa !377
  %.pre.i.i405.1 = load i64, ptr %.sroa.035.039.i396, align 8, !tbaa !135
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.rr = ptrtoint ptr %.sroa.08.020.i.i399.ptr.1 to i64
  %i.rs = sub i64 %i.rr, %i.po
  %i.rt = ashr exact i64 %i.rs, 4                 ; 5 uses
  %i.ru = icmp sgt i64 %i.rt, 0
  br i1 %i.ru, label %.lr.ph.i.i.i.i.i.preheader.i.i442.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441.1

.lr.ph.i.i.i.i.i.preheader.i.i442.1:              ; preds = %bb.bx
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i396, i64 48 ; 2 uses
  %xtraiter974 = and i64 %i.rt, 3                 ; 2 uses
  %lcmp.mod975.not = icmp eq i64 %xtraiter974, 0
  br i1 %lcmp.mod975.not, label %.lr.ph.i.i.i.i.i.i.i443.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i443.1.prol

.lr.ph.i.i.i.i.i.i.i443.1.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i442.1, %.lr.ph.i.i.i.i.i.i.i443.1.prol
  %.010.i.i.i.i.i.i.i444.1.prol = phi i64 [ %i.sc, %.lr.ph.i.i.i.i.i.i.i443.1.prol ], [ %i.rt, %.lr.ph.i.i.i.i.i.preheader.i.i442.1 ]
  %.069.i.i.i.i.i.i.i445.1.prol = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i.i.i443.1.prol ], [ %i.rv, %.lr.ph.i.i.i.i.i.preheader.i.i442.1 ] ; 2 uses
  %.078.i.i.i.i.i.i.i446.1.prol = phi ptr [ %i.rw, %.lr.ph.i.i.i.i.i.i.i443.1.prol ], [ %.sroa.08.020.i.i399.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i442.1 ] ; 2 uses
  %prol.iter976 = phi i64 [ %prol.iter976.next, %.lr.ph.i.i.i.i.i.i.i443.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i442.1 ]
  %i.rw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.1.prol, i64 -16 ; 3 uses
  %i.rx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.1.prol, i64 -16 ; 3 uses
  %i.ry = load i64, ptr %i.rw, align 8, !tbaa !135
  store i64 %i.ry, ptr %i.rx, align 8, !tbaa !375
  %i.rz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.1.prol, i64 -8
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !376
  %i.sb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.1.prol, i64 -8
  store ptr %i.sa, ptr %i.sb, align 8, !tbaa !377
  %i.sc = add nsw i64 %.010.i.i.i.i.i.i.i444.1.prol, -1 ; 2 uses
  %prol.iter976.next = add i64 %prol.iter976, 1   ; 2 uses
  %prol.iter976.cmp.not = icmp eq i64 %prol.iter976.next, %xtraiter974
  br i1 %prol.iter976.cmp.not, label %.lr.ph.i.i.i.i.i.i.i443.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i443.1.prol, !llvm.loop !630

.lr.ph.i.i.i.i.i.i.i443.1.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i443.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i442.1
  %.010.i.i.i.i.i.i.i444.1.unr = phi i64 [ %i.rt, %.lr.ph.i.i.i.i.i.preheader.i.i442.1 ], [ %i.sc, %.lr.ph.i.i.i.i.i.i.i443.1.prol ]
  %.069.i.i.i.i.i.i.i445.1.unr = phi ptr [ %i.rv, %.lr.ph.i.i.i.i.i.preheader.i.i442.1 ], [ %i.rx, %.lr.ph.i.i.i.i.i.i.i443.1.prol ]
  %.078.i.i.i.i.i.i.i446.1.unr = phi ptr [ %.sroa.08.020.i.i399.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i442.1 ], [ %i.rw, %.lr.ph.i.i.i.i.i.i.i443.1.prol ]
  %i.sd = icmp ult i64 %i.rt, 4
  br i1 %i.sd, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441.1, label %.lr.ph.i.i.i.i.i.i.i443.1

.lr.ph.i.i.i.i.i.i.i443.1:                        ; preds = %.lr.ph.i.i.i.i.i.i.i443.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i443.1
  %.010.i.i.i.i.i.i.i444.1 = phi i64 [ %i.tc, %.lr.ph.i.i.i.i.i.i.i443.1 ], [ %.010.i.i.i.i.i.i.i444.1.unr, %.lr.ph.i.i.i.i.i.i.i443.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i445.1 = phi ptr [ %i.sx, %.lr.ph.i.i.i.i.i.i.i443.1 ], [ %.069.i.i.i.i.i.i.i445.1.unr, %.lr.ph.i.i.i.i.i.i.i443.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i446.1 = phi ptr [ %i.sw, %.lr.ph.i.i.i.i.i.i.i443.1 ], [ %.078.i.i.i.i.i.i.i446.1.unr, %.lr.ph.i.i.i.i.i.i.i443.1.prol.loopexit ] ; 8 uses
  %i.se = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.1, i64 -16
  %i.sf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.1, i64 -16
  %i.sg = load i64, ptr %i.se, align 8, !tbaa !135
  store i64 %i.sg, ptr %i.sf, align 8, !tbaa !375
  %i.sh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.1, i64 -8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !376
  %i.sj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.1, i64 -8
  store ptr %i.si, ptr %i.sj, align 8, !tbaa !377
  %i.sk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.1, i64 -32
  %i.sl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.1, i64 -32
  %i.sm = load i64, ptr %i.sk, align 8, !tbaa !135
  store i64 %i.sm, ptr %i.sl, align 8, !tbaa !375
  %i.sn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.1, i64 -24
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !376
  %i.sp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.1, i64 -24
  store ptr %i.so, ptr %i.sp, align 8, !tbaa !377
  %i.sq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.1, i64 -48
  %i.sr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.1, i64 -48
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !135
  store i64 %i.ss, ptr %i.sr, align 8, !tbaa !375
  %i.st = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.1, i64 -40
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !376
  %i.sv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.1, i64 -40
  store ptr %i.su, ptr %i.sv, align 8, !tbaa !377
  %i.sw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.1, i64 -64 ; 2 uses
  %i.sx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.1, i64 -64 ; 2 uses
  %i.sy = load i64, ptr %i.sw, align 8, !tbaa !135
  store i64 %i.sy, ptr %i.sx, align 8, !tbaa !375
  %i.sz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.1, i64 -56
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !376
  %i.tb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.1, i64 -56
  store ptr %i.ta, ptr %i.tb, align 8, !tbaa !377
  %i.tc = add nsw i64 %.010.i.i.i.i.i.i.i444.1, -4
  %i.td = icmp sgt i64 %.010.i.i.i.i.i.i.i444.1, 4
  br i1 %i.td, label %.lr.ph.i.i.i.i.i.i.i443.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441.1, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441.1: ; preds = %.lr.ph.i.i.i.i.i.i.i443.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i443.1, %bb.bx
  store i64 %i.rg, ptr %.sroa.035.039.i396, align 8, !tbaa !375
  store ptr %.sroa.4.0.copyload.i.i402.1, ptr %i.pp, align 8, !tbaa !377
  br label %bb.by

bb.by:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i403.1
  %i.te = phi i64 [ %i.rg, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441.1 ], [ %.pre.i.i405.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i403.1 ]
  %.sroa.08.020.i.i399.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i396, i64 48 ; 8 uses
  %i.tf = load i64, ptr %.sroa.08.020.i.i399.ptr.2, align 8, !tbaa !135 ; 6 uses
  %i.tg = icmp ult i64 %i.tf, %i.te
  %.sroa.4.0..sroa_idx.i.i401.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i396, i64 56
  %.sroa.4.0.copyload.i.i402.2 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i401.2, align 8 ; 2 uses
  br i1 %i.tg, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.th = load i64, ptr %.sroa.08.020.i.i399.ptr.1, align 8, !tbaa !135 ; 2 uses
  %i.ti = icmp ult i64 %i.tf, %i.th
  br i1 %i.ti, label %.lr.ph.i.i.i437.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i403.2

.lr.ph.i.i.i437.2:                                ; preds = %bb.bz, %.lr.ph.i.i.i437.2
  %i.tj = phi i64 [ %i.tn, %.lr.ph.i.i.i437.2 ], [ %i.th, %bb.bz ]
  %.sroa.0.010.i.i.i438.2 = phi ptr [ %.sroa.0.0.i.i.i440.2, %.lr.ph.i.i.i437.2 ], [ %.sroa.08.020.i.i399.ptr.1, %bb.bz ] ; 3 uses
  %.sroa.05.09.i.i.i439.2 = phi ptr [ %.sroa.0.010.i.i.i438.2, %.lr.ph.i.i.i437.2 ], [ %.sroa.08.020.i.i399.ptr.2, %bb.bz ] ; 3 uses
  store i64 %i.tj, ptr %.sroa.05.09.i.i.i439.2, align 8, !tbaa !375
  %i.tk = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i439.2, i64 -8
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !376
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i439.2, i64 8
  store ptr %i.tl, ptr %i.tm, align 8, !tbaa !377
  %.sroa.0.0.i.i.i440.2 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i438.2, i64 -16 ; 2 uses
  %i.tn = load i64, ptr %.sroa.0.0.i.i.i440.2, align 8, !tbaa !135 ; 2 uses
  %i.to = icmp ult i64 %i.tf, %i.tn
  br i1 %i.to, label %.lr.ph.i.i.i437.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i403.2, !llvm.loop !31

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i403.2: ; preds = %.lr.ph.i.i.i437.2, %bb.bz
  %.sroa.05.0.lcssa.i.i.i404.2 = phi ptr [ %.sroa.08.020.i.i399.ptr.2, %bb.bz ], [ %.sroa.0.010.i.i.i438.2, %.lr.ph.i.i.i437.2 ] ; 2 uses
  store i64 %i.tf, ptr %.sroa.05.0.lcssa.i.i.i404.2, align 8, !tbaa !375
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i404.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i402.2, ptr %i.tp, align 8, !tbaa !377
  %.pre.i.i405.2 = load i64, ptr %.sroa.035.039.i396, align 8, !tbaa !135
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.tq = ptrtoint ptr %.sroa.08.020.i.i399.ptr.2 to i64
  %i.tr = sub i64 %i.tq, %i.po
  %i.ts = ashr exact i64 %i.tr, 4                 ; 5 uses
  %i.tt = icmp sgt i64 %i.ts, 0
  br i1 %i.tt, label %.lr.ph.i.i.i.i.i.preheader.i.i442.2, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441.2

.lr.ph.i.i.i.i.i.preheader.i.i442.2:              ; preds = %bb.ca
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i396, i64 64 ; 2 uses
  %xtraiter977 = and i64 %i.ts, 3                 ; 2 uses
  %lcmp.mod978.not = icmp eq i64 %xtraiter977, 0
  br i1 %lcmp.mod978.not, label %.lr.ph.i.i.i.i.i.i.i443.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i443.2.prol

.lr.ph.i.i.i.i.i.i.i443.2.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i442.2, %.lr.ph.i.i.i.i.i.i.i443.2.prol
  %.010.i.i.i.i.i.i.i444.2.prol = phi i64 [ %i.ub, %.lr.ph.i.i.i.i.i.i.i443.2.prol ], [ %i.ts, %.lr.ph.i.i.i.i.i.preheader.i.i442.2 ]
  %.069.i.i.i.i.i.i.i445.2.prol = phi ptr [ %i.tw, %.lr.ph.i.i.i.i.i.i.i443.2.prol ], [ %i.tu, %.lr.ph.i.i.i.i.i.preheader.i.i442.2 ] ; 2 uses
  %.078.i.i.i.i.i.i.i446.2.prol = phi ptr [ %i.tv, %.lr.ph.i.i.i.i.i.i.i443.2.prol ], [ %.sroa.08.020.i.i399.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i442.2 ] ; 2 uses
  %prol.iter979 = phi i64 [ %prol.iter979.next, %.lr.ph.i.i.i.i.i.i.i443.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i442.2 ]
  %i.tv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.2.prol, i64 -16 ; 3 uses
  %i.tw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.2.prol, i64 -16 ; 3 uses
  %i.tx = load i64, ptr %i.tv, align 8, !tbaa !135
  store i64 %i.tx, ptr %i.tw, align 8, !tbaa !375
  %i.ty = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.2.prol, i64 -8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !376
  %i.ua = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.2.prol, i64 -8
  store ptr %i.tz, ptr %i.ua, align 8, !tbaa !377
  %i.ub = add nsw i64 %.010.i.i.i.i.i.i.i444.2.prol, -1 ; 2 uses
  %prol.iter979.next = add i64 %prol.iter979, 1   ; 2 uses
  %prol.iter979.cmp.not = icmp eq i64 %prol.iter979.next, %xtraiter977
  br i1 %prol.iter979.cmp.not, label %.lr.ph.i.i.i.i.i.i.i443.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i443.2.prol, !llvm.loop !631

.lr.ph.i.i.i.i.i.i.i443.2.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i443.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i442.2
  %.010.i.i.i.i.i.i.i444.2.unr = phi i64 [ %i.ts, %.lr.ph.i.i.i.i.i.preheader.i.i442.2 ], [ %i.ub, %.lr.ph.i.i.i.i.i.i.i443.2.prol ]
  %.069.i.i.i.i.i.i.i445.2.unr = phi ptr [ %i.tu, %.lr.ph.i.i.i.i.i.preheader.i.i442.2 ], [ %i.tw, %.lr.ph.i.i.i.i.i.i.i443.2.prol ]
  %.078.i.i.i.i.i.i.i446.2.unr = phi ptr [ %.sroa.08.020.i.i399.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i442.2 ], [ %i.tv, %.lr.ph.i.i.i.i.i.i.i443.2.prol ]
  %i.uc = icmp ult i64 %i.ts, 4
  br i1 %i.uc, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i441.2, label %.lr.ph.i.i.i.i.i.i.i443.2

.lr.ph.i.i.i.i.i.i.i443.2:                        ; preds = %.lr.ph.i.i.i.i.i.i.i443.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i443.2
  %.010.i.i.i.i.i.i.i444.2 = phi i64 [ %i.vb, %.lr.ph.i.i.i.i.i.i.i443.2 ], [ %.010.i.i.i.i.i.i.i444.2.unr, %.lr.ph.i.i.i.i.i.i.i443.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i445.2 = phi ptr [ %i.uw, %.lr.ph.i.i.i.i.i.i.i443.2 ], [ %.069.i.i.i.i.i.i.i445.2.unr, %.lr.ph.i.i.i.i.i.i.i443.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i446.2 = phi ptr [ %i.uv, %.lr.ph.i.i.i.i.i.i.i443.2 ], [ %.078.i.i.i.i.i.i.i446.2.unr, %.lr.ph.i.i.i.i.i.i.i443.2.prol.loopexit ] ; 8 uses
  %i.ud = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.2, i64 -16
  %i.ue = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i445.2, i64 -16
  %i.uf = load i64, ptr %i.ud, align 8, !tbaa !135
  store i64 %i.uf, ptr %i.ue, align 8, !tbaa !375
  %i.ug = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i446.2, i64 -8
end_hunk_2
begin_hunk_3_@_ZN4llvm15InstrProfWriter17writeRecordInTextENS_9StringRefEmRKNS_15InstrProfRecordERNS_15InstrProfSymtabERNS_14raw_fd_ostreamE:bb.a
  %i.aoj = getelementptr inbounds nuw i8, ptr %.01628.i42.i308, i64 16
  br label %bb.db

bb.da:                                            ; preds = %.lr.ph.i40.i306
  %i.aok = getelementptr inbounds nuw i8, ptr %.029.i41.i307, i64 16
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.sink34.i44.i310 = phi i64 [ %i.aog, %bb.cz ], [ %i.aoh, %bb.da ]
  %.01628.pn.i45.i311 = phi ptr [ %.01628.i42.i308, %bb.cz ], [ %.029.i41.i307, %bb.da ]
  %.117.i46.i312 = phi ptr [ %i.aoj, %bb.cz ], [ %.01628.i42.i308, %bb.da ] ; 3 uses
  %.1.i47.i313 = phi ptr [ %.029.i41.i307, %bb.cz ], [ %i.aok, %bb.da ] ; 3 uses
  %.sink.in.i48.i314 = getelementptr inbounds nuw i8, ptr %.01628.pn.i45.i311, i64 8
  %.sink.i49.i315 = load ptr, ptr %.sink.in.i48.i314, align 8, !tbaa !376
  store i64 %.sink34.i44.i310, ptr %.sroa.0.027.i43.i309, align 8, !tbaa !375
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43.i309, i64 8
  store ptr %.sink.i49.i315, ptr %i.aol, align 8, !tbaa !377
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43.i309, i64 16 ; 2 uses
  %i.aon = icmp ne ptr %.1.i47.i313, %i.aoc
  %i.aoo = icmp ne ptr %.117.i46.i312, %i.pn
  %i.aop = select i1 %i.aon, i1 %i.aoo, i1 false
  br i1 %i.aop, label %.lr.ph.i40.i306, label %._crit_edge.i25.i291, !llvm.loop !37

._crit_edge.i25.i291:                             ; preds = %bb.db, %._crit_edge.i285
  %.sroa.0.0.lcssa.i26.i292 = phi ptr [ %.sroa.022.0.lcssa.i287, %._crit_edge.i285 ], [ %i.aom, %bb.db ] ; 5 uses
  %.016.lcssa.i27.i293 = phi ptr [ %i.aoc, %._crit_edge.i285 ], [ %.117.i46.i312, %bb.db ] ; 3 uses
  %.0.lcssa.i28.i294 = phi ptr [ %.0.lcssa.i286, %._crit_edge.i285 ], [ %.1.i47.i313, %bb.db ] ; 3 uses
  %i.aoq = ptrtoint ptr %i.aoc to i64
  %i.aor = ptrtoint ptr %.0.lcssa.i28.i294 to i64
  %i.aos = sub i64 %i.aoq, %i.aor
  %i.aot = ashr exact i64 %i.aos, 4               ; 5 uses
  %i.aou = icmp sgt i64 %i.aot, 0
  br i1 %i.aou, label %.lr.ph.i.i.i.i.i.i36.i302.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i295

.lr.ph.i.i.i.i.i.i36.i302.preheader:              ; preds = %._crit_edge.i25.i291
  %xtraiter1010 = and i64 %i.aot, 3               ; 2 uses
  %lcmp.mod1011.not = icmp eq i64 %xtraiter1010, 0
  br i1 %lcmp.mod1011.not, label %.lr.ph.i.i.i.i.i.i36.i302.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.i302.prol

.lr.ph.i.i.i.i.i.i36.i302.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i36.i302.preheader, %.lr.ph.i.i.i.i.i.i36.i302.prol
  %.012.i.i.i.i.i.i37.i303.prol = phi i64 [ %i.apb, %.lr.ph.i.i.i.i.i.i36.i302.prol ], [ %i.aot, %.lr.ph.i.i.i.i.i.i36.i302.preheader ]
  %.0811.i.i.i.i.i.i38.i304.prol = phi ptr [ %i.apa, %.lr.ph.i.i.i.i.i.i36.i302.prol ], [ %.sroa.0.0.lcssa.i26.i292, %.lr.ph.i.i.i.i.i.i36.i302.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i39.i305.prol = phi ptr [ %i.aoz, %.lr.ph.i.i.i.i.i.i36.i302.prol ], [ %.0.lcssa.i28.i294, %.lr.ph.i.i.i.i.i.i36.i302.preheader ] ; 3 uses
  %prol.iter1012 = phi i64 [ %prol.iter1012.next, %.lr.ph.i.i.i.i.i.i36.i302.prol ], [ 0, %.lr.ph.i.i.i.i.i.i36.i302.preheader ]
  %i.aov = load i64, ptr %.0910.i.i.i.i.i.i39.i305.prol, align 8, !tbaa !135
  store i64 %i.aov, ptr %.0811.i.i.i.i.i.i38.i304.prol, align 8, !tbaa !375
  %i.aow = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i305.prol, i64 8
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !376
  %i.aoy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i304.prol, i64 8
  store ptr %i.aox, ptr %i.aoy, align 8, !tbaa !377
  %i.aoz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i305.prol, i64 16 ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i304.prol, i64 16 ; 3 uses
  %i.apb = add nsw i64 %.012.i.i.i.i.i.i37.i303.prol, -1 ; 2 uses
  %prol.iter1012.next = add i64 %prol.iter1012, 1 ; 2 uses
  %prol.iter1012.cmp.not = icmp eq i64 %prol.iter1012.next, %xtraiter1010
  br i1 %prol.iter1012.cmp.not, label %.lr.ph.i.i.i.i.i.i36.i302.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.i302.prol, !llvm.loop !642

.lr.ph.i.i.i.i.i.i36.i302.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i36.i302.prol, %.lr.ph.i.i.i.i.i.i36.i302.preheader
  %.012.i.i.i.i.i.i37.i303.unr = phi i64 [ %i.aot, %.lr.ph.i.i.i.i.i.i36.i302.preheader ], [ %i.apb, %.lr.ph.i.i.i.i.i.i36.i302.prol ]
  %.0811.i.i.i.i.i.i38.i304.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i292, %.lr.ph.i.i.i.i.i.i36.i302.preheader ], [ %i.apa, %.lr.ph.i.i.i.i.i.i36.i302.prol ]
  %.0910.i.i.i.i.i.i39.i305.unr = phi ptr [ %.0.lcssa.i28.i294, %.lr.ph.i.i.i.i.i.i36.i302.preheader ], [ %i.aoz, %.lr.ph.i.i.i.i.i.i36.i302.prol ]
  %.lcssa924.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i36.i302.preheader ], [ %i.apa, %.lr.ph.i.i.i.i.i.i36.i302.prol ]
  %i.apc = icmp ult i64 %i.aot, 4
  br i1 %i.apc, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i295, label %.lr.ph.i.i.i.i.i.i36.i302

.lr.ph.i.i.i.i.i.i36.i302:                        ; preds = %.lr.ph.i.i.i.i.i.i36.i302.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i302
  %.012.i.i.i.i.i.i37.i303 = phi i64 [ %i.aqb, %.lr.ph.i.i.i.i.i.i36.i302 ], [ %.012.i.i.i.i.i.i37.i303.unr, %.lr.ph.i.i.i.i.i.i36.i302.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i38.i304 = phi ptr [ %i.aqa, %.lr.ph.i.i.i.i.i.i36.i302 ], [ %.0811.i.i.i.i.i.i38.i304.unr, %.lr.ph.i.i.i.i.i.i36.i302.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i39.i305 = phi ptr [ %i.apz, %.lr.ph.i.i.i.i.i.i36.i302 ], [ %.0910.i.i.i.i.i.i39.i305.unr, %.lr.ph.i.i.i.i.i.i36.i302.prol.loopexit ] ; 9 uses
  %i.apd = load i64, ptr %.0910.i.i.i.i.i.i39.i305, align 8, !tbaa !135
  store i64 %i.apd, ptr %.0811.i.i.i.i.i.i38.i304, align 8, !tbaa !375
  %i.ape = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i305, i64 8
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !376
  %i.apg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i304, i64 8
  store ptr %i.apf, ptr %i.apg, align 8, !tbaa !377
  %i.aph = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i305, i64 16
  %i.api = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i304, i64 16
  %i.apj = load i64, ptr %i.aph, align 8, !tbaa !135
  store i64 %i.apj, ptr %i.api, align 8, !tbaa !375
  %i.apk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i305, i64 24
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !376
  %i.apm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i304, i64 24
  store ptr %i.apl, ptr %i.apm, align 8, !tbaa !377
  %i.apn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i305, i64 32
  %i.apo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i304, i64 32
  %i.app = load i64, ptr %i.apn, align 8, !tbaa !135
  store i64 %i.app, ptr %i.apo, align 8, !tbaa !375
  %i.apq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i305, i64 40
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !376
  %i.aps = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i304, i64 40
  store ptr %i.apr, ptr %i.aps, align 8, !tbaa !377
  %i.apt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i305, i64 48
  %i.apu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i304, i64 48
  %i.apv = load i64, ptr %i.apt, align 8, !tbaa !135
  store i64 %i.apv, ptr %i.apu, align 8, !tbaa !375
  %i.apw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i305, i64 56
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !376
  %i.apy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i304, i64 56
  store ptr %i.apx, ptr %i.apy, align 8, !tbaa !377
  %i.apz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i305, i64 64
  %i.aqa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i304, i64 64 ; 2 uses
  %i.aqb = add nsw i64 %.012.i.i.i.i.i.i37.i303, -4
  %i.aqc = icmp sgt i64 %.012.i.i.i.i.i.i37.i303, 4
  br i1 %i.aqc, label %.lr.ph.i.i.i.i.i.i36.i302, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i295, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i295: ; preds = %.lr.ph.i.i.i.i.i.i36.i302.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i302, %._crit_edge.i25.i291
  %.08.lcssa.i.i.i.i.i.i30.i296 = phi ptr [ %.sroa.0.0.lcssa.i26.i292, %._crit_edge.i25.i291 ], [ %.lcssa924.unr, %.lr.ph.i.i.i.i.i.i36.i302.prol.loopexit ], [ %i.aqa, %.lr.ph.i.i.i.i.i.i36.i302 ]
  %i.aqd = ptrtoint ptr %.016.lcssa.i27.i293 to i64
  %i.aqe = sub i64 %i.adg, %i.aqd
  %i.aqf = ashr exact i64 %i.aqe, 4               ; 5 uses
  %i.aqg = icmp sgt i64 %i.aqf, 0
  br i1 %i.aqg, label %.lr.ph.i.i.i.i.i19.i32.preheader.i297, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit324

.lr.ph.i.i.i.i.i19.i32.preheader.i297:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i295
  %i.aqh = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i296 to i64
  %i.aqi = ptrtoint ptr %.sroa.0.0.lcssa.i26.i292 to i64
  %i.aqj = sub i64 %i.aqh, %i.aqi
  %i.aqk = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i292, i64 %i.aqj ; 2 uses
  %xtraiter1013 = and i64 %i.aqf, 3               ; 2 uses
  %lcmp.mod1014.not = icmp eq i64 %xtraiter1013, 0
  br i1 %lcmp.mod1014.not, label %.lr.ph.i.i.i.i.i19.i32.i298.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i298.prol

.lr.ph.i.i.i.i.i19.i32.i298.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i297, %.lr.ph.i.i.i.i.i19.i32.i298.prol
  %.012.i.i.i.i.i20.i33.i299.prol = phi i64 [ %i.aqr, %.lr.ph.i.i.i.i.i19.i32.i298.prol ], [ %i.aqf, %.lr.ph.i.i.i.i.i19.i32.preheader.i297 ]
  %.0811.i.i.i.i.i21.i34.i300.prol = phi ptr [ %i.aqq, %.lr.ph.i.i.i.i.i19.i32.i298.prol ], [ %i.aqk, %.lr.ph.i.i.i.i.i19.i32.preheader.i297 ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i301.prol = phi ptr [ %i.aqp, %.lr.ph.i.i.i.i.i19.i32.i298.prol ], [ %.016.lcssa.i27.i293, %.lr.ph.i.i.i.i.i19.i32.preheader.i297 ] ; 3 uses
  %prol.iter1015 = phi i64 [ %prol.iter1015.next, %.lr.ph.i.i.i.i.i19.i32.i298.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i297 ]
  %i.aql = load i64, ptr %.0910.i.i.i.i.i22.i35.i301.prol, align 8, !tbaa !135
  store i64 %i.aql, ptr %.0811.i.i.i.i.i21.i34.i300.prol, align 8, !tbaa !375
  %i.aqm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i301.prol, i64 8
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !376
  %i.aqo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i300.prol, i64 8
  store ptr %i.aqn, ptr %i.aqo, align 8, !tbaa !377
  %i.aqp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i301.prol, i64 16 ; 2 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i300.prol, i64 16 ; 2 uses
  %i.aqr = add nsw i64 %.012.i.i.i.i.i20.i33.i299.prol, -1 ; 2 uses
  %prol.iter1015.next = add i64 %prol.iter1015, 1 ; 2 uses
  %prol.iter1015.cmp.not = icmp eq i64 %prol.iter1015.next, %xtraiter1013
  br i1 %prol.iter1015.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i298.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i298.prol, !llvm.loop !643

.lr.ph.i.i.i.i.i19.i32.i298.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i32.i298.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i297
  %.012.i.i.i.i.i20.i33.i299.unr = phi i64 [ %i.aqf, %.lr.ph.i.i.i.i.i19.i32.preheader.i297 ], [ %i.aqr, %.lr.ph.i.i.i.i.i19.i32.i298.prol ]
  %.0811.i.i.i.i.i21.i34.i300.unr = phi ptr [ %i.aqk, %.lr.ph.i.i.i.i.i19.i32.preheader.i297 ], [ %i.aqq, %.lr.ph.i.i.i.i.i19.i32.i298.prol ]
  %.0910.i.i.i.i.i22.i35.i301.unr = phi ptr [ %.016.lcssa.i27.i293, %.lr.ph.i.i.i.i.i19.i32.preheader.i297 ], [ %i.aqp, %.lr.ph.i.i.i.i.i19.i32.i298.prol ]
  %i.aqs = icmp ult i64 %i.aqf, 4
  br i1 %i.aqs, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit324, label %.lr.ph.i.i.i.i.i19.i32.i298

.lr.ph.i.i.i.i.i19.i32.i298:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.i298.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i298
  %.012.i.i.i.i.i20.i33.i299 = phi i64 [ %i.arr, %.lr.ph.i.i.i.i.i19.i32.i298 ], [ %.012.i.i.i.i.i20.i33.i299.unr, %.lr.ph.i.i.i.i.i19.i32.i298.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i300 = phi ptr [ %i.arq, %.lr.ph.i.i.i.i.i19.i32.i298 ], [ %.0811.i.i.i.i.i21.i34.i300.unr, %.lr.ph.i.i.i.i.i19.i32.i298.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i301 = phi ptr [ %i.arp, %.lr.ph.i.i.i.i.i19.i32.i298 ], [ %.0910.i.i.i.i.i22.i35.i301.unr, %.lr.ph.i.i.i.i.i19.i32.i298.prol.loopexit ] ; 9 uses
  %i.aqt = load i64, ptr %.0910.i.i.i.i.i22.i35.i301, align 8, !tbaa !135
  store i64 %i.aqt, ptr %.0811.i.i.i.i.i21.i34.i300, align 8, !tbaa !375
  %i.aqu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i301, i64 8
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !376
  %i.aqw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i300, i64 8
  store ptr %i.aqv, ptr %i.aqw, align 8, !tbaa !377
  %i.aqx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i301, i64 16
  %i.aqy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i300, i64 16
  %i.aqz = load i64, ptr %i.aqx, align 8, !tbaa !135
  store i64 %i.aqz, ptr %i.aqy, align 8, !tbaa !375
  %i.ara = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i301, i64 24
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !376
  %i.arc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i300, i64 24
  store ptr %i.arb, ptr %i.arc, align 8, !tbaa !377
  %i.ard = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i301, i64 32
  %i.are = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i300, i64 32
  %i.arf = load i64, ptr %i.ard, align 8, !tbaa !135
  store i64 %i.arf, ptr %i.are, align 8, !tbaa !375
  %i.arg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i301, i64 40
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !376
  %i.ari = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i300, i64 40
  store ptr %i.arh, ptr %i.ari, align 8, !tbaa !377
  %i.arj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i301, i64 48
  %i.ark = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i300, i64 48
  %i.arl = load i64, ptr %i.arj, align 8, !tbaa !135
  store i64 %i.arl, ptr %i.ark, align 8, !tbaa !375
  %i.arm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i301, i64 56
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !376
  %i.aro = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i300, i64 56
  store ptr %i.arn, ptr %i.aro, align 8, !tbaa !377
  %i.arp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i301, i64 64
  %i.arq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i300, i64 64
  %i.arr = add nsw i64 %.012.i.i.i.i.i20.i33.i299, -4
  %i.ars = icmp sgt i64 %.012.i.i.i.i.i20.i33.i299, 4
  br i1 %i.ars, label %.lr.ph.i.i.i.i.i19.i32.i298, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit324, !llvm.loop !35

_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit324: ; preds = %.lr.ph.i.i.i.i.i19.i32.i298.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i298, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i295
  %i.art = icmp slt i64 %i.akg, %i.op
  br i1 %i.art, label %.lr.ph.i.i201, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i, !llvm.loop !39

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i: ; preds = %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit324, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit447
  %i.aru = sub i64 %i.ok, %i.pm                   ; 2 uses
  %i.arv = ashr exact i64 %i.aru, 4               ; 13 uses
  %i.arw = getelementptr inbounds i8, ptr %.sroa.10.0.i, i64 %i.aru ; 3 uses
  %.not38.i = icmp slt i64 %i.arv, 7
  br i1 %.not38.i, label %._crit_edge.i247, label %.lr.ph.i.i238

.lr.ph.i.i238:                                    ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i
  %i.arx = phi i64 [ %i.bdk, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.pm, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 6 uses
  %.sroa.035.039.i = phi ptr [ %i.bdj, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.pl, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 31 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 8 ; 6 uses
  %.pre22.i.i239 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !135 ; 2 uses
  %.sroa.08.020.i.i.ptr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 16 ; 6 uses
  %i.arz = load i64, ptr %.sroa.08.020.i.i.ptr, align 8, !tbaa !135 ; 3 uses
  %i.asa = icmp ult i64 %i.arz, %.pre22.i.i239
  %.sroa.4.0..sroa_idx.i.i241 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 24
  %.sroa.4.0.copyload.i.i242 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i241, align 8
  br i1 %i.asa, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.lr.ph.i.i238
  %i.asb = ptrtoint ptr %.sroa.08.020.i.i.ptr to i64
  %i.asc = sub i64 %i.asb, %i.arx
  %i.asd = ashr exact i64 %i.asc, 4               ; 5 uses
  %i.ase = icmp sgt i64 %i.asd, 0
  br i1 %i.ase, label %.lr.ph.i.i.i.i.i.preheader.i.i254, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i254:                ; preds = %bb.dc
  %i.asf = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 32 ; 2 uses
  %xtraiter1016 = and i64 %i.asd, 3               ; 2 uses
  %lcmp.mod1017.not = icmp eq i64 %xtraiter1016, 0
  br i1 %lcmp.mod1017.not, label %.lr.ph.i.i.i.i.i.i.i255.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i255.prol

.lr.ph.i.i.i.i.i.i.i255.prol:                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i254, %.lr.ph.i.i.i.i.i.i.i255.prol
  %.010.i.i.i.i.i.i.i256.prol = phi i64 [ %i.asm, %.lr.ph.i.i.i.i.i.i.i255.prol ], [ %i.asd, %.lr.ph.i.i.i.i.i.preheader.i.i254 ]
  %.069.i.i.i.i.i.i.i257.prol = phi ptr [ %i.ash, %.lr.ph.i.i.i.i.i.i.i255.prol ], [ %i.asf, %.lr.ph.i.i.i.i.i.preheader.i.i254 ] ; 2 uses
  %.078.i.i.i.i.i.i.i258.prol = phi ptr [ %i.asg, %.lr.ph.i.i.i.i.i.i.i255.prol ], [ %.sroa.08.020.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i254 ] ; 2 uses
  %prol.iter1018 = phi i64 [ %prol.iter1018.next, %.lr.ph.i.i.i.i.i.i.i255.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i254 ]
  %i.asg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.prol, i64 -16 ; 3 uses
  %i.ash = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.prol, i64 -16 ; 3 uses
  %i.asi = load i64, ptr %i.asg, align 8, !tbaa !135
  store i64 %i.asi, ptr %i.ash, align 8, !tbaa !375
  %i.asj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.prol, i64 -8
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !376
  %i.asl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.prol, i64 -8
  store ptr %i.ask, ptr %i.asl, align 8, !tbaa !377
  %i.asm = add nsw i64 %.010.i.i.i.i.i.i.i256.prol, -1 ; 2 uses
  %prol.iter1018.next = add i64 %prol.iter1018, 1 ; 2 uses
  %prol.iter1018.cmp.not = icmp eq i64 %prol.iter1018.next, %xtraiter1016
  br i1 %prol.iter1018.cmp.not, label %.lr.ph.i.i.i.i.i.i.i255.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i255.prol, !llvm.loop !644

.lr.ph.i.i.i.i.i.i.i255.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i255.prol, %.lr.ph.i.i.i.i.i.preheader.i.i254
  %.010.i.i.i.i.i.i.i256.unr = phi i64 [ %i.asd, %.lr.ph.i.i.i.i.i.preheader.i.i254 ], [ %i.asm, %.lr.ph.i.i.i.i.i.i.i255.prol ]
  %.069.i.i.i.i.i.i.i257.unr = phi ptr [ %i.asf, %.lr.ph.i.i.i.i.i.preheader.i.i254 ], [ %i.ash, %.lr.ph.i.i.i.i.i.i.i255.prol ]
  %.078.i.i.i.i.i.i.i258.unr = phi ptr [ %.sroa.08.020.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i254 ], [ %i.asg, %.lr.ph.i.i.i.i.i.i.i255.prol ]
  %i.asn = icmp ult i64 %i.asd, 4
  br i1 %i.asn, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i255

.lr.ph.i.i.i.i.i.i.i255:                          ; preds = %.lr.ph.i.i.i.i.i.i.i255.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i255
  %.010.i.i.i.i.i.i.i256 = phi i64 [ %i.atm, %.lr.ph.i.i.i.i.i.i.i255 ], [ %.010.i.i.i.i.i.i.i256.unr, %.lr.ph.i.i.i.i.i.i.i255.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i257 = phi ptr [ %i.ath, %.lr.ph.i.i.i.i.i.i.i255 ], [ %.069.i.i.i.i.i.i.i257.unr, %.lr.ph.i.i.i.i.i.i.i255.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i258 = phi ptr [ %i.atg, %.lr.ph.i.i.i.i.i.i.i255 ], [ %.078.i.i.i.i.i.i.i258.unr, %.lr.ph.i.i.i.i.i.i.i255.prol.loopexit ] ; 8 uses
  %i.aso = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258, i64 -16
  %i.asp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257, i64 -16
  %i.asq = load i64, ptr %i.aso, align 8, !tbaa !135
  store i64 %i.asq, ptr %i.asp, align 8, !tbaa !375
  %i.asr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258, i64 -8
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !376
  %i.ast = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257, i64 -8
  store ptr %i.ass, ptr %i.ast, align 8, !tbaa !377
  %i.asu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258, i64 -32
  %i.asv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257, i64 -32
  %i.asw = load i64, ptr %i.asu, align 8, !tbaa !135
  store i64 %i.asw, ptr %i.asv, align 8, !tbaa !375
  %i.asx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258, i64 -24
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !376
  %i.asz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257, i64 -24
  store ptr %i.asy, ptr %i.asz, align 8, !tbaa !377
  %i.ata = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258, i64 -48
  %i.atb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257, i64 -48
  %i.atc = load i64, ptr %i.ata, align 8, !tbaa !135
  store i64 %i.atc, ptr %i.atb, align 8, !tbaa !375
  %i.atd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258, i64 -40
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !376
  %i.atf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257, i64 -40
  store ptr %i.ate, ptr %i.atf, align 8, !tbaa !377
  %i.atg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258, i64 -64 ; 2 uses
  %i.ath = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257, i64 -64 ; 2 uses
  %i.ati = load i64, ptr %i.atg, align 8, !tbaa !135
  store i64 %i.ati, ptr %i.ath, align 8, !tbaa !375
  %i.atj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258, i64 -56
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !376
  %i.atl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257, i64 -56
  store ptr %i.atk, ptr %i.atl, align 8, !tbaa !377
  %i.atm = add nsw i64 %.010.i.i.i.i.i.i.i256, -4
  %i.atn = icmp sgt i64 %.010.i.i.i.i.i.i.i256, 4
  br i1 %i.atn, label %.lr.ph.i.i.i.i.i.i.i255, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i255.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i255, %bb.dc
  store i64 %i.arz, ptr %.sroa.035.039.i, align 8, !tbaa !375
  store ptr %.sroa.4.0.copyload.i.i242, ptr %i.ary, align 8, !tbaa !377
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph.i.i238, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %i.ato = phi i64 [ %i.arz, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i ], [ %.pre22.i.i239, %.lr.ph.i.i238 ]
  %.sroa.08.020.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 32 ; 8 uses
  %i.atp = load i64, ptr %.sroa.08.020.i.i.ptr.1, align 8, !tbaa !135 ; 6 uses
  %i.atq = icmp ult i64 %i.atp, %i.ato
  %.sroa.4.0..sroa_idx.i.i241.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 40
  %.sroa.4.0.copyload.i.i242.1 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i241.1, align 8 ; 2 uses
  br i1 %i.atq, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.atr = load i64, ptr %.sroa.08.020.i.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.ats = icmp ult i64 %i.atp, %i.atr
  br i1 %i.ats, label %.lr.ph.i.i.i250.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i250.1:                                ; preds = %bb.de, %.lr.ph.i.i.i250.1
  %i.att = phi i64 [ %i.atx, %.lr.ph.i.i.i250.1 ], [ %i.atr, %bb.de ]
  %.sroa.0.010.i.i.i251.1 = phi ptr [ %.sroa.0.0.i.i.i253.1, %.lr.ph.i.i.i250.1 ], [ %.sroa.08.020.i.i.ptr, %bb.de ] ; 3 uses
  %.sroa.05.09.i.i.i252.1 = phi ptr [ %.sroa.0.010.i.i.i251.1, %.lr.ph.i.i.i250.1 ], [ %.sroa.08.020.i.i.ptr.1, %bb.de ] ; 3 uses
  store i64 %i.att, ptr %.sroa.05.09.i.i.i252.1, align 8, !tbaa !375
  %i.atu = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i252.1, i64 -8
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !376
  %i.atw = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i252.1, i64 8
  store ptr %i.atv, ptr %i.atw, align 8, !tbaa !377
  %.sroa.0.0.i.i.i253.1 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i251.1, i64 -16 ; 2 uses
  %i.atx = load i64, ptr %.sroa.0.0.i.i.i253.1, align 8, !tbaa !135 ; 2 uses
  %i.aty = icmp ult i64 %i.atp, %i.atx
  br i1 %i.aty, label %.lr.ph.i.i.i250.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1, !llvm.loop !31

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i250.1, %bb.de
  %.sroa.05.0.lcssa.i.i.i243.1 = phi ptr [ %.sroa.08.020.i.i.ptr.1, %bb.de ], [ %.sroa.0.010.i.i.i251.1, %.lr.ph.i.i.i250.1 ] ; 2 uses
  store i64 %i.atp, ptr %.sroa.05.0.lcssa.i.i.i243.1, align 8, !tbaa !375
  %i.atz = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i243.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i242.1, ptr %i.atz, align 8, !tbaa !377
  %.pre.i.i244.1 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !135
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.aua = ptrtoint ptr %.sroa.08.020.i.i.ptr.1 to i64
  %i.aub = sub i64 %i.aua, %i.arx
  %i.auc = ashr exact i64 %i.aub, 4               ; 5 uses
  %i.aud = icmp sgt i64 %i.auc, 0
  br i1 %i.aud, label %.lr.ph.i.i.i.i.i.preheader.i.i254.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1

.lr.ph.i.i.i.i.i.preheader.i.i254.1:              ; preds = %bb.df
  %i.aue = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 48 ; 2 uses
  %xtraiter1031 = and i64 %i.auc, 3               ; 2 uses
  %lcmp.mod1032.not = icmp eq i64 %xtraiter1031, 0
  br i1 %lcmp.mod1032.not, label %.lr.ph.i.i.i.i.i.i.i255.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i255.1.prol

.lr.ph.i.i.i.i.i.i.i255.1.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i254.1, %.lr.ph.i.i.i.i.i.i.i255.1.prol
  %.010.i.i.i.i.i.i.i256.1.prol = phi i64 [ %i.aul, %.lr.ph.i.i.i.i.i.i.i255.1.prol ], [ %i.auc, %.lr.ph.i.i.i.i.i.preheader.i.i254.1 ]
  %.069.i.i.i.i.i.i.i257.1.prol = phi ptr [ %i.aug, %.lr.ph.i.i.i.i.i.i.i255.1.prol ], [ %i.aue, %.lr.ph.i.i.i.i.i.preheader.i.i254.1 ] ; 2 uses
  %.078.i.i.i.i.i.i.i258.1.prol = phi ptr [ %i.auf, %.lr.ph.i.i.i.i.i.i.i255.1.prol ], [ %.sroa.08.020.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i254.1 ] ; 2 uses
  %prol.iter1033 = phi i64 [ %prol.iter1033.next, %.lr.ph.i.i.i.i.i.i.i255.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i254.1 ]
  %i.auf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.1.prol, i64 -16 ; 3 uses
  %i.aug = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.1.prol, i64 -16 ; 3 uses
  %i.auh = load i64, ptr %i.auf, align 8, !tbaa !135
  store i64 %i.auh, ptr %i.aug, align 8, !tbaa !375
  %i.aui = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.1.prol, i64 -8
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !376
  %i.auk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.1.prol, i64 -8
  store ptr %i.auj, ptr %i.auk, align 8, !tbaa !377
  %i.aul = add nsw i64 %.010.i.i.i.i.i.i.i256.1.prol, -1 ; 2 uses
  %prol.iter1033.next = add i64 %prol.iter1033, 1 ; 2 uses
  %prol.iter1033.cmp.not = icmp eq i64 %prol.iter1033.next, %xtraiter1031
  br i1 %prol.iter1033.cmp.not, label %.lr.ph.i.i.i.i.i.i.i255.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i255.1.prol, !llvm.loop !645

.lr.ph.i.i.i.i.i.i.i255.1.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i255.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i254.1
  %.010.i.i.i.i.i.i.i256.1.unr = phi i64 [ %i.auc, %.lr.ph.i.i.i.i.i.preheader.i.i254.1 ], [ %i.aul, %.lr.ph.i.i.i.i.i.i.i255.1.prol ]
  %.069.i.i.i.i.i.i.i257.1.unr = phi ptr [ %i.aue, %.lr.ph.i.i.i.i.i.preheader.i.i254.1 ], [ %i.aug, %.lr.ph.i.i.i.i.i.i.i255.1.prol ]
  %.078.i.i.i.i.i.i.i258.1.unr = phi ptr [ %.sroa.08.020.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i254.1 ], [ %i.auf, %.lr.ph.i.i.i.i.i.i.i255.1.prol ]
  %i.aum = icmp ult i64 %i.auc, 4
  br i1 %i.aum, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, label %.lr.ph.i.i.i.i.i.i.i255.1

.lr.ph.i.i.i.i.i.i.i255.1:                        ; preds = %.lr.ph.i.i.i.i.i.i.i255.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i255.1
  %.010.i.i.i.i.i.i.i256.1 = phi i64 [ %i.avl, %.lr.ph.i.i.i.i.i.i.i255.1 ], [ %.010.i.i.i.i.i.i.i256.1.unr, %.lr.ph.i.i.i.i.i.i.i255.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i257.1 = phi ptr [ %i.avg, %.lr.ph.i.i.i.i.i.i.i255.1 ], [ %.069.i.i.i.i.i.i.i257.1.unr, %.lr.ph.i.i.i.i.i.i.i255.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i258.1 = phi ptr [ %i.avf, %.lr.ph.i.i.i.i.i.i.i255.1 ], [ %.078.i.i.i.i.i.i.i258.1.unr, %.lr.ph.i.i.i.i.i.i.i255.1.prol.loopexit ] ; 8 uses
  %i.aun = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.1, i64 -16
  %i.auo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.1, i64 -16
  %i.aup = load i64, ptr %i.aun, align 8, !tbaa !135
  store i64 %i.aup, ptr %i.auo, align 8, !tbaa !375
  %i.auq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.1, i64 -8
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !376
  %i.aus = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.1, i64 -8
  store ptr %i.aur, ptr %i.aus, align 8, !tbaa !377
  %i.aut = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.1, i64 -32
  %i.auu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.1, i64 -32
  %i.auv = load i64, ptr %i.aut, align 8, !tbaa !135
  store i64 %i.auv, ptr %i.auu, align 8, !tbaa !375
  %i.auw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.1, i64 -24
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !376
  %i.auy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.1, i64 -24
  store ptr %i.aux, ptr %i.auy, align 8, !tbaa !377
  %i.auz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.1, i64 -48
  %i.ava = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.1, i64 -48
  %i.avb = load i64, ptr %i.auz, align 8, !tbaa !135
  store i64 %i.avb, ptr %i.ava, align 8, !tbaa !375
  %i.avc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.1, i64 -40
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !376
  %i.ave = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.1, i64 -40
  store ptr %i.avd, ptr %i.ave, align 8, !tbaa !377
  %i.avf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.1, i64 -64 ; 2 uses
  %i.avg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.1, i64 -64 ; 2 uses
  %i.avh = load i64, ptr %i.avf, align 8, !tbaa !135
  store i64 %i.avh, ptr %i.avg, align 8, !tbaa !375
  %i.avi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.1, i64 -56
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !376
  %i.avk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.1, i64 -56
  store ptr %i.avj, ptr %i.avk, align 8, !tbaa !377
  %i.avl = add nsw i64 %.010.i.i.i.i.i.i.i256.1, -4
  %i.avm = icmp sgt i64 %.010.i.i.i.i.i.i.i256.1, 4
  br i1 %i.avm, label %.lr.ph.i.i.i.i.i.i.i255.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i255.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i255.1, %bb.df
  store i64 %i.atp, ptr %.sroa.035.039.i, align 8, !tbaa !375
  store ptr %.sroa.4.0.copyload.i.i242.1, ptr %i.ary, align 8, !tbaa !377
  br label %bb.dg

bb.dg:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1
  %i.avn = phi i64 [ %i.atp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1 ], [ %.pre.i.i244.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1 ]
  %.sroa.08.020.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 48 ; 8 uses
  %i.avo = load i64, ptr %.sroa.08.020.i.i.ptr.2, align 8, !tbaa !135 ; 6 uses
  %i.avp = icmp ult i64 %i.avo, %i.avn
  %.sroa.4.0..sroa_idx.i.i241.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 56
  %.sroa.4.0.copyload.i.i242.2 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i241.2, align 8 ; 2 uses
  br i1 %i.avp, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.avq = load i64, ptr %.sroa.08.020.i.i.ptr.1, align 8, !tbaa !135 ; 2 uses
  %i.avr = icmp ult i64 %i.avo, %i.avq
  br i1 %i.avr, label %.lr.ph.i.i.i250.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i250.2:                                ; preds = %bb.dh, %.lr.ph.i.i.i250.2
  %i.avs = phi i64 [ %i.avw, %.lr.ph.i.i.i250.2 ], [ %i.avq, %bb.dh ]
  %.sroa.0.010.i.i.i251.2 = phi ptr [ %.sroa.0.0.i.i.i253.2, %.lr.ph.i.i.i250.2 ], [ %.sroa.08.020.i.i.ptr.1, %bb.dh ] ; 3 uses
  %.sroa.05.09.i.i.i252.2 = phi ptr [ %.sroa.0.010.i.i.i251.2, %.lr.ph.i.i.i250.2 ], [ %.sroa.08.020.i.i.ptr.2, %bb.dh ] ; 3 uses
  store i64 %i.avs, ptr %.sroa.05.09.i.i.i252.2, align 8, !tbaa !375
  %i.avt = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i252.2, i64 -8
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !376
  %i.avv = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i252.2, i64 8
  store ptr %i.avu, ptr %i.avv, align 8, !tbaa !377
  %.sroa.0.0.i.i.i253.2 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i251.2, i64 -16 ; 2 uses
  %i.avw = load i64, ptr %.sroa.0.0.i.i.i253.2, align 8, !tbaa !135 ; 2 uses
  %i.avx = icmp ult i64 %i.avo, %i.avw
  br i1 %i.avx, label %.lr.ph.i.i.i250.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2, !llvm.loop !31

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i250.2, %bb.dh
  %.sroa.05.0.lcssa.i.i.i243.2 = phi ptr [ %.sroa.08.020.i.i.ptr.2, %bb.dh ], [ %.sroa.0.010.i.i.i251.2, %.lr.ph.i.i.i250.2 ] ; 2 uses
  store i64 %i.avo, ptr %.sroa.05.0.lcssa.i.i.i243.2, align 8, !tbaa !375
  %i.avy = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i243.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i242.2, ptr %i.avy, align 8, !tbaa !377
  %.pre.i.i244.2 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !135
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.avz = ptrtoint ptr %.sroa.08.020.i.i.ptr.2 to i64
  %i.awa = sub i64 %i.avz, %i.arx
  %i.awb = ashr exact i64 %i.awa, 4               ; 5 uses
  %i.awc = icmp sgt i64 %i.awb, 0
  br i1 %i.awc, label %.lr.ph.i.i.i.i.i.preheader.i.i254.2, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2

.lr.ph.i.i.i.i.i.preheader.i.i254.2:              ; preds = %bb.di
  %i.awd = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 64 ; 2 uses
  %xtraiter1034 = and i64 %i.awb, 3               ; 2 uses
  %lcmp.mod1035.not = icmp eq i64 %xtraiter1034, 0
  br i1 %lcmp.mod1035.not, label %.lr.ph.i.i.i.i.i.i.i255.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i255.2.prol

.lr.ph.i.i.i.i.i.i.i255.2.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i254.2, %.lr.ph.i.i.i.i.i.i.i255.2.prol
  %.010.i.i.i.i.i.i.i256.2.prol = phi i64 [ %i.awk, %.lr.ph.i.i.i.i.i.i.i255.2.prol ], [ %i.awb, %.lr.ph.i.i.i.i.i.preheader.i.i254.2 ]
  %.069.i.i.i.i.i.i.i257.2.prol = phi ptr [ %i.awf, %.lr.ph.i.i.i.i.i.i.i255.2.prol ], [ %i.awd, %.lr.ph.i.i.i.i.i.preheader.i.i254.2 ] ; 2 uses
  %.078.i.i.i.i.i.i.i258.2.prol = phi ptr [ %i.awe, %.lr.ph.i.i.i.i.i.i.i255.2.prol ], [ %.sroa.08.020.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i254.2 ] ; 2 uses
  %prol.iter1036 = phi i64 [ %prol.iter1036.next, %.lr.ph.i.i.i.i.i.i.i255.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i254.2 ]
  %i.awe = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.2.prol, i64 -16 ; 3 uses
  %i.awf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.2.prol, i64 -16 ; 3 uses
  %i.awg = load i64, ptr %i.awe, align 8, !tbaa !135
  store i64 %i.awg, ptr %i.awf, align 8, !tbaa !375
  %i.awh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.2.prol, i64 -8
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !376
  %i.awj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.2.prol, i64 -8
  store ptr %i.awi, ptr %i.awj, align 8, !tbaa !377
  %i.awk = add nsw i64 %.010.i.i.i.i.i.i.i256.2.prol, -1 ; 2 uses
  %prol.iter1036.next = add i64 %prol.iter1036, 1 ; 2 uses
  %prol.iter1036.cmp.not = icmp eq i64 %prol.iter1036.next, %xtraiter1034
  br i1 %prol.iter1036.cmp.not, label %.lr.ph.i.i.i.i.i.i.i255.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i255.2.prol, !llvm.loop !646

.lr.ph.i.i.i.i.i.i.i255.2.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i255.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i254.2
  %.010.i.i.i.i.i.i.i256.2.unr = phi i64 [ %i.awb, %.lr.ph.i.i.i.i.i.preheader.i.i254.2 ], [ %i.awk, %.lr.ph.i.i.i.i.i.i.i255.2.prol ]
  %.069.i.i.i.i.i.i.i257.2.unr = phi ptr [ %i.awd, %.lr.ph.i.i.i.i.i.preheader.i.i254.2 ], [ %i.awf, %.lr.ph.i.i.i.i.i.i.i255.2.prol ]
  %.078.i.i.i.i.i.i.i258.2.unr = phi ptr [ %.sroa.08.020.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i254.2 ], [ %i.awe, %.lr.ph.i.i.i.i.i.i.i255.2.prol ]
  %i.awl = icmp ult i64 %i.awb, 4
  br i1 %i.awl, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2, label %.lr.ph.i.i.i.i.i.i.i255.2

.lr.ph.i.i.i.i.i.i.i255.2:                        ; preds = %.lr.ph.i.i.i.i.i.i.i255.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i255.2
  %.010.i.i.i.i.i.i.i256.2 = phi i64 [ %i.axk, %.lr.ph.i.i.i.i.i.i.i255.2 ], [ %.010.i.i.i.i.i.i.i256.2.unr, %.lr.ph.i.i.i.i.i.i.i255.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i257.2 = phi ptr [ %i.axf, %.lr.ph.i.i.i.i.i.i.i255.2 ], [ %.069.i.i.i.i.i.i.i257.2.unr, %.lr.ph.i.i.i.i.i.i.i255.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i258.2 = phi ptr [ %i.axe, %.lr.ph.i.i.i.i.i.i.i255.2 ], [ %.078.i.i.i.i.i.i.i258.2.unr, %.lr.ph.i.i.i.i.i.i.i255.2.prol.loopexit ] ; 8 uses
  %i.awm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.2, i64 -16
  %i.awn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i257.2, i64 -16
  %i.awo = load i64, ptr %i.awm, align 8, !tbaa !135
  store i64 %i.awo, ptr %i.awn, align 8, !tbaa !375
  %i.awp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i258.2, i64 -8
end_hunk_3
begin_hunk_4_@_ZN4llvm15InstrProfWriter30writeTextTemporalProfTraceDataERNS_14raw_fd_ostreamERNS_15InstrProfSymtabE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i, i64 16, i1 false), !tbaa.struct !204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i)
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i64, i64 24 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.ey, %.pre461
  br i1 %.not.i16.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %.lr.ph.i13.i, !llvm.loop !27

.preheader.i23.i:                                 ; preds = %bb.v
  %.sroa.08.017.i24.i = getelementptr inbounds nuw i8, ptr %.pre459, i64 24 ; 2 uses
  %.not18.i25.i = icmp eq ptr %.sroa.08.017.i24.i, %.pre461
  br i1 %.not18.i25.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.preheader.i23.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.pre459, i64 8
  %.pre22.i27.i = load i64, ptr %.pre459, align 8, !tbaa !135
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.lr.ph.i26.i
  %i.fa = phi i64 [ %.pre22.i27.i, %.lr.ph.i26.i ], [ %i.fx, %bb.ac ]
  %.sroa.08.020.i28.i = phi ptr [ %.sroa.08.017.i24.i, %.lr.ph.i26.i ], [ %.sroa.08.0.i34.i, %bb.ac ] ; 7 uses
  %.pn19.i29.i = phi ptr [ %.pre459, %.lr.ph.i26.i ], [ %.sroa.08.020.i28.i, %bb.ac ] ; 4 uses
  %i.fb = load i64, ptr %.sroa.08.020.i28.i, align 8, !tbaa !135 ; 6 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %.pn19.i29.i, i64 32 ; 2 uses
  br i1 %i.fc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i22.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i30.i, i64 16, i1 false)
  %i.fd = ptrtoint ptr %.sroa.08.020.i28.i to i64
  %i.fe = sub i64 %i.fd, %i.da                    ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.preheader.i.i.i.i.i.i41.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i

.lr.ph.preheader.i.i.i.i.i.i41.i:                 ; preds = %bb.aa
  %i.fg = getelementptr inbounds nuw i8, ptr %.pn19.i29.i, i64 48
  %i.fh = udiv exact i64 %i.fe, 24
  br label %.lr.ph.i.i.i.i.i.i42.i

.lr.ph.i.i.i.i.i.i42.i:                           ; preds = %.lr.ph.i.i.i.i.i.i42.i, %.lr.ph.preheader.i.i.i.i.i.i41.i
  %.010.i.i.i.i.i.i43.i = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i.i42.i ], [ %i.fh, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %.069.i.i.i.i.i.i44.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i.i42.i ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %.078.i.i.i.i.i.i45.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i42.i ], [ %.sroa.08.020.i28.i, %.lr.ph.preheader.i.i.i.i.i.i41.i ] ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i, i64 -24 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i, i64 -24 ; 2 uses
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !135
  store i64 %i.fk, ptr %i.fj, align 8, !tbaa !370
  %i.fl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i, i64 -16
  %i.fm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i64 16, i1 false), !tbaa.struct !204
  %i.fn = add nsw i64 %.010.i.i.i.i.i.i43.i, -1
  %i.fo = icmp samesign ugt i64 %.010.i.i.i.i.i.i43.i, 1
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i.i42.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i, !llvm.loop !24

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i: ; preds = %.lr.ph.i.i.i.i.i.i42.i, %bb.aa
  store i64 %i.fb, ptr %.pre459, align 8, !tbaa !370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i, i64 16, i1 false), !tbaa.struct !204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i22.i)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i21.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i30.i, i64 16, i1 false)
  %i.fp = load i64, ptr %.pn19.i29.i, align 8, !tbaa !135 ; 2 uses
  %i.fq = icmp ult i64 %i.fb, %i.fp
  br i1 %i.fq, label %.lr.ph.i.i36.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i

.lr.ph.i.i36.i:                                   ; preds = %bb.ab, %.lr.ph.i.i36.i
  %i.fr = phi i64 [ %i.fu, %.lr.ph.i.i36.i ], [ %i.fp, %bb.ab ]
  %.sroa.0.010.i.i37.i = phi ptr [ %.sroa.0.0.i.i39.i, %.lr.ph.i.i36.i ], [ %.pn19.i29.i, %bb.ab ] ; 3 uses
  %.sroa.05.09.i.i38.i = phi ptr [ %.sroa.0.010.i.i37.i, %.lr.ph.i.i36.i ], [ %.sroa.08.020.i28.i, %bb.ab ] ; 3 uses
  store i64 %i.fr, ptr %.sroa.05.09.i.i38.i, align 8, !tbaa !370
  %i.fs = getelementptr inbounds i8, ptr %.sroa.05.09.i.i38.i, i64 -16
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i38.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i64 16, i1 false), !tbaa.struct !204
  %.sroa.0.0.i.i39.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i37.i, i64 -24 ; 2 uses
  %i.fu = load i64, ptr %.sroa.0.0.i.i39.i, align 8, !tbaa !135 ; 2 uses
  %i.fv = icmp ult i64 %i.fb, %i.fu
  br i1 %i.fv, label %.lr.ph.i.i36.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i, !llvm.loop !25

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i: ; preds = %.lr.ph.i.i36.i, %bb.ab
  %.sroa.05.0.lcssa.i.i32.i = phi ptr [ %.sroa.08.020.i28.i, %bb.ab ], [ %.sroa.0.010.i.i37.i, %.lr.ph.i.i36.i ] ; 2 uses
  store i64 %i.fb, ptr %.sroa.05.0.lcssa.i.i32.i, align 8, !tbaa !370
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i32.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i, i64 16, i1 false), !tbaa.struct !204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i21.i)
  %.pre.i33.i = load i64, ptr %.pre459, align 8, !tbaa !135
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i
  %i.fx = phi i64 [ %i.fb, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i ], [ %.pre.i33.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i31.i ]
  %.sroa.08.0.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i, i64 24 ; 2 uses
  %.not.i35.i = icmp eq ptr %.sroa.08.0.i34.i, %.pre461
  br i1 %.not.i35.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i, label %bb.z, !llvm.loop !26

_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i: ; preds = %bb.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i14.i, %.preheader.i23.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_.exit.i, %bb.u
  %i.fy = load ptr, ptr %i.bi, align 8, !tbaa !371 ; 17 uses
  %i.fz = load ptr, ptr %i.bj, align 8, !tbaa !371 ; 13 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit.i
  %i.gb = ptrtoint ptr %i.fz to i64               ; 5 uses
  %i.gc = ptrtoint ptr %i.fy to i64               ; 3 uses
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 4                 ; 5 uses
  %i.gf = add nsw i64 %i.ge, 1
  %i.gg = sdiv i64 %i.gf, 2                       ; 10 uses
  %i.gh = icmp sgt i64 %i.ge, 0                   ; 2 uses
  br i1 %i.gh, label %.lr.ph.i.i.i49, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i

.lr.ph.i.i.i49:                                   ; preds = %bb.ad, %select.unfold.i.i.i
  %.010.i.i.i = phi i64 [ %i.gm, %select.unfold.i.i.i ], [ %i.gg, %bb.ad ] ; 5 uses
  %i.gi = shl nuw nsw i64 %.010.i.i.i, 4          ; 3 uses
  %i.gj = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.gi, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i, label %select.unfold.i.i.i, label %bb.ae

select.unfold.i.i.i:                              ; preds = %.lr.ph.i.i.i49
  %i.gk = icmp eq i64 %.010.i.i.i, 1
  %i.gl = add nuw nsw i64 %.010.i.i.i, 1
  %i.gm = lshr i64 %i.gl, 1
  br i1 %i.gk, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i, label %.lr.ph.i.i.i49, !llvm.loop !28

bb.ae:                                            ; preds = %.lr.ph.i.i.i49
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i64 16, i1 false)
  %.not18.i.i.i.i50 = icmp eq i64 %.010.i.i.i, 1
  br i1 %.not18.i.i.i.i50, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.ae
  %.01317.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %i.go = add nsw i64 %i.gi, -32                  ; 2 uses
  %i.gp = lshr exact i64 %i.go, 4
  %i.gq = add nuw nsw i64 %i.gp, 1
  %xtraiter785 = and i64 %i.gq, 3                 ; 2 uses
  %lcmp.mod786.not = icmp eq i64 %xtraiter785, 0
  br i1 %lcmp.mod786.not, label %.lr.ph.i.i.i.i51.prol.loopexit, label %.lr.ph.i.i.i.i51.prol

.lr.ph.i.i.i.i51.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i51.prol
  %.01320.i.i.i.i.prol = phi ptr [ %.013.i.i.i.i.prol, %.lr.ph.i.i.i.i51.prol ], [ %.01317.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.019.i.i.i.i.prol = phi ptr [ %i.gr, %.lr.ph.i.i.i.i51.prol ], [ %i.gj, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i51.prol ], [ 0, %.lr.ph.i.i.preheader.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.prol, i64 16, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.prol, i64 16 ; 3 uses
  %.013.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter785
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i51.prol.loopexit, label %.lr.ph.i.i.i.i51.prol, !llvm.loop !678

.lr.ph.i.i.i.i51.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i51.prol, %.lr.ph.i.i.preheader.i.i
  %.lcssa735.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i ], [ %i.gr, %.lr.ph.i.i.i.i51.prol ]
  %.01320.i.i.i.i.unr = phi ptr [ %.01317.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.013.i.i.i.i.prol, %.lr.ph.i.i.i.i51.prol ]
  %.019.i.i.i.i.unr = phi ptr [ %i.gj, %.lr.ph.i.i.preheader.i.i ], [ %i.gr, %.lr.ph.i.i.i.i51.prol ]
  %i.gs = icmp ult i64 %i.go, 48
  br i1 %i.gs, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i.i51

.lr.ph.i.i.i.i51:                                 ; preds = %.lr.ph.i.i.i.i51.prol.loopexit, %.lr.ph.i.i.i.i51
  %.01320.i.i.i.i = phi ptr [ %.013.i.i.i.i.3, %.lr.ph.i.i.i.i51 ], [ %.01320.i.i.i.i.unr, %.lr.ph.i.i.i.i51.prol.loopexit ] ; 5 uses
  %.019.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i51 ], [ %.019.i.i.i.i.unr, %.lr.ph.i.i.i.i51.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i, i64 16, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 16
  %.013.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i64 16, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 32
  %.013.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i64 16, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 48
  %.013.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i64 16, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i52.3 = icmp eq ptr %.013.i.i.i.i.3, %i.gn
  br i1 %.not.i.i.i.i52.3, label %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i.i51, !llvm.loop !29

_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i51.prol.loopexit, %.lr.ph.i.i.i.i51, %bb.ae
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gj, %bb.ae ], [ %.lcssa735.unr, %.lr.ph.i.i.i.i51.prol.loopexit ], [ %i.gw, %.lr.ph.i.i.i.i51 ] ; 2 uses
  %i.gx = load i64, ptr %.0.lcssa.i.i.i.i, align 8, !tbaa !135
  store i64 %i.gx, ptr %i.fy, align 8, !tbaa !375
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !376
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !377
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i: ; preds = %select.unfold.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i, %bb.ad
  %.sroa.4.0.i48 = phi i64 [ 0, %bb.ad ], [ %.010.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i ], [ 0, %select.unfold.i.i.i ] ; 3 uses
  %.sroa.10.0.i = phi ptr [ null, %bb.ad ], [ %i.gj, %_ZSt29__uninitialized_construct_bufIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i ], [ null, %select.unfold.i.i.i ] ; 22 uses
  %i.hb = icmp eq i64 %i.gg, %.sroa.4.0.i48
  br i1 %i.hb, label %bb.af, label %bb.dk, !prof !218

bb.af:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i
  %.idx336 = shl nsw i64 %i.gg, 4                 ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.fy, i64 %.idx336 ; 16 uses
  %i.hd = ptrtoint ptr %i.hc to i64               ; 6 uses
  %i.he = getelementptr inbounds i8, ptr %.sroa.10.0.i, i64 %.idx336 ; 3 uses
  %.not38.i268 = icmp slt i64 %i.ge, 13
  br i1 %.not38.i268, label %._crit_edge.i285, label %.lr.ph.i.i270

.lr.ph.i.i270:                                    ; preds = %bb.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i283
  %i.hf = phi i64 [ %i.ss, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i283 ], [ %i.gc, %bb.af ] ; 6 uses
  %.sroa.035.039.i271 = phi ptr [ %i.sr, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i283 ], [ %i.fy, %bb.af ] ; 31 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i271, i64 8 ; 6 uses
  %.pre22.i.i273 = load i64, ptr %.sroa.035.039.i271, align 8, !tbaa !135 ; 2 uses
  %.sroa.08.020.i.i274.ptr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i271, i64 16 ; 6 uses
  %i.hh = load i64, ptr %.sroa.08.020.i.i274.ptr, align 8, !tbaa !135 ; 3 uses
  %i.hi = icmp ult i64 %i.hh, %.pre22.i.i273
  %.sroa.4.0..sroa_idx.i.i276 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i271, i64 24
  %.sroa.4.0.copyload.i.i277 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i276, align 8
  br i1 %i.hi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i.i270
  %i.hj = ptrtoint ptr %.sroa.08.020.i.i274.ptr to i64
  %i.hk = sub i64 %i.hj, %i.hf
  %i.hl = ashr exact i64 %i.hk, 4                 ; 5 uses
  %i.hm = icmp sgt i64 %i.hl, 0
  br i1 %i.hm, label %.lr.ph.i.i.i.i.i.preheader.i.i317, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316

.lr.ph.i.i.i.i.i.preheader.i.i317:                ; preds = %bb.ag
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i271, i64 32 ; 2 uses
  %xtraiter787 = and i64 %i.hl, 3                 ; 2 uses
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  br i1 %lcmp.mod788.not, label %.lr.ph.i.i.i.i.i.i.i318.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i318.prol

.lr.ph.i.i.i.i.i.i.i318.prol:                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i317, %.lr.ph.i.i.i.i.i.i.i318.prol
  %.010.i.i.i.i.i.i.i319.prol = phi i64 [ %i.hu, %.lr.ph.i.i.i.i.i.i.i318.prol ], [ %i.hl, %.lr.ph.i.i.i.i.i.preheader.i.i317 ]
  %.069.i.i.i.i.i.i.i320.prol = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i.i318.prol ], [ %i.hn, %.lr.ph.i.i.i.i.i.preheader.i.i317 ] ; 2 uses
  %.078.i.i.i.i.i.i.i321.prol = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i.i318.prol ], [ %.sroa.08.020.i.i274.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i317 ] ; 2 uses
  %prol.iter789 = phi i64 [ %prol.iter789.next, %.lr.ph.i.i.i.i.i.i.i318.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i317 ]
  %i.ho = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.prol, i64 -16 ; 3 uses
  %i.hp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.prol, i64 -16 ; 3 uses
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !135
  store i64 %i.hq, ptr %i.hp, align 8, !tbaa !375
  %i.hr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.prol, i64 -8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !376
  %i.ht = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.prol, i64 -8
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !377
  %i.hu = add nsw i64 %.010.i.i.i.i.i.i.i319.prol, -1 ; 2 uses
  %prol.iter789.next = add i64 %prol.iter789, 1   ; 2 uses
  %prol.iter789.cmp.not = icmp eq i64 %prol.iter789.next, %xtraiter787
  br i1 %prol.iter789.cmp.not, label %.lr.ph.i.i.i.i.i.i.i318.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i318.prol, !llvm.loop !679

.lr.ph.i.i.i.i.i.i.i318.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i318.prol, %.lr.ph.i.i.i.i.i.preheader.i.i317
  %.010.i.i.i.i.i.i.i319.unr = phi i64 [ %i.hl, %.lr.ph.i.i.i.i.i.preheader.i.i317 ], [ %i.hu, %.lr.ph.i.i.i.i.i.i.i318.prol ]
  %.069.i.i.i.i.i.i.i320.unr = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.preheader.i.i317 ], [ %i.hp, %.lr.ph.i.i.i.i.i.i.i318.prol ]
  %.078.i.i.i.i.i.i.i321.unr = phi ptr [ %.sroa.08.020.i.i274.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i317 ], [ %i.ho, %.lr.ph.i.i.i.i.i.i.i318.prol ]
  %i.hv = icmp ult i64 %i.hl, 4
  br i1 %i.hv, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316, label %.lr.ph.i.i.i.i.i.i.i318

.lr.ph.i.i.i.i.i.i.i318:                          ; preds = %.lr.ph.i.i.i.i.i.i.i318.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i318
  %.010.i.i.i.i.i.i.i319 = phi i64 [ %i.iu, %.lr.ph.i.i.i.i.i.i.i318 ], [ %.010.i.i.i.i.i.i.i319.unr, %.lr.ph.i.i.i.i.i.i.i318.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i320 = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i.i.i318 ], [ %.069.i.i.i.i.i.i.i320.unr, %.lr.ph.i.i.i.i.i.i.i318.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i321 = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i.i.i318 ], [ %.078.i.i.i.i.i.i.i321.unr, %.lr.ph.i.i.i.i.i.i.i318.prol.loopexit ] ; 8 uses
  %i.hw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321, i64 -16
  %i.hx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320, i64 -16
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !135
  store i64 %i.hy, ptr %i.hx, align 8, !tbaa !375
  %i.hz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321, i64 -8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !376
  %i.ib = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320, i64 -8
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !377
  %i.ic = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321, i64 -32
  %i.id = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320, i64 -32
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !135
  store i64 %i.ie, ptr %i.id, align 8, !tbaa !375
  %i.if = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321, i64 -24
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !376
  %i.ih = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320, i64 -24
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !377
  %i.ii = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321, i64 -48
  %i.ij = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320, i64 -48
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !135
  store i64 %i.ik, ptr %i.ij, align 8, !tbaa !375
  %i.il = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321, i64 -40
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !376
  %i.in = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320, i64 -40
  store ptr %i.im, ptr %i.in, align 8, !tbaa !377
  %i.io = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321, i64 -64 ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320, i64 -64 ; 2 uses
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !135
  store i64 %i.iq, ptr %i.ip, align 8, !tbaa !375
  %i.ir = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321, i64 -56
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !376
  %i.it = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320, i64 -56
  store ptr %i.is, ptr %i.it, align 8, !tbaa !377
  %i.iu = add nsw i64 %.010.i.i.i.i.i.i.i319, -4
  %i.iv = icmp sgt i64 %.010.i.i.i.i.i.i.i319, 4
  br i1 %i.iv, label %.lr.ph.i.i.i.i.i.i.i318, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316: ; preds = %.lr.ph.i.i.i.i.i.i.i318.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i318, %bb.ag
  store i64 %i.hh, ptr %.sroa.035.039.i271, align 8, !tbaa !375
  store ptr %.sroa.4.0.copyload.i.i277, ptr %i.hg, align 8, !tbaa !377
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i270, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316
  %i.iw = phi i64 [ %i.hh, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316 ], [ %.pre22.i.i273, %.lr.ph.i.i270 ]
  %.sroa.08.020.i.i274.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i271, i64 32 ; 8 uses
  %i.ix = load i64, ptr %.sroa.08.020.i.i274.ptr.1, align 8, !tbaa !135 ; 6 uses
  %i.iy = icmp ult i64 %i.ix, %i.iw
  %.sroa.4.0..sroa_idx.i.i276.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i271, i64 40
  %.sroa.4.0.copyload.i.i277.1 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i276.1, align 8 ; 2 uses
  br i1 %i.iy, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iz = load i64, ptr %.sroa.08.020.i.i274.ptr, align 8, !tbaa !135 ; 2 uses
  %i.ja = icmp ult i64 %i.ix, %i.iz
  br i1 %i.ja, label %.lr.ph.i.i.i312.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i278.1

.lr.ph.i.i.i312.1:                                ; preds = %bb.ai, %.lr.ph.i.i.i312.1
  %i.jb = phi i64 [ %i.jf, %.lr.ph.i.i.i312.1 ], [ %i.iz, %bb.ai ]
  %.sroa.0.010.i.i.i313.1 = phi ptr [ %.sroa.0.0.i.i.i315.1, %.lr.ph.i.i.i312.1 ], [ %.sroa.08.020.i.i274.ptr, %bb.ai ] ; 3 uses
  %.sroa.05.09.i.i.i314.1 = phi ptr [ %.sroa.0.010.i.i.i313.1, %.lr.ph.i.i.i312.1 ], [ %.sroa.08.020.i.i274.ptr.1, %bb.ai ] ; 3 uses
  store i64 %i.jb, ptr %.sroa.05.09.i.i.i314.1, align 8, !tbaa !375
  %i.jc = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i314.1, i64 -8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !376
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i314.1, i64 8
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !377
  %.sroa.0.0.i.i.i315.1 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i313.1, i64 -16 ; 2 uses
  %i.jf = load i64, ptr %.sroa.0.0.i.i.i315.1, align 8, !tbaa !135 ; 2 uses
  %i.jg = icmp ult i64 %i.ix, %i.jf
  br i1 %i.jg, label %.lr.ph.i.i.i312.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i278.1, !llvm.loop !31

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i278.1: ; preds = %.lr.ph.i.i.i312.1, %bb.ai
  %.sroa.05.0.lcssa.i.i.i279.1 = phi ptr [ %.sroa.08.020.i.i274.ptr.1, %bb.ai ], [ %.sroa.0.010.i.i.i313.1, %.lr.ph.i.i.i312.1 ] ; 2 uses
  store i64 %i.ix, ptr %.sroa.05.0.lcssa.i.i.i279.1, align 8, !tbaa !375
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i279.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i277.1, ptr %i.jh, align 8, !tbaa !377
  %.pre.i.i280.1 = load i64, ptr %.sroa.035.039.i271, align 8, !tbaa !135
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ji = ptrtoint ptr %.sroa.08.020.i.i274.ptr.1 to i64
  %i.jj = sub i64 %i.ji, %i.hf
  %i.jk = ashr exact i64 %i.jj, 4                 ; 5 uses
  %i.jl = icmp sgt i64 %i.jk, 0
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i.preheader.i.i317.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316.1

.lr.ph.i.i.i.i.i.preheader.i.i317.1:              ; preds = %bb.aj
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i271, i64 48 ; 2 uses
  %xtraiter802 = and i64 %i.jk, 3                 ; 2 uses
  %lcmp.mod803.not = icmp eq i64 %xtraiter802, 0
  br i1 %lcmp.mod803.not, label %.lr.ph.i.i.i.i.i.i.i318.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i318.1.prol

.lr.ph.i.i.i.i.i.i.i318.1.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i317.1, %.lr.ph.i.i.i.i.i.i.i318.1.prol
  %.010.i.i.i.i.i.i.i319.1.prol = phi i64 [ %i.jt, %.lr.ph.i.i.i.i.i.i.i318.1.prol ], [ %i.jk, %.lr.ph.i.i.i.i.i.preheader.i.i317.1 ]
  %.069.i.i.i.i.i.i.i320.1.prol = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i.i.i318.1.prol ], [ %i.jm, %.lr.ph.i.i.i.i.i.preheader.i.i317.1 ] ; 2 uses
  %.078.i.i.i.i.i.i.i321.1.prol = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i.i.i318.1.prol ], [ %.sroa.08.020.i.i274.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i317.1 ] ; 2 uses
  %prol.iter804 = phi i64 [ %prol.iter804.next, %.lr.ph.i.i.i.i.i.i.i318.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i317.1 ]
  %i.jn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.1.prol, i64 -16 ; 3 uses
  %i.jo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.1.prol, i64 -16 ; 3 uses
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !135
  store i64 %i.jp, ptr %i.jo, align 8, !tbaa !375
  %i.jq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.1.prol, i64 -8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !376
  %i.js = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.1.prol, i64 -8
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !377
  %i.jt = add nsw i64 %.010.i.i.i.i.i.i.i319.1.prol, -1 ; 2 uses
  %prol.iter804.next = add i64 %prol.iter804, 1   ; 2 uses
  %prol.iter804.cmp.not = icmp eq i64 %prol.iter804.next, %xtraiter802
  br i1 %prol.iter804.cmp.not, label %.lr.ph.i.i.i.i.i.i.i318.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i318.1.prol, !llvm.loop !680

.lr.ph.i.i.i.i.i.i.i318.1.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i318.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i317.1
  %.010.i.i.i.i.i.i.i319.1.unr = phi i64 [ %i.jk, %.lr.ph.i.i.i.i.i.preheader.i.i317.1 ], [ %i.jt, %.lr.ph.i.i.i.i.i.i.i318.1.prol ]
  %.069.i.i.i.i.i.i.i320.1.unr = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.preheader.i.i317.1 ], [ %i.jo, %.lr.ph.i.i.i.i.i.i.i318.1.prol ]
  %.078.i.i.i.i.i.i.i321.1.unr = phi ptr [ %.sroa.08.020.i.i274.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i317.1 ], [ %i.jn, %.lr.ph.i.i.i.i.i.i.i318.1.prol ]
  %i.ju = icmp ult i64 %i.jk, 4
  br i1 %i.ju, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316.1, label %.lr.ph.i.i.i.i.i.i.i318.1

.lr.ph.i.i.i.i.i.i.i318.1:                        ; preds = %.lr.ph.i.i.i.i.i.i.i318.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i318.1
  %.010.i.i.i.i.i.i.i319.1 = phi i64 [ %i.kt, %.lr.ph.i.i.i.i.i.i.i318.1 ], [ %.010.i.i.i.i.i.i.i319.1.unr, %.lr.ph.i.i.i.i.i.i.i318.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i320.1 = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i.i.i318.1 ], [ %.069.i.i.i.i.i.i.i320.1.unr, %.lr.ph.i.i.i.i.i.i.i318.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i321.1 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i.i318.1 ], [ %.078.i.i.i.i.i.i.i321.1.unr, %.lr.ph.i.i.i.i.i.i.i318.1.prol.loopexit ] ; 8 uses
  %i.jv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.1, i64 -16
  %i.jw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.1, i64 -16
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !135
  store i64 %i.jx, ptr %i.jw, align 8, !tbaa !375
  %i.jy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.1, i64 -8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !376
  %i.ka = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.1, i64 -8
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !377
  %i.kb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.1, i64 -32
  %i.kc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.1, i64 -32
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !135
  store i64 %i.kd, ptr %i.kc, align 8, !tbaa !375
  %i.ke = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.1, i64 -24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !376
  %i.kg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.1, i64 -24
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !377
  %i.kh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.1, i64 -48
  %i.ki = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.1, i64 -48
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !135
  store i64 %i.kj, ptr %i.ki, align 8, !tbaa !375
  %i.kk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.1, i64 -40
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !376
  %i.km = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.1, i64 -40
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !377
  %i.kn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.1, i64 -64 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.1, i64 -64 ; 2 uses
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !135
  store i64 %i.kp, ptr %i.ko, align 8, !tbaa !375
  %i.kq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.1, i64 -56
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !376
  %i.ks = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.1, i64 -56
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !377
  %i.kt = add nsw i64 %.010.i.i.i.i.i.i.i319.1, -4
  %i.ku = icmp sgt i64 %.010.i.i.i.i.i.i.i319.1, 4
  br i1 %i.ku, label %.lr.ph.i.i.i.i.i.i.i318.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316.1, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316.1: ; preds = %.lr.ph.i.i.i.i.i.i.i318.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i318.1, %bb.aj
  store i64 %i.ix, ptr %.sroa.035.039.i271, align 8, !tbaa !375
  store ptr %.sroa.4.0.copyload.i.i277.1, ptr %i.hg, align 8, !tbaa !377
  br label %bb.ak

bb.ak:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i278.1
  %i.kv = phi i64 [ %i.ix, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316.1 ], [ %.pre.i.i280.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i278.1 ]
  %.sroa.08.020.i.i274.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i271, i64 48 ; 8 uses
  %i.kw = load i64, ptr %.sroa.08.020.i.i274.ptr.2, align 8, !tbaa !135 ; 6 uses
  %i.kx = icmp ult i64 %i.kw, %i.kv
  %.sroa.4.0..sroa_idx.i.i276.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i271, i64 56
  %.sroa.4.0.copyload.i.i277.2 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i276.2, align 8 ; 2 uses
  br i1 %i.kx, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ky = load i64, ptr %.sroa.08.020.i.i274.ptr.1, align 8, !tbaa !135 ; 2 uses
  %i.kz = icmp ult i64 %i.kw, %i.ky
  br i1 %i.kz, label %.lr.ph.i.i.i312.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i278.2

.lr.ph.i.i.i312.2:                                ; preds = %bb.al, %.lr.ph.i.i.i312.2
  %i.la = phi i64 [ %i.le, %.lr.ph.i.i.i312.2 ], [ %i.ky, %bb.al ]
  %.sroa.0.010.i.i.i313.2 = phi ptr [ %.sroa.0.0.i.i.i315.2, %.lr.ph.i.i.i312.2 ], [ %.sroa.08.020.i.i274.ptr.1, %bb.al ] ; 3 uses
  %.sroa.05.09.i.i.i314.2 = phi ptr [ %.sroa.0.010.i.i.i313.2, %.lr.ph.i.i.i312.2 ], [ %.sroa.08.020.i.i274.ptr.2, %bb.al ] ; 3 uses
  store i64 %i.la, ptr %.sroa.05.09.i.i.i314.2, align 8, !tbaa !375
  %i.lb = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i314.2, i64 -8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !376
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i314.2, i64 8
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !377
  %.sroa.0.0.i.i.i315.2 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i313.2, i64 -16 ; 2 uses
  %i.le = load i64, ptr %.sroa.0.0.i.i.i315.2, align 8, !tbaa !135 ; 2 uses
  %i.lf = icmp ult i64 %i.kw, %i.le
  br i1 %i.lf, label %.lr.ph.i.i.i312.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i278.2, !llvm.loop !31

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i278.2: ; preds = %.lr.ph.i.i.i312.2, %bb.al
  %.sroa.05.0.lcssa.i.i.i279.2 = phi ptr [ %.sroa.08.020.i.i274.ptr.2, %bb.al ], [ %.sroa.0.010.i.i.i313.2, %.lr.ph.i.i.i312.2 ] ; 2 uses
  store i64 %i.kw, ptr %.sroa.05.0.lcssa.i.i.i279.2, align 8, !tbaa !375
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i279.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i277.2, ptr %i.lg, align 8, !tbaa !377
  %.pre.i.i280.2 = load i64, ptr %.sroa.035.039.i271, align 8, !tbaa !135
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.lh = ptrtoint ptr %.sroa.08.020.i.i274.ptr.2 to i64
  %i.li = sub i64 %i.lh, %i.hf
  %i.lj = ashr exact i64 %i.li, 4                 ; 5 uses
  %i.lk = icmp sgt i64 %i.lj, 0
  br i1 %i.lk, label %.lr.ph.i.i.i.i.i.preheader.i.i317.2, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316.2

.lr.ph.i.i.i.i.i.preheader.i.i317.2:              ; preds = %bb.am
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i271, i64 64 ; 2 uses
  %xtraiter805 = and i64 %i.lj, 3                 ; 2 uses
  %lcmp.mod806.not = icmp eq i64 %xtraiter805, 0
  br i1 %lcmp.mod806.not, label %.lr.ph.i.i.i.i.i.i.i318.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i318.2.prol

.lr.ph.i.i.i.i.i.i.i318.2.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i317.2, %.lr.ph.i.i.i.i.i.i.i318.2.prol
  %.010.i.i.i.i.i.i.i319.2.prol = phi i64 [ %i.ls, %.lr.ph.i.i.i.i.i.i.i318.2.prol ], [ %i.lj, %.lr.ph.i.i.i.i.i.preheader.i.i317.2 ]
  %.069.i.i.i.i.i.i.i320.2.prol = phi ptr [ %i.ln, %.lr.ph.i.i.i.i.i.i.i318.2.prol ], [ %i.ll, %.lr.ph.i.i.i.i.i.preheader.i.i317.2 ] ; 2 uses
  %.078.i.i.i.i.i.i.i321.2.prol = phi ptr [ %i.lm, %.lr.ph.i.i.i.i.i.i.i318.2.prol ], [ %.sroa.08.020.i.i274.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i317.2 ] ; 2 uses
  %prol.iter807 = phi i64 [ %prol.iter807.next, %.lr.ph.i.i.i.i.i.i.i318.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i317.2 ]
  %i.lm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.2.prol, i64 -16 ; 3 uses
  %i.ln = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.2.prol, i64 -16 ; 3 uses
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !135
  store i64 %i.lo, ptr %i.ln, align 8, !tbaa !375
  %i.lp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.2.prol, i64 -8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !376
  %i.lr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.2.prol, i64 -8
  store ptr %i.lq, ptr %i.lr, align 8, !tbaa !377
  %i.ls = add nsw i64 %.010.i.i.i.i.i.i.i319.2.prol, -1 ; 2 uses
  %prol.iter807.next = add i64 %prol.iter807, 1   ; 2 uses
  %prol.iter807.cmp.not = icmp eq i64 %prol.iter807.next, %xtraiter805
  br i1 %prol.iter807.cmp.not, label %.lr.ph.i.i.i.i.i.i.i318.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i318.2.prol, !llvm.loop !681

.lr.ph.i.i.i.i.i.i.i318.2.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i318.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i317.2
  %.010.i.i.i.i.i.i.i319.2.unr = phi i64 [ %i.lj, %.lr.ph.i.i.i.i.i.preheader.i.i317.2 ], [ %i.ls, %.lr.ph.i.i.i.i.i.i.i318.2.prol ]
  %.069.i.i.i.i.i.i.i320.2.unr = phi ptr [ %i.ll, %.lr.ph.i.i.i.i.i.preheader.i.i317.2 ], [ %i.ln, %.lr.ph.i.i.i.i.i.i.i318.2.prol ]
  %.078.i.i.i.i.i.i.i321.2.unr = phi ptr [ %.sroa.08.020.i.i274.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i317.2 ], [ %i.lm, %.lr.ph.i.i.i.i.i.i.i318.2.prol ]
  %i.lt = icmp ult i64 %i.lj, 4
  br i1 %i.lt, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i316.2, label %.lr.ph.i.i.i.i.i.i.i318.2

.lr.ph.i.i.i.i.i.i.i318.2:                        ; preds = %.lr.ph.i.i.i.i.i.i.i318.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i318.2
  %.010.i.i.i.i.i.i.i319.2 = phi i64 [ %i.ms, %.lr.ph.i.i.i.i.i.i.i318.2 ], [ %.010.i.i.i.i.i.i.i319.2.unr, %.lr.ph.i.i.i.i.i.i.i318.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i320.2 = phi ptr [ %i.mn, %.lr.ph.i.i.i.i.i.i.i318.2 ], [ %.069.i.i.i.i.i.i.i320.2.unr, %.lr.ph.i.i.i.i.i.i.i318.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i321.2 = phi ptr [ %i.mm, %.lr.ph.i.i.i.i.i.i.i318.2 ], [ %.078.i.i.i.i.i.i.i321.2.unr, %.lr.ph.i.i.i.i.i.i.i318.2.prol.loopexit ] ; 8 uses
  %i.lu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.2, i64 -16
  %i.lv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i320.2, i64 -16
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !135
  store i64 %i.lw, ptr %i.lv, align 8, !tbaa !375
  %i.lx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i321.2, i64 -8
end_hunk_4
begin_hunk_5_@_ZN4llvm15InstrProfWriter30writeTextTemporalProfTraceDataERNS_14raw_fd_ostreamERNS_15InstrProfSymtabE:bb.a
  %i.aga = getelementptr inbounds nuw i8, ptr %.01628.i42.i183, i64 16
  br label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i40.i181
  %i.agb = getelementptr inbounds nuw i8, ptr %.029.i41.i182, i64 16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sink34.i44.i185 = phi i64 [ %i.afx, %bb.bl ], [ %i.afy, %bb.bm ]
  %.01628.pn.i45.i186 = phi ptr [ %.01628.i42.i183, %bb.bl ], [ %.029.i41.i182, %bb.bm ]
  %.117.i46.i187 = phi ptr [ %i.aga, %bb.bl ], [ %.01628.i42.i183, %bb.bm ] ; 3 uses
  %.1.i47.i188 = phi ptr [ %.029.i41.i182, %bb.bl ], [ %i.agb, %bb.bm ] ; 3 uses
  %.sink.in.i48.i189 = getelementptr inbounds nuw i8, ptr %.01628.pn.i45.i186, i64 8
  %.sink.i49.i190 = load ptr, ptr %.sink.in.i48.i189, align 8, !tbaa !376
  store i64 %.sink34.i44.i185, ptr %.sroa.0.027.i43.i184, align 8, !tbaa !375
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43.i184, i64 8
  store ptr %.sink.i49.i190, ptr %i.agc, align 8, !tbaa !377
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43.i184, i64 16 ; 2 uses
  %i.age = icmp ne ptr %.1.i47.i188, %i.aft
  %i.agf = icmp ne ptr %.117.i46.i187, %i.he
  %i.agg = select i1 %i.age, i1 %i.agf, i1 false
  br i1 %i.agg, label %.lr.ph.i40.i181, label %._crit_edge.i25.i166, !llvm.loop !37

._crit_edge.i25.i166:                             ; preds = %bb.bn, %._crit_edge.i160
  %.sroa.0.0.lcssa.i26.i167 = phi ptr [ %.sroa.022.0.lcssa.i162, %._crit_edge.i160 ], [ %i.agd, %bb.bn ] ; 5 uses
  %.016.lcssa.i27.i168 = phi ptr [ %i.aft, %._crit_edge.i160 ], [ %.117.i46.i187, %bb.bn ] ; 3 uses
  %.0.lcssa.i28.i169 = phi ptr [ %.0.lcssa.i161, %._crit_edge.i160 ], [ %.1.i47.i188, %bb.bn ] ; 3 uses
  %i.agh = ptrtoint ptr %i.aft to i64
  %i.agi = ptrtoint ptr %.0.lcssa.i28.i169 to i64
  %i.agj = sub i64 %i.agh, %i.agi
  %i.agk = ashr exact i64 %i.agj, 4               ; 5 uses
  %i.agl = icmp sgt i64 %i.agk, 0
  br i1 %i.agl, label %.lr.ph.i.i.i.i.i.i36.i177.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i170

.lr.ph.i.i.i.i.i.i36.i177.preheader:              ; preds = %._crit_edge.i25.i166
  %xtraiter838 = and i64 %i.agk, 3                ; 2 uses
  %lcmp.mod839.not = icmp eq i64 %xtraiter838, 0
  br i1 %lcmp.mod839.not, label %.lr.ph.i.i.i.i.i.i36.i177.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.i177.prol

.lr.ph.i.i.i.i.i.i36.i177.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i36.i177.preheader, %.lr.ph.i.i.i.i.i.i36.i177.prol
  %.012.i.i.i.i.i.i37.i178.prol = phi i64 [ %i.ags, %.lr.ph.i.i.i.i.i.i36.i177.prol ], [ %i.agk, %.lr.ph.i.i.i.i.i.i36.i177.preheader ]
  %.0811.i.i.i.i.i.i38.i179.prol = phi ptr [ %i.agr, %.lr.ph.i.i.i.i.i.i36.i177.prol ], [ %.sroa.0.0.lcssa.i26.i167, %.lr.ph.i.i.i.i.i.i36.i177.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i39.i180.prol = phi ptr [ %i.agq, %.lr.ph.i.i.i.i.i.i36.i177.prol ], [ %.0.lcssa.i28.i169, %.lr.ph.i.i.i.i.i.i36.i177.preheader ] ; 3 uses
  %prol.iter840 = phi i64 [ %prol.iter840.next, %.lr.ph.i.i.i.i.i.i36.i177.prol ], [ 0, %.lr.ph.i.i.i.i.i.i36.i177.preheader ]
  %i.agm = load i64, ptr %.0910.i.i.i.i.i.i39.i180.prol, align 8, !tbaa !135
  store i64 %i.agm, ptr %.0811.i.i.i.i.i.i38.i179.prol, align 8, !tbaa !375
  %i.agn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i180.prol, i64 8
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !376
  %i.agp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i179.prol, i64 8
  store ptr %i.ago, ptr %i.agp, align 8, !tbaa !377
  %i.agq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i180.prol, i64 16 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i179.prol, i64 16 ; 3 uses
  %i.ags = add nsw i64 %.012.i.i.i.i.i.i37.i178.prol, -1 ; 2 uses
  %prol.iter840.next = add i64 %prol.iter840, 1   ; 2 uses
  %prol.iter840.cmp.not = icmp eq i64 %prol.iter840.next, %xtraiter838
  br i1 %prol.iter840.cmp.not, label %.lr.ph.i.i.i.i.i.i36.i177.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.i177.prol, !llvm.loop !692

.lr.ph.i.i.i.i.i.i36.i177.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i36.i177.prol, %.lr.ph.i.i.i.i.i.i36.i177.preheader
  %.012.i.i.i.i.i.i37.i178.unr = phi i64 [ %i.agk, %.lr.ph.i.i.i.i.i.i36.i177.preheader ], [ %i.ags, %.lr.ph.i.i.i.i.i.i36.i177.prol ]
  %.0811.i.i.i.i.i.i38.i179.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i167, %.lr.ph.i.i.i.i.i.i36.i177.preheader ], [ %i.agr, %.lr.ph.i.i.i.i.i.i36.i177.prol ]
  %.0910.i.i.i.i.i.i39.i180.unr = phi ptr [ %.0.lcssa.i28.i169, %.lr.ph.i.i.i.i.i.i36.i177.preheader ], [ %i.agq, %.lr.ph.i.i.i.i.i.i36.i177.prol ]
  %.lcssa752.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i36.i177.preheader ], [ %i.agr, %.lr.ph.i.i.i.i.i.i36.i177.prol ]
  %i.agt = icmp ult i64 %i.agk, 4
  br i1 %i.agt, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i170, label %.lr.ph.i.i.i.i.i.i36.i177

.lr.ph.i.i.i.i.i.i36.i177:                        ; preds = %.lr.ph.i.i.i.i.i.i36.i177.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i177
  %.012.i.i.i.i.i.i37.i178 = phi i64 [ %i.ahs, %.lr.ph.i.i.i.i.i.i36.i177 ], [ %.012.i.i.i.i.i.i37.i178.unr, %.lr.ph.i.i.i.i.i.i36.i177.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i38.i179 = phi ptr [ %i.ahr, %.lr.ph.i.i.i.i.i.i36.i177 ], [ %.0811.i.i.i.i.i.i38.i179.unr, %.lr.ph.i.i.i.i.i.i36.i177.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i39.i180 = phi ptr [ %i.ahq, %.lr.ph.i.i.i.i.i.i36.i177 ], [ %.0910.i.i.i.i.i.i39.i180.unr, %.lr.ph.i.i.i.i.i.i36.i177.prol.loopexit ] ; 9 uses
  %i.agu = load i64, ptr %.0910.i.i.i.i.i.i39.i180, align 8, !tbaa !135
  store i64 %i.agu, ptr %.0811.i.i.i.i.i.i38.i179, align 8, !tbaa !375
  %i.agv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i180, i64 8
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !376
  %i.agx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i179, i64 8
  store ptr %i.agw, ptr %i.agx, align 8, !tbaa !377
  %i.agy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i180, i64 16
  %i.agz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i179, i64 16
  %i.aha = load i64, ptr %i.agy, align 8, !tbaa !135
  store i64 %i.aha, ptr %i.agz, align 8, !tbaa !375
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i180, i64 24
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !376
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i179, i64 24
  store ptr %i.ahc, ptr %i.ahd, align 8, !tbaa !377
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i180, i64 32
  %i.ahf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i179, i64 32
  %i.ahg = load i64, ptr %i.ahe, align 8, !tbaa !135
  store i64 %i.ahg, ptr %i.ahf, align 8, !tbaa !375
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i180, i64 40
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !376
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i179, i64 40
  store ptr %i.ahi, ptr %i.ahj, align 8, !tbaa !377
  %i.ahk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i180, i64 48
  %i.ahl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i179, i64 48
  %i.ahm = load i64, ptr %i.ahk, align 8, !tbaa !135
  store i64 %i.ahm, ptr %i.ahl, align 8, !tbaa !375
  %i.ahn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i180, i64 56
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !376
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i179, i64 56
  store ptr %i.aho, ptr %i.ahp, align 8, !tbaa !377
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i180, i64 64
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i179, i64 64 ; 2 uses
  %i.ahs = add nsw i64 %.012.i.i.i.i.i.i37.i178, -4
  %i.aht = icmp sgt i64 %.012.i.i.i.i.i.i37.i178, 4
  br i1 %i.aht, label %.lr.ph.i.i.i.i.i.i36.i177, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i170, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i170: ; preds = %.lr.ph.i.i.i.i.i.i36.i177.prol.loopexit, %.lr.ph.i.i.i.i.i.i36.i177, %._crit_edge.i25.i166
  %.08.lcssa.i.i.i.i.i.i30.i171 = phi ptr [ %.sroa.0.0.lcssa.i26.i167, %._crit_edge.i25.i166 ], [ %.lcssa752.unr, %.lr.ph.i.i.i.i.i.i36.i177.prol.loopexit ], [ %i.ahr, %.lr.ph.i.i.i.i.i.i36.i177 ]
  %i.ahu = ptrtoint ptr %.016.lcssa.i27.i168 to i64
  %i.ahv = sub i64 %i.ux, %i.ahu
  %i.ahw = ashr exact i64 %i.ahv, 4               ; 5 uses
  %i.ahx = icmp sgt i64 %i.ahw, 0
  br i1 %i.ahx, label %.lr.ph.i.i.i.i.i19.i32.preheader.i172, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit199

.lr.ph.i.i.i.i.i19.i32.preheader.i172:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i170
  %i.ahy = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i171 to i64
  %i.ahz = ptrtoint ptr %.sroa.0.0.lcssa.i26.i167 to i64
  %i.aia = sub i64 %i.ahy, %i.ahz
  %i.aib = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i167, i64 %i.aia ; 2 uses
  %xtraiter841 = and i64 %i.ahw, 3                ; 2 uses
  %lcmp.mod842.not = icmp eq i64 %xtraiter841, 0
  br i1 %lcmp.mod842.not, label %.lr.ph.i.i.i.i.i19.i32.i173.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i173.prol

.lr.ph.i.i.i.i.i19.i32.i173.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i172, %.lr.ph.i.i.i.i.i19.i32.i173.prol
  %.012.i.i.i.i.i20.i33.i174.prol = phi i64 [ %i.aii, %.lr.ph.i.i.i.i.i19.i32.i173.prol ], [ %i.ahw, %.lr.ph.i.i.i.i.i19.i32.preheader.i172 ]
  %.0811.i.i.i.i.i21.i34.i175.prol = phi ptr [ %i.aih, %.lr.ph.i.i.i.i.i19.i32.i173.prol ], [ %i.aib, %.lr.ph.i.i.i.i.i19.i32.preheader.i172 ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i176.prol = phi ptr [ %i.aig, %.lr.ph.i.i.i.i.i19.i32.i173.prol ], [ %.016.lcssa.i27.i168, %.lr.ph.i.i.i.i.i19.i32.preheader.i172 ] ; 3 uses
  %prol.iter843 = phi i64 [ %prol.iter843.next, %.lr.ph.i.i.i.i.i19.i32.i173.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i172 ]
  %i.aic = load i64, ptr %.0910.i.i.i.i.i22.i35.i176.prol, align 8, !tbaa !135
  store i64 %i.aic, ptr %.0811.i.i.i.i.i21.i34.i175.prol, align 8, !tbaa !375
  %i.aid = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i176.prol, i64 8
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !376
  %i.aif = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i175.prol, i64 8
  store ptr %i.aie, ptr %i.aif, align 8, !tbaa !377
  %i.aig = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i176.prol, i64 16 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i175.prol, i64 16 ; 2 uses
  %i.aii = add nsw i64 %.012.i.i.i.i.i20.i33.i174.prol, -1 ; 2 uses
  %prol.iter843.next = add i64 %prol.iter843, 1   ; 2 uses
  %prol.iter843.cmp.not = icmp eq i64 %prol.iter843.next, %xtraiter841
  br i1 %prol.iter843.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i173.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i173.prol, !llvm.loop !693

.lr.ph.i.i.i.i.i19.i32.i173.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i32.i173.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i172
  %.012.i.i.i.i.i20.i33.i174.unr = phi i64 [ %i.ahw, %.lr.ph.i.i.i.i.i19.i32.preheader.i172 ], [ %i.aii, %.lr.ph.i.i.i.i.i19.i32.i173.prol ]
  %.0811.i.i.i.i.i21.i34.i175.unr = phi ptr [ %i.aib, %.lr.ph.i.i.i.i.i19.i32.preheader.i172 ], [ %i.aih, %.lr.ph.i.i.i.i.i19.i32.i173.prol ]
  %.0910.i.i.i.i.i22.i35.i176.unr = phi ptr [ %.016.lcssa.i27.i168, %.lr.ph.i.i.i.i.i19.i32.preheader.i172 ], [ %i.aig, %.lr.ph.i.i.i.i.i19.i32.i173.prol ]
  %i.aij = icmp ult i64 %i.ahw, 4
  br i1 %i.aij, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit199, label %.lr.ph.i.i.i.i.i19.i32.i173

.lr.ph.i.i.i.i.i19.i32.i173:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.i173.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i173
  %.012.i.i.i.i.i20.i33.i174 = phi i64 [ %i.aji, %.lr.ph.i.i.i.i.i19.i32.i173 ], [ %.012.i.i.i.i.i20.i33.i174.unr, %.lr.ph.i.i.i.i.i19.i32.i173.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i175 = phi ptr [ %i.ajh, %.lr.ph.i.i.i.i.i19.i32.i173 ], [ %.0811.i.i.i.i.i21.i34.i175.unr, %.lr.ph.i.i.i.i.i19.i32.i173.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i176 = phi ptr [ %i.ajg, %.lr.ph.i.i.i.i.i19.i32.i173 ], [ %.0910.i.i.i.i.i22.i35.i176.unr, %.lr.ph.i.i.i.i.i19.i32.i173.prol.loopexit ] ; 9 uses
  %i.aik = load i64, ptr %.0910.i.i.i.i.i22.i35.i176, align 8, !tbaa !135
  store i64 %i.aik, ptr %.0811.i.i.i.i.i21.i34.i175, align 8, !tbaa !375
  %i.ail = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i176, i64 8
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !376
  %i.ain = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i175, i64 8
  store ptr %i.aim, ptr %i.ain, align 8, !tbaa !377
  %i.aio = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i176, i64 16
  %i.aip = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i175, i64 16
  %i.aiq = load i64, ptr %i.aio, align 8, !tbaa !135
  store i64 %i.aiq, ptr %i.aip, align 8, !tbaa !375
  %i.air = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i176, i64 24
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !376
  %i.ait = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i175, i64 24
  store ptr %i.ais, ptr %i.ait, align 8, !tbaa !377
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i176, i64 32
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i175, i64 32
  %i.aiw = load i64, ptr %i.aiu, align 8, !tbaa !135
  store i64 %i.aiw, ptr %i.aiv, align 8, !tbaa !375
  %i.aix = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i176, i64 40
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !376
  %i.aiz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i175, i64 40
  store ptr %i.aiy, ptr %i.aiz, align 8, !tbaa !377
  %i.aja = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i176, i64 48
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i175, i64 48
  %i.ajc = load i64, ptr %i.aja, align 8, !tbaa !135
  store i64 %i.ajc, ptr %i.ajb, align 8, !tbaa !375
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i176, i64 56
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !376
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i175, i64 56
  store ptr %i.aje, ptr %i.ajf, align 8, !tbaa !377
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i176, i64 64
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i175, i64 64
  %i.aji = add nsw i64 %.012.i.i.i.i.i20.i33.i174, -4
  %i.ajj = icmp sgt i64 %.012.i.i.i.i.i20.i33.i174, 4
  br i1 %i.ajj, label %.lr.ph.i.i.i.i.i19.i32.i173, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit199, !llvm.loop !35

_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit199: ; preds = %.lr.ph.i.i.i.i.i19.i32.i173.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i173, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i170
  %i.ajk = icmp slt i64 %i.abx, %i.gg
  br i1 %i.ajk, label %.lr.ph.i.i76, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i, !llvm.loop !39

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i: ; preds = %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit199, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit322
  %i.ajl = sub i64 %i.gb, %i.hd                   ; 2 uses
  %i.ajm = ashr exact i64 %i.ajl, 4               ; 13 uses
  %i.ajn = getelementptr inbounds i8, ptr %.sroa.10.0.i, i64 %i.ajl ; 3 uses
  %.not38.i = icmp slt i64 %i.ajm, 7
  br i1 %.not38.i, label %._crit_edge.i122, label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i
  %i.ajo = phi i64 [ %i.avb, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.hd, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 6 uses
  %.sroa.035.039.i = phi ptr [ %i.ava, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.hc, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 31 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 8 ; 6 uses
  %.pre22.i.i114 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !135 ; 2 uses
  %.sroa.08.020.i.i.ptr = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 16 ; 6 uses
  %i.ajq = load i64, ptr %.sroa.08.020.i.i.ptr, align 8, !tbaa !135 ; 3 uses
  %i.ajr = icmp ult i64 %i.ajq, %.pre22.i.i114
  %.sroa.4.0..sroa_idx.i.i116 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 24
  %.sroa.4.0.copyload.i.i117 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i116, align 8
  br i1 %i.ajr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i.i113
  %i.ajs = ptrtoint ptr %.sroa.08.020.i.i.ptr to i64
  %i.ajt = sub i64 %i.ajs, %i.ajo
  %i.aju = ashr exact i64 %i.ajt, 4               ; 5 uses
  %i.ajv = icmp sgt i64 %i.aju, 0
  br i1 %i.ajv, label %.lr.ph.i.i.i.i.i.preheader.i.i129, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i129:                ; preds = %bb.bo
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 32 ; 2 uses
  %xtraiter844 = and i64 %i.aju, 3                ; 2 uses
  %lcmp.mod845.not = icmp eq i64 %xtraiter844, 0
  br i1 %lcmp.mod845.not, label %.lr.ph.i.i.i.i.i.i.i130.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i130.prol

.lr.ph.i.i.i.i.i.i.i130.prol:                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i129, %.lr.ph.i.i.i.i.i.i.i130.prol
  %.010.i.i.i.i.i.i.i131.prol = phi i64 [ %i.akd, %.lr.ph.i.i.i.i.i.i.i130.prol ], [ %i.aju, %.lr.ph.i.i.i.i.i.preheader.i.i129 ]
  %.069.i.i.i.i.i.i.i132.prol = phi ptr [ %i.ajy, %.lr.ph.i.i.i.i.i.i.i130.prol ], [ %i.ajw, %.lr.ph.i.i.i.i.i.preheader.i.i129 ] ; 2 uses
  %.078.i.i.i.i.i.i.i133.prol = phi ptr [ %i.ajx, %.lr.ph.i.i.i.i.i.i.i130.prol ], [ %.sroa.08.020.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i129 ] ; 2 uses
  %prol.iter846 = phi i64 [ %prol.iter846.next, %.lr.ph.i.i.i.i.i.i.i130.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i129 ]
  %i.ajx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.prol, i64 -16 ; 3 uses
  %i.ajy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.prol, i64 -16 ; 3 uses
  %i.ajz = load i64, ptr %i.ajx, align 8, !tbaa !135
  store i64 %i.ajz, ptr %i.ajy, align 8, !tbaa !375
  %i.aka = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.prol, i64 -8
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !376
  %i.akc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.prol, i64 -8
  store ptr %i.akb, ptr %i.akc, align 8, !tbaa !377
  %i.akd = add nsw i64 %.010.i.i.i.i.i.i.i131.prol, -1 ; 2 uses
  %prol.iter846.next = add i64 %prol.iter846, 1   ; 2 uses
  %prol.iter846.cmp.not = icmp eq i64 %prol.iter846.next, %xtraiter844
  br i1 %prol.iter846.cmp.not, label %.lr.ph.i.i.i.i.i.i.i130.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i130.prol, !llvm.loop !694

.lr.ph.i.i.i.i.i.i.i130.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i130.prol, %.lr.ph.i.i.i.i.i.preheader.i.i129
  %.010.i.i.i.i.i.i.i131.unr = phi i64 [ %i.aju, %.lr.ph.i.i.i.i.i.preheader.i.i129 ], [ %i.akd, %.lr.ph.i.i.i.i.i.i.i130.prol ]
  %.069.i.i.i.i.i.i.i132.unr = phi ptr [ %i.ajw, %.lr.ph.i.i.i.i.i.preheader.i.i129 ], [ %i.ajy, %.lr.ph.i.i.i.i.i.i.i130.prol ]
  %.078.i.i.i.i.i.i.i133.unr = phi ptr [ %.sroa.08.020.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i129 ], [ %i.ajx, %.lr.ph.i.i.i.i.i.i.i130.prol ]
  %i.ake = icmp ult i64 %i.aju, 4
  br i1 %i.ake, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i130

.lr.ph.i.i.i.i.i.i.i130:                          ; preds = %.lr.ph.i.i.i.i.i.i.i130.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i130
  %.010.i.i.i.i.i.i.i131 = phi i64 [ %i.ald, %.lr.ph.i.i.i.i.i.i.i130 ], [ %.010.i.i.i.i.i.i.i131.unr, %.lr.ph.i.i.i.i.i.i.i130.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i132 = phi ptr [ %i.aky, %.lr.ph.i.i.i.i.i.i.i130 ], [ %.069.i.i.i.i.i.i.i132.unr, %.lr.ph.i.i.i.i.i.i.i130.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i133 = phi ptr [ %i.akx, %.lr.ph.i.i.i.i.i.i.i130 ], [ %.078.i.i.i.i.i.i.i133.unr, %.lr.ph.i.i.i.i.i.i.i130.prol.loopexit ] ; 8 uses
  %i.akf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133, i64 -16
  %i.akg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132, i64 -16
  %i.akh = load i64, ptr %i.akf, align 8, !tbaa !135
  store i64 %i.akh, ptr %i.akg, align 8, !tbaa !375
  %i.aki = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133, i64 -8
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !376
  %i.akk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132, i64 -8
  store ptr %i.akj, ptr %i.akk, align 8, !tbaa !377
  %i.akl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133, i64 -32
  %i.akm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132, i64 -32
  %i.akn = load i64, ptr %i.akl, align 8, !tbaa !135
  store i64 %i.akn, ptr %i.akm, align 8, !tbaa !375
  %i.ako = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133, i64 -24
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !376
  %i.akq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132, i64 -24
  store ptr %i.akp, ptr %i.akq, align 8, !tbaa !377
  %i.akr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133, i64 -48
  %i.aks = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132, i64 -48
  %i.akt = load i64, ptr %i.akr, align 8, !tbaa !135
  store i64 %i.akt, ptr %i.aks, align 8, !tbaa !375
  %i.aku = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133, i64 -40
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !376
  %i.akw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132, i64 -40
  store ptr %i.akv, ptr %i.akw, align 8, !tbaa !377
  %i.akx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133, i64 -64 ; 2 uses
  %i.aky = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132, i64 -64 ; 2 uses
  %i.akz = load i64, ptr %i.akx, align 8, !tbaa !135
  store i64 %i.akz, ptr %i.aky, align 8, !tbaa !375
  %i.ala = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133, i64 -56
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !376
  %i.alc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132, i64 -56
  store ptr %i.alb, ptr %i.alc, align 8, !tbaa !377
  %i.ald = add nsw i64 %.010.i.i.i.i.i.i.i131, -4
  %i.ale = icmp sgt i64 %.010.i.i.i.i.i.i.i131, 4
  br i1 %i.ale, label %.lr.ph.i.i.i.i.i.i.i130, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i130.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i130, %bb.bo
  store i64 %i.ajq, ptr %.sroa.035.039.i, align 8, !tbaa !375
  store ptr %.sroa.4.0.copyload.i.i117, ptr %i.ajp, align 8, !tbaa !377
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i113, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %i.alf = phi i64 [ %i.ajq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i ], [ %.pre22.i.i114, %.lr.ph.i.i113 ]
  %.sroa.08.020.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 32 ; 8 uses
  %i.alg = load i64, ptr %.sroa.08.020.i.i.ptr.1, align 8, !tbaa !135 ; 6 uses
  %i.alh = icmp ult i64 %i.alg, %i.alf
  %.sroa.4.0..sroa_idx.i.i116.1 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 40
  %.sroa.4.0.copyload.i.i117.1 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i116.1, align 8 ; 2 uses
  br i1 %i.alh, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ali = load i64, ptr %.sroa.08.020.i.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.alj = icmp ult i64 %i.alg, %i.ali
  br i1 %i.alj, label %.lr.ph.i.i.i125.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i125.1:                                ; preds = %bb.bq, %.lr.ph.i.i.i125.1
  %i.alk = phi i64 [ %i.alo, %.lr.ph.i.i.i125.1 ], [ %i.ali, %bb.bq ]
  %.sroa.0.010.i.i.i126.1 = phi ptr [ %.sroa.0.0.i.i.i128.1, %.lr.ph.i.i.i125.1 ], [ %.sroa.08.020.i.i.ptr, %bb.bq ] ; 3 uses
  %.sroa.05.09.i.i.i127.1 = phi ptr [ %.sroa.0.010.i.i.i126.1, %.lr.ph.i.i.i125.1 ], [ %.sroa.08.020.i.i.ptr.1, %bb.bq ] ; 3 uses
  store i64 %i.alk, ptr %.sroa.05.09.i.i.i127.1, align 8, !tbaa !375
  %i.all = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i127.1, i64 -8
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !376
  %i.aln = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i127.1, i64 8
  store ptr %i.alm, ptr %i.aln, align 8, !tbaa !377
  %.sroa.0.0.i.i.i128.1 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i126.1, i64 -16 ; 2 uses
  %i.alo = load i64, ptr %.sroa.0.0.i.i.i128.1, align 8, !tbaa !135 ; 2 uses
  %i.alp = icmp ult i64 %i.alg, %i.alo
  br i1 %i.alp, label %.lr.ph.i.i.i125.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1, !llvm.loop !31

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i125.1, %bb.bq
  %.sroa.05.0.lcssa.i.i.i118.1 = phi ptr [ %.sroa.08.020.i.i.ptr.1, %bb.bq ], [ %.sroa.0.010.i.i.i126.1, %.lr.ph.i.i.i125.1 ] ; 2 uses
  store i64 %i.alg, ptr %.sroa.05.0.lcssa.i.i.i118.1, align 8, !tbaa !375
  %i.alq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i118.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i117.1, ptr %i.alq, align 8, !tbaa !377
  %.pre.i.i119.1 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !135
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.alr = ptrtoint ptr %.sroa.08.020.i.i.ptr.1 to i64
  %i.als = sub i64 %i.alr, %i.ajo
  %i.alt = ashr exact i64 %i.als, 4               ; 5 uses
  %i.alu = icmp sgt i64 %i.alt, 0
  br i1 %i.alu, label %.lr.ph.i.i.i.i.i.preheader.i.i129.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1

.lr.ph.i.i.i.i.i.preheader.i.i129.1:              ; preds = %bb.br
  %i.alv = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 48 ; 2 uses
  %xtraiter859 = and i64 %i.alt, 3                ; 2 uses
  %lcmp.mod860.not = icmp eq i64 %xtraiter859, 0
  br i1 %lcmp.mod860.not, label %.lr.ph.i.i.i.i.i.i.i130.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i130.1.prol

.lr.ph.i.i.i.i.i.i.i130.1.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i129.1, %.lr.ph.i.i.i.i.i.i.i130.1.prol
  %.010.i.i.i.i.i.i.i131.1.prol = phi i64 [ %i.amc, %.lr.ph.i.i.i.i.i.i.i130.1.prol ], [ %i.alt, %.lr.ph.i.i.i.i.i.preheader.i.i129.1 ]
  %.069.i.i.i.i.i.i.i132.1.prol = phi ptr [ %i.alx, %.lr.ph.i.i.i.i.i.i.i130.1.prol ], [ %i.alv, %.lr.ph.i.i.i.i.i.preheader.i.i129.1 ] ; 2 uses
  %.078.i.i.i.i.i.i.i133.1.prol = phi ptr [ %i.alw, %.lr.ph.i.i.i.i.i.i.i130.1.prol ], [ %.sroa.08.020.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i129.1 ] ; 2 uses
  %prol.iter861 = phi i64 [ %prol.iter861.next, %.lr.ph.i.i.i.i.i.i.i130.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i129.1 ]
  %i.alw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.1.prol, i64 -16 ; 3 uses
  %i.alx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.1.prol, i64 -16 ; 3 uses
  %i.aly = load i64, ptr %i.alw, align 8, !tbaa !135
  store i64 %i.aly, ptr %i.alx, align 8, !tbaa !375
  %i.alz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.1.prol, i64 -8
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !376
  %i.amb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.1.prol, i64 -8
  store ptr %i.ama, ptr %i.amb, align 8, !tbaa !377
  %i.amc = add nsw i64 %.010.i.i.i.i.i.i.i131.1.prol, -1 ; 2 uses
  %prol.iter861.next = add i64 %prol.iter861, 1   ; 2 uses
  %prol.iter861.cmp.not = icmp eq i64 %prol.iter861.next, %xtraiter859
  br i1 %prol.iter861.cmp.not, label %.lr.ph.i.i.i.i.i.i.i130.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i130.1.prol, !llvm.loop !695

.lr.ph.i.i.i.i.i.i.i130.1.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i130.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i129.1
  %.010.i.i.i.i.i.i.i131.1.unr = phi i64 [ %i.alt, %.lr.ph.i.i.i.i.i.preheader.i.i129.1 ], [ %i.amc, %.lr.ph.i.i.i.i.i.i.i130.1.prol ]
  %.069.i.i.i.i.i.i.i132.1.unr = phi ptr [ %i.alv, %.lr.ph.i.i.i.i.i.preheader.i.i129.1 ], [ %i.alx, %.lr.ph.i.i.i.i.i.i.i130.1.prol ]
  %.078.i.i.i.i.i.i.i133.1.unr = phi ptr [ %.sroa.08.020.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i129.1 ], [ %i.alw, %.lr.ph.i.i.i.i.i.i.i130.1.prol ]
  %i.amd = icmp ult i64 %i.alt, 4
  br i1 %i.amd, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, label %.lr.ph.i.i.i.i.i.i.i130.1

.lr.ph.i.i.i.i.i.i.i130.1:                        ; preds = %.lr.ph.i.i.i.i.i.i.i130.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i130.1
  %.010.i.i.i.i.i.i.i131.1 = phi i64 [ %i.anc, %.lr.ph.i.i.i.i.i.i.i130.1 ], [ %.010.i.i.i.i.i.i.i131.1.unr, %.lr.ph.i.i.i.i.i.i.i130.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i132.1 = phi ptr [ %i.amx, %.lr.ph.i.i.i.i.i.i.i130.1 ], [ %.069.i.i.i.i.i.i.i132.1.unr, %.lr.ph.i.i.i.i.i.i.i130.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i133.1 = phi ptr [ %i.amw, %.lr.ph.i.i.i.i.i.i.i130.1 ], [ %.078.i.i.i.i.i.i.i133.1.unr, %.lr.ph.i.i.i.i.i.i.i130.1.prol.loopexit ] ; 8 uses
  %i.ame = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.1, i64 -16
  %i.amf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.1, i64 -16
  %i.amg = load i64, ptr %i.ame, align 8, !tbaa !135
  store i64 %i.amg, ptr %i.amf, align 8, !tbaa !375
  %i.amh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.1, i64 -8
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !376
  %i.amj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.1, i64 -8
  store ptr %i.ami, ptr %i.amj, align 8, !tbaa !377
  %i.amk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.1, i64 -32
  %i.aml = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.1, i64 -32
  %i.amm = load i64, ptr %i.amk, align 8, !tbaa !135
  store i64 %i.amm, ptr %i.aml, align 8, !tbaa !375
  %i.amn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.1, i64 -24
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !376
  %i.amp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.1, i64 -24
  store ptr %i.amo, ptr %i.amp, align 8, !tbaa !377
  %i.amq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.1, i64 -48
  %i.amr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.1, i64 -48
  %i.ams = load i64, ptr %i.amq, align 8, !tbaa !135
  store i64 %i.ams, ptr %i.amr, align 8, !tbaa !375
  %i.amt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.1, i64 -40
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !376
  %i.amv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.1, i64 -40
  store ptr %i.amu, ptr %i.amv, align 8, !tbaa !377
  %i.amw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.1, i64 -64 ; 2 uses
  %i.amx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.1, i64 -64 ; 2 uses
  %i.amy = load i64, ptr %i.amw, align 8, !tbaa !135
  store i64 %i.amy, ptr %i.amx, align 8, !tbaa !375
  %i.amz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.1, i64 -56
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !376
  %i.anb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.1, i64 -56
  store ptr %i.ana, ptr %i.anb, align 8, !tbaa !377
  %i.anc = add nsw i64 %.010.i.i.i.i.i.i.i131.1, -4
  %i.and = icmp sgt i64 %.010.i.i.i.i.i.i.i131.1, 4
  br i1 %i.and, label %.lr.ph.i.i.i.i.i.i.i130.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i130.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i130.1, %bb.br
  store i64 %i.alg, ptr %.sroa.035.039.i, align 8, !tbaa !375
  store ptr %.sroa.4.0.copyload.i.i117.1, ptr %i.ajp, align 8, !tbaa !377
  br label %bb.bs

bb.bs:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1
  %i.ane = phi i64 [ %i.alg, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.1 ], [ %.pre.i.i119.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.1 ]
  %.sroa.08.020.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 48 ; 8 uses
  %i.anf = load i64, ptr %.sroa.08.020.i.i.ptr.2, align 8, !tbaa !135 ; 6 uses
  %i.ang = icmp ult i64 %i.anf, %i.ane
  %.sroa.4.0..sroa_idx.i.i116.2 = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 56
  %.sroa.4.0.copyload.i.i117.2 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i116.2, align 8 ; 2 uses
  br i1 %i.ang, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.anh = load i64, ptr %.sroa.08.020.i.i.ptr.1, align 8, !tbaa !135 ; 2 uses
  %i.ani = icmp ult i64 %i.anf, %i.anh
  br i1 %i.ani, label %.lr.ph.i.i.i125.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i125.2:                                ; preds = %bb.bt, %.lr.ph.i.i.i125.2
  %i.anj = phi i64 [ %i.ann, %.lr.ph.i.i.i125.2 ], [ %i.anh, %bb.bt ]
  %.sroa.0.010.i.i.i126.2 = phi ptr [ %.sroa.0.0.i.i.i128.2, %.lr.ph.i.i.i125.2 ], [ %.sroa.08.020.i.i.ptr.1, %bb.bt ] ; 3 uses
  %.sroa.05.09.i.i.i127.2 = phi ptr [ %.sroa.0.010.i.i.i126.2, %.lr.ph.i.i.i125.2 ], [ %.sroa.08.020.i.i.ptr.2, %bb.bt ] ; 3 uses
  store i64 %i.anj, ptr %.sroa.05.09.i.i.i127.2, align 8, !tbaa !375
  %i.ank = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i127.2, i64 -8
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !376
  %i.anm = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i127.2, i64 8
  store ptr %i.anl, ptr %i.anm, align 8, !tbaa !377
  %.sroa.0.0.i.i.i128.2 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i126.2, i64 -16 ; 2 uses
  %i.ann = load i64, ptr %.sroa.0.0.i.i.i128.2, align 8, !tbaa !135 ; 2 uses
  %i.ano = icmp ult i64 %i.anf, %i.ann
  br i1 %i.ano, label %.lr.ph.i.i.i125.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2, !llvm.loop !31

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_10less_firstEEEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i125.2, %bb.bt
  %.sroa.05.0.lcssa.i.i.i118.2 = phi ptr [ %.sroa.08.020.i.i.ptr.2, %bb.bt ], [ %.sroa.0.010.i.i.i126.2, %.lr.ph.i.i.i125.2 ] ; 2 uses
  store i64 %i.anf, ptr %.sroa.05.0.lcssa.i.i.i118.2, align 8, !tbaa !375
  %i.anp = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i118.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i117.2, ptr %i.anp, align 8, !tbaa !377
  %.pre.i.i119.2 = load i64, ptr %.sroa.035.039.i, align 8, !tbaa !135
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.anq = ptrtoint ptr %.sroa.08.020.i.i.ptr.2 to i64
  %i.anr = sub i64 %i.anq, %i.ajo
  %i.ans = ashr exact i64 %i.anr, 4               ; 5 uses
  %i.ant = icmp sgt i64 %i.ans, 0
  br i1 %i.ant, label %.lr.ph.i.i.i.i.i.preheader.i.i129.2, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2

.lr.ph.i.i.i.i.i.preheader.i.i129.2:              ; preds = %bb.bu
  %i.anu = getelementptr inbounds nuw i8, ptr %.sroa.035.039.i, i64 64 ; 2 uses
  %xtraiter862 = and i64 %i.ans, 3                ; 2 uses
  %lcmp.mod863.not = icmp eq i64 %xtraiter862, 0
  br i1 %lcmp.mod863.not, label %.lr.ph.i.i.i.i.i.i.i130.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i130.2.prol

.lr.ph.i.i.i.i.i.i.i130.2.prol:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i129.2, %.lr.ph.i.i.i.i.i.i.i130.2.prol
  %.010.i.i.i.i.i.i.i131.2.prol = phi i64 [ %i.aob, %.lr.ph.i.i.i.i.i.i.i130.2.prol ], [ %i.ans, %.lr.ph.i.i.i.i.i.preheader.i.i129.2 ]
  %.069.i.i.i.i.i.i.i132.2.prol = phi ptr [ %i.anw, %.lr.ph.i.i.i.i.i.i.i130.2.prol ], [ %i.anu, %.lr.ph.i.i.i.i.i.preheader.i.i129.2 ] ; 2 uses
  %.078.i.i.i.i.i.i.i133.2.prol = phi ptr [ %i.anv, %.lr.ph.i.i.i.i.i.i.i130.2.prol ], [ %.sroa.08.020.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i129.2 ] ; 2 uses
  %prol.iter864 = phi i64 [ %prol.iter864.next, %.lr.ph.i.i.i.i.i.i.i130.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i129.2 ]
  %i.anv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.2.prol, i64 -16 ; 3 uses
  %i.anw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.2.prol, i64 -16 ; 3 uses
  %i.anx = load i64, ptr %i.anv, align 8, !tbaa !135
  store i64 %i.anx, ptr %i.anw, align 8, !tbaa !375
  %i.any = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.2.prol, i64 -8
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !376
  %i.aoa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.2.prol, i64 -8
  store ptr %i.anz, ptr %i.aoa, align 8, !tbaa !377
  %i.aob = add nsw i64 %.010.i.i.i.i.i.i.i131.2.prol, -1 ; 2 uses
  %prol.iter864.next = add i64 %prol.iter864, 1   ; 2 uses
  %prol.iter864.cmp.not = icmp eq i64 %prol.iter864.next, %xtraiter862
  br i1 %prol.iter864.cmp.not, label %.lr.ph.i.i.i.i.i.i.i130.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i130.2.prol, !llvm.loop !696

.lr.ph.i.i.i.i.i.i.i130.2.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i130.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i129.2
  %.010.i.i.i.i.i.i.i131.2.unr = phi i64 [ %i.ans, %.lr.ph.i.i.i.i.i.preheader.i.i129.2 ], [ %i.aob, %.lr.ph.i.i.i.i.i.i.i130.2.prol ]
  %.069.i.i.i.i.i.i.i132.2.unr = phi ptr [ %i.anu, %.lr.ph.i.i.i.i.i.preheader.i.i129.2 ], [ %i.anw, %.lr.ph.i.i.i.i.i.i.i130.2.prol ]
  %.078.i.i.i.i.i.i.i133.2.unr = phi ptr [ %.sroa.08.020.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i129.2 ], [ %i.anv, %.lr.ph.i.i.i.i.i.i.i130.2.prol ]
  %i.aoc = icmp ult i64 %i.ans, 4
  br i1 %i.aoc, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.2, label %.lr.ph.i.i.i.i.i.i.i130.2

.lr.ph.i.i.i.i.i.i.i130.2:                        ; preds = %.lr.ph.i.i.i.i.i.i.i130.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i130.2
  %.010.i.i.i.i.i.i.i131.2 = phi i64 [ %i.apb, %.lr.ph.i.i.i.i.i.i.i130.2 ], [ %.010.i.i.i.i.i.i.i131.2.unr, %.lr.ph.i.i.i.i.i.i.i130.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i132.2 = phi ptr [ %i.aow, %.lr.ph.i.i.i.i.i.i.i130.2 ], [ %.069.i.i.i.i.i.i.i132.2.unr, %.lr.ph.i.i.i.i.i.i.i130.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i133.2 = phi ptr [ %i.aov, %.lr.ph.i.i.i.i.i.i.i130.2 ], [ %.078.i.i.i.i.i.i.i133.2.unr, %.lr.ph.i.i.i.i.i.i.i130.2.prol.loopexit ] ; 8 uses
  %i.aod = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.2, i64 -16
  %i.aoe = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i132.2, i64 -16
  %i.aof = load i64, ptr %i.aod, align 8, !tbaa !135
  store i64 %i.aof, ptr %i.aoe, align 8, !tbaa !375
  %i.aog = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i133.2, i64 -8
end_hunk_5
