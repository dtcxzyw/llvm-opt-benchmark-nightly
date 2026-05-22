inline.NumInlined: 1424
inline.NumDeleted: 734
begin_hunk_0_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !89

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit: ; preds = %bb.d, %bb.b
  %.019.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.x, %bb.d ]
  %.not25 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i, %i.i
  br i1 %.not25, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.pn33, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.034, i8 0, i64 24, i1 false)
  %i.aa = ptrtoint ptr %.sroa.013.034 to i64
  %i.ab = sub i64 %i.aa, %i.c                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn33, i64 48
  %i.ae = udiv exact i64 %i.ab, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.aq, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ag, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i ], [ %i.ad, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.013.034, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !111
  %i.ak = load <2 x ptr>, ptr %i.af, align 8, !tbaa !63
  store <2 x ptr> %i.ak, ptr %i.ag, align 8, !tbaa !63
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !111
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ap) #25
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i:       ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.aq = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ar = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !243

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread
  %i.as = load ptr, ptr %0, align 8, !tbaa !60    ; 2 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !111
  store ptr %i.e, ptr %0, align 8, !tbaa !60
  store ptr %i.g, ptr %i.b, align 8, !tbaa !62
  store ptr %i.z, ptr %i.d, align 8, !tbaa !111
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.pn33, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.034, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i:               ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23
  %.sroa.014.0.i = phi ptr [ %.sroa.013.034, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23 ], [ %.sroa.0.0.i, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.backedge ] ; 11 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.014.0.i, i64 -24 ; 3 uses
  %i.aw = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !63 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.014.0.i, i64 -16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = icmp slt i64 %i.bb, %i.l
  %i.bd = getelementptr inbounds i8, ptr %i.e, i64 %i.bb
  %i.be = select i1 %i.bc, ptr %i.bd, ptr %i.g    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.be
  br i1 %.not22.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, %bb.g
  %.01924.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.g ], [ %i.aw, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.g ], [ %i.e, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i ] ; 2 uses
  %i.bf = load i32, ptr %.02023.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bg = load i32, ptr %.01924.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bi = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bi, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.be
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  %.019.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i ], [ %i.bk, %bb.g ]
  %.not.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i
  %i.bl = load ptr, ptr %.sroa.014.0.i, align 8, !tbaa !60 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !111
  store ptr %i.aw, ptr %.sroa.014.0.i, align 8, !tbaa !60
  store ptr %i.ay, ptr %i.bm, align 8, !tbaa !62
  %i.bp = getelementptr inbounds i8, ptr %.sroa.014.0.i, i64 -8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.backedge, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bl to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bt) #25
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.backedge

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.backedge:      ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, !llvm.loop !238

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i, %bb.f
  %i.bu = load ptr, ptr %.sroa.014.0.i, align 8, !tbaa !60 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !111
  store ptr %i.e, ptr %.sroa.014.0.i, align 8, !tbaa !60
  store ptr %i.g, ptr %i.bv, align 8, !tbaa !62
  store ptr %i.av, ptr %i.bw, align 8, !tbaa !111
  %.not.i.i.i.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split:         ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i, %.loopexit
  %.sink62 = phi ptr [ %i.at, %.loopexit ], [ %i.bx, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i ]
  %.sink61 = phi ptr [ %i.as, %.loopexit ], [ %i.bu, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i ] ; 2 uses
  %i.by = ptrtoint ptr %.sink62 to i64
  %i.bz = ptrtoint ptr %.sink61 to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink61, i64 noundef %i.ca) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i, %.loopexit
  %.sroa.013.0 = getelementptr inbounds nuw i8, ptr %.sroa.013.034, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, %1
  br i1 %.not, label %.loopexit27, label %bb.b, !llvm.loop !244

.loopexit27:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.120") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !97     ; 5 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !95, !noalias !245
  %.not.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.d, align 8, !tbaa !64, !noalias !245
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !4, !noalias !245 ; 2 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !4, !noalias !245 ; 2 uses
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext i32 %i.h to i64
  %i.l = xor i64 %i.k, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.m = mul i64 %i.l, 6679450291180483821
  %i.n = lshr i64 %i.m, 56
  %i.o = trunc nuw i64 %i.n to i8
  %i.p = and i8 %i.o, 127
  %i.q = zext i32 %i.i to i64
  %i.r = xor i64 %i.q, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.s = mul i64 %i.r, -2543921745674291987
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %i.s)
  %i.u = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value, i64 noundef %i.t, i8 noundef signext %i.p), !noalias !245 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !36, !noalias !245
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !36, !noalias !245
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.u
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36, !noalias !248 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 1, i32 1), !noalias !248
  %i.ab = load i32, ptr %2, align 4, !tbaa !4, !noalias !248 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = xor i64 %i.ac, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !95, !noalias !251
  %i.ai = and i64 %i.ah, 65535
  %i.aj = lshr i64 %i.af, 7
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.af to i8
  %i.am = and i8 %i.al, 127
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !36, !noalias !248 ; 3 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.ak, %bb.f ], [ %i.bp, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bo, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1), !noalias !248
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.7.0.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !36, !noalias !248 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.au, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.060.i = phi i16 [ %i.bd, %.critedge.i ], [ %i.au, %bb.g ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.a                     ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4, !noalias !248
  %i.bb = icmp eq i32 %i.ba, %i.ab
  br i1 %i.bb, label %.critedge20.i, label %.critedge.i, !prof !102

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bc = add i16 %.sroa.033.060.i, -1
  %i.bd = and i16 %i.bc, %.sroa.033.060.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.be = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bf, 0
  br i1 %.not51.i, label %bb.h, label %.thread.i, !prof !32

.thread.i:                                        ; preds = %.critedge18.i
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = add i64 %.sroa.7.0.i, %i.bh
  %i.bj = and i64 %i.bi, %i.a
  %i.bk = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value, i64 noundef %i.af, i64 %i.bj, i64 %.sroa.15.0.i), !noalias !248 ; 2 uses
  %i.bl = load ptr, ptr %i.z, align 8, !tbaa !36, !noalias !248
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.an, align 8, !tbaa !36, !noalias !248
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bk
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge18.i
  %i.bo = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.7.0.i
  br label %bb.g

.critedge20.i:                                    ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ay
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ay
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %.critedge20.i, %.thread.i, %bb.e
  %.sink = phi ptr [ %i.w, %bb.e ], [ %i.bm, %.thread.i ], [ %i.br, %.critedge20.i ] ; 2 uses
  %.sink75.i.sink.ph = phi ptr [ %i.y, %bb.e ], [ %i.bn, %.thread.i ], [ %i.bq, %.critedge20.i ]
  %.sink.i4.sink.ph = phi i8 [ 1, %bb.e ], [ 1, %.thread.i ], [ 0, %.critedge20.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit, %bb.d, %bb.c
  %.sink77.i.sink = phi ptr [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ], [ %.sink, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit ]
  %.sink75.i.sink = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %.sink75.i.sink.ph, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit ]
  %.sink.i4.sink = phi i8 [ 1, %bb.c ], [ 0, %bb.d ], [ %.sink.i4.sink.ph, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit ]
  store ptr %.sink77.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75.i.sink, ptr %.sroa.4.0..sroa_idx.i5, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i4.sink, ptr %i.bs, align 8, !tbaa !83
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashIiEEiEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = zext i32 %i.a to i64
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  ret i64 %i.e
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm4EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #16 comdat {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !32

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24
  ret ptr %i.d
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSH_PFvSH_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !97     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !95
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !36
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
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !254

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.ba, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = zext i32 %i.y to i64
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab) ; 2 uses
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = xor i64 %i.ad, %i.j                     ; 5 uses
  %i.af = trunc i64 %i.ac to i8
  %i.ag = and i8 %i.af, 127                       ; 2 uses
  %i.ah = sub i64 %i.w, %i.ae                     ; 2 uses
  %i.ai = and i64 %i.k, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !102

bb.d:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ah, 15
  %i.al = add nuw nsw i64 %i.ak, %i.ae
  %i.am = and i64 %i.al, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ae, %i.b
  %.not.i = icmp ult i64 %i.an, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !102

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %i.ae, %i.a                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1, !tbaa !36
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.as, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !32

bb.g:                                             ; preds = %bb.f
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add nuw nsw i64 %i.ao, %i.au
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ag, i64 noundef %i.w, i64 noundef %i.ae)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.av, %bb.g ], [ %i.am, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.ag, ptr %i.aw, align 1, !tbaa !255
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  %i.ay = load i32, ptr %i.x, align 4
  store i32 %i.ay, ptr %i.ax, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.az = add i16 %.sroa.054.061, -1
  %i.ba = and i16 %i.az, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #19

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CloseGapEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal9CloneSlowEPNS0_5ArenaERKNS0_11MessageLiteE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase16ReserveWithArenaEPNS0_5ArenaEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24AddAllocatedSlowWithCopyINS1_18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEEEEEvPNT_4TypeEPNS0_5ArenaESB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp eq ptr %2, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d
end_hunk_0
